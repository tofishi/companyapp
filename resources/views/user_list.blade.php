@extends('layouts.app')
@section('content')

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

            <div class="container-xxl flex-grow-1 container-p-y">              
              <!-- Users List Table -->
              <div class="card">
                <div class="card-header border-bottom">
                  <h5 class="card-title mb-3">User List</h5>
                  <!-- <div class="d-flex justify-content-between align-items-center row pb-2 gap-3 gap-md-0">
                    <div class="col-md-4 user_role"></div>
                    <div class="col-md-4 user_plan"></div>
                    <div class="col-md-4 user_status"></div>
                  </div> -->
                  <div class="d-flex justify-content-start justify-content-md-end align-items-baseline">
                    <a href="{{url('/')}}/user/add" class="dt-button add-new btn btn-primary ms-2 ms-sm-0 waves-effect waves-light" tabindex="0" aria-controls="DataTables_Table_0" >
                      <span>
                        <i class="ti ti-plus me-0 me-sm-1 ti-xs"></i>
                        <span class="d-none d-sm-inline-block">Add User</span>
                      </span>
                    </a>
                  </div>
                </div>
                <div class="card-datatable text-nowrap">
                  <table class="datatables-ajax table">
                    <thead>
                      <tr>
                        <th></th>
                        <th>Full name</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                        <th>Added Date</th>
                        <th>Status</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                        @if(!empty($user_list))
                            @foreach($user_list as $user)
                                <tr>
                                    <td><img src=""></td>
                                    <td>{{$user->name}}</td>
                                    <td>{{$user->email }}</td>
                                    <td>{{$user->phone_number }}</td>
                                    <td>{{$user->created_at }}</td>
                                    <td>
                                      @if($user->status == 1)<span class="badge bg-label-success" text-capitalized="">Active</span>@else
                                      <span class="badge bg-label-secondary" text-capitalized="">Inactive</span>@endif
                                    </td>
                                    <td>
                                      <div class="d-flex align-items-center">
                                        <a href="{{url('/user/edit/'.$user->id)}}" class="text-body"><i class="ti ti-edit ti-sm me-2"></i></a>
                                        <a href="javascript:;" class="text-body delete-record"><i class="ti ti-trash ti-sm mx-2"></i></a>
                                        <!-- <a href="javascript:;" class="text-body dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="ti ti-dots-vertical ti-sm mx-1"></i></a>
                                        <div class="dropdown-menu dropdown-menu-end m-0">
                                          <a href="app-user-view-account.html" class="dropdown-item">View</a>
                                          <a href="javascript:;" class="dropdown-item">Suspend</a>
                                        </div> -->
                                      </div>
                                    </td>
                                </tr>
                            @endforeach
                        @endif
                    </tbody>
                  </table>
                </div>
                
              </div>

            </div>
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