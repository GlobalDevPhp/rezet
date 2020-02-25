<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cart page</title>
<link rel="stylesheet" href="/css/style.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/js/cart.js"></script>
</head>
<body>
<form name="ship" action="/shipping" method="post" id="cartform">
<input type="hidden" name="summ" value="225.00">
{foreach from=$tplProducts key=pid item=proditem}
    <div class="wrapper" id="wt{$pid}">
        <div class="fieldl"></div>
        <div class="item_box">
            <div class="item_ico"><img class="item_img" src="/images/ico.png"/></div>
            <div class="delim"></div>
            <div class="item_center">
                <h3 class="item_title">{$proditem.title}</h3>
                <p class="item_text">{$proditem.discription}</p>
            </div>
            <div class="delim delim_border"></div>
            <div class="item_control">
                <div class="dvtresh"><img src="/images/trash.png" class="trico" id="t{$pid}"/></div>
                <div class="dvcontrol"><span class="cmn js-minus">&ndash;</span><input type="number" class="js-num" id="in_{$pid}" name="tentacles" min="1" max="50" value="1"><span class="cpl js-plus">+</span><span class="item_price" id="pin_{$pid}">{$proditem.price}</span></div>
            </div>
        </div>
        <div class="fieldr"></div>
    </div>
{/foreach}
<div class="wrapper">
    <div class="fieldl"></div>
    <div class="item_box borderfix">
        <div class="leftot">
            <div class="dvtotalsum" id="js-sum">225.00 €</div>
            <div class="dvbuy"><button class="checkout">BUY</button></div>
        </div>
    </div>
    <div class="fieldr"></div>
</div>
</form>

</body>
</html>
