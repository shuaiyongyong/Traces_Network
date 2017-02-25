<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base href="/Traces_Network/">
<title>精选详情</title>
<link rel="stylesheet" type="text/css" href="css/jingxuanxiangqing.css"/>
<link rel="stylesheet" type="text/css" href="css/template.css"/>
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
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
            <li id="l4"><a href="login.jsp">登录</a></li>
            <li id="l5"></li>
            <li id="l4"><a href="#" id="reg">注册</a></li>
        </div>
    </header>
    
    <article>
    	<div class="article_top">
        	<div class="article_top_left">
            	<!-- <p>say哈啰</p>
                <img src="images/14_avatar_middle.jpg">
                <p>在线：9491 小时</p>
                <p>注册：2014-6-23</p> -->
            </div>
            <div class="article_top_right">
            	<div class="article_top_right_top">
                	<!-- <li class="li1">发表于 4 天前</li> -->
                    <li class="li2"><a href="page/jingxuanxiangqing.jsp">只看该作者</a></li>
                   <!--  <li class="li3"><a href="#">10楼</a></li> -->
                </div>
                <div class="article_top_right_center">
                	<!-- <img src="images/02544078n0jicrzvy4i24n.jpg"> -->
                </div>
                <div class="article_top_right_bottom">
                	<a href="login.jsp"><p>回复</p></a>
                </div>
            </div>
        </div>
        
        <div class="article_center">
        	<div class="article_center_left"></div>
            <div class="article_center_right">
            	<div class="article_center_right_top"></div>
                <div class="article_center_right_center"></div>
                <div class="article_center_right_bottom"></div>
            </div>
        </div>
       
	<textarea id="container" name="container"
													style="height: 120px; margin: 0 auto;;"></textarea>
												<script type="text/javascript">
													UE.getEditor('container');
												</script>
												
			<input name="submit" value="回复" type="submit"/>
    </article>
    
     <footer>
    	<a href="index.jsp"><img src="images/logo.jpg"/></a>
        <div id="p">
            <p id="p1">(C)Copyright 2017 版权所有：衡阳浪迹旅行社有限公司 &nbsp;地址:湖南省衡阳市珠晖区衡花路18号 &nbsp;邮编:421002</p>
            <p id="p2">&nbsp;&nbsp;电话：13722237047 13303028262 &nbsp;&nbsp; E-mail：hyljw@163.com</p>
            <p id="p3">技术支持：<a href="page/userlogin.jsp">gCoder工作室</a> </p>
        </div>
    </footer>
 	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/jingxuanxiangqing.js"></script>
	<script type="text/javascript" src="js/strategyAnswer.js"></script>
</body>
</html>
