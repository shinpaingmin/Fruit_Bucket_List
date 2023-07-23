@extends('master')

@section('content')
<div class="container mt-5">
    <div class="row">
        <div class="col-6 offset-3">
            <a href="{{route('post#createPage')}}" class="text-decoration-none btn btn-sm btn-danger mb-3"><i class="fa-solid fa-backward"></i> Back</a>
            <div class="shadow-lg p-3">
                <small class="mt-4">{{$post['created_at']->format('M-d-Y')}}</small>
                <h4 class="mt-4">{{$post['title']}}</h4>
                <div class="row  mb-3">
                    <span class="col"><small><i class="fa-solid fa-sack-dollar text-primary"></i> {{$post['price']}}</small></span>
                    <span class="col"><small><i class="fa-solid fa-location-dot text-danger"></i> {{$post['address']}}</small></span>
                    <span class="col">
                        @for ($i=0; $i<$post['rating']; $i++)
                        <small><i class="fa-solid fa-star text-warning"></i></small>
                        @endfor
                    </span>
                </div>
                <img src="{{($post['image'] != null)? asset('storage/' . $post['image']) : asset('No_Image_Available.jpg') }}" alt="" class="img-thumbnail mb-3">
                <p>
                    {{$post['description']}}
                </p>


            </div>
        </div>
    </div>
    <div class="row my-5">
        <div class="col-4 offset-8">
            <a href="{{route('post#updatePage', $post['id'])}}" class="text-decoration-none btn btn-sm btn-primary mx-5">Edit</a>
        </div>
    </div>
    <div class="d-flex justify-content-center mb-5">
        <small>Copyright &copy; 2023 <b>Mr. Shin Paing Min</b></small>
    </div>
</div>

@endsection
