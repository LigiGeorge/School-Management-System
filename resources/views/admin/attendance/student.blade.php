@extends('layouts.app')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Student Attendance</h1>
          </div>                    
        </div>
      </div><!-- /.container-fluid -->
    </section>
        
    <!-- Main content -->
    <section class="content">      
      <div class="container-fluid">
        <div class="row">           
          <div class="col-md-12">                      
            <div class="card">  
            <div class="card-header">
                <h3 class="card-title">Search Student Attendance</h3>
              </div>          
              <form method="get" action="">
              {{csrf_field()}}
                <div class="card-body">
                  <div class="row">                  
                  <div class="form-group col-md-3">
                    <label>Class</label>
                     <select name="class_id" class="form-control" id="getClass" required >
                        <option value="">Select</option>
                        @foreach($getClass as $class)
                        <option {{ (Request::get('class_id') == $class->id) ? 'selected' : '' }} value="{{ $class->id }}">{{ $class->name }}</option>
                        @endforeach
                     </select>  
                  </div> 
                  <div class="form-group col-md-3">
                    <label>Attendance Date</label>
                     <input type="date" id="getAttendanceDate" name="attendance_date" value="{{ Request::get('attendance_date') }}" class="form-control" required> 
                  </div>                

                  <div class="form-group col-md-3">
                    <button class="btn btn-primary" type="submit" style="margin-top:30px;">Search</button>
                    <a href="{{url('admin/attendance/student')}}" class="btn btn-success" style="margin-top: 30px;">Reset</a>
                  </div>

                  </div>                                  
                </div>
              </form>
            </div> 
             
            @if(!empty(Request::get('class_id')) && !empty(Request::get('attendance_date')))
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Student List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
              <div class="table-responsive" style="overflow-x: auto;">
                <table class="table table-striped" >
                    <thead>
                        <tr>
                        <th>Student ID</th>
                        <th>Student Name</th>
                        <th>Attendance</th>
                        </tr>                        
                    </thead>
                    <tbody>
                    @if(!empty($getStudent) && !empty($getStudent->count()))
                        @foreach($getStudent as $value)
                            @php
                                $attendance_type = '';
                                $getAttendance = $value->getAttendance($value->id,Request::get('class_id'),Request::get('attendance_date'));
                                if(!empty($getAttendance->attendance_type))
                                {
                                    $attendance_type = $getAttendance->attendance_type;
                                }
                            @endphp
                            <tr>
                                <td>{{ $value->id }}</td>
                                <td>{{ $value->name }} {{ $value->last_name }}</td>
                                <td>
                                    <label style="margin-right :10px;">
                                        <input type="radio" {{ $attendance_type == '1' ? 'checked' : '' }} id="{{ $value->id }}" class="SaveAttendance" name="attendance{{ $value->id }}" value="1"> Present
                                    </label>
                                    <label style="margin-right :10px;">
                                        <input type="radio" {{ $attendance_type == '2' ? 'checked' : '' }} id="{{ $value->id }}" class="SaveAttendance" name="attendance{{ $value->id }}" value="2"> Late
                                    </label>
                                    <label style="margin-right :10px;">
                                        <input type="radio" {{ $attendance_type == '3' ? 'checked' : '' }} id="{{ $value->id }}" class="SaveAttendance" name="attendance{{ $value->id }}" value="3"> Absent
                                    </label>
                                    <label style="margin-right :10px;">
                                        <input type="radio" {{ $attendance_type == '4' ? 'checked' : '' }} id="{{ $value->id }}" class="SaveAttendance" name="attendance{{ $value->id }}" value="4"> Half Day
                                    </label>
                                </td>
                            </tr>
                        @endforeach
                    
                    @endif
                    </tbody>
                </table>   
              </div> 
              </div>  
            </div>            
            @endif
          <!-- /.col -->
        </div>
        <!-- /.row -->
        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  @endsection
  @section('script')
  <script type="text/javascript">
    $('.SaveAttendance').change(function(e){       
      var student_id = $(this).attr('id');
      var attendance_type = $(this).val();
      var class_id = $('#getClass').val();
      var attendance_date = $('#getAttendanceDate').val();
     
      $.ajax({
            type : "POST",
            url : "{{ url('admin/attendance/student/save') }}",
            data : {
              "_token" : "{{ csrf_token() }}",
              student_id : student_id,
              attendance_type : attendance_type,
              class_id : class_id,
              attendance_date : attendance_date,
            },
            dataType : "json",
            success : function(data){
              alert(data.message);
            }            
        });        
    });
  </script>
  @endsection
  