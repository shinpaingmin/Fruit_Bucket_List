@extends('master')
@section('content')
<div class="container my-5">
    <div class="row">
        <div class="col-6 offset-3">
            <form action="{{route('post#update')}}" method="post" enctype="multipart/form-data">
                @csrf      {{--important--}}
                <input type="hidden" name="id" value={{$post['id']}}>
                <div class="text-group mb-3">
                    <label for="" class="mb-1">Post Title</label>
                    <input type="text" name="postTitle" value="{{old('postTitle', $post['title'])}}" class="form-control @error('postTitle') is-invalid @enderror" placeholder="Enter Post Title ..." required>
                    @error('postTitle')
                        <div class="invalid-feedback">
                            {{$message}}
                        </div>
                    @enderror
                </div>
                <div class="text-group mb-3">
                    <label for="" class="mb-1">Post Description</label>
                    <textarea name="postDescription" class="form-control @error('postDescription')is-invalid @enderror" placeholder="Enter Post Description" cols="30" rows="10" required>{{old('postDescription', $post['description'])}}</textarea>
                    @error('postDescription')
                        <div class="invalid-feedback">
                            {{$message}}
                        </div>
                    @enderror
                </div>
                <div class="text-group mb-3">
                    <label for="" class="mb-1">Please select an image</label>
                    <input type="file" name="image" class="form-control">
                </div>
                <div class="text-group mb-3">
                    <label for="" class="mb-1">Price</label>
                    <input type="text" value="{{old('price', $post['price'])}}" name="price" class="form-control @error('price')is-invalid @enderror" placeholder="Enter Price ...">
                    @error('price')
                    <small class="invalid-feedback">{{ $message }}</small>
                    @enderror
                </div>
                <div class="text-group mb-3">
                    <label for="" class="mb-1">Address</label>
                    <textarea name="address" class="form-control @error('address')is-invalid @enderror" placeholder="Enter Address ..." cols="30" rows="10">{{ old('address', $post['address']) }}</textarea>
                    @error('address')
                    <small class="invalid-feedback">{{ $message }}</small>
                    @enderror
                </div>
                <div class="text-group mb-3">
                    <label for="" class="mb-1">Rating</label>
                    <input type="text" value="{{old('rating', $post['rating'])}}" name="rating" class="form-control @error('rating')is-invalid @enderror" placeholder="Enter Rating ...">
                    @error('rating')
                    <small class="invalid-feedback">{{ $message }}</small>
                    @enderror
                </div>
                <div class="mt-5 text-end">
                    <input type="submit" value="Update" class="btn btn-success">
                </div>
            </form>
        </div>
    </div>
</div>
<div class="d-flex justify-content-center mb-5">
    <small>Copyright &copy; 2023 <b>Mr. Shin Paing Min</b></small>
</div>

@endsection
