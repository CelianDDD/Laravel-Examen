@extends('layouts.master')

@section('page-pres')
<div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
  <div class="col-md-6 px-0">
    <h1 class="display-4 fst-italic">Le plus grand site de prêt à porter féminin</h1>
    <p class="lead my-3">Lorem ipsum dolor sit amet.lorem Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, magnam.</p>
  </div>
</div>
@endsection

@section('content')
  @foreach ($products as $product)
  <div class="col-md-6">
    <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
      <div class="col p-4 d-flex flex-column position-static">
        <strong class="d-inline-block mb-2 text-success">
          @foreach ($product->categories as $category)
            {{ $category->name}}
          @endforeach
        </strong>
        <h5 class="mb-0">{{ $product->title }}</h5>
        <p class="mb-auto text-muted">{{ $product->subtitle }}</p>
        <strong class="mb-auto font-weight-normal text-secondary">{{ $product->getPrice() }}</strong>
        <a href="{{ route('products.show', $product->slug) }}" class="stretched-link btn btn-info">Voir l'article</a>
      </div>
      <div class="col-auto d-none d-lg-block">
        <img src="{{ asset('storage/'.$product->image) }}" alt="">
      </div>
    </div>
  </div>
  @endforeach
@endsection
