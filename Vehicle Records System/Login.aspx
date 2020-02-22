<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vehicle_Records_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <%-- Opening tag of style  --%>
    <style type="text/css"> /* In this tag we defined Style for every html tag and element*/
 /* Its defined Style for heading*/ 
 h1{                              /
       font-family:cursive;
       margin-top:0px;          
       width:100%;
       font-size:50px;
       height:70px;
       background-color:aqua;
   }
  /* Its defined style for paragraph*/
   p{font-family:cursive;
     margin-top:100px;
     font-weight:bold;
   }
   /*Its defined style for both text box which are used in web page for login credetional*/
   #TextBox1,#TextBox2{
       height:50px;
       width:250px;
       text-align:center;
       border-radius:30px;
      font-family:cursive;
      font-size:20px;
     margin-left:40px;
   }
   /*Its defined style for button*/
   #Button1{
       height:50px;
       width:120px;
       font-family:cursive;
       font-size:15px;
       text-align:center;
       border-radius:20px;
       font-weight:bold;
   }
   /*Its defined style are generated when user hover a mouse on this text box the effect will changed*/
   #TextBox1:hover,#TextBox2:hover{
       min-width:300px;
       min-height:50px;
       background-color:cyan;
       border-radius:40px;
   }
      /*This is defined hover effect on button*/
   #Button1:hover{
       min-width:140px;
       min-height:50px;
       background-color:cyan;
   }
   /*style for label*/
   #Label1{
       font-size:22px;
   }
   /* Its defined the style for div tag which have id="Div1"*/
   #Div1{
       margin-top:50px;
       background-color:saddlebrown;
       height:300px;
       width:800px;
       border-radius:1300px;
   }
   #Div2{
       background-color:maroon;
       margin-top:10px;
       margin-left:20px;
       margin-right:20px;
       height:700px;
   }
    </style><%-- Closing Style Tag  --%>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Div2">
                   <center>
          <h1>Vehicle Records System</h1><%--  Heading Of our system  --%>
        <div id="Div1">
            <p>LOGIN IN TO SYSTEM</p><br/>
                <asp:TextBox ID="TextBox1" placeholder="Username"  runat="server"></asp:TextBox><%--  This textbox contain username   --%>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Co ErrorMessage="Enter a Username" ControlToValidate="TextBox1" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br/><br/>
            <%--  This is used for required field if user empty this field the requiredfield are in action and raised an error message  --%>
                <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>  <%--  This textbox contain Password   --%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a Password" ControlToValidate="TextBox2" EnableClientScript="False"></asp:RequiredFieldValidator>
          <br/><br/>
             <%--  This is used for required field if user empty this field the requiredfield are in action and raised an error message  --%>
                <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click1" Text="Login" /><%--  This is the Login button where user click and the details will send to the server for crediantals check  --%>
            <br/><br/>
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label><%--  This label is used for displaying a error message of "Invalid Username and Password"   --%>
            </div>
            </center>
                   </div>
    </form>
</body>
</html>
