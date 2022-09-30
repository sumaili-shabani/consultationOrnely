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
		            	
		                <div class="card-header">Liste des medecins </div>
		               
		                <div class="card-body">

		                	<div class="col-md-12">
		                		
			                	<div class="row">

			                		@foreach ($data as $row)
			                			{{-- expr --}}
			                			<div class="col-md-6">
				                			<div class="row card">
											  <div class="col-sm-12 col-md-12 card-body">
											    <div class="thumbnail">
											      <img 
											      src="{{ Voyager::image($row->avatar) }}" style="height: 150px; width: 150px;" alt="...">
											      <div class="caption">
											        <h3>{{$row->name}}</h3>
											        <p>{{$row->email}}</p>
											        <p class="text-center"><a href="javascript:void(0);" class="btn btn-primary" role="button"><i class="voyager-eye"></i> Détail</a></p>
											      </div>
											    </div>
											  </div>
											</div>
				                		</div>
			                		@endforeach

								</div>
								<div class="row">
									<div class="col-md-12 text-center">
										{{ $data->links() }}
									</div>
								</div>
		                	</div>

							

		                </div>
		            </div>
		        </div>
		    </div>
		</div>


		



	</div>
@stop