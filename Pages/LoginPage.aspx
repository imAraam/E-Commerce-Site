<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="E_commerce_website.LoginPage" 
    MasterPageFile ="MasterPage.Master"%>


<asp:Content ID ="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

    <style type="text/css">
        .auto-style1 {
            height: 526px;
            left: 40%;
            margin-left: 15%;
            margin-top: 0px;
        }
        .auto-style2 {
            width: 100%;
            height: 71px;
        }
        .auto-style3 {
            width: 142px;
            font-size: medium;
            color: #FFFFFF;
            text-align: right;
        }
        .auto-style4 {
            text-align: right;
            width: 412px;
        }
        .auto-style5 {
            font-family: "Microsoft New Tai Lue";
            font-weight: bold;
            font-size: medium;
            color: #FF0000;
        }
        .auto-style7 {        
            background-color: #034f84;
            color: white;
            padding: 16px 20px;
            margin: 82px 180px 8px 284px;
            cursor: pointer;
            opacity: 1;
            border-radius: 12px;
        }  
        .empty {
            padding-bottom: 313px;
        }
    </style>

        <div>
            <div class = "container">
		<h1 id = "rgstr" class="auto-style17" >Sign in</h1>
		<p id = "rgstrq" style="margin-left: 30%">Please sign in with your user name and password</p>
		
		<br>
                </div>
            </div>


            <div class="auto-style1">


                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">Username:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBoxUsername" runat="server" Width="50%"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" CssClass="auto-style5" ErrorMessage="Please enter username."></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Password:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="50%"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" CssClass="auto-style5" ErrorMessage="Please enter password."></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>


           



                <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="Login" Width="277px" />


           



            </div>
    <div class ="empty">

    </div>

</asp:Content>
