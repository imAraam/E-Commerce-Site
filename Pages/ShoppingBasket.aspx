<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingBasket.aspx.cs" Inherits="E_commerce_website.ShoppingBasket"
    MasterPageFile ="MasterPage.Master"%>



<asp:Content ID ="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

<div class ="basketContainer">
    <div class="col-sm-12"><h1><span class="auto-style1">Your shopping basket:</span> </h1>
        <div class ="basketList">
            <div class="basketListDiv"><asp:ListBox ID="lstBasket" runat="server" CssClass="form-control"></asp:ListBox>

            </div>
        </div>
    </div>
</div>

    <div class="lMessage">
        <asp:Label ID="lblMessage" runat="server" EnableViewState="False"
            CssClass="l_message"></asp:Label>
    </div>
    <div class="btnGroup"><%-- buttons --%>
        <div class="btns">
            <asp:Button ID="btnContinue" runat="server"
                PostBackUrl="~/DetailsPage.aspx" Text="Continue Shopping" CssClass="btn" />
            <asp:Button ID="btnCheckOut" runat="server" Text="Check Out"  
                PostBackUrl ="Order.aspx" CssClass="btn" />
        </div>
    </div>

    <div class ="empty"></div>

<style type ="text/css">
    .basketContainer {
        padding: 11%;
    }
    .col-sm-12 { /*//Shopping Basket header*/
        color: #fff;
        margin-left: 35%;
    }
    .btnGroup {
        margin-left: 37%;
    }
    .auto-style1 {
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        font-size: 150%;
    }
    .empty {
        padding-bottom: 48%;
    }
</style>
    

</asp:Content>
