﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/MasterPage.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="tc_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free Bootstrap Themes by Zerotheme dot com - Free Responsive Html5 Templates">
    <meta name="author" content="https://www.Zerotheme.com">
	
    
	
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="zNewsPaper/css/bootstrap.min.css"  type="text/css">
	
	<!-- Owl Carousel Assets -->
    <link href="zNewsPaper/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="zNewsPaper/owl-carousel/owl.theme.css" rel="stylesheet">
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href="zNewsPaper/css/style.css">
	 <link href="zNewsPaper/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="zNewsPaper/font-awesome-4.4.0/css/font-awesome.min.css"  type="text/css">
	
	<!-- jQuery and Modernizr-->
	<script src="zNewsPaper/js/jquery-2.1.1.js"></script>
	
	<!-- Core JavaScript Files -->  	 
    <script src="zNewsPaper/js/bootstrap.min.js"></script>
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
<div id="mainSchool">
	<div id="Div1" class="index-page container">
		<div class="row">
			<div id="Div2"><!-- background not working -->
				<div class="col-md-8">
                 <asp:DataList class="list" ID="rptitem" runat="server"  RepeatLayout="flow" RepeatDirection="Vertical" >
                        <ItemTemplate>
                  
					<div class="box">
						<a href="#"><h2 class="vid-name"><%# Eval("title") %></h2></a>
						<div class="info">
							<h5>By <a href="#"><%# Eval("addnm") %></a></h5>
							<span><i class="fa fa-calendar"></i><%# Eval("date") %></span> 
							
							<span><i class="fa fa-heart"></i><%# Eval("school") %></span>
							<br /><span><%# Eval("subject") %></span>
						</div>
						<div class="wrap-vid">
							<div class="zoom-container">
								<div class="zoom-caption">
								</div>
								<asp:Image ID="img" runat="server" ImageUrl='<%# Eval("pic","../Teacher/img/{0}") %>' Height="140px" Width="250px" />
							</div>
							<p><%# Eval("dscr") %> <asp:HyperLink runat="server" ID="Hyp" NavigateUrl='<%# Eval("id","~/Parent/single.aspx?id={0}") %>'>MORE....</asp:HyperLink>
						</div>
					</div>
                    </ItemTemplate></asp:DataList>
	</div>
     <div class="col-md-4">
                                   <asp:Label runat="server" ID="lblsch" Visible="false"></asp:Label><asp:Label runat="server" ID="lbltchnm" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txttitle" class="form-control" placeholder="Add Title to your blog" runat="server"></asp:TextBox><asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                                     <asp:TextBox ID="txtsub" class="form-control" runat="server" placeholder="Add Subject of the blog"></asp:TextBox> <asp:TextBox runat="server" ID="txtpic" Visible="false"></asp:TextBox><asp:TextBox ID="txtmsg" class="form-control" placeholder="Add some more imformation" runat="server"></asp:TextBox>
                                       <br />
                                       <asp:Button ID="Button1" class="btn btn-primary" runat="server" 
                                       Text="Upload New Blog" onclick="Button1_Click"></asp:Button>
                                    </div>
                                  
    
    </div></div></div></section></section>
</asp:Content>

