@extends('layouts.app')
@section('content')
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
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        @include("layouts/sidemenu")
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->
          @include("layouts/header")    

          <!-- / Navbar -->

              <!-- Content wrapper -->
              <div class="content-wrapper">
            <!-- Content -->
            <form  method="POST"  id="userForm" enctype="multipart/form-data">
            @csrf    
            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="py-3 mb-0">
                <span class="text-muted fw-light">User /</span><span class="fw-medium"> Add User</span>
              </h4>

              <div class="app-ecommerce">
                <!-- Add Product -->
                <div
                  class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center mb-3">
                  <div class="d-flex flex-column justify-content-center">
                    <h4 class="mb-1 mt-3">Add a new User</h4>
                    <!-- <p class="text-muted">Orders placed across your store</p> -->
                  </div>
                  <div class="d-flex align-content-center flex-wrap gap-3">
                    
                    <button type="submit" class="btn btn-primary">Publish User</button>
                  </div>
                </div>

                <div class="row">
                  <!-- First column-->
                  <div class="col-12 col-lg-8">
                    <!-- Product Information -->
                    <div class="card mb-4">
                      <div class="card-header">
                        <h5 class="card-tile mb-0">Personal Details</h5>
                      </div>
                      <div class="card-body">
                        <div class="row mb-3">
                            <div class="col">
                                <label class="form-label" for="user-name">First Name</label>
                                <input type="text" value="{{ isset($user_details->name) ? $user_details->name : '' }}" class="form-control" id="user-name" placeholder="First Name" name="name"
                                    aria-label="First Name" />
                            </div>
                            <div class="col">
                                <label class="form-label" for="last_name">Last Name</label>
                                <input type="text" value="{{ isset($user_details->last_name) ? $user_details->last_name : '' }}"  class="form-control" id="last_name" placeholder="Last Name" name="last_name"
                                    aria-label="Last Name" />
                            </div>
                        </div>
                        <div class="row ">
                          <div class="col">
                            <label class="form-label" for="ecommerce-product-sku">Email</label>
                             <input type="email" value="{{ isset($user_details->email) ? $user_details->email : '' }}" class="form-control" placeholder="Email" name="email"
                            aria-label="Email" readonly />
                          </div>
                          <div class="col">
                            <label for="phone" class="form-label">Phone</label><br>
                            <div class="contact-d">
                            <select class="form-control" name="phonecode" >
                            
                            @if(!empty($phone_code))
                                @foreach($phone_code as $code)
                                    
                                <option value="{{$code->phonecode}}" @php 
                                   if((!empty($user_details->phonecode) &&  $user_details->phonecode == $code->phonecode)){
                                       echo $selected = "selected";
                                   }else{
                                      echo  $selected = "";
                                    }

                                    @endphp>+{{$code->phonecode}}</option>
                                @endforeach
                            @endif
                            </select>
                            <input  id="phone_number" value="{{ isset($user_details->phone_number) ? $user_details->phone_number : '' }}" name="phone_number" type="text" placeholder="Enter your Phone"  class="form-control @error('phone') is-invalid @enderror"  required autocomplete="phone">
                            </div> 
                            <label id="phone_number-error" class="error" for="phone_number"></label> 
                          </div>
                        </div>


                        <div class="row  form-password-toggle">
                            
                           <div class="col">
                                <label class="form-label" for="password">Password</label>
                                <div class="input-group input-group-merge">                 
                                    <input id="password" type="password" placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                                    <span class="input-group-text cursor-pointer"><i class="ti ti-eye-off"></i></span>
                                </div>
                                <label id="password-error" class="error" for="password"></label>
                            </div>

                            <div class="col">
                                <label class="form-label" for="bio">Bio</label>
                                <input type="text" class="form-control" id="bio" value="{{ isset($user_details->bio) ? $user_details->bio : '' }}" placeholder="Bio" name="bio"
                                    aria-label="Bio" />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col">
                                <label class="form-label" for="title">Title</label>
                                <input type="text" class="form-control" id="title" value="{{ isset($user_details->title) ? $user_details->title : '' }}" placeholder="Title" name="title"
                                    aria-label="Title" />
                            </div>
                            <div class="col">
                                <label class="form-label" for="address">Address</label>
                                <input type="text" class="form-control" id="address" value="{{ isset($user_details->address) ? $user_details->address : '' }}" placeholder="Address" name="address"
                                    aria-label="Address" />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col">
                                <label class="form-label" for="title">City </label>
                                <input type="text" class="form-control" id="city" value="{{ isset($user_details->city) ? $user_details->city : '' }}" placeholder="City" name="city"
                                    aria-label="City" />
                            </div>
                            <div class="col">
                                <label class="form-label" for="address">State </label>
                                <input type="text" class="form-control" id="state" value="{{ isset($user_details->state) ? $user_details->state : '' }}" placeholder="State" name="state"
                                    aria-label="State" />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col">
                                <label class="form-label" for="title">Zipcode </label>
                                <input type="text" class="form-control" id="zipcode" value="{{ isset($user_details->zipcode) ? $user_details->zipcode : '' }}" placeholder="Zipcode" name="zipcode"
                                    aria-label="Zipcode" />
                            </div>
                            <div class="col">
                                <label class="form-label" for="address">Country </label>
                                <input type="text" class="form-control" id="country" value="{{ isset($user_details->country) ? $user_details->country : '' }}" placeholder="Country" name="country"
                                    aria-label="Country" />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col">
                                <label class="form-label" for="profile_image">Profile Image (square size) </label>
                                <input type="file" class="form-control" id="profile_image" name="profile_image" />
                            </div>
                            <div class="col">
                                <label class="form-label" for="cover_image">Cover Image (Banner size image) </label>
                                <input type="file" class="form-control" id="cover_image" name="cover_image" />
                            </div>
                        </div>



                      </div>
                    </div>
                    <!-- /Product Information -->
                    
                  </div>
                  <!-- /Second column -->

                  <!-- Second column -->
                  <div class="col-12 col-lg-4">
                    <!-- Pricing Card -->
                    <div class="card mb-4">
                      <div class="card-header">
                        <h5 class="card-title mb-0">Social Media</h5>
                      </div>
                      <div class="card-body">
                       
                        <div class="mb-3">
                          <label class="form-label" for="facebook">Facebook</label>
                          <input type="text" class="form-control" id="facebook" value="{{ isset($user_details->facebook) ? $user_details->facebook : '' }}" placeholder="Facebook" name="facebook"
                            aria-label="Facebook" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="instagram">Instagram</label>
                          <input type="text" class="form-control" id="instagram" value="{{ isset($user_details->instagram) ? $user_details->instagram : '' }}" placeholder="instagram" name="instagram"
                            aria-label="Instagram" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="instagram_threads">Instagram Threads</label>
                          <input type="text" class="form-control" id="instagram_threads" value="{{ isset($user_details->instagram_threads) ? $user_details->instagram_threads : '' }}" placeholder="Instagram Threads" name="instagram_threads"
                            aria-label="Instagram Threads" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="whatsapp">Whatsapp</label>
                          <input type="text" class="form-control" id="whatsapp" value="{{ isset($user_details->whatsapp) ? $user_details->whatsapp : '' }}" placeholder="Whatsapp" name="whatsapp"
                            aria-label="Whatsapp" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="whatsapp">Linkedin</label>
                          <input type="text" class="form-control" id="linkedin" value="{{ isset($user_details->linkedin) ? $user_details->linkedin : '' }}" placeholder="Linkedin" name="linkedin"
                            aria-label="Linkedin" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="twiter">Twiter</label>
                          <input type="text" class="form-control" id="twiter" value="{{ isset($user_details->twiter) ? $user_details->twiter : '' }}" placeholder="Twiter" name="twiter"
                            aria-label="Twiter" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="youtube">Youtube</label>
                          <input type="text" class="form-control" id="youtube" value="{{ isset($user_details->youtube) ? $user_details->youtube : '' }}" placeholder="Youtube" name="youtube"
                            aria-label="Youtube" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="behance">Behance</label>
                          <input type="text" class="form-control" id="behance" value="{{ isset($user_details->behance) ? $user_details->behance : '' }}" placeholder="Behance" name="behance"
                            aria-label="Behance" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="dribbble">Dribbble</label>
                          <input type="text" class="form-control" id="dribbble" value="{{ isset($user_details->dribbble) ? $user_details->dribbble : '' }}" placeholder="Dribbble" name="dribbble"
                            aria-label="Dribbble" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="pinterest">Pinterest</label>
                          <input type="text" class="form-control" id="pinterest" value="{{ isset($user_details->pinterest) ? $user_details->pinterest : '' }}" placeholder="Pinterest" name="pinterest"
                            aria-label="Pinterest" />
                        </div>
                       
                                             
                      </div>
                    </div>
                    <!-- /Pricing Card -->                   
                  </div>
                  <!-- /Second column -->
                </div>
              </div>
            </div>
            </form>
            <!-- / Content -->
            <!-- Footer -->
            @include("layouts/footer")
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>

      <!-- Drag Target Area To SlideIn Menu On Small Screens -->
      <div class="drag-target"></div>
    </div>
    <!-- / Layout wrapper -->

    @endsection