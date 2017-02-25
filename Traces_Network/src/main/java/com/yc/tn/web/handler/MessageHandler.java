package com.yc.tn.web.handler;

import java.io.IOException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
import com.yc.tn.util.BaseServlet;

@RequestMapping("/message")
@ResponseBody
public class MessageHandler extends BaseServlet{

	private int NUM=6;
	
	@RequestMapping("/phoneCode")
	@ResponseBody
	private void doPhoneCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		// 官网的URL---必须是这个
		String url = "http://gw.api.taobao.com/router/rest";

		// 成为开发者，创建应用后系统会自动生成--前面图片中有说明
		String appkey = "23650920";

		// 创建应用后系统会自动生成--前面图片中有说明
		String secret = "b6c05b234b5315c643ad35b423aa5cd9";
		
		String utel = request.getParameter("utel");
		String code="";
		 Random r = new Random();
         for(int i=0;i<NUM;i++){
             code = code+r.nextInt(10);
         }
         LogManager.getLogger().debug("手机号为:"+utel+",验证码为:"+code);
         //将验证码加入容器中---用户输入验证码之后验证
         session.setAttribute("code", code);
		
		 LogManager.getLogger().debug("手机号为:" + utel + ",验证码为:" + code);
		 
		 TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);

			AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
			// 公共回传参数，在“消息返回”中会透传回该参数；
			// 举例：用户可以传入自己下级的会员ID，在消息返回时，该会员ID会包含在内，用户可以根据该会员ID识别是哪位会员使用了你的应用

			req.setExtend("");
			// 短信类型，传入值请填写normal
			req.setSmsType("normal");

			// 签名名称
			req.setSmsFreeSignName("浪迹天涯");

			// 短信模板的内容
//			String json = "{\"测试\":\"" + code + "\"}";
			String json="{\"code\":\""+code+"\"}";

			
			// 短信模板变量，传参规则{"key":"value"}，key的名字须和申请模板中的变量名一致，多个变量之间以逗号隔开。
			req.setSmsParamString(json);

			// 短信接收号码
			req.setRecNum(utel);

			// 短信模板ID    (验证码)模版
			req.setSmsTemplateCode("SMS_49065069"); 
			AlibabaAliqinFcSmsNumSendResponse rsp = null;
			boolean issuccess=false;
			try {
				rsp = client.execute(req);
				issuccess = true;
			} catch (ApiException e) {
				e.printStackTrace();
			}
			respOutStr(response, issuccess+"");
	}
}
