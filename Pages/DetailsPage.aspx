<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsPage.aspx.cs" Inherits="E_commerce_website.DetailsPage" 
    MasterPageFile ="MasterPage.Master" %>



<asp:Content ID ="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

    <div class =" cont">
        <div class =" row1">
            <div class ="productAndInfo">
                <div class ="productL">
                    <span class="auto-style2">
                    <label class ="productLabel">Please select a product</label></span>
                    <div class ="ddlmenu">

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProductNameConnection %>" SelectCommand="SELECT * FROM [ProductInfo]">
                        </asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="form-control" 
                            DataSourceID="SqlDataSource2" DataTextField="NameOfProduct" DataValueField="NameOfProduct" Height="16px" 
                            Width="311px">
                         </asp:DropDownList>

                    </div>
                </div>
                <div class ="allLabels">
                 <div class="form-group">
                        <div class="labelClass"><h4><asp:Label ID="l_PID" runat="server"></asp:Label></h4></div></div>
                 <div class="form-group">
                        <div class="labelClass"><h4><asp:Label ID="l_Name" runat="server"></asp:Label></h4></div></div>
                <div class="form-group">
                        <div class="labelClass"><h4><asp:Label ID="l_Desc" runat="server"></asp:Label></h4></div></div>
                <div class="form-group">
                        <div class="labelClass"><h4><asp:Label ID="l_Price" runat="server"></asp:Label></h4></div></div>
               </div>
                </div>
            <div class="imgClass">
                    <asp:Image ID="imageOfProduct" runat="server" />
            </div>
        </div>



        <div class ="quantity">
            <label class ="l_quantity">Quantity:</label>
            <div class="txtBox">
                <asp:TextBox ID="txtQuantity" runat="server" 
                 CssClass="txtQuantity" Height="16px" TextMode="Number"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="textValidator"
                                runat="server" ControlToValidate="txtQuantity" Display="Dynamic" 
                                ErrorMessage="Quantity is a required field." style="color: #FF0000; font-weight: bold; font-size: small"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="auto-style1" 
                                ControlToValidate="txtQuantity" Display="Dynamic" 
                                ErrorMessage="Quantity must range from 1 to 10."
                                MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        </div>


        <div>
            <div class ="btnDetails">
                 <asp:Button ID="AddItemsBtn" runat="server" Text="Add to Basket" 
                  onclick="AddItemsBtn_Click" CssClass="btn" />
                 <asp:Button ID="goToBasketBtn" runat="server" Text="Go to Basket" 
                  PostBackUrl="ShoppingBasket.aspx" CssClass="btn" />
            </div>
        </div>

    </div>
       
       

    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .quantity {
        margin-top: 5%;
        margin-left: 44%;
    }
    .productLabel {
        color: #fff;
    }
    .productL {
        margin-left: 30%;
        padding: 10%;
    }
    .labelClass {
        margin-left: 40%;
        color: #fff;
        font: 22px arial, sans-serif;
    }
    .btnDetails {
        margin-top: 2%;
        margin-left: 40%;
        padding-bottom: 100px;
    }
   .l_quantity {
        color: #fff;
    }
    .textRange {
        color: #fff;
    }
    .auto-style1 {
        color: #FF0000;
        font-weight: bold;
        font-size: small;
    }
    .imgClass {
        margin-left: 36%;
    }
        .auto-style2 {
            font-family: "Lucida Fax";
            font-size: x-large;
        }
    </style>
</asp:Content>

