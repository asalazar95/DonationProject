<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewRequest.aspx.cs" Inherits="WebApplication1.Account.ViewRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="ResourceTypeLabel" runat="server" Text='<%# Eval("ResourceType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AmountRequestLabel" runat="server" Text='<%# Eval("AmountRequest") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateByLabel" runat="server" Text='<%# Eval("DateBy") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OrganizationLabel" runat="server" Text='<%# Eval("Organization") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Address1Label" runat="server" Text='<%# Eval("Address1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Address2Label" runat="server" Text='<%# Eval("Address2") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ZipCodeLabel" runat="server" Text='<%# Eval("ZipCode") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NotesLabel" runat="server" Text='<%# Eval("Notes") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SubmittedOnLabel" runat="server" Text='<%# Eval("SubmittedOn") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="ResourceTypeTextBox" runat="server" Text='<%# Bind("ResourceType") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AmountRequestTextBox" runat="server" Text='<%# Bind("AmountRequest") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateByTextBox" runat="server" Text='<%# Bind("DateBy") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OrganizationTextBox" runat="server" Text='<%# Bind("Organization") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ZipCodeTextBox" runat="server" Text='<%# Bind("ZipCode") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SubmittedOnTextBox" runat="server" Text='<%# Bind("SubmittedOn") %>' />
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
                        <asp:TextBox ID="ResourceTypeTextBox" runat="server" Text='<%# Bind("ResourceType") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AmountRequestTextBox" runat="server" Text='<%# Bind("AmountRequest") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateByTextBox" runat="server" Text='<%# Bind("DateBy") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OrganizationTextBox" runat="server" Text='<%# Bind("Organization") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ZipCodeTextBox" runat="server" Text='<%# Bind("ZipCode") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SubmittedOnTextBox" runat="server" Text='<%# Bind("SubmittedOn") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="ResourceTypeLabel" runat="server" Text='<%# Eval("ResourceType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AmountRequestLabel" runat="server" Text='<%# Eval("AmountRequest") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateByLabel" runat="server" Text='<%# Eval("DateBy") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OrganizationLabel" runat="server" Text='<%# Eval("Organization") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Address1Label" runat="server" Text='<%# Eval("Address1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Address2Label" runat="server" Text='<%# Eval("Address2") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ZipCodeLabel" runat="server" Text='<%# Eval("ZipCode") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NotesLabel" runat="server" Text='<%# Eval("Notes") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SubmittedOnLabel" runat="server" Text='<%# Eval("SubmittedOn") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">ResourceType</th>
                                    <th runat="server">AmountRequest</th>
                                    <th runat="server">DateBy</th>
                                    <th runat="server">Organization</th>
                                    <th runat="server">Address1</th>
                                    <th runat="server">Address2</th>
                                    <th runat="server">City</th>
                                    <th runat="server">State</th>
                                    <th runat="server">ZipCode</th>
                                    <th runat="server">Notes</th>
                                    <th runat="server">SubmittedOn</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="ResourceTypeLabel" runat="server" Text='<%# Eval("ResourceType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AmountRequestLabel" runat="server" Text='<%# Eval("AmountRequest") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateByLabel" runat="server" Text='<%# Eval("DateBy") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OrganizationLabel" runat="server" Text='<%# Eval("Organization") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Address1Label" runat="server" Text='<%# Eval("Address1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Address2Label" runat="server" Text='<%# Eval("Address2") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ZipCodeLabel" runat="server" Text='<%# Eval("ZipCode") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NotesLabel" runat="server" Text='<%# Eval("Notes") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SubmittedOnLabel" runat="server" Text='<%# Eval("SubmittedOn") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [ResourceType], [AmountRequest], [DateBy], [Organization], [Address1], [Address2], [City], [State], [ZipCode], [Notes], [SubmittedOn] FROM [RequestInfo]"></asp:SqlDataSource>
    </div>
</asp:Content>
