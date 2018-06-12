<?php

namespace App\Transformers;

use App\User;
use App\UsersAgent;
use League\Fractal\TransformerAbstract;

class UserInfoTransformer extends TransformerAbstract
{
    public function transform(User $user)
    {
        $agent = new UsersAgent();
        return [
        	'id' => $user->id,
        	'phone' => $user->phone,
            'name' => $user->name,
            'avatar' => \Voyager::image($user->avatar),
            'is_admin' => $user->is_admin(), //是否是管理员
            'is_agent' => $agent->is_agent(),//是否是经办人
        ];
    }
}
