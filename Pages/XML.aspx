<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XML.aspx.cs" Inherits="E_commerce_website.XML" 
     MasterPageFile ="MasterPage.Master"%>


<asp:Content ID ="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">


<div class = "xml">

	<button class = "btn" type = "button" onclick = "dimensionsXML()" > Dimensions </button>
	<button class = "btn" type = "button" onclick = "weightXML()" > Weight </button>
	<button class = "btn" type = "button" onclick = "screenSizeXML()" > Screen Size </button>
	<button class = "btn" type = "button" onclick = "cpuXML()" > CPU </button>
	<button class = "btn" type = "button" onclick = "ramXML()" > RAM </button>
	<button class = "btn" type = "button" onclick = "storageXML()" > Storage </button>
	<button class = "btn" type = "button" onclick = "cameraXML()" > Camera </button>
	<button class = "btn" type = "button" onclick = "batteryXML()" > Battery </button>
	<button class = "btn" type = "button" onclick = "productIDXML()" > Product ID </button>
	<br><br>
	<table id="demo"></table>

	<script>

	function dimensionsXML() {
	  var xmlhttp = new XMLHttpRequest();
	  xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		  dimensions(this);
		}
	  };
	  xmlhttp.open("GET", "Xml.xml", true);
	  xmlhttp.send();
	}

	function weightXML() {
	  var xmlhttp = new XMLHttpRequest();
	  xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		  weight(this);
		}
	  };
	  xmlhttp.open("GET", "Xml.xml", true);
	  xmlhttp.send();
	}

	function screenSizeXML() {
	  var xmlhttp = new XMLHttpRequest();
	  xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		  screenSize(this);
		}
	  };
	  xmlhttp.open("GET", "Xml.xml", true);
	  xmlhttp.send();
	}

	function cpuXML() {
	  var xmlhttp = new XMLHttpRequest();
	  xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		  cpu(this);
		}
	  };
	  xmlhttp.open("GET", "Xml.xml", true);
	  xmlhttp.send();
	}

	function ramXML() {
	  var xmlhttp = new XMLHttpRequest();
	  xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		  ram(this);
		}
	  };
	  xmlhttp.open("GET", "Xml.xml", true);
	  xmlhttp.send();
	}

	function storageXML() {
	  var xmlhttp = new XMLHttpRequest();
	  xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		  storage(this);
		}
	  };
	  xmlhttp.open("GET", "Xml.xml", true);
	  xmlhttp.send();
	}

	function cameraXML() {
	  var xmlhttp = new XMLHttpRequest();
	  xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		  camera(this);
		}
	  };
	  xmlhttp.open("GET", "Xml.xml", true);
	  xmlhttp.send();
	}

	function batteryXML() {
	  var xmlhttp = new XMLHttpRequest();
	  xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		  battery(this);
		}
	  };
	  xmlhttp.open("GET", "Xml.xml", true);
	  xmlhttp.send();
	}
	
	function productIDXML() {
	  var xmlhttp = new XMLHttpRequest();
	  xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		  productID(this);
		}
	  };
	  xmlhttp.open("GET", "Xml.xml", true);
	  xmlhttp.send();
	}

	function dimensions(xml) {
	  var i;
	  var xmlDoc = xml.responseXML;
	  var table="<tr><th>Name</th><th>Dimensions</th></tr>";
	  var x = xmlDoc.getElementsByTagName("phone");
	  for (i = 0; i <x.length; i++) { 
		table += "<tr><td>" +
		x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue +
		"</td><td>" +
		x[i].getElementsByTagName("dimensions")[0].childNodes[0].nodeValue +
		"</td><td>" ;
	  }
	  document.getElementById("demo").innerHTML = table;
	}

	function weight(xml) {
	  var i;
	  var xmlDoc = xml.responseXML;
	  var table="<tr><th>Name</th><th>Weight</th></tr>";
	  var x = xmlDoc.getElementsByTagName("phone");
	  for (i = 0; i <x.length; i++) { 
		table += "<tr><td>" +
		x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue +
		"</td><td>" +
		x[i].getElementsByTagName("weight")[0].childNodes[0].nodeValue +
		"</td><td>" ;
	  }
	  document.getElementById("demo").innerHTML = table;
	}

	function screenSize(xml) {
	  var i;
	  var xmlDoc = xml.responseXML;
	  var table="<tr><th>Name</th><th>Screen Size</th></tr>";
	  var x = xmlDoc.getElementsByTagName("phone");
	  for (i = 0; i <x.length; i++) { 
		table += "<tr><td>" +
		x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue +
		"</td><td>" +
		x[i].getElementsByTagName("screenSize")[0].childNodes[0].nodeValue +
		"</td><td>" ;
	  }
	  document.getElementById("demo").innerHTML = table;
	}

	function cpu(xml) {
	  var i;
	  var xmlDoc = xml.responseXML;
	  var table="<tr><th>Name</th><th>CPU</th></tr>";
	  var x = xmlDoc.getElementsByTagName("phone");
	  for (i = 0; i <x.length; i++) { 
		table += "<tr><td>" +
		x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue +
		"</td><td>" +
		x[i].getElementsByTagName("cpu")[0].childNodes[0].nodeValue +
		"</td><td>" ;
	  }
	  document.getElementById("demo").innerHTML = table;
	}

	function ram(xml) {
	  var i;
	  var xmlDoc = xml.responseXML;
	  var table="<tr><th>Name</th><th>RAM</th></tr>";
	  var x = xmlDoc.getElementsByTagName("phone");
	  for (i = 0; i <x.length; i++) { 
		table += "<tr><td>" +
		x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue +
		"</td><td>" +
		x[i].getElementsByTagName("ram")[0].childNodes[0].nodeValue +
		"</td><td>" ;
	  }
	  document.getElementById("demo").innerHTML = table;
	}

	function storage(xml) {
	  var i;
	  var xmlDoc = xml.responseXML;
	  var table="<tr><th>Name</th><th>Storage</th></tr>";
	  var x = xmlDoc.getElementsByTagName("phone");
	  for (i = 0; i <x.length; i++) { 
		table += "<tr><td>" +
		x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue +
		"</td><td>" +
		x[i].getElementsByTagName("storage")[0].childNodes[0].nodeValue +
		"</td><td>" ;
	  }
	  document.getElementById("demo").innerHTML = table;
	}

	function camera(xml) {
	  var i;
	  var xmlDoc = xml.responseXML;
	  var table="<tr><th>Name</th><th>Camera</th></tr>";
	  var x = xmlDoc.getElementsByTagName("phone");
	  for (i = 0; i <x.length; i++) { 
		table += "<tr><td>" +
		x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue +
		"</td><td>" +
		x[i].getElementsByTagName("camera")[0].childNodes[0].nodeValue +
		"</td><td>" ;
	  }
	  document.getElementById("demo").innerHTML = table;
	}

	function battery(xml) {
	  var i;
	  var xmlDoc = xml.responseXML;
	  var table="<tr><th>Name</th><th>Battery</th></tr>";
	  var x = xmlDoc.getElementsByTagName("phone");
	  for (i = 0; i <x.length; i++) { 
		table += "<tr><td>" +
		x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue +
		"</td><td>" +
		x[i].getElementsByTagName("battery")[0].childNodes[0].nodeValue +
		"</td><td>" ;
	  }
	  document.getElementById("demo").innerHTML = table;
	}
	
	function productID(xml) {
	  var i;
	  var xmlDoc = xml.responseXML;
	  var table="<tr><th>Name</th><th>Product ID</th></tr>";
	  var x = xmlDoc.getElementsByTagName("phone");
	  for (i = 0; i <x.length; i++) { 
		table += "<tr><td>" +
		x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue +
		"</td><td>" +
		x[i].getElementsByTagName("productID")[0].childNodes[0].nodeValue +
		"</td><td>" ;
	  }
	  document.getElementById("demo").innerHTML = table;
	}

	</script>


        <div class ="empty"></div>

    <style>
        .empty {
            padding-bottom: 71.1%;
        }
    </style>
    
</asp:Content>
