<?php

namespace App\Http\Requests\Api;

class CaptchaRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'phone' => 'required|regex:/^1[34578]\d{9}$/|unique:users',
        ];
    }

    public function messages()
    {
        return [
            'phone.unique' => '手机号已被占用，请重新填写。',
            'phone.regex' => '手机号无效。',
            'phone.required' => '手机号不能为空。',
        ];
    }
}
