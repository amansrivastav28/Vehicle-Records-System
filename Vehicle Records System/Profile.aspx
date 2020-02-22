<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Vehicle_Records_System.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="DesignCss.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1 id="H1" >Vehicle Records System</h1><br />
         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <div id="Div1">
        <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/Vehicle.aspx">Vehicle</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2"  runat="server" NavigateUrl="~/Document.aspx">Document</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3"  runat="server" NavigateUrl="~/Service.aspx">Service</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4"   runat="server" NavigateUrl="~/Profile.aspx">Profile</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" Text="LogOut" OnClick="Button1_Click"/>
            </div><br /><br /><br />
        <div id="Div2">
            
        </div>
    <footer>&copy; This Site is create and maintain by AMAN SRIVASTAV &trade;</footer>

        

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" style="margin-left: 279px; margin-top: 71px" Width="406px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>

        

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VehicleSystemConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Login] ([Id], [UserName], [Password], [Type], [Status], [Email]) VALUES (@Id, @UserName, @Password, @Type, @Status, @Email)" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [UserName] = @UserName, [Password] = @Password, [Type] = @Type, [Status] = @Status, [Email] = @Email WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        

        </form>
    
</body>
</html>
