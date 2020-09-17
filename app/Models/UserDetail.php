<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserDetail extends Model
{
    protected $table = 'users_details';
    protected $fillable = [
        'user_id', 'father_name', 'mother_name','wife','child','address','country','city','state','zipcode','created_at','updated_at'
    ];
}
