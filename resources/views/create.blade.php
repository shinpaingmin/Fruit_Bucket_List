@extends('master')

@section('content')
    <div class="container mt-5">
        <div class="row">
            <div class="col-5 p-3">
                @if (session('updateSuccess'))
                    <div class="alert alert-warning alert-dismissible fade show my-4" role="alert">
                        <strong>{{ session('updateSuccess') }}!</strong>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endif
                @if (session('createSuccess'))
                    <div class="alert alert-warning alert-dismissible fade show my-4" role="alert">
                        <strong>{{ session('createSuccess') }}!</strong>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endif
                {{-- @if ($errors->any())
                    <ul class="alert alert-danger list-unstyled">
                        @foreach ($errors->all() as $error)
                            <li>{{$error}}</li>
                        @endforeach
                    </ul>
                @endif --}}
                <form action="{{ route('post#create') }}" method="post" enctype="multipart/form-data">
                    @csrf {{-- important --}}
                    <div class="text-group mb-3">
                        <label for="" class="mb-1">Post Title</label>
                        <input type="text" value="{{ old('postTitle') }}" name="postTitle"
                            class="form-control @error('postTitle')is-invalid @enderror" placeholder="Enter Post Title ...">
                        @error('postTitle')
                            <small class="invalid-feedback">{{ $message }}</small>
                        @enderror
                    </div>
                    <div class="text-group mb-3">
                        <label for="" class="mb-1">Post Description</label>
                        <textarea name="postDescription" class="form-control @error('postDescription')is-invalid @enderror"
                            placeholder="Enter Post Description" cols="30" rows="10">{{ old('postDescription') }}</textarea>
                        @error('postDescription')
                            <small class="invalid-feedback">{{ $message }}</small>
                        @enderror
                    </div>
                    <div class="text-group mb-3">
                        <label for="" class="mb-1">Please select an image</label>
                        <input type="file" name="image" class="form-control @error('image')is-invalid @enderror">
                        @error('image')
                            <small class="invalid-feedback">{{ $message }}</small>
                        @enderror
                    </div>
                    <div class="text-group mb-3">
                        <label for="" class="mb-1">Price</label>
                        <input type="text" value="{{ old('price') }}" name="price"
                            class="form-control @error('price')is-invalid @enderror" placeholder="Enter Price ...">
                        @error('price')
                            <small class="invalid-feedback">{{ $message }}</small>
                        @enderror
                    </div>
                    <div class="text-group mb-3">
                        <label for="" class="mb-1">Address</label>
                        <textarea name="address" class="form-control @error('address')is-invalid @enderror" placeholder="Enter Address ..."
                            cols="30" rows="10">{{ old('address') }}</textarea>
                        @error('address')
                            <small class="invalid-feedback">{{ $message }}</small>
                        @enderror
                    </div>
                    <div class="text-group mb-3">
                        <label for="" class="mb-1">Rating</label>
                        <input type="text" value="{{ old('rating') }}" name="rating"
                            class="form-control @error('rating')is-invalid @enderror" placeholder="Enter Rating ...">
                        @error('rating')
                            <small class="invalid-feedback">{{ $message }}</small>
                        @enderror
                    </div>
                    <div class="mb-3 text-end">
                        <input type="submit" value="Create" class="btn btn-success">
                    </div>
                </form>
            </div>
            <div class="col-7">

                <div class="data-container p-3 ">
                    <div class="d-flex justify-content-between align-items-center">
                        <h1 class="text-danger">Toal Posts: {{ $posts->total() }}</h1>
                        <form action="{{ route('post#createPage') }}" method="get" class="d-flex">
                            <input type="text" name="searchItem" value="@if(request('searchItem')) {{request('searchItem')}} @endif" placeholder="Explore something ..."
                                class="form-control mx-3 w-100">
                            <button type="submit" class="rounded-circle btn btn-outline-info "><i
                                    class="fa-solid fa-magnifying-glass btn-outline-info"></i></button>
                        </form>
                    </div>
                    @if (count($posts) !== 0)
                        @foreach ($posts as $post)
                        <div class="post p-3 shadow-sm mb-4">
                            <div class="d-flex align-items-center justify-content-between">
                                <h5>{{ $post['title'] }}</h5>
                                <small>{{ $post['created_at']->format('M-d-Y') }}</small>
                            </div>

                            <p>{{ Str::words($post['description'], 10, '...') }}</p>
                            <div>
                                <div>
                                    <span><small><i class="fa-solid fa-sack-dollar text-primary"></i> {{ $post['price'] }}
                                            mmk</small></span> |
                                    <span><small><i class="fa-solid fa-location-dot text-danger"></i>
                                            {{ $post['address'] }}</small></span>
                                </div>
                                @for ($i = 0; $i < $post['rating']; $i++)
                                    <small><i class="fa-solid fa-star text-warning"></i></small>
                                @endfor

                            </div>
                            <div class="text-end">
                                <a href="{{ route('post#delete', $post['id']) }}" class="btn btn-sm btn-danger"><i
                                        class="fa-solid fa-trash"></i> Delete</a>
                                <a href="{{ route('post#detail', [$post['id'], $post['description']]) }}"
                                    class="btn btn-sm btn-primary"><i class="fa-solid fa-file-lines"></i> See More</a>
                            </div>
                        </div>
                        @endforeach
                        @else
                        <div class="d-flex flex-column justify-content-center align-items-center my-5">
                            <i class="fa-regular fa-circle-xmark text-danger fs-1 my-3"></i>
                            <h3>No item was found</h3>
                        </div>
                    @endif



                </div>
                {{ $posts->appends(request()->query())->links() }}
            </div>

        </div>
    </div>
    <div class="d-flex justify-content-center mb-5">
        <small>Copyright &copy; 2023 <b>Mr. Shin Paing Min</b></small>
    </div>
@endsection
