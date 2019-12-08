<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="E_commerce_website.Order" 
    MasterPageFile ="MasterPage.Master"%>

<asp:Content ID ="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">


<form action = "registration_page.php" method = "post">
	<div class = "order">
		<h1 id = "ordrf">Order Form</h1>
		<p id = "ordrfq">Please add your payment details to enable the successful order of your phone.</p>
		
		<br>
		
		<hr> 
		<!-- <! Thematic change> -->
		
		<br> 
		
		
		<br> <br> <br> <br>
		
		<p id = "pyment"><b>Choose your desired payment option:</b></p>
		<select name = "card type" id = "cardtype">
			<option value = "visa">Visa</option>
			<option value = "mastercard">Mastercard</option>
			<option value = "debit">Debit Card</option>
		</select>
		
		<br> <br> <br>
		
		<label for = "card number" style = "margin-left: 100px;"><b>Card Number</b></label>
		<input type = "number" placeholder = "Enter card number" name = "cardNumber" required>
		
		
		<label for = "expiry date"><b>Expiry Date</b></label>
		<input type = "month" placeholder = "Enter expiry date" name = "expiryDate" required>
		
		<label for = "cvc number"><b>CVC Number</b></label>
		<input type = "number" placeholder = "Enter CVC number" name = "cvcNumber" required>
						
		
		<!-- Create T&C page -->
		<button type="order" class="orderConfirm">Order</button>	
		<p id = "tandc"> By confirming this order you are agreeing to our <a href = "T&C.aspx">Terms & Conditions</a>.</p>
	</div>

	<div class ="empty"></div>

</form>

    <style>
        .empty {
            padding-bottom: 40%;
        }
    </style>

</asp:Content>
