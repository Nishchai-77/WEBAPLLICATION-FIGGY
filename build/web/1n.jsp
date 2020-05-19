<!DOCTYPE html>
<html>
<head> 
         <script src="java1.js" async></script>
	<title> The Items Menu </title>
	<div style="background-color: orange;" >
	<style>
	
	table {
	 border-collapse: collapse;
	 width:100%;
	}
	
	th,td {
	 text-align:left;
	 font-size:large;
	 font-weight:bold;
	 padding:20px;
	}
	
	tr:nth-child(odd) {background-color:white;}
	
	.btn1 {
	display:inline-block;
	padding:15px 25px;
	font-size:18px;
	font-weight:bold;
	cursor:pointer;
	text-align:center;
	text-decoration:none;
	outline:none;
	color:white;
	background-color:orange;
	border:none;
	border-radius:15px;
	box-shadow:0 9px #999;
	position:absolute;
	right:120px;
	top:100px;
	}
	
	.btn1:hover {
	background-color:red;
	}
	
	.btn1:active {
     background-color:orange;
     box-shadow:0 5px #666;
     transform:translateY(4px);
}	 
	
		.btn2 {
	display:inline-block;
	padding:15px 25px;
	font-size:18px;
	font-weight:bold;
	cursor:pointer;
	text-align:center;
	text-decoration:none;
	outline:none;
	color:white;
	background-color:white;
	border:none;
	border-radius:15px;
	box-shadow:0 9px #999;
	position:absolute;
	right:15px;
	top:100px;
	
	}
	
	.btn2:hover {
	background-color:red;
	}
	
	.btn2:active {
     background-color:orange;
     box-shadow:0 5px #666;
     transform:translateY(4px);
}	 
	.header {
	font-size:30px;
	padding:10px 15px;
	}
	
	.btns {
	display:inline-block;
	padding:8px 15px;
	font-size:10px;
	font-weight:bold;
	text-align:center;
	text-decoration:none;
	outline:none;
	color:white;
	background-color:orange;
	}
	
	
	.cart-quantity-input {
    height: 34px;
    width: 50px;
    border-radius: 5px;
    border: 1px solid #56CCF2;
    background-color: #eee;
    color: #333;
    padding: 0;
    text-align: center;
    font-size: 1.2em;
    margin-right: 25px;
}
	
	
	
	


container {
    max-width: 900px;
    margin: 0 auto;
    padding: 0 1.5em;
}
.section-header {
    font-family: "Metal Mania";
    font-weight: normal;
    color: #333;
    text-align: center;
    font-size: 2.5em;
}

.btn {
    text-align: center;
    vertical-align: middle;
    padding: .67em .67em;
    cursor: pointer;
}

.btn-header {
    margin: .5em 15% 2em 15%;
    color: white;
    border: 2px solid #2D9CDB;
    background-color: rgba(255, 255, 255, .1);
    border-radius: 0;
    font-size: 1.5em;
    font-weight: lighter;
    padding-left: 2em;
    padding-right: 2em;
}

.btn-header:hover {
    background-color: rgba(255, 255, 255, .3);
}

.btn-play {
    display: block;
    margin: 0 auto;
    color: #2D9CDB;
    font-size: 4em;
    border-radius: 50%;
    width: 100px;
    height: 100px;
    padding: 0;
    text-align: center;
}

.btn-primary {
    color: white;
    background-color: #56CCF2;
    border: none;
    border-radius: .3em;
    font-weight: bold;
}

.btn-primary:hover {
    background-color: #2D9CDB;
}

.cart-header {
    font-weight: bold;
    font-size: 1.5em;
    color: #333;
}

.cart-column {
    display: flex;
    align-items: center;
    border-bottom: 1px solid black;
    margin-right: 1.5em;
    padding-bottom: 10px;
    margin-top: 10px;
}

.cart-row {
    display: flex;
	
}

.cart-item {
    width: 45%;
	font-weight: bold;
}

.cart-price {
    width: 20%;
    font-size: 1.5em2;
    color: #333;
	font-weight: bold;
}

.cart-quantity {
    width: 35%;
}

.cart-item-title {
    color: #333;
    margin-left: .5em;
    font-size: 1.2em;
}


.btn-danger {
    color: white;
    background-color: #EB5757;
    border: none;
    border-radius: .3em;
    font-weight: bold;
}

.btn-danger:hover {
    background-color: #CC4C4C;
}

.cart-quantity-input {
    height: 34px;
    width: 50px;
    border-radius: 5px;
    border: 1px solid #56CCF2;
    background-color: #eee;
    color: #333;
    padding: 0;
    text-align: center;
    font-size: 1.2em;
    margin-right: 25px;
}

.cart-row:last-child {
    border-bottom: 1px solid black;
}

.cart-row:last-child .cart-column {
    border: none;
}

.cart-total {
    text-align: end;
    margin-top: 10px;
    margin-right: 10px;
}

.cart-total-title {
    font-weight: bold;
    font-size: 2.1em;
    color: black;
    margin-right: 90px;
}

.cart-total-price {
    color: #333;
    font-size: 2.1em;
	margin-right: 70px;
	
}

.btn-purchase {
    display: block;
    margin: 40px auto 80px auto;
    font-size: 1.75em;
}
.foodItem{
font-size:20px;
}
.foodPrice{
font-size:20px;
}


</style>
</head>
<body> 
<button class="btn2"><a href="mainenu.htm">HOME</a></button>
<div class="header">
<center><h1> SOUTH INDIAN FOOD MENU </h1></center>
</div>

<div style="overflow-x:auto;">
 <table>
  <tr>
   <th><h2>Sl No</h2></th>
   <th><h2>Items</h2></th>
   <th><h2>Price</h2></th>
   <th><h2>Add To Cart</h2></th>
  </tr>
  <tr>
   <td>1.</td>
   <td><img src="msaladose.jpg" alt="dose" width="300px;" height="200px;">MASAL DOSE</td>
	<td class="foodPrice">40 rs</td>
	<td>
            <a href="menudose.jsp" alt="ADD">ADD</a>
</td>
</tr>

<tr>
   <td>2.</td>
   <tD><img src="idlyvade.jpg" alt="IDLY VADE" width="300px;" height="200px;">IDLY VADE</td>
	<td class="foodPrice">50 rs</td>
	<td>
            <a href="menuidly.jsp">ADD</a>
</td>
</tr>

<tr>
   <td>3.</td>
   <td><img src="kesari.jpg" alt="kesari" width="300px;" height="200px;">KESARI BATH</td>
	<td class="foodPrice">30 rs</td>
	<td>
            <a href="menukesari.jsp">ADD</a>
</td>
</tr>

<tr>
   <td>4.</td>
   <td><img src="tomato.jpg" alt="tomato" width="300px;" height="200px;">TOMATO BATH</td>
	<td class="foodPrice">40 rs</td>
	<td>
            <a href="menutomato.jsp">ADD</a>
</td>
</tr>

<tr>
   <td>5.</td>
   <td><img src="pongal.jpg" alt="pongal" width="300px;" height="200px;">KARA PONGAL</td>
	<td class="foodPrice">50 rs</td>
	<td>
            <a href="menupongal.jsp">ADD</a>
</td>
</tr>
 </table>
    <div>
    <center>
        <a href="orders.jsp">GRAND TOTAL</a></button>
    </center>
    </div>
 </body>
</html>

