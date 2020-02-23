<?php
$products_array = array(
    array("title" => "Title Lorem ipsum dolor sit", "discription" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut", "price" => "75.00 €"),
    array("title" => "Title Lorem ipsum dolor sit", "discription" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut", "price" => "75.00 €"),
    array("title" => "Title Lorem ipsum dolor sit", "discription" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut", "price" => "75.00 €")
);
require_once 'Smarty3/Smarty.class.php';
$smarty = new Smarty;
$smarty->template_dir = 'templates/';
$smarty->compile_dir = 'Smarty3/templates_c';
$smarty->cache_dir = 'Smarty3/cache';
$smarty->config_dir = 'Smarty3/configs';
$smarty->force_compile = true;
$smarty->compile_check = true;
if ($_SERVER['REQUEST_URI'] == "/cart" || $_SERVER['REQUEST_URI'] == "/" || $_SERVER['REQUEST_URI'] == "/index.php"){
    $smarty->assign("tplProducts", $products_array);
    $smarty->display("cart.tpl");
}
elseif ($_SERVER['REQUEST_URI'] == "/shipping"){
    $smarty->assign("tplSum", (int)$_POST['summ']);
    $smarty->display("shipping.tpl");
}
elseif ($_SERVER['REQUEST_URI'] == "/pay") echo "success";
else echo "error 404";



?>