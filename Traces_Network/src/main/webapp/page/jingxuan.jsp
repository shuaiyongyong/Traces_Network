<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta charset="utf-8">
<base href="/Traces_Network/">
<title>精选</title>
<link rel="stylesheet" type="text/css" href="css/jingxuan.css"/>
<link rel="stylesheet" type="text/css" href="css/template.css"/>
</head>
<body>
	<header>
    	<div class="top">
        	<a href="index.jsp"><img src="images/logo.jpg"/></a>
            <li id="l1"><a href="index.jsp">首页</a></li>
            <li class="l2"><a href="page/custom.jsp">定制旅行</a></li>
            <li class="l2"><a href="#">经典路线</a></li>
            <li class="l2"><a href="#">深度推荐</a></li>
            <li class="l2 daren">
            	<a href="page/lutan.jsp">达人攻略</a>
            	<ul class="content" style="width:80px; overflow: hidden; background:#CCCCCC;display:none">
						<li><a href="page/jingxuan.jsp">精选</a></li>
						<li><a href="page/youji.jsp">游记</a></li>
				</ul>
			</li>
            <li class="l2"><a href="#">你问我答</a></li>
            <li class="l2"><a href="#">关于我们</a></li>
            <li id="l3"><a href="page/customize.jsp" target="_blank">立即定制</a></li>
            <li id="l4"><a href="#">登录</a></li>
            <li id="l5"></li>
            <li id="l4"><a href="#" id="reg">注册</a></li>
        </div>
    </header>
    
    <article>
    	<div class="article_top">
            	<li><a href="page/jingxuan.jsp">全部</a></li>
                <li onclick='check(2)'> <a href="javascript:viod(0)" >登山</a></li>
                <li onclick='check(3)'> <a href="javascript:viod(0)">攀岩</a></li>
                <li onclick='check("4")'> <a href="javascript:viod(0)">攀冰</a></li>
                <li onclick='check("5")'> <a href="javascript:viod(0)">滑雪</a></li>
                <li onclick='check("6")'> <a href="javascript:viod(0)">钓鱼</a></li>
                <li onclick='check("7")'> <a href="javascript:viod(0)">水上</a></li>
                <li onclick='check("8")'> <a href="javascript:viod(0)">探洞</a></li>
                <li onclick='check("9")'> <a href="javascript:viod(0)">骑行</a></li>
                <li onclick='check("10")'> <a href="javascript:viod(0)">自驾</a></li>
                <li onclick='check("11")'> <a href="javascript:viod(0)">徒步</a></li>
                <li onclick='check("12")'> <a href="javascript:viod(0)">旅行</a></li>
                <li onclick='check("13")'> <a href="javascript:viod(0)">国外</a></li>
                <li onclick='check("14")'> <a href="javascript:viod(0)">摄影</a></li>
                <li onclick='check("15")'> <a href="javascript:viod(0)">装备</a></li>
                <li onclick='check("16")'> <a href="javascript:viod(0)">美食</a></li>
                <li onclick='check("17")'> <a href="javascript:viod(0)">其他</a></li>
        </div>
        <div class="article_botton">
        	<div class="d1">
            	<!-- <a href="page/jingxuanxiangqing.jsp"><img src="images/090434fr2hajss2xzsrrws.jpg"></a>
                <a href="page/jingxuanxiangqing.jsp"><p>铿锵玫瑰 大玉</p></a> -->
            </div>
            <!-- <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>
            <div class="d1"></div>  -->
        </div>
        <p id="pList"></p>
    </article>
    
    <footer>
    	<a href="index.jsp"><img src="images/logo.jpg"/></a>
        <div id="p">
            <p id="p1">(C)Copyright 2017 版权所有：衡阳浪迹旅行社有限公司 &nbsp;地址:湖南省衡阳市珠晖区衡花路18号 &nbsp;邮编:421002</p>
            <p id="p2">&nbsp;&nbsp;电话：13722237047 13303028262 &nbsp;&nbsp; E-mail：hyljw@163.com</p>
            <p id="p3">技术支持：<a href="page/login.jsp">gCoder工作室</a> </p>
        </div>
    </footer>
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/strategyInfo.js""></script>
</body>
</html>
