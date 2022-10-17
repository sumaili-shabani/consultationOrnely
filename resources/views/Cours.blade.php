@extends('voyager::master')

@section('content')
	<div class="col-md-12">

		<div class="container">
		    <div class="row justify-content-center">


		        <div class="col-md-4">

		            @include('layouts.menu')
		                        
		        </div>




		        <div class="col-md-8">
		            <div class="col-md-12">

			           	<div class="col-md-12">
			                		
				            <div class="row">

		                		@foreach ($data as $row)
		                			{{-- expr --}}
		                			<div class="col-md-6">
			                			<div class="col-md-12 card">
										  <div class="col-sm-12 col-md-12 card-body">
										    <div class="thumbnail">
										      	<a href="/course/{{$row->id}}">
										    		<img 
										      		src="{{ Voyager::image($row->image) }}" style="height: 150px; width: 150px;" alt="...">
										    	</a>
											      <div class="caption text-center">
											        <h3>{{$row->nonCours}}</h3>
											        <p>
											        	
									        		<?php

									        		if ($row->etat == "option1") {
									        		 	// code...
										        		?>
										        		<span class="badge badge-danger">
										        			En attente
										        		</span>

										        		<?php
									        		 } 
									        		 elseif ($row->etat == "option2") {
									        		 	// code...
										        		?>
										        		<span class="badge badge-warning">
										        			En cours
										        		</span>

										        		<?php
									        		 }
									        		 elseif ($row->etat == "option3") {
									        		 	// code...
										        		?>
										        		<span class="badge badge-warning">
										        			Terminé
										        		</span>

										        		<?php
									        		 }
									        		 else{

									        		 }
									        		  

									        		?>

											        		
											        	
											        </p>

											        <span><h4>{{$row->nbrHeure}}</h4>Heures</span>
											     
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
@stop