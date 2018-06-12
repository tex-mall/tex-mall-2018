<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\HasRelationships;
use TCG\Voyager\Traits\Translatable;

class UsersAgent extends Model
{
    use Translatable,
        HasRelationships;

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function is_agent()
    {
        if(app('Dingo\Api\Auth\Auth')->user()){
            $is_agent = Shopuser::where('user_id', app('Dingo\Api\Auth\Auth')->user()->id)
                ->where('status', 1)
                ->count();
            return ($is_agent) ? 1 : 0;
        }else{
            return 0;
        }
    }
}
