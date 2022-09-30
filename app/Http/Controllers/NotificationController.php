<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Models\{Events};
use DB;

class NotificationController extends Controller
{
    //

    function index()
    {
        $id = auth()->user()->id;
        $data = DB::table("events")
        ->where('events.user_id','=', 1)
        ->get();
        
        // echo("id:".$id);
        return view('notificarion',  ['data' => $data]);
    }

    function getSigleNotification($id_notification)
    {

        $data = DB::table("events")
        ->where('events.id','=', $id_notification)
        ->get();

        return view('Siglenotification',  ['data' => $data]);
    }

    function createmeeting()
    {
        return view('createMeeting');
    }

    function getListdoctors()
    {
        $data = DB::table("users")
        ->where('users.role_id','=', 4)
        ->paginate(4);

        return view('doctors',  ['data' => $data]);
    }


}
