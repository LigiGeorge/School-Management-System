@extends('layouts.app')
@section('content')

<div class="content-wrapper">   
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Add New Student</h1>
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">         
          <div class="col-md-12">            
            <div class="card card-primary">
            
              <form method="post" action="" enctype="multipart/form-data">
              {{csrf_field()}}
                <div class="card-body">
                 <div class="row">

                  <div class="form-group col-md-6">
                    <label>First Name</label><span style="color:red;">*</span>
                    <input type="text" class="form-control" name="name" value="{{old('name')}}" required placeholder="First name">
                  </div>

                  <div class="form-group col-md-6">
                    <label>Last Name</label><span style="color:red;">*</span>
                    <input type="text" class="form-control" name="last_name" value="{{old('last_name')}}" required placeholder="Last name">
                  </div>

                  <div class="form-group col-md-6">
                    <label> Admission Number</label><span style="color:red;">*</span>
                    <input type="text" class="form-control" name="admission_number" value="{{old('admission_number')}}" required placeholder="Admission Number">
                  </div>

                  <div class="form-group col-md-6">
                    <label> Roll Number</label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="roll_number" value="{{old('roll_number')}}" required placeholder="Roll Number">
                  </div>

                  <div class="form-group col-md-6">
                    <label>Class</label><span style="color:red;">*</span>
                    <select name="class_id" class="form-control" required>
                        <option value="">Select Class</option>
                        @foreach($getClass as $value)
                        <option value="{{$value->id}}">{{$value->name}}</option>
                        @endforeach
                    </select>
                  </div>

                  <div class="form-group col-md-6">
                    <label> Gender </label><span style="color:red;">*</span>
                    <select name="gender" class="form-control" required>
                        <option value="">Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                  </div>

                  <div class="form-group col-md-6">
                    <label> Date Of Birth </label><span style="color:red;">*</span>
                    <input type="date" class="form-control" name="date_of_birth" value="{{old('date_of_birth')}}" required >
                  </div>

                  <div class="form-group col-md-6">
                    <label> Caste </label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="caste" value="{{old('caste')}}" placeholder="Caste">
                  </div>

                  <div class="form-group col-md-6">
                    <label> Religion </label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="religion" value="{{old('religion')}}" placeholder="Religion">
                  </div>

                  <div class="form-group col-md-6">
                    <label> Mobile Number </label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="mobile_number" value="{{old('mobile_number')}}" placeholder="Mobile Number">
                  </div>

                  <div class="form-group col-md-6">
                    <label>Admission Date</label><span style="color:red;">*</span>
                    <input type="date" class="form-control" name="admission_date" value="{{old('admission_date')}}" placeholder="Admission Date">
                  </div>

                  <div class="form-group col-md-6">
                    <label>Profile Pic</label><span style="color:red;"></span>
                    <input type="file" class="form-control" name="profile_pic">
                  </div>

                  <div class="form-group col-md-6">
                    <label>Blood Group</label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="blood_group" value="{{old('blood_group')}}" placeholder="Blood Group">
                  </div>

                  <div class="form-group col-md-6">
                    <label>Height</label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="height" value="{{old('height')}}" placeholder="Height">
                  </div>

                  <div class="form-group col-md-6">
                    <label>Weight</label><span style="color:red;"></span>
                    <input type="text" class="form-control" name="weight" value="{{old('weight')}}" placeholder="Weight">
                  </div>

                  <div class="form-group col-md-6">
                    <label> Status </label><span style="color:red;">*</span>
                    <select name="status" class="form-control" required>
                        <option value="">Select Status</option>
                        <option value="0">Active</option>
                        <option value="1">Inactive</option>
                    </select>
                  </div>

                 </div><!--/row-->
                 <hr>                  
                  <div class="form-group">
                    <label>Email</label><span style="color:red;">*</span>
                    <input type="email" class="form-control" name="email" value="{{old('email')}}" required placeholder="Enter email">
                    <div style="color:red;">{{$errors->first('email')}}</div>
                  </div>
                  <div class="form-group">
                    <label>Password</label><span style="color:red;">*</span>
                    <input type="password" class="form-control" name="password" required placeholder="Password">
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