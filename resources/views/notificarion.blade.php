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
		            	
		                <div class="card-header">Liste des notifications </div>
		               
		                <div class="card-body">

							<ul class="list-group">

								@foreach ($data as $row)
								  <li class="list-group-item">
								    <span class="badge"><a class="text-white" href="/notification/{{$row->id}}"><i class="voyager-eye"></i> </a> Participer</span>

								    <a class="text-white" href="/notification/{{$row->id}}">{{$row->title}} </a>
								    
								  </li>
								@endforeach

							</ul>

		                </div>
		            </div>
		        </div>
		    </div>
		</div>


		



	</div>
@stop