<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="E_commerce_website.Form" 
    MasterPageFile ="MasterPage.Master"%>


<asp:Content ID ="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

    <style type="text/css">
        .successClass {
            color: #fff;
            margin-left: 40%;
            font: 190% arial, verdana;
        }
        .auto-style1 {
            width: 100%;
            height: 246px;
        }
        .auto-style2 {
            height: 18px;
            text-align: left;
        }
        .auto-style3 {
            height: 18px;
            width: 185px;
            text-align: right;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-size: small;
            color: #F1F1F1;
        }
        .auto-style4 {
            width: 185px;
            text-align: right;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-size: small;
            color: #F1F1F1;
        }
        .auto-style6 {
            height: 18px;
            width: 269px;
            text-align: right;
        }
        .auto-style9 {
            font-family: "Microsoft New Tai Lue";
            font-weight: bold;
            font-size: medium;
            color: #FF0000;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style12 {
            margin-left: 15;
        }
        .auto-style14 {
            width: 269px;
            text-align: right;
        }
        .auto-style15 {
            height: -30px;
            margin-bottom: 0px;
        }
        .auto-style16 {
            width: 760px;
            height: 608px;
            margin-left: 20%;
        }
        .auto-style17 {
            width: 189px;
            margin-left: 37%;
        }
        .auto-style18 {
            font-family: "Microsoft New Tai Lue";
            font-weight: bold;
            font-size: medium;
        }
        .auto-style20 {
            background-color: #034f84;
            color: white;
            padding: 16px 20px;
            margin: 8px 180px 8px 326px;
            cursor: pointer;
            width: 50%;
            margin-left: 30%;
            opacity: 1;
            border-radius: 12px;
        }
        .auto-style21 {
            color: #fff;
            margin-left: 40%;
            font: normal normal bold 190% normal arial, verdana;
        }
        .auto-style22 {
            color: #FFFFFF;
            margin-left: 15%;
        }
        .auto-style23 {
            color: #FFFFFF;
            font-weight: bold;
            margin-right: 25%;
        }
        .empty {
            padding-bottom: 20%;
        }
    </style>

	<div class = "container">
		<h1 id = "rgstr" class="auto-style17" >Register</h1>
		<p id = "rgstrq">Please fill out the registration form</p>
		
		
    </div>
	

        <div class="auto-style16" style="height: 15%">
	    <table class="auto-style1">
            <tr>
                <td class="auto-style3"><strong>Username:</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="2px" Width="50%"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style9" ErrorMessage="Username is required."></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>E-mail:</strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox2" runat="server" Height="16px" TextMode="Email" Width="56%"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" CssClass="auto-style9" ErrorMessage="Must enter a valid email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" CssClass="auto-style9" ErrorMessage="Field is required."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Password</strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style12" Height="2px" TextMode="Password" Width="50%"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style9" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Confirm Password:</strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox4" runat="server" Height="2px" TextMode="Password" Width="50%"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" CssClass="auto-style18" ErrorMessage="Password must match." ForeColor="#CC0000"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" CssClass="auto-style9" ErrorMessage="Field is required."></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>

		<hr id = "hr2" class="auto-style15">

            <input id="resetbtn" type="reset" value="Reset" style="background-color: #034f84; color: #fff; border-style: none" />

            <div class ="succesClass">
            <asp:Label ID="labelSuccess" runat ="server" Text="Click on submit" CssClass ="auto-style21"></asp:Label>
            </div>

        <p id = "confirmtc"> <span class="auto-style23">By creating an account you agree to our </span><b> <a href = "T&C.html" class="auto-style22">Terms & Conditions</a></b>.</p>
	    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Text="Submit" Width="45%" OnClick="Button1_Click" />
	</div>

    <div class ="empty"></div>

</asp:Content>	