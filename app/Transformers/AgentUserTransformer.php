<?php

namespace App\Transformers;

use App\UsersAgent;
use League\Fractal\TransformerAbstract;

class AgentUserTransformer extends TransformerAbstract
{
    public function transform(UsersAgent $user)
    {
        return [
            'id' => $user->user->id,
            'name' => $user->user->name,
            'phone' => $user->user->phone,
            'avatar' => \Voyager::image($user->user->avatar),
        ];
    }
}
