<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Document.aspx.cs" Inherits="Vehicle_Records_System.Document" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="DesignCss.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
                <h1 id="H1" >Vehicle Records System</h1><br />
         <asp:Label ID="Label" runat="server" Text="Label"></asp:Label>
        <div id="Div1">
        <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/Vehicle.aspx">Vehicle</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2"  runat="server" NavigateUrl="~/Document.aspx">Document</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3"  runat="server" NavigateUrl="~/Service.aspx">Service</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4"   runat="server" NavigateUrl="~/Profile.aspx">Profile</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" Text="LogOut"  OnClick="Button1_Click"/>
            </div>
         <br /><br /><br /><br />        <br /><br /><br />
        
        <div id="Div2">
            <asp:Label ID="Label1" runat="server" Text="Insurance Records" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
            <br />
                       <asp:ListView ID="ListView1" runat="server" DataKeyNames="VehicleId" DataSourceID="SqlDataSource4" InsertItemPosition="LastItem">
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
                                       <asp:Label ID="Policy_NoLabel" runat="server" Text='<%# Eval("Policy_No") %>' />
                                   </td>
                                   <td>
                                       <asp:Label ID="Policy_TypeLabel" runat="server" Text='<%# Eval("Policy_Type") %>' />
                                   </td>
                                   <td>
                                       <asp:Label ID="Company_NameLabel" runat="server" Text='<%# Eval("Company_Name") %>' />
                                   </td>
                                   <td>
                                       <asp:Label ID="Issue_DateLabel" runat="server" Text='<%# Eval("Issue_Date") %>' />
                                   </td>
                                   <td>
                                       <asp:Label ID="Expire_DateLabel" runat="server" Text='<%# Eval("Expire_Date") %>' />
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
                                       <asp:TextBox ID="Policy_NoTextBox" runat="server" Text='<%# Bind("Policy_No") %>' />
                                   </td>
                                   <td>
                                       <asp:TextBox ID="Policy_TypeTextBox" runat="server" Text='<%# Bind("Policy_Type") %>' />
                                   </td>
                                   <td>
                                       <asp:TextBox ID="Company_NameTextBox" runat="server" Text='<%# Bind("Company_Name") %>' />
                                   </td>
                                   <td>
                                       <asp:TextBox ID="Issue_DateTextBox" runat="server" Text='<%# Bind("Issue_Date") %>' />
                                   </td>
                                   <td>
                                       <asp:TextBox ID="Expire_DateTextBox" runat="server" Text='<%# Bind("Expire_Date") %>' />
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
                                       <asp:TextBox ID="Policy_NoTextBox" runat="server" Text='<%# Bind("Policy_No") %>' />
                                   </td>
                                   <td>
                                       <asp:TextBox ID="Policy_TypeTextBox" runat="server" Text='<%# Bind("Policy_Type") %>' />
                                   </td>
                                   <td>
                                       <asp:TextBox ID="Company_NameTextBox" runat="server" Text='<%# Bind("Company_Name") %>' />
                                   </td>
                                   <td>
                                       <asp:TextBox ID="Issue_DateTextBox" runat="server" Text='<%# Bind("Issue_Date") %>' />
                                   </td>
                                   <td>
                                       <asp:TextBox ID="Expire_DateTextBox" runat="server" Text='<%# Bind("Expire_Date") %>' />
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
                                       <asp:Label ID="Policy_NoLabel" runat="server" Text='<%# Eval("Policy_No") %>' />
                                   </td>
                                   <td>
                                       <asp:Label ID="Policy_TypeLabel" runat="server" Text='<%# Eval("Policy_Type") %>' />
                                   </td>
                                   <td>
                                       <asp:Label ID="Company_NameLabel" runat="server" Text='<%# Eval("Company_Name") %>' />
                                   </td>
                                   <td>
                                       <asp:Label ID="Issue_DateLabel" runat="server" Text='<%# Eval("Issue_Date") %>' />
                                   </td>
                                   <td>
                                       <asp:Label ID="Expire_DateLabel" runat="server" Text='<%# Eval("Expire_Date") %>' />
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
                                                   <th runat="server">Policy_No</th>
                                                   <th runat="server">Policy_Type</th>
                                                   <th runat="server">Company_Name</th>
                                                   <th runat="server">Issue_Date</th>
                                                   <th runat="server">Expire_Date</th>
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
                                       <asp:Label ID="Policy_NoLabel" runat="server" Text='<%# Eval("Policy_No") %>' />
                                   </td>
                                   <td>
                                       <asp:Label ID="Policy_TypeLabel" runat="server" Text='<%# Eval("Policy_Type") %>' />
                                   </td>
                                   <td>
                                       <asp:Label ID="Company_NameLabel" runat="server" Text='<%# Eval("Company_Name") %>' />
                                   </td>
                                   <td>
                                       <asp:Label ID="Issue_DateLabel" runat="server" Text='<%# Eval("Issue_Date") %>' />
                                   </td>
                                   <td>
                                       <asp:Label ID="Expire_DateLabel" runat="server" Text='<%# Eval("Expire_Date") %>' />
                                   </td>
                               </tr>
                           </SelectedItemTemplate>
                       </asp:ListView>
                       <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:VehicleSystemConnectionString %>" DeleteCommand="DELETE FROM [Insurance] WHERE [VehicleId] = @VehicleId" InsertCommand="INSERT INTO [Insurance] ([VehicleId], [Policy_No], [Policy_Type], [Company_Name], [Issue_Date], [Expire_Date]) VALUES (@VehicleId, @Policy_No, @Policy_Type, @Company_Name, @Issue_Date, @Expire_Date)" SelectCommand="SELECT * FROM [Insurance]" UpdateCommand="UPDATE [Insurance] SET [Policy_No] = @Policy_No, [Policy_Type] = @Policy_Type, [Company_Name] = @Company_Name, [Issue_Date] = @Issue_Date, [Expire_Date] = @Expire_Date WHERE [VehicleId] = @VehicleId">
                           <DeleteParameters>
                               <asp:Parameter Name="VehicleId" Type="Int32" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="VehicleId" Type="Int32" />
                               <asp:Parameter Name="Policy_No" Type="String" />
                               <asp:Parameter Name="Policy_Type" Type="String" />
                               <asp:Parameter Name="Company_Name" Type="String" />
                               <asp:Parameter DbType="Date" Name="Issue_Date" />
                               <asp:Parameter DbType="Date" Name="Expire_Date" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:Parameter Name="Policy_No" Type="String" />
                               <asp:Parameter Name="Policy_Type" Type="String" />
                               <asp:Parameter Name="Company_Name" Type="String" />
                               <asp:Parameter DbType="Date" Name="Issue_Date" />
                               <asp:Parameter DbType="Date" Name="Expire_Date" />
                               <asp:Parameter Name="VehicleId" Type="Int32" />
                           </UpdateParameters>
            </asp:SqlDataSource>
                          <br /><br /><br />
            <asp:Label ID="Label2" runat="server" Text="Fitness Records" Font-Size="XX-Large"></asp:Label><br />
       <asp:ListView ID="ListView2" runat="server" DataKeyNames="VehicleId" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
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
                       <asp:Label ID="Fitness_NoLabel" runat="server" Text='<%# Eval("Fitness_No") %>' />
                   </td>
                   <td>
                       <asp:Label ID="Issue_DateLabel" runat="server" Text='<%# Eval("Issue_Date") %>' />
                   </td>
                   <td>
                       <asp:Label ID="Expire_DateLabel" runat="server" Text='<%# Eval("Expire_Date") %>' />
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
                       <asp:TextBox ID="Fitness_NoTextBox" runat="server" Text='<%# Bind("Fitness_No") %>' />
                   </td>
                   <td>
                       <asp:TextBox ID="Issue_DateTextBox" runat="server" Text='<%# Bind("Issue_Date") %>' />
                   </td>
                   <td>
                       <asp:TextBox ID="Expire_DateTextBox" runat="server" Text='<%# Bind("Expire_Date") %>' />
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
                       <asp:TextBox ID="Fitness_NoTextBox" runat="server" Text='<%# Bind("Fitness_No") %>' />
                   </td>
                   <td>
                       <asp:TextBox ID="Issue_DateTextBox" runat="server" Text='<%# Bind("Issue_Date") %>' />
                   </td>
                   <td>
                       <asp:TextBox ID="Expire_DateTextBox" runat="server" Text='<%# Bind("Expire_Date") %>' />
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
                       <asp:Label ID="Fitness_NoLabel" runat="server" Text='<%# Eval("Fitness_No") %>' />
                   </td>
                   <td>
                       <asp:Label ID="Issue_DateLabel" runat="server" Text='<%# Eval("Issue_Date") %>' />
                   </td>
                   <td>
                       <asp:Label ID="Expire_DateLabel" runat="server" Text='<%# Eval("Expire_Date") %>' />
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
                                   <th runat="server">Fitness_No</th>
                                   <th runat="server">Issue_Date</th>
                                   <th runat="server">Expire_Date</th>
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
                       <asp:Label ID="Fitness_NoLabel" runat="server" Text='<%# Eval("Fitness_No") %>' />
                   </td>
                   <td>
                       <asp:Label ID="Issue_DateLabel" runat="server" Text='<%# Eval("Issue_Date") %>' />
                   </td>
                   <td>
                       <asp:Label ID="Expire_DateLabel" runat="server" Text='<%# Eval("Expire_Date") %>' />
                   </td>
               </tr>
           </SelectedItemTemplate>
                       </asp:ListView>

                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VehicleSystemConnectionString %>" DeleteCommand="DELETE FROM [Fitness] WHERE [VehicleId] = @VehicleId" InsertCommand="INSERT INTO [Fitness] ([VehicleId], [Fitness_No], [Issue_Date], [Expire_Date]) VALUES (@VehicleId, @Fitness_No, @Issue_Date, @Expire_Date)" SelectCommand="SELECT * FROM [Fitness]" UpdateCommand="UPDATE [Fitness] SET [Fitness_No] = @Fitness_No, [Issue_Date] = @Issue_Date, [Expire_Date] = @Expire_Date WHERE [VehicleId] = @VehicleId">
                           <DeleteParameters>
                               <asp:Parameter Name="VehicleId" Type="Int32" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="VehicleId" Type="Int32" />
                               <asp:Parameter Name="Fitness_No" Type="Int32" />
                               <asp:Parameter DbType="Date" Name="Issue_Date" />
                               <asp:Parameter DbType="Date" Name="Expire_Date" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:Parameter Name="Fitness_No" Type="Int32" />
                               <asp:Parameter DbType="Date" Name="Issue_Date" />
                               <asp:Parameter DbType="Date" Name="Expire_Date" />
                               <asp:Parameter Name="VehicleId" Type="Int32" />
                           </UpdateParameters>
            </asp:SqlDataSource>
                <br /><br /><br />
            <asp:Label ID="Label3" runat="server" Text="Permit Records" Font-Size="XX-Large"></asp:Label><br />
            <asp:ListView ID="ListView3" runat="server" DataKeyNames="VehicleId" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
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
                            <asp:Label ID="Permit_NoLabel" runat="server" Text='<%# Eval("Permit_No") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Policy_TypeLabel" runat="server" Text='<%# Eval("Policy_Type") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Expire_DateLabel" runat="server" Text='<%# Eval("Expire_Date") %>' />
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
                            <asp:TextBox ID="Permit_NoTextBox" runat="server" Text='<%# Bind("Permit_No") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Policy_TypeTextBox" runat="server" Text='<%# Bind("Policy_Type") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Expire_DateTextBox" runat="server" Text='<%# Bind("Expire_Date") %>' />
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
                            <asp:TextBox ID="Permit_NoTextBox" runat="server" Text='<%# Bind("Permit_No") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Policy_TypeTextBox" runat="server" Text='<%# Bind("Policy_Type") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Expire_DateTextBox" runat="server" Text='<%# Bind("Expire_Date") %>' />
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
                            <asp:Label ID="Permit_NoLabel" runat="server" Text='<%# Eval("Permit_No") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Policy_TypeLabel" runat="server" Text='<%# Eval("Policy_Type") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Expire_DateLabel" runat="server" Text='<%# Eval("Expire_Date") %>' />
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
                                        <th runat="server">Permit_No</th>
                                        <th runat="server">Policy_Type</th>
                                        <th runat="server">Expire_Date</th>
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
                            <asp:Label ID="Permit_NoLabel" runat="server" Text='<%# Eval("Permit_No") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Policy_TypeLabel" runat="server" Text='<%# Eval("Policy_Type") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Expire_DateLabel" runat="server" Text='<%# Eval("Expire_Date") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
                </asp:ListView>
                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VehicleSystemConnectionString %>" DeleteCommand="DELETE FROM [Permit] WHERE [VehicleId] = @VehicleId" InsertCommand="INSERT INTO [Permit] ([VehicleId], [Permit_No], [Policy_Type], [Expire_Date]) VALUES (@VehicleId, @Permit_No, @Policy_Type, @Expire_Date)" SelectCommand="SELECT * FROM [Permit]" UpdateCommand="UPDATE [Permit] SET [Permit_No] = @Permit_No, [Policy_Type] = @Policy_Type, [Expire_Date] = @Expire_Date WHERE [VehicleId] = @VehicleId">
                           <DeleteParameters>
                               <asp:Parameter Name="VehicleId" Type="Int32" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="VehicleId" Type="Int32" />
                               <asp:Parameter Name="Permit_No" Type="String" />
                               <asp:Parameter Name="Policy_Type" Type="String" />
                               <asp:Parameter DbType="Date" Name="Expire_Date" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:Parameter Name="Permit_No" Type="String" />
                               <asp:Parameter Name="Policy_Type" Type="String" />
                               <asp:Parameter DbType="Date" Name="Expire_Date" />
                               <asp:Parameter Name="VehicleId" Type="Int32" />
                           </UpdateParameters>
            </asp:SqlDataSource>
            <br /><br /><br />
            <asp:Label ID="Label4" runat="server" Text="Pollution Records" Font-Size="XX-Large"></asp:Label><br />
               <asp:ListView ID="ListView5" runat="server" DataKeyNames="VehicleId" DataSourceID="SqlDataSource3" InsertItemPosition="LastItem">
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
                            <asp:Label ID="Pollution_NoLabel" runat="server" Text='<%# Eval("Pollution_No") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Issue_DateLabel" runat="server" Text='<%# Eval("Issue_Date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Expire_DateLabel" runat="server" Text='<%# Eval("Expire_Date") %>' />
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
                            <asp:TextBox ID="Pollution_NoTextBox" runat="server" Text='<%# Bind("Pollution_No") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Issue_DateTextBox" runat="server" Text='<%# Bind("Issue_Date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Expire_DateTextBox" runat="server" Text='<%# Bind("Expire_Date") %>' />
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
                            <asp:TextBox ID="Pollution_NoTextBox" runat="server" Text='<%# Bind("Pollution_No") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Issue_DateTextBox" runat="server" Text='<%# Bind("Issue_Date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Expire_DateTextBox" runat="server" Text='<%# Bind("Expire_Date") %>' />
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
                            <asp:Label ID="Pollution_NoLabel" runat="server" Text='<%# Eval("Pollution_No") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Issue_DateLabel" runat="server" Text='<%# Eval("Issue_Date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Expire_DateLabel" runat="server" Text='<%# Eval("Expire_Date") %>' />
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
                                        <th runat="server">Pollution_No</th>
                                        <th runat="server">Issue_Date</th>
                                        <th runat="server">Expire_Date</th>
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
                            <asp:Label ID="Pollution_NoLabel" runat="server" Text='<%# Eval("Pollution_No") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Issue_DateLabel" runat="server" Text='<%# Eval("Issue_Date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Expire_DateLabel" runat="server" Text='<%# Eval("Expire_Date") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
                       </asp:ListView>

                       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:VehicleSystemConnectionString %>" DeleteCommand="DELETE FROM [Pollution] WHERE [VehicleId] = @VehicleId" InsertCommand="INSERT INTO [Pollution] ([VehicleId], [Pollution_No], [Issue_Date], [Expire_Date]) VALUES (@VehicleId, @Pollution_No, @Issue_Date, @Expire_Date)" SelectCommand="SELECT * FROM [Pollution]" UpdateCommand="UPDATE [Pollution] SET [Pollution_No] = @Pollution_No, [Issue_Date] = @Issue_Date, [Expire_Date] = @Expire_Date WHERE [VehicleId] = @VehicleId">
                           <DeleteParameters>
                               <asp:Parameter Name="VehicleId" Type="Int32" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="VehicleId" Type="Int32" />
                               <asp:Parameter Name="Pollution_No" Type="String" />
                               <asp:Parameter DbType="Date" Name="Issue_Date" />
                               <asp:Parameter DbType="Date" Name="Expire_Date" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:Parameter Name="Pollution_No" Type="String" />
                               <asp:Parameter DbType="Date" Name="Issue_Date" />
                               <asp:Parameter DbType="Date" Name="Expire_Date" />
                               <asp:Parameter Name="VehicleId" Type="Int32" />
                           </UpdateParameters>
            </asp:SqlDataSource>

         </div> 
                
               </form>
      <footer> &copy; This is created By Aman Srivastav 
    </footer>
            </body>
</html>
