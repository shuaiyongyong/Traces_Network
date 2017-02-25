var map = new BMap.Map("locationmap");			// 百度地图API功能
map.centerAndZoom("衡阳市", 14);					// 设置地图显示的城市和地图级别
map.enableScrollWheelZoom();					// 启用滚轮放大缩小，默认禁用
map.enableContinuousZoom();						// 启用地图惯性拖拽，默认禁用
map.addControl(new BMap.NavigationControl());	// 添加默认缩放平移控件
map.addControl(new BMap.ScaleControl());		// 添加比例尺控件
map.addControl(new BMap.MapTypeControl());		// 添加地图类型控件
map.addControl(new BMap.OverviewMapControl());	// 添加缩略地图控件

$(function(){
	var str=window.location.href; //取得整个地址栏	
	num=str.indexOf("?") 
	str=str.substr(num+1);
	search(str);
})

function search(str){
	$.ajax({
		url : 'location/addr?'+str,
		data : $('#searchForm').serialize(),
		type : "post",
		cache : false,
		success : function(data) {
//			alert(JSON.stringify(data));.
//			var result = eval("("+data+")");//转换为json对象 
			var result = data;
			map.clearOverlays();									// 清除标注信息
		    var points = [];										// 添加折线运动轨迹
			for(i=0;i<result.length;i++)
		    {
		    	var longitude = result[i].scenic_Longitude;				// 经度
		    	var latitude = result[i].scenic_Latitude;					// 纬度
		    	var address = result[i].scenic_Name;					// 地点
		    	
		    	var point = new BMap.Point(longitude, latitude);	// 填充标注点
		    	if(i==0)
		    	{
		    		map.setCenter(point);							// 设置中心坐标
		    	}
		    	var tips = address;
		    	addMarker(point, map, tips);
		    	points.push(point);
		    }
			var polyline = new BMap.Polyline(points);
			map.addOverlay(polyline); 								//绘制曲线
		}
	});
	return false;
}

//编写自定义函数,创建标注
function addMarker(point, map, tips) 
{
	var marker = new BMap.Marker(point);
	map.addOverlay(marker);
	//为标注添加文字信息
	var label = new BMap.Label(tips,{offset:new BMap.Size(20,-10)});
	marker.setLabel(label);
}