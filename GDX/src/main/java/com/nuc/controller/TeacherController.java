package com.nuc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;
import com.nuc.model.Course;
import com.nuc.model.SCourse;
import com.nuc.model.Student;
import com.nuc.model.Teacher;
import com.nuc.model.Term;
import com.nuc.service.ICourseService;
import com.nuc.service.IStudentService;
import com.nuc.service.ITeacherService;
import com.nuc.service.ITermService;
import com.nuc.service.ITouristService;

/** 
* @author 作者:ly 
* @version 创建时间：2019年12月31日 下午4:10:05 
* 
*/
@Controller
@RequestMapping("Teacher")
public class TeacherController {
	@Resource
	private ITeacherService teacherService;
	@Resource
	private ITermService termService;
	@Resource
	private ICourseService courseService;
	@Resource
	private IStudentService studentService;
	
	/**
	 * 教师主界面
	 * @param model
	 * @param tno
	 * @return
	 */
	@RequestMapping(value = "/Main", method = RequestMethod.GET)
	  public String index(Model model, String tno){
		model.addAttribute("Status", 0);
		model.addAttribute("tno", tno);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("tname", teacherService.queryTeacherByTno(tno).getTname());
		model.addAttribute("Time", term.getPastterm());
	    return "TeacherMain";
	}
	
	/**
	 * 教师个人信息界面
	 * @param model
	 * @param tno
	 * @return
	 */
	@RequestMapping(value = "/self", method = RequestMethod.GET)
	  public String self(Model model, String tno){
		Teacher teacher = new Teacher();
		teacher = teacherService.queryTeacherByTno(tno);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("Status", 0);
		model.addAttribute("tno", tno);
		model.addAttribute("Self", teacher);
	    return "TeacherSelf";
	}
	
	/**
	 * 教师修改密码界面
	 * @param model
	 * @param tno
	 * @return
	 */
	@RequestMapping(value = "/updateself", method = RequestMethod.GET)
	public String updateself(Model model, String tno) {
		model.addAttribute("Status", 0);
		Teacher teacher = new Teacher();
		teacher = teacherService.queryTeacherByTno(tno);
		model.addAttribute("tname", teacher.getTname());
		model.addAttribute("tno", tno);
		return "TeacherUpdate";
	}
	
	/**
	 * 教师修改密码
	 * @param model
	 * @param tno
	 * @return
	 */
	@RequestMapping(value = "/updatepass", method = RequestMethod.GET)
	public String updatepass(Model model, String tno, String oldpassword, String password) {
		model.addAttribute("Status", 1);
		Teacher teacher = new Teacher();
		teacher = teacherService.queryTeacherByTno(tno);
		if(teacherService.queryTpasswordByTno(tno).equals(oldpassword)) 
		{
			model.addAttribute("oldpassword", 1);
			if(teacherService.updatePasswordByTno(tno, password)==0) {
				model.addAttribute("updateStatus", 0);
			}
			else
				model.addAttribute("updateStatus", 1);
		}
		else
		model.addAttribute("oldpassword", 0);
		model.addAttribute("tname", teacher.getTname());
		model.addAttribute("tno", tno);
		return "TeacherUpdate";
	}
	
	/**
	 * 查询教师所带课程界面
	 * @param model
	 * @param tno
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/querycourse", method = RequestMethod.GET)
	public String querycourse(Model model, String tno, String id) {
		Teacher teacher = new Teacher();
		teacher = teacherService.queryTeacherByTno(tno);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		List<Course> list = new ArrayList<>();
		String Time = term.getPastterm().get(Integer.valueOf(id));
		if(id.equals("0")) {
			list = courseService.queryCourseByTno(tno);
		}
		else {
			list = courseService.queryPCourseByTno(tno, Time);
		}
		model.addAttribute("list", list);
		model.addAttribute("Status", 0);
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("tname", teacher.getTname());
		model.addAttribute("tno", tno);
		model.addAttribute("id", id);
		return "TeacherCourse";
	}
	
	/**
	 * 教师查询所带课程学生界面
	 * @param model
	 * @param cno
	 * @param id
	 * @param tno
	 * @return
	 */
	@RequestMapping(value = "/queryresult", method = RequestMethod.GET)
	public String queryresult(Model model, String cno, String id, String tno) {
		Teacher teacher = new Teacher();
		teacher = teacherService.queryTeacherByTno(tno);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		String Time = term.getPastterm().get(Integer.valueOf(id));
		List<Student> lists = new ArrayList<>();
		if(id.equals("0")) 
			lists = courseService.queryStudentByCno(cno);
		else 
			lists = courseService.queryPStudentByCno(cno, Time);
		for (Student student : lists) {
			student.setSdept(studentService.querySdepBySmajor(student.getSmajor()));
		}
		model.addAttribute("cno", cno);
		model.addAttribute("total", lists.size());
		model.addAttribute("lists", lists);
		model.addAttribute("Status", 0);
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("tname", teacher.getTname());
		model.addAttribute("tno", tno);
		model.addAttribute("id", id);
	
		return "TeacherResult";
	}
	
