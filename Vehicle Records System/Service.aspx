<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service.aspx.cs" Inherits="Vehicle_Records_System.Service" %>

<!Doctype html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="DesignCss.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1 id="H1" >Vehicle Records System</h1><br />
         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <div id="Div1">
        <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/Vehicle.aspx" BorderStyle="None" Font-Overline="False" Font-Strikeout="False">Vehicle</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2"  runat="server" NavigateUrl="~/Document.aspx">Document</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3"  runat="server" NavigateUrl="~/Service.aspx">Service</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4"   runat="server" NavigateUrl="~/Profile.aspx">Profile</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" Text="LogOut" OnClick="Button1_Click"/>
            </div><br /><br /><br />

    
        <div id="Div2">
           <p id="P1">Service History Records</p>
           </div>
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
                        <asp:Label ID="Regist_NoLabel" runat="server" Text='<%# Eval("Regist_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OwnerLabel" runat="server" Text='<%# Eval("Owner") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Invoice_NoLabel" runat="server" Text='<%# Eval("Invoice_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Chassis_NoLabel" runat="server" Text='<%# Eval("Chassis_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Engine_NoLabel" runat="server" Text='<%# Eval("Engine_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Service_TypeLabel" runat="server" Text='<%# Eval("Service_Type") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Last_ServiceLabel" runat="server" Text='<%# Eval("Last_Service") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Next_ServiceLabel" runat="server" Text='<%# Eval("Next_Service") %>' />
                    </td>
                    <td>
                        <asp:Label ID="S_NoLabel" runat="server" Text='<%# Eval("S_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Part_NoLabel" runat="server" Text='<%# Eval("Part_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ReadingLabel" runat="server" Text='<%# Eval("Reading") %>' />
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
                        <asp:TextBox ID="Regist_NoTextBox" runat="server" Text='<%# Bind("Regist_No") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OwnerTextBox" runat="server" Text='<%# Bind("Owner") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Invoice_NoTextBox" runat="server" Text='<%# Bind("Invoice_No") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Chassis_NoTextBox" runat="server" Text='<%# Bind("Chassis_No") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Engine_NoTextBox" runat="server" Text='<%# Bind("Engine_No") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Service_TypeTextBox" runat="server" Text='<%# Bind("Service_Type") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Last_ServiceTextBox" runat="server" Text='<%# Bind("Last_Service") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Next_ServiceTextBox" runat="server" Text='<%# Bind("Next_Service") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="S_NoTextBox" runat="server" Text='<%# Bind("S_No") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Part_NoTextBox" runat="server" Text='<%# Bind("Part_No") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ReadingTextBox" runat="server" Text='<%# Bind("Reading") %>' />
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
                        <asp:TextBox ID="Regist_NoTextBox" runat="server" Text='<%# Bind("Regist_No") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OwnerTextBox" runat="server" Text='<%# Bind("Owner") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Invoice_NoTextBox" runat="server" Text='<%# Bind("Invoice_No") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Chassis_NoTextBox" runat="server" Text='<%# Bind("Chassis_No") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Engine_NoTextBox" runat="server" Text='<%# Bind("Engine_No") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Service_TypeTextBox" runat="server" Text='<%# Bind("Service_Type") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Last_ServiceTextBox" runat="server" Text='<%# Bind("Last_Service") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Next_ServiceTextBox" runat="server" Text='<%# Bind("Next_Service") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="S_NoTextBox" runat="server" Text='<%# Bind("S_No") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Part_NoTextBox" runat="server" Text='<%# Bind("Part_No") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ReadingTextBox" runat="server" Text='<%# Bind("Reading") %>' />
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
                        <asp:Label ID="Regist_NoLabel" runat="server" Text='<%# Eval("Regist_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OwnerLabel" runat="server" Text='<%# Eval("Owner") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Invoice_NoLabel" runat="server" Text='<%# Eval("Invoice_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Chassis_NoLabel" runat="server" Text='<%# Eval("Chassis_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Engine_NoLabel" runat="server" Text='<%# Eval("Engine_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Service_TypeLabel" runat="server" Text='<%# Eval("Service_Type") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Last_ServiceLabel" runat="server" Text='<%# Eval("Last_Service") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Next_ServiceLabel" runat="server" Text='<%# Eval("Next_Service") %>' />
                    </td>
                    <td>
                        <asp:Label ID="S_NoLabel" runat="server" Text='<%# Eval("S_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Part_NoLabel" runat="server" Text='<%# Eval("Part_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ReadingLabel" runat="server" Text='<%# Eval("Reading") %>' />
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
                                    <th runat="server">Regist_No</th>
                                    <th runat="server">Owner</th>
                                    <th runat="server">Invoice_No</th>
                                    <th runat="server">Date</th>
                                    <th runat="server">Chassis_No</th>
                                    <th runat="server">Engine_No</th>
                                    <th runat="server">Model</th>
                                    <th runat="server">Service_Type</th>
                                    <th runat="server">Last_Service</th>
                                    <th runat="server">Next_Service</th>
                                    <th runat="server">S_No</th>
                                    <th runat="server">Part_No</th>
                                    <th runat="server">Description</th>
                                    <th runat="server">Reading</th>
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
                        <asp:Label ID="Regist_NoLabel" runat="server" Text='<%# Eval("Regist_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OwnerLabel" runat="server" Text='<%# Eval("Owner") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Invoice_NoLabel" runat="server" Text='<%# Eval("Invoice_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Chassis_NoLabel" runat="server" Text='<%# Eval("Chassis_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Engine_NoLabel" runat="server" Text='<%# Eval("Engine_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Service_TypeLabel" runat="server" Text='<%# Eval("Service_Type") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Last_ServiceLabel" runat="server" Text='<%# Eval("Last_Service") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Next_ServiceLabel" runat="server" Text='<%# Eval("Next_Service") %>' />
                    </td>
                    <td>
                        <asp:Label ID="S_NoLabel" runat="server" Text='<%# Eval("S_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Part_NoLabel" runat="server" Text='<%# Eval("Part_No") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ReadingLabel" runat="server" Text='<%# Eval("Reading") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VehicleSystemConnectionString %>" DeleteCommand="DELETE FROM [Service] WHERE [VehicleId] = @VehicleId" InsertCommand="INSERT INTO [Service] ([VehicleId], [Regist_No], [Owner], [Invoice_No], [Date], [Chassis_No], [Engine_No], [Model], [Service_Type], [Last_Service], [Next_Service], [S_No], [Part_No], [Description], [Reading]) VALUES (@VehicleId, @Regist_No, @Owner, @Invoice_No, @Date, @Chassis_No, @Engine_No, @Model, @Service_Type, @Last_Service, @Next_Service, @S_No, @Part_No, @Description, @Reading)" SelectCommand="SELECT * FROM [Service]" UpdateCommand="UPDATE [Service] SET [Regist_No] = @Regist_No, [Owner] = @Owner, [Invoice_No] = @Invoice_No, [Date] = @Date, [Chassis_No] = @Chassis_No, [Engine_No] = @Engine_No, [Model] = @Model, [Service_Type] = @Service_Type, [Last_Service] = @Last_Service, [Next_Service] = @Next_Service, [S_No] = @S_No, [Part_No] = @Part_No, [Description] = @Description, [Reading] = @Reading WHERE [VehicleId] = @VehicleId">
            <DeleteParameters>
                <asp:Parameter Name="VehicleId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="VehicleId" Type="Int32" />
                <asp:Parameter Name="Regist_No" Type="String" />
                <asp:Parameter Name="Owner" Type="String" />
                <asp:Parameter Name="Invoice_No" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="Chassis_No" Type="String" />
                <asp:Parameter Name="Engine_No" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Service_Type" Type="String" />
                <asp:Parameter DbType="Date" Name="Last_Service" />
                <asp:Parameter DbType="Date" Name="Next_Service" />
                <asp:Parameter Name="S_No" Type="Int32" />
                <asp:Parameter Name="Part_No" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Reading" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Regist_No" Type="String" />
                <asp:Parameter Name="Owner" Type="String" />
                <asp:Parameter Name="Invoice_No" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="Chassis_No" Type="String" />
                <asp:Parameter Name="Engine_No" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Service_Type" Type="String" />
                <asp:Parameter DbType="Date" Name="Last_Service" />
                <asp:Parameter DbType="Date" Name="Next_Service" />
                <asp:Parameter Name="S_No" Type="Int32" />
                <asp:Parameter Name="Part_No" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Reading" Type="Int32" />
                <asp:Parameter Name="VehicleId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            </form>
     </body>
</html>
