<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="WebApplication1.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Change your account settings</h4>
                <hr />
                <dl class="dl-horizontal">
                    <dt>Password:</dt>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Change]" Visible="false" ID="ChangePassword" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Create]" Visible="false" ID="CreatePassword" runat="server" />
                    </dd>
                    <dt>

                        Username:</dt>
                    <dd>
                        <asp:TextBox ID="Username" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </dd>
                    <dt>First Name:</dt>
                    <dd>
                        <asp:TextBox ID="FName" runat="server"></asp:TextBox>
                    </dd>
                    <dt>Last Name:</dt>
                    <dd>
                        <asp:TextBox ID="LName" runat="server"></asp:TextBox>
                    </dd>
                    <dt>Organization:</dt>
                    <dd>
                        <asp:TextBox ID="Organization" runat="server"></asp:TextBox>
                    </dd>
                    <dt>Account Type:</dt>
                    <dd>Requester:<asp:RadioButton ID="Requester" runat="server" GroupName="AccountType" />
&nbsp;Supplier:<asp:RadioButton ID="Supplier" runat="server" GroupName="AccountType" />
                    </dd>
                    <dt>Save Changes:</dt>
                    <dd>
                        <asp:Button ID="SaveChanges" runat="server" Text="Save Changes" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Revert" runat="server" Text="   Cancel   " OnClick="Revert_Click" PostBackUrl="~/Default.aspx" />
                    </dd>
                </dl>
            </div>
        </div>
    </div>

</asp:Content>
