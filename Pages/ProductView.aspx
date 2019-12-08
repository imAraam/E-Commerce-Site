<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="E_commerce_website.ProductView"
    MasterPageFile ="MasterPage.Master" %>


<asp:Content ID ="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server"> 



<div class="auto-style35">
            <div class="auto-style24">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductNameConnection %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [ProductInfo]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="75px" Width="506px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                        <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                        <asp:BoundField DataField="NameOfProduct" HeaderText="NameOfProduct" SortExpression="NameOfProduct" />
                        <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" /> 
                        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" /> 
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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

    <div class ="successClass">
         <div class ="labelClass2">
     <asp:Label ID="labelSuccess" runat ="server" Text="Enter the data you wish to update/delete here:" ForeColor = "white"></asp:Label>
 </div>
    </div>

    <div class ="auto-style33">
     <label class ="label_id"><span class="auto-style40">ID:</span> </label>
     <asp:TextBox ID="ID_txtbox" runat="server" Width="20%"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ID_txtbox" CssClass="auto-style32" ErrorMessage="ID is required."></asp:RequiredFieldValidator>
    </div>               
    
     <div class ="auto-style33">
     <label class ="label_pid"><span class="auto-style39">Product ID:</span> </label>
      <asp:TextBox ID="PID_txtbox" runat="server" Width ="20%"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PID_txtbox" CssClass="auto-style9" ErrorMessage="Username is required." style="color: #FF0000; font-weight: bold; font-size: small"></asp:RequiredFieldValidator>
     </div>             
         
     <div class ="auto-style33">
     <label class ="label_name"><span class="auto-style39">Name of Product: </span> </label>     
     <asp:TextBox ID="name_txtbox" runat="server" CssClass="auto-style12" Width ="23%" style="margin-left: 0" ></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="name_txtbox" CssClass="auto-style9" ErrorMessage="Password is required." style="color: #FF0000; font-weight: bold; font-size: small"></asp:RequiredFieldValidator>
     </div> 

         <div class ="auto-style33">
     <label class ="label_name"><span class="auto-style41">Image file name: </span> </label>     
     <asp:TextBox ID="image_txtbox" runat="server" CssClass="auto-style12" Width ="23%" style="margin-left: 0" ></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="name_txtbox" CssClass="auto-style9" ErrorMessage="Password is required." style="color: #FF0000; font-weight: bold; font-size: small"></asp:RequiredFieldValidator>
     </div> 
    
    <div class ="auto-style34">
     <label class ="label_summary"><span class="auto-style39">Summary: </span> </label>
     <asp:TextBox ID="summary_txtbox" runat="server" Width="39%"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="summary_txtbox" CssClass="auto-style9" ErrorMessage="Field is required." style="color: #FF0000; font-weight: bold; font-size: small"></asp:RequiredFieldValidator>
     </div> 

    <div class ="labelPriceClass">
     <label class ="label_price"><span class="auto-style39">Price:</span> </label>     
     <asp:TextBox ID="price_txtbox" runat="server" CssClass="auto-style12" Width ="23%" style="margin-left: 0" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="price_txtbox" CssClass="auto-style9" ErrorMessage="Password is required." style="color: #FF0000; font-weight: bold; font-size: small"></asp:RequiredFieldValidator>
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
                   
 </div>

<style>
    .nonTable {
        margin-top: -13%;
    }
    .labelPriceClass {     
        margin-left: 40%;
    }
    .labelClass2 {
        margin-left: 33%;
         margin-bottom: 5%;
         font: 250% arial, verdana;
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
        color: #ffffff;
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
        margin-left: 35%;
        text-align: justify;
    }
    .auto-style35 {
        margin-right: 0px;
    }
    .auto-style36 {
        border: 1px solid #3498db;
        background: none;
        padding: 10px 20px;
        font-family: "montserrat";
        color: #fff;
        cursor: pointer;
        margin: 0px 10px 10px 10px;
        transition: 0.8s;
    }
    .auto-style37 {
        border: 1px solid #3498db;
        background: none;
        padding: 10px 20px;
        font-family: "montserrat";
        color: #fff;
        cursor: pointer;
        margin: 53px 10px 10px 10px;
        transition: 0.8s;
    }
    .auto-style39 {
        font-size: medium;
        color: #FFFFFF;
        font-weight: bold;
    }
    .auto-style40 {
        font-size: medium;
        font-weight: bold;
    }
    .auto-style41 {
        font-size: medium;
        color: #FFFFFF;
        font-weight: bold;
        margin-left: 14%;
    }
    </style> 

</asp:Content> 
