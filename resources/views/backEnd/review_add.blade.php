@extends('backEnd.layouts.master')
@section('title','Banner Create')
@section('css')
<link href="{{asset('public/backEnd')}}/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="{{asset('public/backEnd')}}/assets/css/switchery.min.css" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="container">
    @if (session('success'))
    <div style="color: green; font-weight: bold;">
        {{ session('success') }}
    </div>
@endif

    
 <form action="{{url('admin/sub-rev')}}" method="post" enctype="multipart/form-data">
    @csrf
  
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">image</label>
    <input type="file" name="image" class="form-control" id="exampleInputPassword1">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
<br><br><br>
<table class="table">
  <thead>
    <tr>
    
      
      <th scope="col">Image</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
    @foreach ($im as $image)
        
   
    <tr>
     
      <td><img style="height: 100px; width:100px;" src="{{asset('public/'.$image->image)}}" alt=""></td>
      <td><a href="{{url('admin/rev-image-del/'.$image->id)}}">Delete</a></td>
    </tr>
    @endforeach
  </tbody>
</table>
@endsection


@section('script')
<script src="{{asset('public/backEnd/')}}/assets/libs/parsleyjs/parsley.min.js"></script>
<script src="{{asset('public/backEnd/')}}/assets/js/pages/form-validation.init.js"></script>
<script src="{{asset('public/backEnd/')}}/assets/libs/select2/js/select2.min.js"></script>
<script src="{{asset('public/backEnd/')}}/assets/js/pages/form-advanced.init.js"></script>
<script src="{{asset('public/backEnd/')}}/assets/js/switchery.min.js"></script>

@endsection