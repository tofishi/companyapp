@extends('layouts.app')

@section('content')
  <!-- Content -->
<style>
  .contact-d{ 
    display: inline-flex;
    width: 100%;
    }
    .contact-d select{
      width: 30%;
    }
    .contact-d input{
      width: 70%;
    }

</style>
  <div class="authentication-wrapper authentication-cover authentication-bg">
      <div class="authentication-inner row">
        <!-- /Left Text -->
        <div class="d-none d-lg-flex col-lg-7 p-0">
          <div class="auth-cover-bg auth-cover-bg-color d-flex justify-content-center align-items-center">
            <img
              src="{{asset('assets/img/illustrations/auth-register-illustration-light.png')}}"
              alt="auth-register-cover"
              class="img-fluid my-5 auth-illustration"
              data-app-light="img/illustrations/auth-register-illustration-light.png"
              data-app-dark="img/illustrations/auth-register-illustration-dark.png" />

            <img
              src="{{asset('assets/img/illustrations/bg-shape-image-light.png')}}"
              alt="auth-register-cover"
              class="platform-bg"
              data-app-light="img/illustrations/bg-shape-image-light.png"
              data-app-dark="img/illustrations/bg-shape-image-dark.png" />
          </div>
        </div>
        <!-- /Left Text -->

        <!-- Register -->
        <div class="d-flex col-12 col-lg-5 align-items-center p-sm-5 p-4">
          <div class="w-px-400 mx-auto">
            <!-- Logo -->
            <div class="app-brand mb-4">
              <a href="index.html" class="app-brand-link gap-2">
                <span class="app-brand-logo demo">
                  <svg width="32" height="22" viewBox="0 0 32 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M0.00172773 0V6.85398C0.00172773 6.85398 -0.133178 9.01207 1.98092 10.8388L13.6912 21.9964L19.7809 21.9181L18.8042 9.88248L16.4951 7.17289L9.23799 0H0.00172773Z"
                      fill="#7367F0" />
                    <path
                      opacity="0.06"
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M7.69824 16.4364L12.5199 3.23696L16.5541 7.25596L7.69824 16.4364Z"
                      fill="#161616" />
                    <path
                      opacity="0.06"
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M8.07751 15.9175L13.9419 4.63989L16.5849 7.28475L8.07751 15.9175Z"
                      fill="#161616" />
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M7.77295 16.3566L23.6563 0H32V6.88383C32 6.88383 31.8262 9.17836 30.6591 10.4057L19.7824 22H13.6938L7.77295 16.3566Z"
                      fill="#7367F0" />
                  </svg>
                </span>
              </a>
            </div>
            <!-- /Logo -->
            <h3 class="mb-1">Adventure starts here 🚀</h3>
            <p class="mb-4">Make your app management easy and fun!</p>
            <form method="POST" action="{{url('/')}}/register" id="registrationForm">
              @csrf      
              <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input id="name" type="text" placeholder="Enter your username" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>           
              </div>
              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input id="email" type="email" placeholder="Enter your email"  class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
              </div>
              <div class="mb-3">
                
                <label for="phone" class="form-label">Phone</label><br>
                <div class="contact-d">
                <select class="form-control" name="phonecode" >
                  
                  @if(!empty($phone_code))
                    @foreach($phone_code as $code)
                        @php 
                          if($code->name == "India"){
                            $selected = "selected";
                          }else{
                            $selected = "";
                          }
                        @endphp
                      <option value="{{$code->phonecode}}" {{$selected}}>+{{$code->phonecode}}</option>
                    @endforeach
                  @endif
                </select>
                <input  id="phone_number" name="phone_number" type="text" placeholder="Enter your Phone"  class="form-control @error('phone') is-invalid @enderror"  value="{{ old('email') }}" required autocomplete="phone">
                </div> 
                <label id="phone_number-error" class="error" for="phone_number"></label>                 
              </div>

              <div class="mb-3 form-password-toggle">
                <label class="form-label" for="password">Password</label>
                <div class="input-group input-group-merge">                 
                    <input id="password" type="password" placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                    <span class="input-group-text cursor-pointer"><i class="ti ti-eye-off"></i></span>
                </div>
                <label id="password-error" class="error" for="password"></label>
                
              </div>
              <div class="mb-3 form-password-toggle">
                <label class="form-label" for="password">Confirm Password</label>
                <div class="input-group input-group-merge">                 
                    <input id="password-confirm" placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                     <span class="input-group-text cursor-pointer"><i class="ti ti-eye-off"></i></span>
                </div>
                <label id="password-confirm-error" class="error" for="password-confirm"></label>
              </div>
              <div class="mb-3">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="terms-conditions" name="terms" />
                  <label class="form-check-label" for="terms-conditions">
                    I agree to
                    <a href="javascript:void(0);">privacy policy & terms</a>
                  </label>
                  <label id="terms-error" class="error" for="terms"></label>
                </div>
              </div>
              <button  type="submit" class="btn btn-primary d-grid w-100">Sign up</button>
            </form>

            <p class="text-center">
              <span>Already have an account?</span>
              <a href="{{url('/')}}">
                <span>Sign in instead</span>
              </a>
            </p>

            <div class="divider my-4">
              <div class="divider-text">or</div>
            </div>

            <div class="d-flex justify-content-center">
              <a href="javascript:;" class="btn btn-icon btn-label-facebook me-3">
                <i class="tf-icons fa-brands fa-facebook-f fs-5"></i>
              </a>

              <a href="javascript:;" class="btn btn-icon btn-label-google-plus me-3">
                <i class="tf-icons fa-brands fa-google fs-5"></i>
              </a>

              <a href="javascript:;" class="btn btn-icon btn-label-twitter">
                <i class="tf-icons fa-brands fa-twitter fs-5"></i>
              </a>
            </div>
          </div>
        </div>
        <!-- /Register -->
      </div>
    </div>

    <!-- / Content -->
@endsection
