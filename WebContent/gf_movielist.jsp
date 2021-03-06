<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <script src="js/jquery-1.7.2.min.js"></script>
    <script src="js/jquery.SuperSlide.2.1.js"></script>
    <script src="js/common.js"></script>
    <!--[if IE 6]>
<script src="js/DD_belatedPNG.js"></script>
<script>
  DD_belatedPNG.fix('#');
</script>
<![endif]-->
</head>
<body>
    <div class="wrapper">
      <jsp:include page="top.jsp"></jsp:include>
        
        
        
        
        <div class="contenter clearfix">
          <jsp:include page="left.jsp"></jsp:include>
            
            
            
            
            <div class="contenter-main">
                <div class="cur-pos-wrap">
                    <p class="cur-pos">
                        您当前所在的位置：<a >首页</a> &gt; <strong>高分电影推荐</strong></p>
                </div>
                <div class="inside-contenter">
                    <ul class="pros-list row-list-2 clearfix">
                     <c:forEach  items="${list}" var="bean">
                        <li>
                            <div class="pros-one clearfix">
                                <a href="indexmethod!xq_movie?id=${bean.id }" class="pic">
                                    <img src="<%=basePath%>/temp/${bean.imgpath }"></a>
                                <div class="text">
                                     <p> 片名：${bean.biaoti }</p>
                                     <p> 类别：${bean.category }</p>
                                     <p> 导演：${bean.dao }</p>
                                      <p> 评分：${bean.zong }</p>
                                    
                                </div>
                            </div>
                        </li>
                         </c:forEach>
                  
                       
                       
                      
                    </ul>
                     <div > ${pagerinfo }</div>
                </div>
                
                    
                
            </div>
            
            
           <jsp:include page="right.jsp"></jsp:include>
        </div>
        
       <jsp:include page="down.jsp"></jsp:include>
    </div>
</body>
</html>
