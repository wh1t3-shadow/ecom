@extends('backEnd.layouts.master')
@section('title','Childcategory Edit')
@section('css')
<link href="{{asset('public/backEnd')}}/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="{{asset('public/backEnd')}}/assets/libs/summernote/summernote-lite.min.css" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="container-fluid">
    
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <a href="{{route('childcategories.index')}}" class="btn btn-primary rounded-pill">Manage</a>
                </div>
                <h4 class="page-title">Childcategory Edit</h4>
            </div>
        </div>
    </div>       
    <!-- end page title --> 
   <div class="row justify-content-center">
    <div class="col-lg-8">
        <div class="card">
            <div class="card-body">
                <form action="{{route('childcategories.update')}}" method="POST" class="row" data-parsley-validate="" name="editForm"  enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" value="{{$edit_data->id}}" name="id">
                    

                    <div class="col-sm-12">
                        <div class="form-group mb-3">
                            <label for="subcategory_id" class="form-label">Category *</label>
                             <select class="form-select form-control select2-multiple @error('subcategory_id') is-invalid @enderror" id="subcategory_id" name="subcategory_id" value="{{ old('subcategory_id') }}" data-toggle="select2" data-placeholder="Choose ..."required>
                                <optgroup >
                                    <option value="">Choose..</option>
                                    @foreach ($menucategories as $category)
                                    <option value="">== == == {{ $category->name }} == == ==</option>
                                        @foreach ($category->subcategories as $subcat)
                                            <option value="{{ $subcat->id }}" @if($subcat->id == $edit_data->subcategory_id) selected @endif >{{ $subcat->subcategoryName }}</option>
                                            
                                        @endforeach
                                    @endforeach
                                </optgroup>
                            </select>
                            @error('subcategory_id')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <!-- col end -->

                    <div class="col-sm-12">
                        <div class="form-group mb-3">
                            <label for="childcategoryName" class="form-label">childcategoryName *</label>
                            <input type="text" id="childcategoryName" class="form-control @error('childcategoryName') is-invalid @enderror" name="childcategoryName" value="{{ $edit_data->childcategoryName }}" id="childcategoryName" required="">
                            @error('childcategoryName')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <!-- col-end -->
                    <div class="col-sm-12">
                        <div class="form-group mb-3">
                            <label for="meta_title" class="form-label">Meta Title</label>
                            <input type="text" class="form-control @error('meta_title') is-invalid @enderror" name="meta_title" value="{{ $edit_data->meta_title }}" id="meta_title">
                            @error('meta_title')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    
                    <div class="col-sm-12">
                        <div class="form-group mb-3">
                            <label for="meta_description" class="form-label">Meta Description</label>
                            <textarea class="summernote form-control @error('meta_description')  is-invalid @enderror" name="meta_description" rows="6"  id="meta_description" >{!!$edit_data->meta_description!!}</textarea>
                            @error('meta_description')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                  
                    <div class="col mb-3">
                        <div class="form-group">
                            <label for="status" class="d-block">Status</label>
                            <label class="switch">
                              <input type="checkbox" value="1" name="status" @if($edit_data->status==1)checked @endif>
                              <span class="slider round"></span>
                            </label>
                            @error('status')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <!-- col end -->
                    
                    
                    
                    <div>
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

<script src="{{asset('public/backEnd/')}}/assets/libs//summernote/summernote-lite.min.js"></script>
<script>
    $(".summernote").summernote({
        placeholder: "Enter Your Text Here",    
    });
</script>

<script type="text/javascript">
    document.forms["editForm"].elements["childcategorytype"].value = "{{$edit_data->childcategorytype}}";
    document.forms["editForm"].elements["subcategory_id"].value = "{{$edit_data->subcategory_id}}";
</script>
<!-- /.content -->
@endsection