	/**
	 * 进入教师录入与修改成绩界面
	 * @param model
	 * @param cno
	 * @param tno
	 * @return
	 */
	@RequestMapping(value = "/grade", method = RequestMethod.GET)
	public String entry(Model model, String cno, String tno, String id) {
		Teacher teacher = new Teacher();
		teacher = teacherService.queryTeacherByTno(tno);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		String Time = term.getPastterm().get(Integer.valueOf(id));
		List<Student> lists = new ArrayList<>();
		List<String> listg = new ArrayList<>();
		if(id.equals("0")) {
			lists = courseService.queryStudentByCno(cno);
		}
		else {
			lists = courseService.queryPStudentByCno(cno, Time);
		}
		for (Student student : lists) {
			student.setSdept(studentService.querySdepBySmajor(student.getSmajor()));
			if(id.equals("0")) {
				listg.add(studentService.queryGradeByCno(student.getSno(), cno));
			}
			else {
				listg.add(studentService.queryPGradeByCno(student.getSno(), cno, Time));
			}
		}
		model.addAttribute("cno", cno);
		model.addAttribute("listg", listg);
		model.addAttribute("cname", courseService.queryCourseByCourse(cno).getCname());
		model.addAttribute("total", lists.size());
		model.addAttribute("lists", lists);
		model.addAttribute("Status", 0);
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("tname", teacher.getTname());
		model.addAttribute("tno", tno);
		model.addAttribute("id", id);
		model.addAttribute("entryStatus", courseService.getentryStatus());
		return "TeacherGrade";
	}
	
	/**
	 * 教师修改学生成绩
	 * @param model
	 * @param cno
	 * @param tno
	 * @param id
	 * @param listgrade
	 * @return
	 */
	@RequestMapping(value = "/updategrade")
	public String updategrade(Model model, String cno, String tno, String id, String[] listgrade, int leng) {
		Teacher teacher = new Teacher();
		teacher = teacherService.queryTeacherByTno(tno);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		String Time = term.getPastterm().get(Integer.valueOf(id));
		List<Student> lists = new ArrayList<>();
		List<String> listg = new ArrayList<>();
		if(id.equals("0")) {
			lists = courseService.queryStudentByCno(cno);
		}
		else {
			lists = courseService.queryPStudentByCno(cno, Time);
		}
		for (int i = 0; i < lists.size(); i++) {
			listg.add(listgrade[i]);
			Student student = lists.get(i);
			student.setSdept(studentService.querySdepBySmajor(student.getSmajor()));
			if(id.equals("0")) {
				if(!studentService.queryGradeByCno(student.getSno(), cno).equals(listgrade[i])) {
					if(courseService.updateGradeByCno(student.getSno(), cno, listgrade[i])==1) {
						model.addAttribute("Status", 0);
					}
					else model.addAttribute("Status", 1);
				}
			}
		}
		model.addAttribute("cno", cno);
		model.addAttribute("listg", listg);
		model.addAttribute("cname", courseService.queryCourseByCourse(cno).getCname());
		model.addAttribute("total", lists.size());
		model.addAttribute("lists", lists);
		model.addAttribute("Status", 0);
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("tname", teacher.getTname());
		model.addAttribute("tno", tno);
		model.addAttribute("id", id);
		return "redirect:grade";
	}
}
