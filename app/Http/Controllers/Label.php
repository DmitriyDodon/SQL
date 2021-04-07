<?php

namespace App\Http\Controllers;

use App\Http\Resources\LabelResource;
use Illuminate\Http\Request;

class Label extends Controller
{
    public function showAll(){
        return LabelResource::collection(\App\Models\Label::all());
    }
}
