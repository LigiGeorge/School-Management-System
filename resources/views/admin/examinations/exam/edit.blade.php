@extends('layouts.app')
@section('content')

<div class="content-wrapper">   
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Edit Exam</h1>
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
                    <label>Exam Name</label>
                    <input type="text" class="form-control" name="name" value="{{ $getRecord->name }}" required placeholder="Exam name">
                  </div>
                  <div class="form-group">
                    <label>Note</label>
                    <textarea name="note" class="form-control" >{{ $getRecord->note }}</textarea>                    
                  </div>                                
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Update</button>
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