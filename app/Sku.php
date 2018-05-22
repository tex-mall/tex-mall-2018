<?php

namespace App;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\HasRelationships;
use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Translatable;
use App\Fav;


class Sku extends Model
{
	   use Translatable,
        Resizable,
        HasRelationships;

     protected $table = 'skus';

     protected $guarded = [];

     public static $owner = 'user_id';


     public function save(array $options = [])
    {
        // If no author has been assigned, assign the current user's id as the author of the post
        if (!$this->user_id && Auth::user()) {
            $this->user_id = Auth::user()->id;
        }

        parent::save();
    }

    public function tags()
    {
        return $this->belongsToMany(Tag::class,'sku_tag','sku_id','tag_id');
    }

    public function favorited()
    {
        if(app('Dingo\Api\Auth\Auth')->user()){
            return (Fav::where('user_id', app('Dingo\Api\Auth\Auth')->user()->id)
                            ->where('sku_id', $this->id)
                            ->first()) ? 1 : 0;
        }else{
            return 0;
        }
    }
}
