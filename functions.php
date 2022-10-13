<?php

function price_format($price) {
        $price = ceil($price);
        return number_format($price, 0, ",", " ") . " ₽";

};

function get_dt_range ($date) {
                        $date_now = strtotime("now");
                        $date_end = strtotime($date);
                        $diff_m= floor((($date_end - $date_now) % 3600)/60);
                        $diff_h= ($date_end - $date_now -($date_end - $date_now) % 3600) / 3600;
                        return [str_pad($diff_h, 2, "0", STR_PAD_LEFT), str_pad($diff_m, 2, "0", STR_PAD_LEFT)];
};