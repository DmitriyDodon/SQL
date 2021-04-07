<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class User extends Controller
{
    public function addUsers(Request $request)
    {
        $data = $request->validate([
            'name' => ['required' , 'max:255'],
            'email' => ['required' , 'email' , 'unique:App\Models\User,email_address' , 'max:255'],
            'country_code' => ['required' , 'max:2' , 'min:2']
        ]);

        
    }
}
