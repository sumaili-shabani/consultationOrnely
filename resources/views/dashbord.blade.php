
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
			                								{{$nbrformateur}}
			                							</h3>
			                							<span>Formateur</span>
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
			                								{{$nbrApprenant}}
			                							</h3>
			                							<span>Apprenants</span>
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
			                							<a href="/pdf_list/1">
				                							<h1>
				                								<i class="voyager-people"></i>
				                							</h1>
				                						</a>
			                						</div>
			                						<div class="col-md-12 text-center">
			                							<h3>
			                								{{$nbrAdmin}}
			                							</h3>
			                							<span>Administrateur</span>
			                						</div>
			                					</div>
			                					
			                				</div>
			                			</div>
			                		</div>
			                		{{-- fin bloc --}}

								</div>
								<div class="row">
									<div class="col-md-12 text-center">
										<div id="chartContainer" style="height: 300px; width: 100%;"></div>
									</div>
								</div>
		                	</div>
		            		
		            	</div>
		            	
		                
		            </div>
		        </div>
		    </div>
		</div>


		



	</div>


	<script type="text/javascript">

		window.onload = function () {
			var chart = new CanvasJS.Chart("chartContainer", {
				title:{
					text: ""              
				},
				data: [              
				{
					// Change type to "doughnut", "line", "splineArea", etc.
					type: "column",
					dataPoints: [
						{ label: "formateurs",  y: 2  },
						{ label: "admins", y: 2  },
						{ label: "apprenants", y: 4  },
						
					]
				}
				]
			});
			chart.render();
		}
	</script>
@stop

