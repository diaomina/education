package com.soft.test;

import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.record.formula.functions.False;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.model.Chapter;
import com.soft.service.ChapterService;
import com.soft.service.impl.ChapterServiceImpl;

/*
 * 章节表测试
 */
public class ChapterServiceTest {
	private static ApplicationContext context=null;
	private ChapterService chapterServiceImpl=null;
	
	@Before
	public void initConfig(){
		System.out.println("hello");
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		chapterServiceImpl=(ChapterService)context.getBean("chapterServiceImpl");
		System.out.println(chapterServiceImpl);
	}
	
	//测试添加章节（章节字段选择性添加）
	@Test
	public void addChapterTest(){
		Chapter chapter=new Chapter();
		chapter.setChapterId(null);
		//chapter.setChapterName("路由器及通信服务的基本配置");
		chapter.setChapterName("路由器的各种密码设置及接口地址设置");
		chapter.setCorpId(1);
		chapter.setCreateBy("张三");
		chapter.setCreateTime(new Date());
		chapter.setModifyBy("张三");
		chapter.setModifyTime(new Date());
		chapter.setVersion(1);
		chapter.setStatus(false);
		chapter.setCuorseId(1);
		chapterServiceImpl.addChapter(chapter);
	}
	
	//测试修改章节。根据章节对象中不为空的属性进行更新
	@Test
	public void updateChapterTest(){
		Chapter chapter=new Chapter();
		chapter.setChapterId(6);
		chapter.setChapterName("路由器的各种密码设置及接口地址设置");
		chapterServiceImpl.updateChapterById(chapter);
	}
	
	//测试多条件查询章节。对章节对象中章节id，章节名，课程id三个不为空的属性进行多条件查询
	@Test
	public void selectChapterByIfTest(){
		Chapter chapter=new Chapter();
		chapter.setChapterId(2);
		chapter.setChapterName("路由器的各种密码设置及接口地址设置");
		List<Chapter> list=chapterServiceImpl.selectChapterByIf(chapter);
		System.out.println(list.get(0).getChapterId());
	}
	
	//假删除章节测试
	@Test
	public void falseDeleteChapterTest(){
		Chapter chapter=new Chapter();
		chapter.setChapterId(2);
		int count=chapterServiceImpl.falseDeleteChapter(chapter);
		System.out.println(count);
	}
	
	//真删除测试
	@Test
	public void deleteChapterTest(){
		Chapter chapter=new Chapter();
		chapter.setChapterId(3);
		//chapter.setChapterName("路由器及通信服务的基本配置");
		int count=chapterServiceImpl.DeleteChapter(chapter);
		System.out.println(count);
	}
}
