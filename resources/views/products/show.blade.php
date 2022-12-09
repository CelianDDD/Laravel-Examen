@extends('layouts.master')

@section('content')
  <div class="col-md-12 mt-5">
    <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
      <div class="col p-4 d-flex flex-column position-static">
        <strong class="d-inline-block mb-2 text-success">
          @foreach ($product->categories as $category)
            {{ $category->name }}
          @endforeach
        </strong>
        <h5 class="mb-0">{{ $product->title }}</h5>
        <hr>
        <p class="mb-auto text-muted"> {{ $product->description }} </p>
        <strong class="mb-auto font-weight-normal text-secondary mt-2">{{ $product->getPrice() }}</strong>
        <form action="#">
          <button type="submit" class="btn btn-dark mt-2">Ajouter au panier</button>
        </form>
      </div>
      <div class="col-auto d-none d-lg-block">
        <img src="{{ asset('storage/'.$product->image) }}" alt="">
      </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
  </div>
@endsection