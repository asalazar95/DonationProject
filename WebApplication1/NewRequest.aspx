<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewRequest.aspx.cs" Inherits="WebApplication1.NewRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>New Request</h1>
    <table class="nav-justified" style="border-style: groove; border-width: thin;">
        <tr>
            <td style="width: 355px; height: 102px;">Resource Type<br />
                <asp:DropDownList ID="ResourceList" runat="server" DataSourceID="SqlDataSource1" DataTextField="Supply" DataValueField="Supply">
                </asp:DropDownList>
            </td>
            <td style="height: 102px; width: 588px">Organization<br />
                <asp:DropDownList ID="Organization" runat="server" DataSourceID="SqlDataSource2" DataTextField="Organization" DataValueField="Organization">
                </asp:DropDownList>
            </td>
            <td style="height: 102px" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [Supply] FROM [UserProfiles2]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [Organization] FROM [UserProfiles2]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 355px; height: 108px;">Amount Request:<br />
                <asp:TextBox ID="Amount" runat="server" BorderStyle="Solid" TextMode="Number"></asp:TextBox>
            </td>
            <td style="height: 108px; width: 588px">Destination:<br />
                Address Line 1<br />
                <asp:TextBox ID="Address1" runat="server" BorderStyle="Solid"></asp:TextBox>
                <br />
                Address Line 2<br />
                <asp:TextBox ID="Address2" runat="server" BorderStyle="Solid"></asp:TextBox>
                <br />
                City<br />
                <asp:TextBox ID="City" runat="server" BorderStyle="Solid"></asp:TextBox>
                <br />
                State<br />
                <asp:DropDownList ID="State" runat="server" DataSourceID="SqlDataSource3" DataTextField="State" DataValueField="State">
                </asp:DropDownList>
                <br />
                Zip Code<br />
                <asp:TextBox ID="ZipCode" runat="server" TextMode="Number" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td style="height: 108px" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [State] FROM [States]"></asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" InsertCommand="INSERT INTO RequestInfo(EMail, ResourceType, AmountRequest, DateBy, Optional, Organization, Address1, Address2, City, State, ZipCode, Notes, Accepted, SubmittedOn) VALUES (@eMail, @resource, @amount, @dateSendBy, @deleteOption, @business, @address1, @address2, @citySelect, @stateSelect, @zipArea, @notesEnter, @acceptedItem, @submittedOn)" SelectCommand="SELECT [EMail], [ResourceType], [AmountRequest], [DateBy], [Optional], [Organization], [Address1], [Address2], [City], [State], [ZipCode], [Notes], [Accepted] FROM [RequestInfo]">
                    <InsertParameters>
                        <asp:Parameter DbType="StringFixedLength" DefaultValue="this@this.this" Name="eMail" Size="256" />
                        <asp:ControlParameter ControlID="ResourceList" DbType="StringFixedLength" DefaultValue="" Name="resource" PropertyName="Text" Size="15" />
                        <asp:ControlParameter ControlID="Amount" DbType="Int64" Name="amount" PropertyName="Text" />
                        <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="dateSendBy" PropertyName="SelectedDate" />
                        <asp:ControlParameter ControlID="Optional" DbType="Boolean" Name="deleteOption" PropertyName="Checked" />
                        <asp:ControlParameter ControlID="Organization" DbType="StringFixedLength" Name="business" PropertyName="SelectedValue" Size="20" />
                        <asp:ControlParameter ControlID="Address1" DbType="StringFixedLength" Name="address1" PropertyName="Text" Size="15" />
                        <asp:ControlParameter ControlID="Address2" DbType="StringFixedLength" Name="address2" PropertyName="Text" Size="15" />
                        <asp:ControlParameter ControlID="City" DbType="StringFixedLength" Name="citySelect" PropertyName="Text" Size="15" />
                        <asp:ControlParameter ControlID="State" DbType="StringFixedLength" Name="stateSelect" PropertyName="SelectedValue" Size="2" />
                        <asp:ControlParameter ControlID="ZipCode" DbType="StringFixedLength" Name="zipArea" PropertyName="Text" Size="5" />
                        <asp:ControlParameter ControlID="Notes" DbType="StringFixedLength" Name="notesEnter" PropertyName="Text" Size="256" />
                        <asp:Parameter DbType="Boolean" DefaultValue="False" Name="acceptedItem" />
                        <asp:Parameter DbType="Date" DefaultValue="01/01/2001" Name="submittedOn" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 355px">Preferred Delivery Date:<br />
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                <br />
                <asp:CheckBox ID="Optional" runat="server" OnCheckedChanged="Unnamed1_CheckedChanged" />
&nbsp;- If the date selected has passed, automatically delete request</td>
            <td style="width: 588px">Additional Notes:<br />
                <asp:TextBox ID="Notes" runat="server" BorderStyle="Solid" Height="151px" MaxLength="255" Width="573px"></asp:TextBox>
            </td>
            <td style="width: 135px">
                <asp:Button ID="AcceptButton" runat="server" Height="53px" Text="Submit" Width="120px" OnClick="AcceptButton_Click" />
                <br />
            </td>
            <td>
                <asp:Button ID="ClearButton" runat="server" Height="53px" Text="Cancel" Width="120px" OnClick="ClearButton_Click" PostBackUrl="~/Default.aspx" />
            </td>
        </tr>
    </table>

</asp:Content>
