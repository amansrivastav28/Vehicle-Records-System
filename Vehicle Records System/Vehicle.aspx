<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vehicle.aspx.cs" Inherits="Vehicle_Records_System.Vehicle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <link href="DesignCss.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        
             <h1 id="H1" >Vehicle Records System </h1><br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <div id="Div1">
            <%-- This is Part of Hyperlink of our page --%>
        <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/Vehicle.aspx">Vehicle</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2"  runat="server" NavigateUrl="~/Document.aspx">Document</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3"  runat="server" NavigateUrl="~/Service.aspx">Service</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4"   runat="server" NavigateUrl="~/Profile.aspx">Profile</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" Text="LogOut" OnClick="Button1_Click"  /><%-- Logout button--%>
            </div><br /><br /><br /><br /><br /><br /><br />
      
        <div id="Div2">

            </div>
        <%--List View where the data are shown in list view --%>
    
     <footer> &copy; This is created By Aman Srivastav 
    </footer>
             <asp:ListView ID="ListView1" runat="server" DataKeyNames="VehicleId" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                 <AlternatingItemTemplate>
                     <tr style="background-color: #FAFAD2;color: #284775;">
                         <td>
                             <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                             <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                         </td>
                         <td>
                             <asp:Label ID="VehicleIdLabel" runat="server" Text='<%# Eval("VehicleId") %>' />
                         </td>
                         <td>
                             <asp:Label ID="MFG_CDLabel" runat="server" Text='<%# Eval("MFG_CD") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Engine_NoLabel" runat="server" Text='<%# Eval("Engine_No") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Chassis_NoLabel" runat="server" Text='<%# Eval("Chassis_No") %>' />
                         </td>
                         <td>
                             <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                         </td>
                         <td>
                             <asp:Label ID="BodyLabel" runat="server" Text='<%# Eval("Body") %>' />
                         </td>
                         <td>
                             <asp:Label ID="No_of_CylLabel" runat="server" Text='<%# Eval("No_of_Cyl") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Mfg_DateLabel" runat="server" Text='<%# Eval("Mfg_Date") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Fuel_TypeLabel" runat="server" Text='<%# Eval("Fuel_Type") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Seating_CLabel" runat="server" Text='<%# Eval("Seating_C") %>' />
                         </td>
                         <td>
                             <asp:Label ID="ColorLabel" runat="server" Text='<%# Eval("Color") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Regis_DateLabel" runat="server" Text='<%# Eval("Regis_Date") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Regis_UptoLabel" runat="server" Text='<%# Eval("Regis_Upto") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Reg_NoLabel" runat="server" Text='<%# Eval("Reg_No") %>' />
                         </td>
                     </tr>
                 </AlternatingItemTemplate>
                 <EditItemTemplate>
                     <tr style="background-color: #FFCC66;color: #000080;">
                         <td>
                             <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                             <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                         </td>
                         <td>
                             <asp:Label ID="VehicleIdLabel1" runat="server" Text='<%# Eval("VehicleId") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="MFG_CDTextBox" runat="server" Text='<%# Bind("MFG_CD") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Engine_NoTextBox" runat="server" Text='<%# Bind("Engine_No") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Chassis_NoTextBox" runat="server" Text='<%# Bind("Chassis_No") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="BodyTextBox" runat="server" Text='<%# Bind("Body") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="No_of_CylTextBox" runat="server" Text='<%# Bind("No_of_Cyl") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Mfg_DateTextBox" runat="server" Text='<%# Bind("Mfg_Date") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Fuel_TypeTextBox" runat="server" Text='<%# Bind("Fuel_Type") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Seating_CTextBox" runat="server" Text='<%# Bind("Seating_C") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="ColorTextBox" runat="server" Text='<%# Bind("Color") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Regis_DateTextBox" runat="server" Text='<%# Bind("Regis_Date") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Regis_UptoTextBox" runat="server" Text='<%# Bind("Regis_Upto") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Reg_NoTextBox" runat="server" Text='<%# Bind("Reg_No") %>' />
                         </td>
                     </tr>
                 </EditItemTemplate>
                 <EmptyDataTemplate>
                     <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                         <tr>
                             <td>No data was returned.</td>
                         </tr>
                     </table>
                 </EmptyDataTemplate>
                 <InsertItemTemplate>
                     <tr style="">
                         <td>
                             <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                             <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                         </td>
                         <td>
                             <asp:TextBox ID="VehicleIdTextBox" runat="server" Text='<%# Bind("VehicleId") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="MFG_CDTextBox" runat="server" Text='<%# Bind("MFG_CD") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Engine_NoTextBox" runat="server" Text='<%# Bind("Engine_No") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Chassis_NoTextBox" runat="server" Text='<%# Bind("Chassis_No") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="BodyTextBox" runat="server" Text='<%# Bind("Body") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="No_of_CylTextBox" runat="server" Text='<%# Bind("No_of_Cyl") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Mfg_DateTextBox" runat="server" Text='<%# Bind("Mfg_Date") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Fuel_TypeTextBox" runat="server" Text='<%# Bind("Fuel_Type") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Seating_CTextBox" runat="server" Text='<%# Bind("Seating_C") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="ColorTextBox" runat="server" Text='<%# Bind("Color") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Regis_DateTextBox" runat="server" Text='<%# Bind("Regis_Date") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Regis_UptoTextBox" runat="server" Text='<%# Bind("Regis_Upto") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="Reg_NoTextBox" runat="server" Text='<%# Bind("Reg_No") %>' />
                         </td>
                     </tr>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <tr style="background-color: #FFFBD6;color: #333333;">
                         <td>
                             <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                             <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                         </td>
                         <td>
                             <asp:Label ID="VehicleIdLabel" runat="server" Text='<%# Eval("VehicleId") %>' />
                         </td>
                         <td>
                             <asp:Label ID="MFG_CDLabel" runat="server" Text='<%# Eval("MFG_CD") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Engine_NoLabel" runat="server" Text='<%# Eval("Engine_No") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Chassis_NoLabel" runat="server" Text='<%# Eval("Chassis_No") %>' />
                         </td>
                         <td>
                             <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                         </td>
                         <td>
                             <asp:Label ID="BodyLabel" runat="server" Text='<%# Eval("Body") %>' />
                         </td>
                         <td>
                             <asp:Label ID="No_of_CylLabel" runat="server" Text='<%# Eval("No_of_Cyl") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Mfg_DateLabel" runat="server" Text='<%# Eval("Mfg_Date") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Fuel_TypeLabel" runat="server" Text='<%# Eval("Fuel_Type") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Seating_CLabel" runat="server" Text='<%# Eval("Seating_C") %>' />
                         </td>
                         <td>
                             <asp:Label ID="ColorLabel" runat="server" Text='<%# Eval("Color") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Regis_DateLabel" runat="server" Text='<%# Eval("Regis_Date") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Regis_UptoLabel" runat="server" Text='<%# Eval("Regis_Upto") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Reg_NoLabel" runat="server" Text='<%# Eval("Reg_No") %>' />
                         </td>
                     </tr>
                 </ItemTemplate>
                 <LayoutTemplate>
                     <table runat="server">
                         <tr runat="server">
                             <td runat="server">
                                 <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                     <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                         <th runat="server"></th>
                                         <th runat="server">VehicleId</th>
                                         <th runat="server">MFG_CD</th>
                                         <th runat="server">Engine_No</th>
                                         <th runat="server">Chassis_No</th>
                                         <th runat="server">Model</th>
                                         <th runat="server">Body</th>
                                         <th runat="server">No_of_Cyl</th>
                                         <th runat="server">Mfg_Date</th>
                                         <th runat="server">Fuel_Type</th>
                                         <th runat="server">Seating_C</th>
                                         <th runat="server">Color</th>
                                         <th runat="server">Regis_Date</th>
                                         <th runat="server">Regis_Upto</th>
                                         <th runat="server">Reg_No</th>
                                     </tr>
                                     <tr id="itemPlaceholder" runat="server">
                                     </tr>
                                 </table>
                             </td>
                         </tr>
                         <tr runat="server">
                             <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                         </tr>
                     </table>
                 </LayoutTemplate>
                 <SelectedItemTemplate>
                     <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                         <td>
                             <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                             <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                         </td>
                         <td>
                             <asp:Label ID="VehicleIdLabel" runat="server" Text='<%# Eval("VehicleId") %>' />
                         </td>
                         <td>
                             <asp:Label ID="MFG_CDLabel" runat="server" Text='<%# Eval("MFG_CD") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Engine_NoLabel" runat="server" Text='<%# Eval("Engine_No") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Chassis_NoLabel" runat="server" Text='<%# Eval("Chassis_No") %>' />
                         </td>
                         <td>
                             <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                         </td>
                         <td>
                             <asp:Label ID="BodyLabel" runat="server" Text='<%# Eval("Body") %>' />
                         </td>
                         <td>
                             <asp:Label ID="No_of_CylLabel" runat="server" Text='<%# Eval("No_of_Cyl") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Mfg_DateLabel" runat="server" Text='<%# Eval("Mfg_Date") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Fuel_TypeLabel" runat="server" Text='<%# Eval("Fuel_Type") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Seating_CLabel" runat="server" Text='<%# Eval("Seating_C") %>' />
                         </td>
                         <td>
                             <asp:Label ID="ColorLabel" runat="server" Text='<%# Eval("Color") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Regis_DateLabel" runat="server" Text='<%# Eval("Regis_Date") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Regis_UptoLabel" runat="server" Text='<%# Eval("Regis_Upto") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Reg_NoLabel" runat="server" Text='<%# Eval("Reg_No") %>' />
                         </td>
                     </tr>
                 </SelectedItemTemplate>
             </asp:ListView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VehicleSystemConnectionString %>" DeleteCommand="DELETE FROM [Vehicle] WHERE [VehicleId] = @VehicleId" InsertCommand="INSERT INTO [Vehicle] ([VehicleId], [MFG_CD], [Engine_No], [Chassis_No], [Model], [Body], [No_of_Cyl], [Mfg_Date], [Fuel_Type], [Seating_C], [Color], [Regis_Date], [Regis_Upto], [Reg_No]) VALUES (@VehicleId, @MFG_CD, @Engine_No, @Chassis_No, @Model, @Body, @No_of_Cyl, @Mfg_Date, @Fuel_Type, @Seating_C, @Color, @Regis_Date, @Regis_Upto, @Reg_No)" SelectCommand="SELECT * FROM [Vehicle]" UpdateCommand="UPDATE [Vehicle] SET [MFG_CD] = @MFG_CD, [Engine_No] = @Engine_No, [Chassis_No] = @Chassis_No, [Model] = @Model, [Body] = @Body, [No_of_Cyl] = @No_of_Cyl, [Mfg_Date] = @Mfg_Date, [Fuel_Type] = @Fuel_Type, [Seating_C] = @Seating_C, [Color] = @Color, [Regis_Date] = @Regis_Date, [Regis_Upto] = @Regis_Upto, [Reg_No] = @Reg_No WHERE [VehicleId] = @VehicleId">
                 <DeleteParameters>
                     <asp:Parameter Name="VehicleId" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="VehicleId" Type="Int32" />
                     <asp:Parameter Name="MFG_CD" Type="String" />
                     <asp:Parameter Name="Engine_No" Type="String" />
                     <asp:Parameter Name="Chassis_No" Type="String" />
                     <asp:Parameter Name="Model" Type="String" />
                     <asp:Parameter Name="Body" Type="String" />
                     <asp:Parameter Name="No_of_Cyl" Type="Int32" />
                     <asp:Parameter DbType="Date" Name="Mfg_Date" />
                     <asp:Parameter Name="Fuel_Type" Type="String" />
                     <asp:Parameter Name="Seating_C" Type="Int32" />
                     <asp:Parameter Name="Color" Type="String" />
                     <asp:Parameter DbType="Date" Name="Regis_Date" />
                     <asp:Parameter DbType="Date" Name="Regis_Upto" />
                     <asp:Parameter Name="Reg_No" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="MFG_CD" Type="String" />
                     <asp:Parameter Name="Engine_No" Type="String" />
                     <asp:Parameter Name="Chassis_No" Type="String" />
                     <asp:Parameter Name="Model" Type="String" />
                     <asp:Parameter Name="Body" Type="String" />
                     <asp:Parameter Name="No_of_Cyl" Type="Int32" />
                     <asp:Parameter DbType="Date" Name="Mfg_Date" />
                     <asp:Parameter Name="Fuel_Type" Type="String" />
                     <asp:Parameter Name="Seating_C" Type="Int32" />
                     <asp:Parameter Name="Color" Type="String" />
                     <asp:Parameter DbType="Date" Name="Regis_Date" />
                     <asp:Parameter DbType="Date" Name="Regis_Upto" />
                     <asp:Parameter Name="Reg_No" Type="String" />
                     <asp:Parameter Name="VehicleId" Type="Int32" />
                 </UpdateParameters>
             </asp:SqlDataSource>
    
    </form>
     </body>
</html>
