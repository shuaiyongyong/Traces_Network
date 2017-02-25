package com.yc.tn.web.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.tn.entity.TagEntity;
import com.yc.tn.service.TagService;

@Controller
@RequestMapping("/tag")
public class TagHandler {
	
	@Autowired
	private TagService tagService;
	
	@RequestMapping("/list")
	@ResponseBody
	public List<TagEntity> list(){
		return tagService.allTag();
	}

}
