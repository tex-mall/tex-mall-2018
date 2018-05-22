<?php

namespace App\Transformers;

use App\Cart;
use League\Fractal\TransformerAbstract;

class CartTransformer extends TransformerAbstract
{

	protected $defaultIncludes = ['sku', 'stocks'];

    public function transform(Cart $cart)
    {
        return [
            'id' => $cart->id,
            'price' => $cart->price,
            'num' => $cart->num,
            'created' => $cart->created_at->toDateTimeString(),
        ];
    }

    public function includeSku(Cart $cart)
    {
        return $this->item($cart->sku, new CartSkuTransformer());
    }

    public function includeStocks(Cart $cart)
    {
        $stocks = $cart->stocks()->get();

        return $this->collection($stocks, new StockTransformer());
    }
}
