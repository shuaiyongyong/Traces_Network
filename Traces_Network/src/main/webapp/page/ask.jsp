<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/Traces_Network/">
<meta charset="UTF-8">
<title>提问</title>
<!--<link rel="stylesheet" type="text/css" href="css/index.css"/>-->
<link rel="stylesheet" type="text/css" href="css/template.css"/>
<link rel="stylesheet" type="text/css" href="css/ask.css"/>
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
                	<ul class="tabs">
                    	<li class="tabs-a">
                        	<a href="page/ask.jsp" class="item">问题详情</a>
                        </li>
                        <!-- <li class="tabs-b">
                        	<a href="page/ask.jsp" class="item">规划行程</a>
                        </li> -->
                    </ul>
                </div>
                <div class="right-bottom">
                	 <div class="info">
                         <p class="tip">提出问题，让大家帮你解决</p>
                         <span class="count">还可以输入<font color="#FF0000" id="number">50</font>字</span>
					 </div>
                     <textarea class="question" onKeyUp="checkInfo()"></textarea>
                     <div class="tags">
                        <span class="js_tag_add">
                            <button class="tag-add">+添加标签</button>
                            <span class="js_input util-hidden">
                            <input type="text" class="tag-editor" maxlength="10">
                            </span>
                        </span>
					 </div>
                     <div class="fn-btn">
                        <button class="btn-primary"></button>
                     </div>
                     <div class="mod-question-term">
                        <p class="p1">特别说明：</p>
                        <p class="p2">本问答区仅限于旅行疑难问题（例如：签证、交通等）的讨论与解答，灌水、聊天等任何不属于旅行问答的内容，将被视为无效信息删除。</p>
                     </div>
                </div>   
           </div>
           <div class="remain-left">
            <div class="hd">
        		<h3 class="title">精彩行程</h3>
    		</div>
            <div  class="bd">
            	<div class="media-list-b">
            		<div class="c-img">
                        <a><img src="images/ask01.jpg" width="235" height="150"></a>
                        <div class="content">
                        <a class="title" >【永远的普罗旺斯】法国8天</a>
                        <a><p class="text">巴黎>阿维尼翁>莱博德普罗旺斯...</p></a>
                        </div>
                    </div>
            		<p class="info2">
                        <a class="avt">
                            <img src="images/askW01.jpg">
                        </a>作者：<a class="link2">手边巴黎...</a>
                        <span class="split">|</span>
                        <span class="time">2013-07-23</span>
                    </p>
        		  </div>
                  <div class="media-list-b">
            		<div class="c-img">
                        <a><img src="images/ask02.jpg" width="235" height="150"></a>
                        <div class="content">
                        <a class="title" >【原来很“美”】美国9天</a>
                        <a><p class="text">西雅图>纽约>芝加哥...</p></a>
                        </div>
                    </div>
            		<p class="info2">
                        <a class="avt">
                            <img src="images/askW02.jpg">
                        </a>作者：<a class="link2">Marcel</a>
                        <span class="split">|</span>
                        <span class="time">2013-07-23</span>
                    </p>
        		  </div>
                </div>
              </div>
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
    <script type="text/javascript" src="js/ask.js"></script>
</body>
</html>