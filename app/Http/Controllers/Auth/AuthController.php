<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Countries;



class AuthController extends Controller
{
    public function __construct()
    {
      
    }
    public function signup()
    {
        $data["title"] = "Sign up";
        $data["phone_code"] = Countries::get();
        return view('auth/register', $data);
    }

    public function login()
    {
        $data["title"] = "Login";
        $data["phone_code"] = Countries::get();
        return view('auth/login', $data);
    }

    
    public function otp()
    {
        $data["title"] = "OPT";
       
        return view('auth/opt_verification', $data);
    }

    protected function register(Request $request)
    {
        try {
            $this->validate(request(), [
                'name' => 'required',
                'phone_number' => 'required',
                'email' => 'required|email|unique:users',
                'password' => 'required'
            ], [
                'email.unique' => 'The email address is already in use. Please choose a different one.',
            ]);
            $otp = rand(100000, 999999);           
            $user = User::create([
                'name' => $request->input('name'),
                'email' => $request->input('email'),
                'password' => Hash::make($request->input('password')),
                'phone_number' => $request->input('phone_number'),
                'phonecode' => $request->input('phonecode'),
                'verification_code' => $otp,
            ]);

            $data = [
                'name' => $request->input('name'),
                'email' => $request->input('email'),           
                'verification_code' => $otp,
            ];

            $mail = Mail::send('emails.email_verification', ['data' => $data], function ($message) use ($data) {
                $message->to($data['email'])
                    ->from("reenaprajapat797@gmail.com", 'Company App')
                    ->subject("Registration Confirmation");
            });
            
            if($mail){
                return response()->json([
                    'status' => 'success',
                    'code' => 200,
                    'message' => "Registration successful! We've sent a verification code to your email. Please check your inbox and enter the code to complete the registration.",
                ]);

            }else{
                return response()->json([
                    'status'=> "failed",
                    'code'=> 500,
                    'message' => 'Something when wrong',               
            ], 422); 

            }
        
        } catch (ValidationException $e) {
            $errors = $e->validator->getMessageBag()->toArray();

            return response()->json([
                'status'=> "failed",
                'code'=> 500,
                'message' => 'Validation failed',
                'errors' => $errors
            ], 422); 
        }
    }

    
    public function verifyOtp(Request $request)
    {
        $otp = $request->input('verification_code');
        $user = User::where('verification_code', $otp)->first();

        if ($user) {
            // OTP is valid
            $user->update([
                'email_verified' => 1,
                'verification_code' => null,
            ]);

            $data = array("id"=>$user->id, "name"=>$user->name, "email"=>$user->email);

            Auth::loginUsingId($user->id);

            $mail = Mail::send('emails.registration_success', ['data' => $user], function ($message) use ($data) {
                $message->to($data['email'])
                    ->from("reenaprajapat797@gmail.com", 'Company App')
                    ->subject("Registration successfully");
            });

            return response()->json([
                'status' => 'success',
                'code' => 200,
                'message' => 'Data successfully processed.',
                "details"=> "Additional details about the success, such as a specific term or description.",
                'data' => json_encode([
                    'id' => $user->id,
                    'name' => $user->name,
                ]),
            ]);
           
        } else {

            return response()->json([
                'status'=> "error",
                'code'=> 500,
                'message' => 'Invalid OTP. Please try again.',               
            ], 422);             
        }
    }


    public function login_submit(Request $request)
    {
        try {
            $request->validate([
                'email' => 'required',
                'password' => 'required',
            ]); 

            
            $user = User::where('email',  $request->input('email'))->first();
           
            if($user->email_verified !=0){
                $credentials = $request->only('email', 'password');
                if (Auth::attempt($credentials)) {
                
                    return response()->json([
                        'status' => 'success',
                        'code' => 200,
                        'message' => 'Data successfully processed.',
                        "details"=> "Additional details about the success, such as a specific term or description.",
                        'data' => json_encode([
                            'id' => Auth::user()->id,
                            'name' => Auth::user()->idname,
                        ]),
                    ]);

                }else{

                    return response()->json([
                        'status' => 'failed',
                        'code' => 500,
                        'message' =>  "Invalid login credentials",
                        "details"=> "Please enter correct email Id or Password",
                        'data' => null,
                    ]);
                }
            }else{

                $data = [
                    'name' => $request->input('name'),
                    'email' => $request->input('email'),           
                    'verification_code' =>  $user->verification_code,
                ];
    
                $mail = Mail::send('emails.email_verification', ['data' => $data], function ($message) use ($data) {
                    $message->to($data['email'])
                        ->from("reenaprajapat797@gmail.com", 'Company App')
                        ->subject("Registration Confirmation");
                });

                return response()->json([
                    'status' => 'success',
                    'code' => 201,
                    'message' => "We've sent a verification code to your email. Please check your inbox and enter the code to complete the registration.",
                ]);

            }

        } catch (ValidationException $e) {
            $errors = $e->validator->getMessageBag()->toArray();

            return response()->json([
                'status'=> "Unauthorized",
                'code'=> 401,
                'message' => 'Please Login',
                "details" => "You don not have access to reach this method , please try again",
                "data" =>null,
                'errors' => $errors
            ], 422); 
        }

       

    }

    public function logout()
    {
        Auth::logout();

        return redirect('/login');
    }




}//class


