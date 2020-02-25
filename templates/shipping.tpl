<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shipping page</title>
<link rel="stylesheet" href="/css/style.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
<form name="payform" action="/pay" method="post" id="shipform">
<div class="wrapper">
    <div class="fieldl"></div>
    <div class="form_box">
        <div class="form_label">
            Name*
        </div>
        <div class="form_input">
            <input type="text" name="name" id="js-name" class="ielement" placeholder="Name">
            <div class="error-box">Name is mandatory field and can`t contain less than three characters!</div>
        </div><div class="form_delim"></div>
    </div>
    <div class="fieldr"></div>
</div>
<div class="wrapper">
    <div class="fieldl"></div>
    <div class="form_box">
        <div class="form_label">
            Address*
        </div>
        <div class="form_input">
            <input type="text" name="address" id="js-address" class="ielement" placeholder="Address">
            <div class="error-box">Address is mandatory field</div>
        </div><div class="form_delim"></div>
    </div>
    <div class="fieldr"></div>
</div>
<div class="wrapper">
    <div class="fieldl"></div>
    <div class="form_box">
        <div class="form_label">
            Phone
        </div>
        <div class="form_input">
            <input type="text" name="phone" id="js-phone" class="ielement" placeholder="+48">
            <div class="error-box">Invalid phone</div>
        </div><div class="form_delim"></div>
    </div>
    <div class="fieldr"></div>
</div>
<div class="wrapper">
    <div class="fieldl"></div>
    <div class="form_box">
        <div class="form_label">
            E-mail
        </div>
        <div class="form_input">
            <input type="text" name="email" id="js-email" class="ielement" placeholder="name@example.com">
            <div class="error-box">Invalid e-mail</div>
        </div><div class="form_delim"></div>
    </div>
    <div class="fieldr"></div>
</div>
<div class="wrapper">
    <div class="fieldl"></div>
    <div class="form_box">
        <div class="form_label">
            Shipping options
        </div>
        <div class="form_input">
            <select class="ielement" name="shipopt[]" id="shipsel">
                <option value="1" selected>FREE SHIPPING</option>
                <option value="2">Express shipping- additioal 9.99 €</option>
                <option value="3">Courier shipping- additioal 19.99 €</option>
                <option value="4" id="frex" class="dispnon">Free express shipping</option>
            </select>
            <div class="error-box"></div>
        </div>
        <div class="form_delim"></div>
    </div>
    <div class="fieldr"></div>
</div>
<div class="wrapper">
    <div class="fieldl"></div>
    <div class="form_box">
        <div class="leftpdv">
            <div class="dvbuy"><button class="payout" id="payout" disabled>PAY</button></div>
        </div><div class="form_delim"></div>
    </div>
    <div class="fieldr"></div>
</div>
</form>
<script type="text/javascript" src="/js/ship.js"></script>
<script type="text/javascript">
    var cartsum = {$tplSum};
    if (cartsum>300){
        $('#frex').show();
        $("#shipsel").val('4');
    }
</script>
</body>
</html>
