<?php

function price_format($price) {
        $price = ceil($price);
        return number_format($price, 0, ",", " ") . " ₽";

?>