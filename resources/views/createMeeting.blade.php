<script src='https://meet.jit.si/external_api.js'></script>
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
		            	
		                <div class="card-header">Créer une reunion </div>
		               
		                <div class="card-body">

		                	<div class="col-md-12 mt-4">

								<button id="start" class="btn btn-primary btn-block" type="button">Débuter la conversation</button>

								<div class="col-md-12 mt-4">

								  <div class="col-md-12" id="jitsi-container">
								  </div>

								</div>
								 


							</div>



							
		                </div>
		            </div>
		        </div>
		    </div>
		</div>


	</div>


		<script>
		 var button = document.querySelector('#start');
		 var container = document.querySelector('#jitsi-container');
		 var api = null;
		 
		 button.addEventListener('click', () => {
		     var possible = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
		     var stringLength = 30;
		 
		     function pickRandom() {
		     return possible[Math.floor(Math.random() * possible.length)];
		     }
		 
		 var randomString = Array.apply(null, Array(stringLength)).map(pickRandom).join('');
		 
		     var domain = "meet.jit.si";
		     var options = {
		         "roomName": randomString,
		         "parentNode": container,
		         // "width": 600,
		         "height": 600,
		     };
		     api = new JitsiMeetExternalAPI(domain, options);
		 });
		 
		</script>

	

@stop

