@extends('backEnd.layouts.master')
@section('title','Roles Edit')
@section('css')
<link href="{{asset('public/backEnd')}}/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="container-fluid">
    
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <a href="{{route('users.index')}}" class="btn btn-primary rounded-pill">Manage</a>
                </div>
                <h4 class="page-title">Roles Edit</h4>
            </div>
        </div>
    </div>       
    <!-- end page title --> 
   <div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <form action="{{route('roles.update')}}" method="POST" class=row data-parsley-validate=""  enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="hidden_id" value="{{$edit_data->id}}">
                    <div class="col-sm-12">
                        <div class="form-group mb-3">
                            <label for="name" class="form-label">Name *</label>
                            <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $edit_data->name}}" id="name" required="">
                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <!-- col-end -->
                      <div class="col-sm-12">
                          <div class="form-check checkall text-primary">
                            <input type="checkbox" class="form-check-input">
                            <label class="form-check-label" for="checkall">Check All</label>
                        </div>
                        <div class="row">
                        @foreach($permission as $value)
                        <div class="col-sm-4 my-1">
                            <div class="form-check">
                                <input type="checkbox" name="permission[]" class="form-check-input" value="{{$value->id}}" id="customCheck{{$value->id}}"  @foreach($edit_data->permissions as $permission) {{$permission->id==$value->id?'checked':''}} @endforeach >
                                <label class="form-check-label" for="customCheck{{$value->id}}">{{$value->name}}</label>
                            </div>
                        </div>
                        @endforeach
                        </div>
                      </div>
                    <div class="mt-3">
                        <input type="submit" class="btn btn-success" value="Submit">
                    </div>

                </form>

            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col-->
   </div>
</div>
@endsection


@section('script')
<script src="{{asset('public/backEnd/')}}/assets/libs/parsleyjs/parsley.min.js"></script>
<script src="{{asset('public/backEnd/')}}/assets/js/pages/form-validation.init.js"></script>
<script src="{{asset('public/backEnd/')}}/assets/libs/select2/js/select2.min.js"></script>
<script src="{{asset('public/backEnd/')}}/assets/js/pages/form-advanced.init.js"></script>
<script>
    jQuery(".checkall").click(function() {
    jQuery(':checkbox').each(function() {
        this.checked = true;                        
    });

  });
</script>
@endsection