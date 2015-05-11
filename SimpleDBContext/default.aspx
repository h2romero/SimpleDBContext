<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SimpleDBContext._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:gridview runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Since" HeaderText="Since" SortExpression="Since" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Web" HeaderText="Web" SortExpression="Web" />
                <asp:BoundField DataField="Bio" HeaderText="Bio" SortExpression="Bio" />
            </Columns>
        </asp:gridview>
    </div>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetTwitterAccounts" TypeName="SimpleDBContext.Models.AccountRepository"></asp:ObjectDataSource>
    </form>
</body>
</html>
