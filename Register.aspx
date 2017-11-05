<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
              height: 22px;
          }
          .style2
          {
              width: 352px;
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
        
      
      <table align="center" width="60%" class="style1">
      <tr>
      <td style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold" 
              class="style2" >Register Yourself</td>
      </tr>
      <tr>
      <td class="style2">Name: </td>
      <td>
          <asp:TextBox ID="TextBox1" runat="server" Height="24px"></asp:TextBox>
                    </td>
      </tr>
      <tr>
      <td class="style2">Designation: </td>
      <td>
          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
      <td class="style2">Institution ID: </td>
      <td>
          <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
      <td class="style2">Email ID: </td>
      <td>
          <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
              ControlToValidate="TextBox4" ErrorMessage="Enter a valid ID" 
              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
      </tr>
      <tr>
      <td class="style2">Enter Password: </td>
      <td>
          <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
      </tr>
      <tr>
      <td class="style2">Confirm Password: </td>
      <td>
          <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator1" runat="server" 
              ControlToCompare="TextBox5" ControlToValidate="TextBox6" 
              ErrorMessage="Password Mismatch"></asp:CompareValidator>
                    </td>
      </tr>
      <tr>
      <td class="style2">&nbsp;</td>
      <td>
          <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /></td>
      </tr>
      </table>
      
      
    <!-- /row 1 -->
      
            <!-- /row 2 -->

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
