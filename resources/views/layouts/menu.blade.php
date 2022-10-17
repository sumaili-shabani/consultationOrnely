<ul class="list-group">

	<a href="/notification" class="list-group-item list-group-item-action flex-column align-items-start">
		Notification
    	<span class="pull-right badge badge-primary badge-pill"><i class="voyager-bell mr-1"></i> 4</span>
	</a>


	<a href="/courses" class="list-group-item list-group-item-action flex-column align-items-start">
		Cours
    	<span class="pull-right badge badge-primary badge-pill"><i class="voyager-logbook mr-1"></i> 5</span>
	</a>


	<a href="/formateur" class="list-group-item list-group-item-action flex-column align-items-start">
		Formateurs
    	<span class="pull-right badge badge-primary badge-pill"><i class="voyager-group mr-1"></i> 1</span>
	</a>

	

	<a href="/chatify" class="list-group-item list-group-item-action flex-column align-items-start">
		Messagerie
    	<span class="pull-right badge badge-primary badge-pill"><i class="voyager-chat mr-1"></i> 9</span>
	</a>

	

	<a href="/createmeeting" class="list-group-item list-group-item-action flex-column align-items-start">
		Démarer une conférence
    	<span class="pull-right badge badge-primary badge-pill"><i class="voyager-video mr-1"></i> +</span>
	</a>
  
  
</ul>

<div class="col-md-12">
	<hr>
		<form action="{{ route('course.search') }}" class="col-md-12 d-flex  mb-2">
		    <div class="form-group mb-0 mr-1">
		        <input type="text" name="q" placeholder="Rechercher..." class="form-control" value="{{ request()->q ?? '' }}">
		    </div>
		    <button type="submit" class="btn btn-outline-light btn-block"><i class="voyager-search" aria-hidden="true"></i></button>
		</form>


	
</div>



<div class="col-md-12 mt-2">
	<hr>
    
    <div class="row">

       <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15952.415313040445!2d29.2168952!3d-1.6797489!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x581b3fa6f38a8eac!2sUn%20Jour%20Nouveau%20Center!5e0!3m2!1sfr!2scd!4v1665992847137!5m2!1sfr!2scd" width="100%" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

      
    </div>
</div>