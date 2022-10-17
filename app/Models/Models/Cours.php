<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cours extends Model
{
    use HasFactory;
    protected $table = "cours";

    // public function programme()
    // {
    //     return $this->hasOne('App\Models\Models\ProgrammeFormation');
    // }
}
