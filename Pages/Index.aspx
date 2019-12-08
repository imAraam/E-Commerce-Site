<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="E_commerce_website.Index" 
    MasterPageFile ="MasterPage.Master" %>

<asp:Content ID ="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

    <style>
        .content {
            font: 15px arial, sans-serif;
	        text-shadow: 2px 2px black;
            color: #fff;
        }
        .pageHeader {
            margin-left: 15%;
            padding-top: 10%;
        }
        product1 {
            margin-right: 40%;
        }
        product1P {
            margin-left: 10%;
        }
    </style>

<div class = "content">

    <div class ="allProducts">
      
    <div class ="pageHeader">
	<p id = "ember"> <strong style ="margin-left: 30%"> Ember's Guarantee </strong>  </p>
	<p id = "grnte"> ✔Always Cheap &emsp; ✔5GB Surf included in the price for the first 12 months &emsp; ✔14 days return </p>
	</div>

    <div class ="product1">
	<img id = "img1" src = "images/IndexImages/Huawei-P20.jpg" alt = "Huawei phone" width = "200" height = "200">
	<h3 id = "h1"> Huawei phone</h3>
        <div class ="product1P"></div>
	<p id = "p1">•Product ID: HP20P02181997 <br> •Colours: Black, Green, Purple <br> •Old Price: £̶5̶8̶7̶.̶2̶0̶ <br>•New Price: £499 </p>
	    </div>
    </div>

    <div class ="product2">
	<img id = "img2" src = "images/IndexImages/iPhone-XS.jpg" alt = "iPhone Xs phone" width = "200" height = "200">
	<h3 id = "h2"> iPhone XS phone</h3>
	<p id = "p2">•Product ID: IPXS02181997 <br> •Colours: White, Gold, Black <br> •Old Price: £̶9̶9̶9̶  <br>•New Price: £875  </p>
	</div>

    <div class ="product3">
	<img id = "img3" src = "images/IndexImages/Xperia-Z5.jpg" alt = "Sony Xperia Z5 phone" width = "200" height = "200">
	<h3 id = "h3"> Sony Xperia Z5 <br> phone</h3>
	<p id = "p3">•Product ID: SXZ502181997 <br> •Colours: Black, Red <br> •Old Price: ̶£̶5̶1̶2̶.̶3̶9̶  <br>•New Price: £430  </p>
	</div>

    <div class ="product4">
	<img id = "img4" src = "images/IndexImages/iphone_xr.jpg" alt = "iPhone XR phone" width = "200" height = "200">
	<h3 id = "h4"> iPhone XR phone</h3>
	<p id = "p4">•Product ID: IPXR02181997 <br> •Colours: White, Gold <br>•Price: £709.00 </p>
	</div>

    <div class ="product5">
	<img id = "img5" src = "images/IndexImages/LG_v40_ThinQ.jpg" alt = "LG V40 ThinQ phone" width = "200" height = "200">
	<h3 id = "h5"> LG V40 ThinQ <br>phone</h3>
	<p id = "p5">•Product ID: LGV40T02181997 <br> •Colours: Black, White <br>•Price: £680.00 </p>
	</div>

    <div class ="product6">
	<img id = "img6" src = "images/IndexImages/Samsung-J4+.jpg" alt = "Samsung Galaxy J4+ phone" width = "200" height = "200">
	<h3 id = "h6"> Samsung Galaxy J4+ <br> phone</h3>
	<p id = "p6">•Product ID: SGJ402181997 <br> •Colours: Grey <br>•Price: £149.00 </p>
	</div>

    <div class ="product7">
	<img id = "img7" src = "images/IndexImages/Samsung-S8.jpg" alt = "Samsung Galaxy S8 phone" width = "200" height = "200">
	<h3 id = "h7"> Samsung Galaxy S8 <br>phone</h3>
	<p id = "p7">•Product ID: SGS802181997 <br> •Colours: Black, White <br>•Price: £549  </p>
	</div>

    <div class ="product8">
	<img id = "img8" src = "images/IndexImages/Samsung-S9.jpg" alt = "Samsung Galaxy S9 phone" width = "200" height = "200">
	<h3 id = "h8"> Samsung Galaxy S9 <br>phone</h3>
	<p id = "p8">•Product ID: SGS902181997 <br> •Colours:White, Black, Pink <br> •Old Price: £̶7̶3̶9̶.̶0̶0̶ <br>•New Price: £650  </p>
	</div>
    
    </div>

</div>

</asp:Content>