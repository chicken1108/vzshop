<?php
namespace App\Model;
namespace Gloudemans\Shoppingcart\Contracts;
use Illuminate\Database\Eloquent\Model;
class Product extends Model implements Buyable {
    
    use Gloudemans\Shoppingcart\CanBeBought;

    /**
     * Get the identifier of the Buyable item.
     *
     * @return int|string
     */
    public function getBuyableIdentifier($options = null);

    /**
     * Get the description or title of the Buyable item.
     *
     * @return string
     */
    public function getBuyableDescription($options = null);

    /**
     * Get the price of the Buyable item.
     *
     * @return float
     */
    public function getBuyablePrice($options = null);

    /**
     * Get the weight of the Buyable item.
     *
     * @return float
     */
    public function getBuyableWeight($options = null);
}
