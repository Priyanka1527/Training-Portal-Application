<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addschedule.aspx.cs" Inherits="addschedule" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Training Portal</title>
    <meta name="description" content="Simplex theme is free template based on Bootstrap version 3.0.0 and it can be used for any purpose.">
    <meta name="author" content="">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo_justified.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .style1
        {
            width: 113px;
        }
    </style>
  </head>

  <body>

      <form id="form1" runat="server">

    <div id="container" class="container">

        <a href="http://www.templatemo.com/preview/templatemo_382_simplex" rel="nofollow"><img src="images/templatemo_header.jpg" alt="Simplex Header" class="img-responsive" /></a>
        <a href="http://nl.mystockvector.com" title="vectorafbeelding from nl.mystockvector.com"  class="container_bg" target="_blank"></a>
        
        <ul class="nav nav-justified">

        </ul>
        <br /><br />
        Select Day: <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem>Select....</asp:ListItem>
            <asp:ListItem>Mon</asp:ListItem>
            <asp:ListItem>Tue</asp:ListItem>
            <asp:ListItem>Wed</asp:ListItem>
            <asp:ListItem>Thu</asp:ListItem>
            <asp:ListItem>Fri</asp:ListItem>
            <asp:ListItem>Sat</asp:ListItem>
        </asp:DropDownList>  
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <RowStyle ForeColor="#000066" />
            <Columns>
                <asp:BoundField DataField="course_name" HeaderText="Course_Name" 
                    SortExpression="course_name" />
                <asp:BoundField DataField="tfrom" HeaderText="From" SortExpression="tfrom" />
                <asp:BoundField DataField="tto" HeaderText="To" SortExpression="tto" />
            </Columns>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:GridView> 

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:portalConnectionString %>" 
            SelectCommand="SELECT [course_name], [tfrom], [tto] FROM [schedule] WHERE ([s_day] = @s_day)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="s_day" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br /><br />
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
        <br /><br />
        <table>
        <tr>
        <td class="style1">Day</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
        </tr>
        <tr>
        <td class="style1">From</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
        </tr>
        <tr>
        <td class="style1">To</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" />
                    </td>
        </tr>

        </table>

      <!-- Site footer -->
      <div class="footer">
        <p>Copyright © 2014 Online Training Portal</p>
      </div>

    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
      </form>
  </body>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js'></script>
<script type='text/javascript' src='js/logging.js'></script>
</html>
