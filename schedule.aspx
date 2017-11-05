<%@ Page Language="C#" AutoEventWireup="true" CodeFile="schedule.aspx.cs" Inherits="schedule" %>

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
        <br /><br />
        Select a Course:<br />
       
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" 
             BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <RowStyle ForeColor="#000066" />
            <Columns>
                <asp:BoundField DataField="s_day" HeaderText="s_day" SortExpression="s_day" />
                <asp:BoundField DataField="tfrom" HeaderText="tfrom" SortExpression="tfrom" />
                <asp:BoundField DataField="tto" HeaderText="tto" SortExpression="tto" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:portalConnectionString %>" 
            SelectCommand="SELECT [s_day], [tfrom], [tto] FROM [schedule] WHERE ([course_name] = @course_name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="course_name" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</form>
      <!-- Site footer -->
      <div class="footer">
        <p>Copyright © 2072 Company Name | <a href="http://www.templatemo.com/preview/templatemo_382_simplex" rel="nofollow">Simplex</a> by <a href="http://www.templatemo.com/page/1" target="_parent" rel="nofollow">templatemo</a></p>
      </div>

    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js'></script>
<script type='text/javascript' src='js/logging.js'></script>
</html>