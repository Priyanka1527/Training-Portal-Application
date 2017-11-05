<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attend.aspx.cs" Inherits="attend" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simplex Theme by templatemo</title>
    <meta name="description" content="Simplex theme is free template based on Bootstrap version 3.0.0 and it can be used for any purpose.">
    <meta name="author" content="">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo_justified.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div id="container" class="container">

        <a href="http://www.templatemo.com/preview/templatemo_382_simplex" rel="nofollow"><img src="images/templatemo_header.jpg" alt="Simplex Header" class="img-responsive" /></a>
        <a href="http://nl.mystockvector.com" title="vectorafbeelding from nl.mystockvector.com"  class="container_bg" target="_blank"></a>
        
        <ul class="nav nav-justified">
         
        </ul>
        <form runat="server">
        <asp:Label ID="Label2" runat="server" Text="Hello! "></asp:Label>
        <asp:Label ID="Label1" runat="server" Text="You have"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            Text=" You have registered for the following courses:"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="course_name" HeaderText="course_name" 
                    SortExpression="course_name" />
            </Columns>
        </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:portalConnectionString %>" 
            SelectCommand="SELECT [course_name] FROM [regcourse] WHERE ([email] = @email)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="Label1" Name="email" PropertyName="Text" 
                     Type="String" />
             </SelectParameters>
        </asp:SqlDataSource>
         </form>
      <div class="footer">
        <p>Copyright © 2014 Online Training Portal </p>
      </div>

    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js'></script>
<script type='text/javascript' src='js/logging.js'></script>
</html>
