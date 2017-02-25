<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/Traces_Network/">
<meta charset="UTF-8">
<title>问答</title>
<!--<link rel="stylesheet" type="text/css" href="css/index.css"/>-->
<link rel="stylesheet" type="text/css" href="css/template.css"/>
<link rel="stylesheet" type="text/css" href="css/quList.css"/>
</head>
<body>
	<header>
    	<div class="top">
        	<a href="index.html"><img src="images/logo.jpg"/></a>
            <li id="l1"><a href="index.jsp">首页</a></li>
            <li id="l2"><a href="page/custom.jsp">定制旅行</a></li>
            <li id="l2"><a href="#">经典路线</a></li>
            <li id="l2"><a href="#">深度推荐</a></li>
            <li id="l2"><a href="#">达人攻略</a></li>
            <li id="l2"><a href="page/quList.jsp">你问我答</a></li>
            <li id="l2"><a href="#">关于我们</a></li>
     
            <li id="l3"><a href="#">立即定制</a></li>
            <li id="l4"><a href="#">登录</a></li>
            <li id="l5"></li>
            <li id="l4"><a href="#" id="reg">注册</a></li>
        </div>
    </header>
    
    <article>
    	<div class="article-top"></div>
        <div class="article-remain">
        	<div class="remain-right">
            	<div class="right-top">
                	<img src="images/wen.jpg" id="img1"/>
                	<p class="top-title">全部问题</p>
                    <a href="page/ask.jsp"><input type="button" id="btn1"></a>
                    <!-- <ul class="tabs">
                    	<li class="tabs-a">
                        	<a href="page/quList.jsp" class="item">已解决问题</a>
                        </li>
                        <li class="tabs-b">
                        	<a href="page/quList.jsp" class="item">待回答问题</a>
                        </li>
                    </ul> -->
                </div>
                <div class="right-bottom">
                	<div class="rows-right">
                        	<div class="inline-btn"><a onclick="list()"><b>最新</b></a></div>&nbsp;&nbsp;&nbsp;
                            <div class="inline-btn"><a  onclick="listByClick()" ><b>最热</b></a></div>&nbsp;&nbsp;&nbsp;
                            <div class="inline-btn"><a  onclick="listByStatus1()"><b>已采纳</b></a></div>&nbsp;&nbsp;&nbsp;
                            <div class="inline-btn"><a  onclick="listByStatus2()"><b>未采纳</b></a></div>
                    </div>
                    <div id="list-question">
                    	<!-- <div class="media-list-question">
                    	<a class="c-img"><img src="images/quList01.jpg" width="48px" height="48px"></a>
                        <div class="content">
                        	<a id="username">easylife </a><span class="jd">提问：</span>
                            <a id="ask_Content" class="answer" href="page/quDetail.jsp">我们第3天去参观圣巴巴拉教堂和人骨教堂是从市区集合地有专车送过送回到市区的集合地Nar</a>
                        </div>
                        <div class="tag-list">
	                            <button class="tag">教堂</button>&nbsp;&nbsp;&nbsp;
	                            <button class="tag">圣巴巴拉</button>&nbsp;&nbsp;&nbsp;
	                            <button class="tag">巴拉</button>
	                    </div>
                        <span id="answer_time" class="date">2017-01-14</span>  -->
    				</div>
                    
                    
                    <p align="right" id="pagation"></p>
                   
           </div>
        </div>
        <div class="remain-left">
            <div class="hd">
        		<h3 class="title">推荐达人</h3>
    		</div>
            <div class="bd">
            	<ul>
                	<li class="item2">
                      <div class="img2">
                      	<a><img width="48px" height="48px" src="images/quListW01.jpg"></a>
                        <button class="btn1">提问</button>
                      </div>	
                      <div class="c-txt">
                      	<a class="writer">echo3436</a>
                        <div class="content2">
                           <p class="p1">712解答 6%采纳</p>
                           <p class="p2">多次往返于迪拜、阿布扎比和苏丹之间，深谙阿拉伯饮...</p>
                        </div>
                      </div>
                    </li>
                    <li class="item2">
                      <div class="img2">
                      	<a><img width="48px" height="48px" src="images/quListW01.jpg"></a>
                        <button class="btn1">提问</button>
                      </div>	
                      <div class="c-txt">
                      	<a class="writer">echo3436</a>
                        <div class="content2">
                           <p class="p1">712解答 6%采纳</p>
                           <p class="p2">多次往返于迪拜、阿布扎比和苏丹之间，深谙阿拉伯饮...</p>
                        </div>
                      </div>
                    </li>
                    <li class="item2">
                      <div class="img2">
                      	<a><img width="48px" height="48px" src="images/quListW01.jpg"></a>
                        <button class="btn1">提问</button>
                      </div>	
                      <div class="c-txt">
                      	<a class="writer">echo3436</a>
                        <div class="content2">
                           <p class="p1">712解答 6%采纳</p>
                           <p class="p2">多次往返于迪拜、阿布扎比和苏丹之间，深谙阿拉伯饮...</p>
                        </div>
                      </div>
                    </li>
                    <li class="item2">
                      <div class="img2">
                      	<a><img width="48px" height="48px" src="images/quListW01.jpg"></a>
                        <button class="btn1">提问</button>
                      </div>	
                      <div class="c-txt">
                      	<a class="writer">echo3436</a>
                        <div class="content2">
                           <p class="p1">712解答 6%采纳</p>
                           <p class="p2">多次往返于迪拜、阿布扎比和苏丹之间，深谙阿拉伯饮...</p>
                        </div>
                      </div>
                    </li>
                </ul>
            </div>
        </div>
        
    </article>
    
    <footer>
    	<a href="index.html"><img src="images/logo.jpg"/></a>
        <div id="p">
            <p id="p1">(C)Copyright 2017 版权所有：衡阳浪迹旅行社有限公司 &nbsp;地址:湖南省衡阳市珠晖区衡花路18号 &nbsp;邮编:421002</p>
            <p id="p2">&nbsp;&nbsp;电话：13722237047 13303028262 &nbsp;&nbsp; E-mail：hyljw@163.com</p>
            <p id="p3">技术支持：<a href="page/login.jsp">gCoder工作室</a> </p>
        </div>
    </footer>
    
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="js/quList.js"></script>
</body>
</html>