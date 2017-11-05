<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addcourse.aspx.cs" Inherits="addcourse" %>

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
              width: 184px;
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
        
           <form runat="server">
           <table>
           <tr>
           <td class="style1">Course_Name: </td>
           <td>
               <asp:TextBox ID="TextBox1" runat="server" Width="455px"></asp:TextBox>
               
                       </td>
           </tr>
           <tr>
           <td class="style1">Course_Domain: </td>
           <td><asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
                   Width="455px"></asp:TextBox></td>
           </tr>
           <tr>
           <td class="style1">Offered_By: </td>
           <td><asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox2_TextChanged" 
                   Width="455px"></asp:TextBox></td>
           </tr>
           <tr>
           <td class="style1">Course_Fee: </td>
           <td><asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox2_TextChanged" 
                   Width="455px"></asp:TextBox></td>
           </tr>
           <tr>
           <td class="style1">Description: </td>
           <td><asp:TextBox ID="TextBox5" runat="server" ontextchanged="TextBox2_TextChanged" 
                   TextMode="MultiLine" Width="455px"></asp:TextBox></td>
           </tr>
           <tr>
           <td></td>
           <td><asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" 
                   Width="70px" />
               <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                   Text="Add another Course" />
               <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" />
               </td>
           </tr>
           </table>
           </form>

      <!-- Site footer -->
      <div class="footer">
        <p>Copyright © 2014 Online Training Portal</p>
      </div>

    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js'></script>
<script type='text/javascript' src='js/logging.js'></script>
</html>
