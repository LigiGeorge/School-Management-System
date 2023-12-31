@extends('layouts.app')
@section('content')

<div class="content-wrapper">   
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Settings</h1>
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">         
          <div class="col-md-12">   
            @include('_message')         
            <div class="card card-primary">
            
              <form method="post" action="" enctype="multipart/form-data">
              {{csrf_field()}}
                <div class="card-body">
                  
                  <div class="form-group">
                    <label>Paypal Business Email</label>
                    <input type="email" class="form-control" name="paypal_email" value="{{ $getRecord->paypal_email }}" >
                   </div>
                  <div class="form-group">
                    <label>Stripe Public Key</label>
                    <input type="text" class="form-control" name="stripe_key" value="{{ $getRecord->stripe_key }}">
                  </div>
                  <div class="form-group">
                    <label>Stripe Secret Key</label>
                    <input type="text" class="form-control" name="stripe_secret" value="{{ $getRecord->stripe_secret }}">
                  </div>    
                  <div class="form-group">
                    <label>Logo</label><span style="color:red;"></span>
                    <input type="file" class="form-control" name="logo"> 
                    @if(!empty($getRecord->getLogo()))
                    <img src="{{ $getRecord->getLogo() }}" style="width: auto;height:50px;">
                    @endif                  
                  </div>                            
                  <div class="form-group">
                    <label>Favicon Icon</label><span style="color:red;"></span>
                    <input type="file" class="form-control" name="favicon_icon"> 
                    @if(!empty($getRecord->getFavicon())) 
                    <img src="{{ $getRecord->getFavicon() }}" style="width: auto;height:50px;">
                    @endif                 
                  </div>
                  <div class="form-group">
                    <label>School Name</label>
                    <input type="text" class="form-control" name="school_name" value="{{ $getRecord->school_name }}">
                  </div>
                  <div class="form-group">
                    <label>Exam Description</label>
                    <textarea name="exam_description" class="form-control" >{{ $getRecord->exam_description }}</textarea>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Save</button>
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