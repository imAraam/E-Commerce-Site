<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountManagement.aspx.cs" Inherits="E_commerce_website.AccountManagement"
    MasterPageFile ="MasterPage.Master"%>



<asp:Content ID ="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

<div>
    <div>
            <div class ="label_cont">
                <div class ="labelClass">
                        <label class ="l_update">Enter the data you wish to update/delete here: </label>
                </div>           
            </div>
                            
             <div class ="auto-style33">
             <label class ="label_details">Username: </label>
              <asp:TextBox ID="User_txtbox" runat="server" Width ="20%"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="User_txtbox" CssClass="auto-style9" ErrorMessage="Username is required." style="color: #FF0000; font-weight: bold; font-size: small"></asp:RequiredFieldValidator>
             </div>             
         
             <div class ="auto-style33">
             <label class ="label_details">Password: </label>     
             <asp:TextBox ID="pass_txtbox" runat="server" CssClass="auto-style12" TextMode="Password" Width ="23%" style="margin-left: 0" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="pass_txtbox" CssClass="auto-style9" ErrorMessage="Password is required." style="color: #FF0000; font-weight: bold; font-size: small"></asp:RequiredFieldValidator>
             </div> 
    
            <div class ="auto-style33">
             <label class ="label_details">Email: </label>
             <asp:TextBox ID="email_txtbox" runat="server" TextMode="Email" Width="39%"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email_txtbox" CssClass="auto-style9" ErrorMessage="Must enter a valid email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="color: #FF0000; font-weight: bold; font-size: small"></asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email_txtbox" CssClass="auto-style9" ErrorMessage="Field is required." style="color: #FF0000; font-weight: bold; font-size: small"></asp:RequiredFieldValidator>
              </div> 


        <div>
            <div class ="update_btn">
            <asp:Button ID="updatebtn" runat="server" Text="Update" Cssclass ="btn" OnClick="updatebtn_Click"/>
            </div>
        </div>
           
        <div>
            <div class ="clear_btn">
            <asp:Button ID="clearbtn" runat="server" Text="Clear" Cssclass ="btn" OnClick="clearbtn_Click"/>
            </div>
        </div>

         <div class ="succesClass">
             <div class ="succes">
                 <asp:Label ID="labelSuccess" runat ="server" Text="Click Update to update" CssClass="auto-style1"></asp:Label>
             </div>            
         </div>

        <div class ="empty"></div>

</div>

    <style>
        .label_cont {
            padding: 7%;
            margin-left: 15%;
        }
        .auto-style33 {
            margin-left: 38%;
        }
        .label_details {
            font: 150% arial, verdana;
            color: #FFFFFF;
        }
        .labelClass {
            color: #fff;
            font: 250% arial, verdana;
            margin-left: 10%;
        }
        .update_btn {
        margin-top: 4%;
        margin-left: 50%;
    }
        .auto-style1 {
            font-weight: bold;
            font-size: medium;
            color: #FFFFFF;
            margin-left: 32%;
        }
        .empty {
            padding-bottom: 42.5%;
        }
        .clear_btn {
            margin-top: 1%;
            margin-left: 50%;
            margin-bottom: 3%;
        }
    </style>

</asp:Content>
