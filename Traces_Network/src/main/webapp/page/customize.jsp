<%@  page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<base href="/Traces_Network/">
<meta charset="UTF-8">
<title>私人定制</title>
<link rel="stylesheet" type="text/css" href="css/customize.css"/>
<link rel="stylesheet" type="text/css" href="css/template.css"/>
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
            <li id="l2"><a href="#">你问我答</a></li>
            <li id="l2"><a href="#">关于我们</a></li>
            <li id="l3"><a href="page/customize.jsp" target="_blank">立即定制</a></li>
            <li id="l4"><a href="#">登录</a></li>
            <li id="l5"></li>
            <li id="l4"><a href="#" id="reg">注册</a></li>
        </div>
    </header>
    
    <article>
    
    	<div id="left">
        	<div id="left_top">
            	<p id="p4">你只需要决定出发</p>
                <p id="p5">- 剩下的一切，交给浪迹网就好 -</p>
            </div>
            <div id="left_bottom">
            	<form class="custform"  id="custform1">
                	<span style="margin-left:40px;">出行日期:</span>&nbsp;<select  class="selects" id="year"  onclick="checkYear()">
                    			
                    		</select>
                            <select class="selects" id="month" onclick="checkMon()">
                    			<option value="月份">月份</option>
                    			<option value="不确定">不确定</option>
                    		</select>
                            <select class="selects" id="day" >
                    			<option value="日期">日期</option>
                    			<option value="不确定">不确定</option>
                    		</select><br/>
                    <span style="margin-left:40px;">旅行天数:</span>&nbsp;<select class="selects">
                    			<option value="请选择">请选择</option>
                                <option value="1天">1天</option>
                                <option value="2天">2天</option>
                                <option value="3天">3天</option>
                                <option value="4天">4天</option>
                                <option value="5天">5天</option>
                                <option value="6天">6天</option>
                                <option value="7天">7天</option>
                                <option value="8天">8天</option>
                                <option value="9天及以上">9天及以上</option>
                    		</select><br/>
                     <span style="margin-left:40px;">出行人数:</span>&nbsp;<select class="selects">
                    			<option value="请选择">请选择</option>
                                <option value="1人">1人</option>
                                <option value="2人">2人</option>
                                <option value="3人">3人</option>
                                <option value="4人">4人</option>
                                <option value="5人">5人</option>
                                <option value="6人">6人</option>
                                <option value="7人">7人</option>
                                <option value="8人">8人</option>
                                <option value="9人及以上">9人及以上</option>
                    		</select><br/> 
                     <span style="margin-left:40px;">其中儿童:</span>&nbsp;<select class="selects">
                    			<option value="无">无</option>
                                <option value="1人">1人</option>
                                <option value="2人">2人</option>
                                <option value="3人">3人</option>
                                <option value="4人">4人</option>
                                <option value="5人">5人</option>
                                <option value="6人">6人</option>
                                <option value="7人">7人</option>
                                <option value="8人">8人</option>
                                <option value="9人及以上">9人及以上</option>
                    		</select><br/>
                     <span style="margin-left:40px;">其中老人:</span>&nbsp;<select class="selects">
                    			<option value="无">无</option>
                                <option value="1人">1人</option>
                                <option value="2人">2人</option>
                                <option value="3人">3人</option>
                                <option value="4人">4人</option>
                                <option value="5人">5人</option>
                                <option value="6人">6人</option>
                                <option value="7人">7人</option>
                                <option value="8人">8人</option>
                                <option value="9人及以上">9人及以上</option>
                    		</select><br/>
                     <span style="margin-left:40px;">其他要求:</span>&nbsp;<textarea rows="5" cols="50" id="contents"></textarea><br/>
                     <input type="button" value="下一步" id="next_1" onclick="next1()" />
                </form>
                <form class="custform"   id="custform2">
                	<div id="fromtop">
                			<a href="javascript:void(0)"  class="al1"><li id="l6">湖南</li></a>
                			<li id="l7"></li>	
                	</div>
                	<div id="fromattric">
                			<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">长沙市</li></a>
                			<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">株洲市</li></a>
                			<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">湘潭市</li></a>
                			<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">衡阳市</li></a>
                			<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">邵阳市</li></a>
                			<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">岳阳市</li></a>
                			<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">张家界市</li></a>
                			<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">益阳市</li></a>
							<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">常德市</li></a>
							<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">娄底市</li></a>
							<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">郴州市</li></a>
							<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">永州市</li></a>
							<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">怀化市</li></a>
							<a href="javascript:void(0)"  class="al2"  onclick="check()"><li id="l8">湘西自治州</li></a>
                	</div>
                	<p id="p6">还不确定目的地，<a href="javascript:void(0)"  id="a1" onclick="next2()">点这里</a></p>
                	<input type="button" value="下一步" id="next_1" onclick="next2()" /><a href="javascript:void(0)"  id="a2" onclick="return1()">返回重新选择</a>
                </form>
                 <form class="custform"   id="custform3">
                 	<p id="p7">旅游喜好</p>
                 	<div id="tracelike">
                 		<a href="javascript:void(0)"  ><img class="al3"  src="images/fengguang.png"></a>
                 		<a href="javascript:void(0)"  ><img class="al3" src="images/gouwu.png"></a>
                 		<a href="javascript:void(0)"  ><img  class="al3" src="images/lishi.png"></a>
                 		<a href="javascript:void(0)"  ><img class="al3" src="images/meishi.png"></a>
                 		<a href="javascript:void(0)"  ><img class="al3" src="images/yiji.png"></a>
                 		<a href="javascript:void(0)"  ><img class="al3" src="images/zongjiao.png"></a>
                 	</div>
                	<input type="button" value="提交预约" id="next_1" onclick="commitNeed()" /><a href="javascript:void(0)"  id="a2" onclick="return2()">返回重新选择</a>
                </form>
            </div>
        </div>
    	<div id="right">
        	
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
<script type="text/javascript" src="js/customize.js"></script>
</body>
</html>
