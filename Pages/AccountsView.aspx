<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountsView.aspx.cs" Inherits="E_commerce_website.AccountsView"
    MasterPageFile ="MasterPage.Master" %>


<asp:Content ID ="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server"> 



<div class="auto-style35">
            <div class="auto-style24">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnection %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [AccountDetails]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="75px" Width="506px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />                      
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </div>

  <div class ="nonTable">                  
  
        <div class ="label_cont">
            <div class ="labelClass">
                 <label class ="l_update">Enter the data you wish to update/delete here: </label>
            </div>           
        </div>

    <div class ="auto-style33">
     <label class ="label_id"><span class="auto-style37">ID:</span> </label>
     <asp:TextBox ID="ID_txtbox" runat="server" Width="20%"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ID_txtbox" CssClass="auto-style32" ErrorMessage="ID is required."></asp:RequiredFieldValidator>
    </div>               
    
     <div class ="auto-style33">
     <label class ="label_user"><span class="auto-style37">Username: </span> </label>
      <asp:TextBox ID="User_txtbox" runat="server" Width ="20%"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="User_txtbox" CssClass="auto-style9" ErrorMessage="Username is required." style="color: #FF0000; font-weight: bold; font-size: small"></asp:RequiredFieldValidator>
     </div>             
         
     <div class ="auto-style34">
     <label class ="label_pass"><span class="auto-style37">Password:</span> </label>     
     <asp:TextBox ID="pass_txtbox" runat="server" CssClass="auto-style12" TextMode="Password" Width ="23%" style="margin-left: 0" ></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="pass_txtbox" CssClass="auto-style9" ErrorMessage="Password is required." style="color: #FF0000; font-weight: bold; font-size: small"></asp:RequiredFieldValidator>
     </div> 
    
    <div class ="auto-style36">
     <label class ="label_email"><span class="auto-style37">Email:</span> </label>
     <asp:TextBox ID="email_txtbox" runat="server" TextMode="Email" Width="39%"></asp:TextBox>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email_txtbox" CssClass="auto-style9" ErrorMessage="Must enter a valid email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="color: #FF0000; font-weight: bold; font-size: small"></asp:RegularExpressionValidator>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email_txtbox" CssClass="auto-style9" ErrorMessage="Field is required." style="color: #FF0000; font-weight: bold; font-size: small"></asp:RequiredFieldValidator>
      </div> 


<div>
    <div class ="update_btn">
    <asp:Button ID="updatebtn" runat="server" Text="Update" OnClick="updatebtn_Click" CssClass ="btn"/>
    </div>
</div>
    <div>
    <div class ="delete_btn">
    <asp:Button ID="deletebtn" runat="server" Text="Delete" OnClick="deletebtn_Click" CssClass ="btn"/>
    </div>
</div>
    <div>
    <div class ="clear_btn">
    <asp:Button ID="clearbtn" runat="server" Text="Clear" OnClick="clearbtn_Click" CssClass ="btn"/>
    </div>
</div>

 <div class ="succesClass">
     <asp:Label ID = "labelSuccess" runat="server" Text ="Click on Update/Delete" CssClass="successClass"></asp:Label>
   </div>
                   
      </div>

<style>
    .label_cont {
        margin-right: 5%;
    }
    .nonTable {
        margin-top: -13%;
    }
    .successClass {
        font: 150% arial, verdana;
        margin-left: 46%;
        color: white;
    }
    .labelClass {
        margin-bottom: 5%;
    }
    .delete_btn {
        margin-left: 50%;
    }
    .clear_btn {
         margin-bottom: 10%;
         margin-left: 50%;
    }
    .update_btn {
        margin-top: 5%;
        margin-left: 50%;
    }
    .label_id {
        color: #fff;
        font: 24px;
        justify-content: center;
    }
    .label_user {
        color: #fff;
        font: 24px;
        position: center; 
    }
    .label_pass {
        color: #fff;
        font: 24px;
        position: center; 
    }
    .label_email {
        color: #fff;
        font: 24px;
    }
    .email_div {
        margin-left: 40%;
    }
    .l_update 
    {
        margin-left: 22%;
        color: #fff;
        font: 250% arial, verdana;
    }
    .table_div {
        margin-right: 30%;
    }
    .table_class {
       width: 100%;
       height: 246px;
    }
    .auto-style24 {
        height: 194px;
        width: 1551px;
        padding: 15%;
        margin-left: 20%;
    }
    .auto-style32 {
        font-weight: bold;
        font-size: small;
        color: #FF0000;
    }
    .auto-style33 {
        text-align: center;
    }
    .auto-style34 {
        margin-left: 37.5%;
    }
    .auto-style36 {
        margin-left: 40%;
    }
    .auto-style37 {
        font-size: medium;
        font-weight: bold;
    }
    </style> 

</asp:Content> 
