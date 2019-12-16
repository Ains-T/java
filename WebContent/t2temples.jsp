<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="bo.GioHangBo"%>
<%@page import="bean.GioHangBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Shop Homepage - Start Bootstrap Template</title>
    <!-- Bootstrap Core CSS -->
    <link href="Content/bootstrap.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="Content/shop-homepage.css" rel="stylesheet" />


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Start Bootstrap</a>
            </div>
            <%DecimalFormat dd=new DecimalFormat("###,###"); %>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="sachcontroller">TRANG CHỦ</a>
                    </li>
                    <li>
                        <a href=""><%=session.getAttribute("un") %></a>
                        <%String tendn=(String) session.getAttribute("un"); %>
                    </li>
                    <li><%long l=0;
                    if(session.getAttribute("gh")!=null){
        		          GioHangBo gh=(GioHangBo)session.getAttribute("gh");
          		           l=gh.Tong();
                    } %>
                        <a href="muacontroller" style="color: white; font-weight: bold; text-decoration: none;">
                            GIỎ HÀNG (<%=dd.format(l)%> vnd)
                        </a>
                        

                    </li>
                     <li>
                        <a href="t4temples.jsp">LỊCH SỬ MUA HÀNG</a>
                    </li>
                     <li>
                        <a href="dangnhapcontroller">ĐĂNG XUẤT</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-md-3">

                <p class="lead"> CHỦ ĐỀ SÁCH</p>
                <div class="list-group">
                   <%ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("dsloai"); %>
                	<%  
	 				for(loaibean ls:dsloai){
	 				%>
                    <a href="sachcontroller?ml=<%=ls.getMaloai()%>" class="list-group-item">
                        <%=ls.getTenloai() %>
                    </a>
                  <%} %>
                </div>


                <p class="lead"> NHÀ XUẤT BẢN </p>
                <div class="list-group">
                    <a href="/BookStore/SPTheoNXB/1" class="list-group-item">
                        Nh&#224; xuất bản Trẻ
                    </a>
                    <a href="/BookStore/SPTheoNXB/2" class="list-group-item">
                        NXB Thống k&#234;
                    </a>
                    <a href="/BookStore/SPTheoNXB/3" class="list-group-item">
                        Kim đồng
                    </a>
                    <a href="/BookStore/SPTheoNXB/4" class="list-group-item">
                        Đại học quốc gia
                    </a>
                    <a href="/BookStore/SPTheoNXB/5" class="list-group-item">
                        Văn h&#243;a nghệ thuật
                    </a>
                    <a href="/BookStore/SPTheoNXB/6" class="list-group-item">
                        Văn h&#243;a
                    </a>
                    <a href="/BookStore/SPTheoNXB/7" class="list-group-item">
                        Lao động - X&#227; hội
                    </a>
                    <a href="/BookStore/SPTheoNXB/8" class="list-group-item">
                        Khoa Học &amp; Kỹ Thuật
                    </a>
                </div>




            </div>
            <div class="col-md-9">
                <div class="row carousel-holder">
                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="images/ancient-place.jpg" alt="">

                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/riverside-city.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/kayaks.jpg" alt="">
                                </div>


                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>

                <div>
				
                    <h2 style="text-align:center">THÔNG TIN GIỎ HÀNG</h2>
                    <table align="center" border="1">
                    
                        <tbody>
                            <tr style="text-align:center; font-weight:bold">
                                <td>  Mã sách </td>
                                <td> Tên sách </td>
                                <td> Ảnh bìa </td>
                                <td> Số lượng </td>
                                <td> Đơn giá </td>
                                <td> Thành tiền </td>
                                <td width="50px"></td>
                                <td width="50px"></td>
                                <td width="50px"></td>
                                
                            </tr>
                            <%if(session.getAttribute("gh")!=null)
							{  
							 GioHangBo gh=(GioHangBo)session.getAttribute("gh");%>
						     <% for(GioHangBean g: gh.ds){%>
                            <tr style="text-align:center; font-weight:bold">
                                <td> <%=g.getMasach()%> </td>
                                <td> <%=g.getTensach() %></td>
                                <td><img src="<%=g.getAnh()%>"></td>
                                
                                <form action="suagh.jsp?ms=<%=g.getMasach()%>&ts=<%=g.getTensach()%>&tg=<%=g.getTacgia()%>&gia=<%=g.getGia()%>&anh=<%=g.getAnh() %>" method="post"> 
                                <td>
                                    <input type="number" min="1" name="txtSoluong" value="<%=g.getSoluong()%>" style="background-color:yellow">
                                </td>
                                <td><%=dd.format(g.getGia()) %></td>
                              
                                <td><%=dd.format(g.getThanhtien())%></td>
                                <td> <a href="chitietsachcontroller?ms=<%=g.getMasach()%>"> Chi tiết </a></td>
                                <td> <a href="xoagh.jsp?ms=<%=g.getMasach()%>">Xóa</a></td>
                                <td> <input type="submit" value="Cập Nhật"></td>
                                </form>
                            </tr>
                            <%} %>
                   
                            <tr style="font-weight: bold; text-align:right; color:red">
                                <td colspan="4"> Số lượng sách: <%=gh.TongSl() %> </td>
                                <td colspan="5"> Tổng tiền: <%=dd.format(gh.Tong()) %> </td>
                            </tr>
                            <tr style="font-weight: bold; color:blue; text-align:right ">
                                <td colspan="9">
                                    <a href="cleargh.jsp">Xóa Giỏ Hàng</a>
                                </td>
                            </tr>
                            <tr style="font-weight: bold; color:blue; text-align:right ">
                            <%if(gh.TongSl()!=0){ %>
                                <td colspan="9" align="center">
                                    <a href="ThemHD.jsp">ĐẶT HÀNG</a>
                                </td>
                                <%} %>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <%} %>
            </div>
        </div>
    </div>
    <!-- /.container -->
    <div class="container">
        <hr>
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; MVC 5</p>
                </div>
            </div>
        </footer>
    </div>
    <!-- /.container -->
    <!-- jQuery -->
    <script src="Scripts/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
