@extends('layouts.app')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Class Timetable</h1>
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
                <h3 class="card-title">Search Class Timetable</h3>
              </div>          
              <form method="get" action="">
              {{csrf_field()}}
                <div class="card-body">
                  <div class="row">
                  <div class="form-group col-md-3">
                    <label>Class Name</label>
                    <select name="class_id" class="form-control getClass" required>
                        <option value="">Select</option>
                        @foreach($getClass as $class)
                        <option value="{{ $class->id }}">{{ $class->name }}</option>
                        @endforeach
                    </select>                    
                  </div>  
                  <div class="form-group col-md-3">
                    <label>Subject Name</label>
                    <select name="subject_id" class="form-control getSubject" required>
                        <option value="">Select</option>                       
                    </select>   
                  </div>                  

                  <div class="form-group col-md-3">
                    <button class="btn btn-primary" type="submit" style="margin-top:30px;">Search</button>
                    <a href="{{url('admin/class_timetable/list')}}" class="btn btn-success" style="margin-top: 30px;">Reset</a>
                  </div>

                  </div>                                  
                </div>
              </form>
            </div>                
        
            
            
          </div>
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
        $('.getClass').change(function()
        {
            var class_id=$(this).val();
            $.ajax({
                url:"{{url('admin/class_timetable/get_subject')}}",
                type:"POST",
                data:{
                    "_token":"{{ csrf_token() }}",
                    class_id:class_id,
                },
                dataType:"json",
                success:function(response){

                },
            });

        });
    </script>
  @endsection