<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

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
        <br />
        <form runat="server">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        Wel Come!
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add Course" BackColor="#0066FF" 
            ForeColor="#99CCFF" Height="29px" Width="143px" onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Update a Course" BackColor="#0066FF" 
            ForeColor="#99CCFF" Height="29px" Width="143px" onclick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="Add Schedule" BackColor="#0066FF" 
            ForeColor="#99CCFF" Height="29px" Width="143px" onclick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" Text="Update Schedule" BackColor="#0066FF" 
            ForeColor="#99CCFF" Height="29px" Width="143px" />
                <asp:Button ID="Button5" runat="server" Text="Check Enrolment" BackColor="#0066FF" 
            ForeColor="#99CCFF" Height="29px" Width="143px" onclick="Button5_Click" />
                <asp:Button ID="Button6" runat="server" Text="Log Out" BackColor="#0066FF" 
            ForeColor="#99CCFF" Height="29px" Width="143px" onclick="Button6_Click" />
        
        
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" onselectedindexchanged="GridView1_SelectedIndexChanged" 
            DataSourceID="SqlDataSource1" onrowdeleting="GridView1_RowDeleting">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <RowStyle ForeColor="#000066" />
            <Columns>
                <asp:BoundField DataField="course_id" HeaderText="course_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="course_id" />
                <asp:BoundField DataField="course_name" HeaderText="course_name" 
                    SortExpression="course_name" />
                <asp:BoundField DataField="course_domain" HeaderText="course_domain" 
                    SortExpression="course_domain" />
                <asp:BoundField DataField="offered_by" HeaderText="offered_by" 
                    SortExpression="offered_by" />
                <asp:BoundField DataField="course_fee" HeaderText="course_fee" 
                    SortExpression="course_fee" />
                <asp:BoundField DataField="description" HeaderText="description" 
                    SortExpression="description" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:portalConnectionString %>" 
            SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>

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
