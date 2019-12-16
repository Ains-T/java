<%@page import="bo.GioHangBo"%>
<%@page import="bean.GioHangBean"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.loaibean"%>
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
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="sachcontroller">TRANG CHỦ</a>
                    </li>
                    <%if(session.getAttribute("un")==null){ %>
                    <li>
                        <a href="dangkicontroller">ĐĂNG K&#221;</a>
                    </li>
                    <li>
                        <a href="dangnhapcontroller">ĐĂNG NHẬP</a>
                    </li>
                    <%}else{ 
                    DecimalFormat dd=new DecimalFormat("###,###");
                    long l=0;
                        if(session.getAttribute("gh")!=null){
        		          GioHangBo gh=(GioHangBo)session.getAttribute("gh");
          		           l=gh.Tong();
          		           }%>
          		           <li>
                        <a href=""><%=session.getAttribute("un") %></a>
                    </li>
                    <li>
                        <a href="muacontroller" style="color: white; font-weight: bold; text-decoration: none;">
                            GIỎ HÀNG (<%=dd.format(l)%> vnd)
                        </a>
                        

                    </li>
                     <li>
                        <a href="dangnhapcontroller">ĐĂNG XUẤT</a>
                    </li>
                    <%} %>
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


                    <style type="text/css">
                        #Datmua a {
                            clear: both;
                            background-color: red;
                            color: white;
                            width: 120px;
                            height: 35px;
                            display: block;
                            float: right;
                            text-align: center;
                            padding-top: 10px;
                            text-decoration: none;
                            font-weight: bold;
                        }

                            #Datmua a:hover {
                                background-color: gray;
                                color: red;
                            }
                    </style>

                    <h3> THÔNG TIN CHI TIẾT SÁCH</h3>
                     <%
							ArrayList<sachbean> ds = (ArrayList<sachbean>)request.getAttribute("dssach");
								int ss = ds.size();
								for (int i = 0; i < ss; i++) {
								sachbean s = ds.get(i);
							%>
                    <div>
                        <div style="width:40%; float:left; border-left: dotted 1px; border-color:azure">
                            <img src="<%=s.getAnh() %>" width="100%">
                        </div>
                        <div style="width:60%; float:left; padding:10px">
                            <h4 style="font-weight:bold; color:red">Tên sách:<%=s.getTensach() %>  </h4>
                            <p style="text-align:justify">
                                <span style="font-weight:bold"> Mô tả: </span>Để thành công trong môi trường kinh doanh cạnh tranh hiện nay,
                                các giám đốc dự án phải đạt được kết quả trong phạm thời gian và ngân sách đưa ra. Biết cách áp dụng các quy trình,
                                phương pháp và kỹ thuật chỉ dẫn trong cuốn Quản Lý Dự Án này,
                                bạn sẽ tăng tối đa khả năng thực hiện công việc và đảm bảo đạt kết quả tối ưu khi thực hiện dự án.
                                Được thiết kế phù hợp với tất cả các nhà quản lý ở đủ mọi trình độ,
                                cẩm nang này sẽ trang bị cho bạn những kiến thức cần thiết trong việc quản lý mọi dự án,
                                dù lớn hay nhỏ, để đạt đến thành công. Từ việc khởi xướng một dự án, thúc đẩy,
                                phát triển nhóm dự án đến việc vượt qua những khó khăn, trở ngại;
                                mỗi một khía cạnh của quản lý dự án chuyện nghiệp đều được trình bày một cách rõ nét.
                                Cẩm nang bao gồm các hướng dẫn từng bước về hoạch định dự án và 101 mẹo vặt cung cấp cho bạn những lời khuyên thực tế.
                            </p>
                            <p style="font-weight:bold"> Giá bán: <span style="color:red; font-size:16pt "> <%=s.getGia() %> </span></p>
                        </div>
                        <div>
                            <div id="Datmua">
                            	<%if(session.getAttribute("un")!=null){ %>
                                <a href="muacontroller?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>&anh=<%=s.getAnh() %>" class="list-group-item">
                                    ĐẶT MUA
                                </a>
                                <%} else{ %>
                                 <a href="dangnhapcontroller" class="list-group-item">
                                    ĐẶT MUA
                                </a>
                                <%} %>
                            </div>
                        </div>
                    </div>
                    <%} %>

                </div>
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
