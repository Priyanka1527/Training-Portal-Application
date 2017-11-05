<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regcourse.aspx.cs" Inherits="regcourse" %>

<!DOCTYPE html>
<html lang="en">
  <head runat="server">
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
            width: 197px;
        }
        .style2
        {
            width: 197px;
            height: 40px;
        }
        .style3
        {
            height: 40px;
        }
    </style>
  </head>

  <body>

    <div id="container" class="container">

        <a href="http://www.templatemo.com/preview/templatemo_382_simplex" rel="nofollow"><img src="images/templatemo_header.jpg" alt="Simplex Header" class="img-responsive" /></a>
        <a href="http://nl.mystockvector.com" title="vectorafbeelding from nl.mystockvector.com"  class="container_bg" target="_blank"></a>
        
        <ul class="nav nav-justified">
         
        </ul>
        <br /><br />
         <form id="Form1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Back" Height="26px" 
            Width="87px" onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button2" runat="server" Text="Register" Height="26px" 
            Width="87px" onclick="Button2_Click" />
         <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
         <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
         <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
         <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
        <br /><br />
        Select a Course:<br />
       
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Select a course...</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <table>
        <tr>
        <td class="style2">Course_ID: </td>
        <td class="style3"><asp:TextBox ID="TextBox1" runat="server" Width="331px" 
                ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
        <td class="style2">Course_Name: </td>
        <td class="style3"><asp:TextBox ID="TextBox2" runat="server" Width="331px" 
                ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
        <td class="style2">Course_Domain: </td>
        <td class="style3"><asp:TextBox ID="TextBox3" runat="server" Width="331px" 
                ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
        <td class="style2">Offered_by: </td>
        <td class="style3"><asp:TextBox ID="TextBox4" runat="server" Width="331px" 
                ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
        <td class="style2">Course_fee: </td>
        <td class="style3"><asp:TextBox ID="TextBox5" runat="server" Width="331px" 
                ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
        <td class="style1">Description: </td>
        <td><asp:TextBox ID="TextBox6" runat="server" Height="114px" Width="331px" 
                ReadOnly="True" TextMode="MultiLine"></asp:TextBox></td>
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
