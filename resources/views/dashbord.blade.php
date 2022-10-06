@extends('voyager::master')

@section('content')
	<div class="col-md-12">

		<div class="container">
		    <div class="row justify-content-center">


		        <div class="col-md-4">

		            @include('layouts.menu')
		                        
		        </div>




		        <div class="col-md-8">
		            <div class="col-md-12 bg-light">

		            	<div class="container">


		            		<div class="col-md-12">
		                		
			                	<div class="row">
			                		{{-- bloc --}}
			                		<div class="col-md-4">
			                			<div class="col-md-12 card">
			                				<div class="row card-body">
			                					<div class="col-md-12">

			                						<div class="col-md-12 text-center">
			                							<a href="/pdf_list/4">
				                							<h1>
				                								<i class="voyager-logbook"></i>
				                							</h1>
				                						</a>
			                						</div>
			                						<div class="col-md-12 text-center">
			                							<h3>
			                								{{$nbrDr}}
			                							</h3>
			                							<span>Docteurs</span>
			                						</div>
			                					</div>
			                					
			                				</div>
			                			</div>
			                		</div>
			                		{{-- fin bloc --}}

			                		{{-- bloc --}}
			                		<div class="col-md-4">
			                			<div class="col-md-12 card">
			                				<div class="row card-body">
			                					<div class="col-md-12">

			                						<div class="col-md-12 text-center">
			                							<a href="/pdf_list/3">
				                							<h1>
				                								<i class="voyager-group"></i>
				                							</h1>
				                						</a>
			                						</div>
			                						<div class="col-md-12 text-center">
			                							<h3>
			                								{{$nbrMalade}}
			                							</h3>
			                							<span>Malades</span>
			                						</div>
			                					</div>
			                					
			                				</div>
			                			</div>
			                		</div>
			                		{{-- fin bloc --}}

			                		{{-- bloc --}}
			                		<div class="col-md-4">
			                			<div class="col-md-12 card">
			                				<div class="row card-body">
			                					<div class="col-md-12">

			                						<div class="col-md-12 text-center">
			                							<a href="/pdf_list/2">
				                							<h1>
				                								<i class="voyager-people"></i>
				                							</h1>
				                						</a>
			                						</div>
			                						<div class="col-md-12 text-center">
			                							<h3>
			                								{{$nbrAssDr}}
			                							</h3>
			                							<span>Ass Dr</span>
			                						</div>
			                					</div>
			                					
			                				</div>
			                			</div>
			                		</div>
			                		{{-- fin bloc --}}

								</div>
								<div class="row">
									<div class="col-md-12 text-center">
										
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