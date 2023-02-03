<?php

function get_query_list_lots()
{
return "SELECT lots.title, lots.start_price, lots.lot_image, lots.date_finish, categories.name_category
FROM lots 
INNER JOIN categories ON lots.category_id = categories.category_id
WHERE lots.date_finish < NOW() ORDER BY date_create DESC";
}