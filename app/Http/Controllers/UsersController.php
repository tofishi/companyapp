<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use App\Models\Countries;

class UsersController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
      
            $data["title"] = "User - List ";
            $data['user_list'] = User::where('id', '!=', 1)->get();
            return view('user_list', $data);
       
    }
    public function add_user()
    {
      
            $data["title"] = "User - Add ";
            $data["phone_code"] = Countries::get();
            return view('add_user', $data);
       
    }

    public function submit_user(Request $request){

        try {
            $request->validate([
            
                'name' => 'required|string|max:255',
                'last_name' => 'required|string|max:255',
                'email' => 'required|email|unique:users,email',           
                'phone_number' => 'required|numeric',
                'password' => 'required|min:8',
                'bio' => 'nullable|string|max:255',
                'title' => 'nullable|string|max:255',
                'address' => 'nullable|string|max:255',
                'city' => 'nullable|string|max:255',
                'state' => 'nullable|string|max:255',
                'zipcode' => 'nullable|string|max:20',
                'country' => 'nullable|string|max:255',
                'profile_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
                'cover_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
                // Add validation rules for social media fields
            'facebook' => 'nullable|string|max:255',
            'instagram' => 'nullable|string|max:255',
            'linkedin' => 'nullable|string|max:255',
            'instagram_threads' => 'nullable|string|max:255',
            'whatsapp' => 'nullable|string|max:255',
            'twiter' => 'nullable|string|max:255',
            'youtube' => 'nullable|string|max:255',
            'behance' => 'nullable|string|max:255',
            'dribbble' => 'nullable|string|max:255',
            'pinterest' => 'nullable|string|max:255',


            ]);

            // Create a new user instance
            $user = new User([
                'name' => $request->input('name'),
                'last_name' => $request->input('last_name'),
                'email' => $request->input('email'),
                'phonecode' => $request->input('phonecode'),
                'phone_number' => $request->input('phone_number'),
                'password' => Hash::make($request->input('password')),
                'bio' => $request->input('bio'),
                'title' => $request->input('title'),
                'address' => $request->input('address'),
                'city' => $request->input('city'),
                'state' => $request->input('state'),
                'zipcode' => $request->input('zipcode'),
                'country' => $request->input('country'),         
                'profile_image' => null,
                'cover_image' => null,
                // Add social media fields
                'facebook' => $request->input('facebook'),
                'instagram' => $request->input('instagram'),
                'instagram_threads' => $request->input('instagram_threads'),
                'whatsapp' => $request->input('whatsapp'),
                'twiter' => $request->input('twiter'),
                'linkedin' => $request->input('linkedin'),
                'youtube' => $request->input('youtube'),
                'behance' => $request->input('behance'),
                'dribbble' => $request->input('dribbble'),
                'pinterest' => $request->input('pinterest'),
                'email_verified' => 1,
                'status' => 1,
            ]);

        
            if ($request->hasFile('profile_image')) {
                $file = $request->file('profile_image');
                $fileName = "profile".time() . '_' . $file->getClientOriginalName();
                $relativePath = '/uploads/' . $fileName;
                $absolutePath = public_path($relativePath);
                $file->move(public_path('/uploads'), $fileName);
                $user->profile_image =  $fileName;
            }


            if ($request->hasFile('cover_image')) {
                $file1 = $request->file('cover_image');
                $fileName1 = "cover".time() . '_' . $file1->getClientOriginalName();
                $relativePath1 = '/uploads/' . $fileName1;
                $absolutePath1 = public_path($relativePath1);
                $file1->move(public_path('/uploads'), $fileName1);
                $user->cover_image =  $fileName1;
            }
        
            // Save the user to the database
            $user->save();

            if($user){
                return response()->json([
                    'status' => 'success',
                    'code' => 200,
                    'message' => "Data successfully processed.",
                ]);
            }else{
                return response()->json([
                    'status' => 'error',
                    'code' => 500,
                    'message' => "Something when worng",
                ]);
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




    
}//class
