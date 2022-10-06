<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Models\{Events};
use DB;

# 1. La facade QrCode
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class NotificationController extends Controller
{
    //

    function index()
    {
        $id = auth()->user()->id;
        $data = DB::table("events")
        ->where('events.user_id','=', $id)
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

    function pdfData()
    {
        $nbrDr = $this->showCountTableWhere("users", "role_id", 4);
        $nbrMalade = $this->showCountTableWhere("users", "role_id", 3);
        $nbrAssDr = $this->showCountTableWhere("users", "role_id", 2);

        return view('dashbord',  [
            'nbrDr'         =>  $nbrDr,
            'nbrMalade'     =>  $nbrMalade,
            'nbrAssDr'      =>  $nbrAssDr,
        ]);

    }

    function showCountTableWhere($table,$column, $valeur)
    {
      $data = DB::table($table)->where($column,'=', $valeur)->count();
      return $data;
    }


    public function generate () {

        $qrcode = QrCode::size(200)->generate("Je suis un QR Code");
        
        return $qrcode;
    }


    function printData($role_id)
    {
        if ($role_id !='') {
            // code...

            $html = $this->pdf_list($role_id);
            $pdf = \App::make('dompdf.wrapper');

            // echo($html);


            $pdf->loadHTML($html);
            // $pdf->loadHTML($html)->setPaper('a4', 'landscape');
            return $pdf->stream();
        } else {
            // code...
            return redirect('/pdfData');
        }
      
    }

    function pdf_list($role_id)
    {
         $message = "";
         if ($role_id == 2) {
             // code...
            $message = "ASSISTANTS DOCTEURS";
         }
         elseif ($role_id == 3) {
            $message = "MALADES";
         }

         elseif ($role_id == 4) {
            $message = "DOCTEURS";
         }

         else {
            // code...
            $message = "";
         }
        $data = DB::table("users")->where("role_id", $role_id)->get();

        $qrcode = $this->generate();

        $output='';
        $output.='
        <div style="border:1px solid black;padding:0px;">
         <h3 align="center" style="color:blue;">REPUBLIQUE DEMOCRATIQUE DU CONGO <br/> CONSULTATION EN LIGNE <br/> <span style="text-decoration:underline;">APP CONSULTATION </span></h3>
        
           <div align="center"> LA LISTE ENTIERE DES   '.$message.' 
            
            </div>
           <br/><br/>
        <table align="center" cellpadding="7" cellspacing="0" border="1" width="99%">
          <tr style="font-weight:bold; background:#ccc;" >
            <td colspan="1">N°</td>
            <td colspan="1">Avatar</td>
            <td colspan="1">NON COMPLET</td>
            <td colspan="1">EMAIL</td>
            <td colspan="1">ROLE</td>
           
           
          </tr>';

        

        $count=0;
        foreach ($data as $row) {
            $count ++;
            $pic=$this->displayImg();
            $pic2 = $this->displayImgDynamique($row->avatar);
             // code...
            $output .=' 
            <tr>
                <td colspan="1">'.$count.'</td>
                <td>
                    <img src="'.$pic2.'"  width="75" />
                </td>
                <td colspan="1">'.$row->name.'</td>
                <td colspan="1">'.$row->email.'</td>
                <td colspan="1">'.$message.'</td>
               
            </tr>
            ';
        }



       

        $output.='</table>';

        $output .='
        <p>
        <br />
        </p>
            <p style="position:relative;left:500px;">

              Fait à Goma le '.date('Y-m-d').'
               <br>
              '.$qrcode.'
            </p>

        <br /><br /></div>
        ';
       
        return $output; 

        
          
    }

    function displayImg()
    {
        $logo=base_path('public/images/logo.png');
        $f=file_get_contents($logo);
        $pic='data:image/png;base64,'.base64_encode($f);
        return $pic;
    }

    function displayImgDynamique($avatar)
    {
        $logo=base_path('public/storage/'.$avatar);
        $f=file_get_contents($logo);
        $pic='data:image/png;base64,'.base64_encode($f);
        return $pic;
    }






}
