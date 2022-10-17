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
		                			<div class="col-md-12">
			                			<div class="col-md-12 card">
										  <div class="col-sm-12 col-md-12 card-body">

										  	<div class="row">
										  		<div class="col-md-4">
										  			<a href="/course/{{$row->id}}">
											    		<img 
											      		src="{{ Voyager::image($row->image) }}" style="height: 150px; width: 150px;" alt="...">
											    	</a>
										  		</div>
										  		<div class="col-md-6">
										  			 <h3>{{$row->nonCours}}</h3>
										  			 <div class="col-md-12">
										  			 	<div class="row">
										  			 		<div class="col-md-6">
										  			 			<span class="text-info">Date debit</span>
										  			 			{{nl2br(substr(date(DATE_RFC822, strtotime($row->date_debit)), 0, 23))}}
										  			 		</div>

										  			 		<div class="col-md-6">
										  			 			<span class="text-info">Date fin</span>
										  			 			{{nl2br(substr(date(DATE_RFC822, strtotime($row->date_fin)), 0, 23))}}
										  			 		</div>
										  			 	</div>
										  			 </div>
										  			
										  		</div>

										  		<div class="col-md-2">

										  			<div class="caption text-center">
												        <h6>Durée de ce cours </h6>
												       
												        <span><h4>{{$row->nbrHeure}}</h4>Heures</span>

												     	<h5>Statut:</h5>
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

												    </div>
										  			
										  		</div>

										  		<div class="col-md-12">
									  			 	<div class="row">
									  			 		<div class="col-md-6">
									  			 			<span class="text-muted"><h4>Ce que vous allez apprendre</h4></span>
									  			 			{!! $row->objectif !!}
									  			 		</div>

									  			 		<div class="col-md-6">
									  			 			<span class="text-muted"><h4>Prerequis<h4></span>
									  			 			{!! $row->prerequis !!}

									  			 			<div class="col-md-12">
									  			 				<div class="row">
									  			 					<div class="col-md-12">

									  			 						<div class="col-md-12">
															  				<?php 
															  				
															  				$fichier = json_decode($row->file);

															  				foreach ($fichier as $key) {
															  					// code...
															  					$link = Storage::disk(config('voyager.storage.disk'))->url($key->download_link);
															  					{{-- echo $link; --}}

																  				?>
																  				<a class="text-primary" href="{{ Storage::disk(config('voyager.storage.disk'))->url($key->download_link) ?: '' }}" target="_blank">
							                                                             Lire le document
							                                                    </a>
																  				<?php
															  				}
															  				

															  			    ?>
															  				 
															  			</div>
									  			 						
									  			 					</div>
									  			 				</div>
									  			 			</div>
									  			 		</div>
									  			 	</div>
									  			</div>


									  			<hr>

										  		<div class="col-md-12">
									  			 	{!! $row->description !!}
									  			</div>


										  	</div>


										    
										  </div>
										</div>
			                		</div>
		                		@endforeach

							</div>
							
	                	</div>
			           	
			        </div>
		        </div>
		    </div>
		</div>


		



	</div>
@stop