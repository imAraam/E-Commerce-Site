<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Slideshow.aspx.cs" Inherits="E_commerce_website.Slideshow" 
    MasterPageFile ="MasterPage.Master"%>

<asp:Content ID ="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

<div class = "slider">
	
	<div class = "image">
		<div class = "index">1/4</div>
		<img src = "images/iPhone-XS.jpg" alt = "iPhone-XS">
		<div class = "caption">iPhone XS phone <br> Old Price: £̶9̶9̶9̶ <br> New Price: £875</div>
	</div>
	<div class = "image">
		<div class = "index">2/4</div>
		<img src = "images/Xperia-Z5.jpg" alt = "Xperia-Z5">
		<div class = "caption">Sony Xperia Z5 phone <br> Old Price: ̶£̶5̶1̶2̶.̶3̶9̶ <br> New Price: £430 </div>
	</div>
	<div class = "image">
		<div class = "index">3/4</div>
		<img src = "images/Samsung-S9.jpg" alt = "Samsung-S9">
		<div class = "caption">Samsung Galaxy S9 phone <br> Old Price: £̶7̶3̶9̶.̶0̶0̶ <br> New Price: £650</div>
	</div>
	<div class = "image">
		<div class = "index">4/4</div>
		<img src = "images/Huawei-P20.jpg" alt = "Huawei-P20">
		<div class = "caption">Huawei P20 Pro phone <br> Old Price: £̶5̶8̶7̶.̶2̶0̶ <br> New Price: £499</div>
	</div>
	
	
</div>
<script>

var index = 0;


const displaySlides = () => {
	
	var img  = document.getElementsByClassName("image"); /*selecting all the slides with images in slideshow*/

	
	for (var i = 0; i < img.length; i++) {/*looping through slides and setting their display to none so they can't be viewed*/
		img[i].style.display = "none";
	}
	
	index++; /*increment index by 1*/
	
	if (index > img.length ) { /*if index goes over number of available images it loops back to the first image*/
		index = 1;
	}
	
	
	
	img[index - 1].style.display = "block"; /*display one image at a time*/
	
	
	
	setTimeout( displaySlides , 4000); /*time between each image displayed*/

}

displaySlides();
</script>

    <div class ="empty"></div>

    <style>
        .empty {
            padding-bottom: 49%;
        }
    </style>

</asp:Content>
