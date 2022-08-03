<?php

namespace Weeesh;

use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
        protected $fillable=[
            'avatar','user_id'
        ];

    public function user(){

        return $this->belongsTo('App\User');
    }
}
