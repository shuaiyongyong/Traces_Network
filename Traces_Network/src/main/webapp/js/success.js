var map = new BMap.Map("locationmap");			// 百度地图API功能
map.centerAndZoom("衡阳市", 14);					// 设置地图显示的城市和地图级别
map.enableScrollWheelZoom();					// 启用滚轮放大缩小，默认禁用
map.enableContinuousZoom();						// 启用地图惯性拖拽，默认禁用
map.addControl(new BMap.NavigationControl());	// 添加默认缩放平移控件
map.addControl(new BMap.ScaleControl());		// 添加比例尺控件
map.addControl(new BMap.MapTypeControl());		// 添加地图类型控件
map.addControl(new BMap.OverviewMapControl());	// 添加缩略地图控件

$(function(){
	search();
})

function search(){
	$.ajax({
		url : 'location/addr?action=map&userid=1',
		data : $('#searchForm').serialize(),
		type : "post",
		cache : false,
		success : function(data) {
			var result = eval('(' + data + ')');
			map.clearOverlays();									// 清除标注信息
		    var points = [];										// 添加折线运动轨迹
			for(i=0;i<result.length;i++)
		    {
				var userid = result[i].userid;						// 用户ID
		    	var longitude = result[i].longitude;				// 经度
		    	var latitude = result[i].latitude;					// 纬度
		    	var address = result[i].address;					// 地点
		    	var sign_time = result[i].datetime;					// 签到时间
		    	
		    	var point = new BMap.Point(longitude, latitude);	// 填充标注点
		    	if(i==0)
		    	{
		    		map.setCenter(point);							// 设置中心坐标
		    	}
		    	var tips = userid + "，" + sign_time + "，" + address;
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