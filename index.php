<?php


require_once('data.php');
require_once('functions.php');
require_once('helpers.php');



/*$link = mysqli_connect("localhost", "root", "root", "yeticave");
if ($link == false) {
   print("Ошибка подключения: " . mysqli_connect_error());
}
else {
   print("Соединение установлено");
    
}*/


$page_content = include_template("main.php", [
    "categories" => $categories,
    "goods" => $goods
]);
    
$layout_content = include_template("layout.php", [
    "content" => $page_content,
    "categories" => $categories,
    "title" => "Главная"
]);

print($layout_content);

