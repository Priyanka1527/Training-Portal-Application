<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Training Portal</title>
    <meta name="description" content="Simplex theme, contact form, free web template using Bootstrap.">
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
<form runat="server">
    <div id="container" class="container">

        <a href="http://www.templatemo.com/preview/templatemo_382_simplex" rel="nofollow"><img src="images/templatemo_header.jpg" alt="Simplex Header" class="img-responsive" /></a>
        <a href="http://tr.mystockvector.com/" title="mystockvector"  class="container_bg" target="_blank"></a>
        
          
              <asp:Button ID="Button1" runat="server" Text="Attended course" Height="29px" 
                  Width="143px" BackColor="#0066FF" ForeColor="#99CCFF" 
            onclick="Button1_Click" />
                       
              <asp:Button ID="Button2" runat="server" Text="Change Password" 
    Height="29px" Width="143px" BackColor="#0066FF" ForeColor="#99CCFF" />
                       
              <asp:Button ID="Button3" runat="server" Text="Check Schedule" 
    Height="29px" Width="143px" BackColor="#0066FF" ForeColor="#99CCFF" 
            onclick="Button3_Click" />
          
        <asp:Button ID="Button4" runat="server" Text="Register for course" 
    Height="29px" Width="143px" BackColor="#0066FF" ForeColor="#99CCFF" 
            onclick="Button4_Click" />
    <asp:Button ID="Button5" runat="server" Text="Log Out" 
    Height="29px" Width="143px" BackColor="#0066FF" ForeColor="#99CCFF" 
            onclick="Button5_Click" />
        <asp:Label ID="Label2" runat="server" Text="Wel Come" ForeColor="Black" 
            Width="88px"></asp:Label>
        <asp:Label ID="Label3" runat="server"></asp:Label>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource3" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
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
            </Columns>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:portalConnectionString %>" 
            SelectCommand="SELECT * FROM [course]" 
            onselecting="SqlDataSource3_Selecting"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
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
