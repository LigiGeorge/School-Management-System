@extends('layouts.app')
@section('content')

<div class="content-wrapper">   
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Add New Marks Grade</h1>
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
            
              <form method="post" action="">
              {{csrf_field()}}
                <div class="card-body">
                  <div class="form-group">
                    <label>Grade Name</label>
                    <input type="text" class="form-control" name="name" value="{{old('name')}}" required placeholder="Grade name">
                  </div>
                  <div class="form-group">
                    <label>Percent From</label>
                    <input type="number" class="form-control" name="percent_from" value="{{old('percent_from')}}" required placeholder="">
                  </div>
                  <div class="form-group">
                    <label>Percent To</label>
                    <input type="number" class="form-control" name="percent_to" value="{{old('percent_to')}}" required placeholder="">
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