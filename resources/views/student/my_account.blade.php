@extends('layouts.app')
@section('content')

<div class="content-wrapper">   
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>My Account</h1>
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">         
          <div class="col-md-12"> 
            @include('_message');           
            <div class="card card-primary">
            
              <form method="post" action="" enctype="multipart/form-data">
              {{csrf_field()}}
                <div class="card-body">
                 <div class="row">

                  <div class="form-group col-md-6">
                    <label>First Name</label><span style="color:red;">*</span>
                    <input type="text" class="form-control" name="name" value="{{old('name',$getRecord->name)}}" required placeholder="First name">
                    <div style="color:red;">{{$errors->first('name')}}</div>
                  </div>

                  <div class="form-group col-md-6">
                    <label>Last Name</label><span style="color:red;">*</span>
                    <input type="text" class="form-control" name="last_name" value="{{old('last_name',$getRecord->last_name)}}" required placeholder="Last name">
                    <div style="color:red;">{{$errors->first('last_name')}}</div>
                  </div>                 
                 
                  <div class="form-group col-md-6">
                    <label> Gender </label><span style="color:red;">*</span>
                    <select name="gender" class="form-control" required>
                        <option value="">Select Gender</option>
                        <option {{ (old('gender',$getRecord->gender)=='Male') ? 'selected' : ''}} value="Male">Male</option>
                        <option {{ (old('gender',$getRecord->gender)=='Female') ? 'selected' : ''}} value="Female">Female</option>
                        <option {{ (old('gender',$getRecord->gender)=='Other') ? 'selected' : ''}} value="Other">Other</option>
                    </select>
                    <div style="color:red;">{{$errors->first('gender')}}</div>
                  </div>

                  <div class="form-group col-md-6">
                    <label> Date Of Birth </label><span style="color:red;">*</span>
                    <input type="date" class="form-control" name="date_of_birth" value="{{old('date_of_birth',$getRecord->date_of_birth)}}" required >
                    <div style="color:red;">{{$errors->first('date_of_birth')}}</div>
                  </div>

                  <div class="form-group col-md-6">
                    <label> Caste </label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="caste" value="{{old('caste',$getRecord->caste)}}" placeholder="Caste">
                    <div style="color:red;">{{$errors->first('caste')}}</div>
                  </div>

                  <div class="form-group col-md-6">
                    <label> Religion </label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="religion" value="{{old('religion',$getRecord->religion)}}" placeholder="Religion">
                    <div style="color:red;">{{$errors->first('religion')}}</div>
                  </div>

                  <div class="form-group col-md-6">
                    <label> Mobile Number </label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="mobile_number" value="{{old('mobile_number',$getRecord->mobile_number)}}" placeholder="Mobile Number">
                    <div style="color:red;">{{$errors->first('mobile_number')}}</div>
                  </div>                  

                  <div class="form-group col-md-6">
                    <label>Profile Pic</label><span style="color:red;"></span>
                    <input type="file" class="form-control" name="profile_pic">
                    <div style="color:red;">{{$errors->first('profile_pic')}}</div>
                    @if(!empty($getRecord->getProfile()))
                    <img src="{{ $getRecord->getProfile() }}" style="width: auto;height:50px;">
                    @endif
                  </div>

                  <div class="form-group col-md-6">
                    <label>Blood Group</label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="blood_group" value="{{old('blood_group',$getRecord->blood_group)}}" placeholder="Blood Group">
                    <div style="color:red;">{{$errors->first('blood_group')}}</div>
                  </div>

                  <div class="form-group col-md-6">
                    <label>Height</label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="height" value="{{old('height',$getRecord->height)}}" placeholder="Height">
                    <div style="color:red;">{{$errors->first('height')}}</div>
                  </div>

                  <div class="form-group col-md-6">
                    <label>Weight</label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="weight" value="{{old('weight',$getRecord->weight)}}" placeholder="Weight">
                    <div style="color:red;">{{$errors->first('weight')}}</div>
                  </div>                 

                 </div><!--/row-->
                 <hr>                  
                  <div class="form-group">
                    <label>Email</label><span style="color:red;">*</span>
                    <input type="email" class="form-control" name="email" value="{{old('email',$getRecord->email)}}" required placeholder="Enter email">
                    <div style="color:red;">{{$errors->first('email')}}</div>
                  </div>                               
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            

          </div>
         
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

@endsection