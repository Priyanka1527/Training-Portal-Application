<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
<td>
    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="designation" 
        Text="Admin" />
        </td>
        <td>
    <asp:RadioButton ID="RadioButton2"
        runat="server" GroupName="designation" Text="Employee/Student" />
        </td>
        <td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td align="right" style="width: 293px">ID&nbsp;&nbsp; </td>
<td align="right">
    <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
    </td>
    <td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td align="right" style="width: 293px">Password&nbsp;&nbsp; </td>
<td align="right">
    <asp:TextBox ID="TextBox2" runat="server" Width="230px" TextMode="Password"></asp:TextBox>
    </td>
    <td>&nbsp;</td>
</tr>
<tr>
<td colspan="3">&nbsp;</td>
</tr>
<tr align="center">
<td>&nbsp;</td>
<td>&nbsp;</td>
<td align="left">
    <asp:Button ID="Button1" runat="server" Text="LogIn" onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Reigister" 
        onclick="Button2_Click" />
    <asp:Label ID="Label1" runat="server" ForeColor="Red" Width="150px"></asp:Label>
    </td>
</tr>
</table>
   
</asp:Content>

