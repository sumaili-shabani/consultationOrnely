@extends('voyager::master')

@section('content')
	<div class="col-md-12">


		<div class="container">
		    <div class="row justify-content-center">


		        <div class="col-md-4">

		            @include('layouts.menu')
		                        
		        </div>




		        <div class="col-md-8">
		            <div class="card">
		            	@foreach ($data as $row)
		                	<div class="card-header">Participer à la reunion {{$row->title}}</div>
		                @endforeach
		                <div class="card-body">

							@foreach ($data as $row)
							  

							    <!-- 16:9 aspect ratio -->
								<div class="embed-responsive embed-responsive-16by9">
								  <iframe class="embed-responsive-item" src="{{$row->url}}"></iframe>
								</div>


							@endforeach

		                </div>
		            </div>
		        </div>
		    </div>
		</div>


		



	</div>
@stop