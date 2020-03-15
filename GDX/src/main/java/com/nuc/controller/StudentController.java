package com.nuc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nuc.model.Course;
import com.nuc.model.SCourse;
import com.nuc.model.Student;
import com.nuc.model.Teacher;
import com.nuc.model.Term;
import com.nuc.service.ICourseService;
import com.nuc.service.IStudentService;
import com.nuc.service.ITeacherService;
import com.nuc.service.ITermService;
import com.nuc.util.Page;

/** 
* @author 作者:ly 
* @version 创建时间：2019年12月31日 上午9:20:20 
* 
*/
@Controller
@RequestMapping("Student")
public class StudentController {
	@Resource
	private IStudentService studentService;
	@Resource
	private ITermService termService;
	@Resource
	private ICourseService courseService;
	@Resource
	private ITeacherService teacherService;
	
	/**
	 * 打开学生主界面
	 * @param model
	 * @param sno
	 * @return
	 */
	@RequestMapping(value = "/Main", method = RequestMethod.GET)
	public String index(Model model, String sno){
		String sname = studentService.querySnameBySno(sno);
		String selectStatus = courseService.getselectStatus();
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("sname", sname);
		model.addAttribute("sno", sno);
		model.addAttribute("selectStatus", selectStatus);
		return "StudentMain";
	}
	
	/**
	 * 打开学生个人信息界面
	 * @param model
	 * @param sno
	 * @return
	 */
	@RequestMapping(value = "/self", method = RequestMethod.GET)
	public String querySelf(Model model, String sno) {
		Student student = new Student();
		student = studentService.queryStudentBySno(sno);
		student.setSdept(studentService.querySdepBySmajor(student.getSmajor()));
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("Self", student);
		model.addAttribute("sname", student.getSname());
		model.addAttribute("sno", sno);
		return "StudentSelf";
	}
	
	/**
	 * 修改学生密码功能
	 * @param model
	 * @param sno
	 * @param oldpassword
	 * @param password
	 * @return
	 */
	@RequestMapping(value = "/updatepass", method = RequestMethod.GET)
	public String updatepass(Model model, String sno, String oldpassword, String password) {
		model.addAttribute("Status", 1);
		Student student = new Student();
		student = studentService.queryStudentBySno(sno);
		if(studentService.querySpasswordBySno(sno).equals(oldpassword)) 
		{
			model.addAttribute("oldpassword", 1);
			if(studentService.updatePasswordBySno(sno, password)==0) {
				model.addAttribute("updateStatus", 0);
			}
			else
				model.addAttribute("updateStatus", 1);
		}
		else
		model.addAttribute("oldpassword", 0);
		model.addAttribute("sname", student.getSname());
		model.addAttribute("sno", sno);
		return "StudentUpdate";
	}
	
	/**
	 * 修改学生密码界面
	 * @param model
	 * @param sno
	 * @return
	 */
	@RequestMapping(value = "/updateself", method = RequestMethod.GET)
	public String updateself(Model model, String sno) {
		model.addAttribute("Status", 0);
		Student student = new Student();
		student = studentService.queryStudentBySno(sno);
		model.addAttribute("sname", student.getSname());
		model.addAttribute("sno", sno);
		return "StudentUpdate";
	}
	
	/**
	 * 查询学生成绩界面
	 * @param model
	 * @param sno
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/queryresult", method = RequestMethod.GET)
	public String queryresult(Model model, String sno, String id) {
		Student student = new Student();
		student = studentService.queryStudentBySno(sno);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		List<SCourse> list = new ArrayList<>();
		String Time = term.getPastterm().get(Integer.valueOf(id));
		if(id.equals("0")) {
			list = studentService.queryResultBySno(sno);
		}
		else {
			list = studentService.queryPResultBySno(sno, Time);
		}
		model.addAttribute("list", list);
		List<Course> listc = new ArrayList<>();
		List<Teacher> listt = new ArrayList<>();
		if(id.equals("0")) {
			for (SCourse sCourse : list) {
				Course course = new Course();
				course = courseService.queryCourseByCourse(sCourse.getCno());
				listc.add(course);
				
				listt.add(teacherService.queryTeacherByTno(course.getTno()));
			}
		}
		else {
			for (SCourse sCourse : list) {
				Course course = new Course();
				System.out.println(sCourse);
				course = courseService.queryPCourseByCno(sCourse.getCno(), Time);
				listc.add(course);
				listt.add(teacherService.queryTeacherByTno(course.getTno()));
				
			}
		}
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("listc", listc);
		model.addAttribute("listt", listt);
		model.addAttribute("sname", student.getSname());
		model.addAttribute("sno", sno);
		return "StudentResult";
	}
	
	/**
	 * 学生选课界面
	 * @param model
	 * @param sno
	 * @param starts
	 * @param counts
	 * @param Status
	 * @param iqStatus
	 * @return
	 */
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	public String select(Model model, String sno, String starts, String counts, String Status, String iqStatus, String DimName) {
		model.addAttribute("Status", Status);
		model.addAttribute("iqStatus", iqStatus);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		int start = 0;
        int count = 10;
        try {
            start = Integer.parseInt(starts);
            count = Integer.parseInt(counts);
        } catch (Exception e) {
        }
        Page page = new Page(start, count);
		Student student = new Student();
		student = studentService.queryStudentBySno(sno);
		List<Course> listc= new ArrayList<>();
		List<Teacher> listt = new ArrayList<>();
		listc = courseService.queryCourseByPage(sno, page.getStart(), page.getCount());
		for (Course course : listc) {
			listt.add(teacherService.queryTeacherByTno(course.getTno()));
		}
		int total = courseService.getCourseTotal("", DimName, "", "") - courseService.getPCourseTotal(sno);
        page.setTotal(total);
		model.addAttribute("DimName", DimName);
		model.addAttribute("Time", term.getPastterm());
        model.addAttribute("page", page);
        model.addAttribute("listc", listc);
        model.addAttribute("listt", listt);
		model.addAttribute("sname", student.getSname());
		model.addAttribute("sno", sno);
		return "StudentSelect";
	}
	
	/**
	 * 查询学生已选课页面
	 * @param model
	 * @param sno
	 * @param Status
	 * @param resultStatus
	 * @return
	 */
	@RequestMapping(value = "/course", method = RequestMethod.GET)
	public String course(Model model, String sno, String Status, String resultStatus, String selectStatus) {
		model.addAttribute("Status", Status);
		model.addAttribute("resultStatus", resultStatus);
		Student student = new Student();
		student = studentService.queryStudentBySno(sno);
		List<SCourse> list = new ArrayList<>();
		list = studentService.queryChooseBySno(sno);
		List<Course> listc = new ArrayList<>();
		List<Teacher> listt = new ArrayList<>();
		for (SCourse sCourse : list) {
			Course course = new Course();
			course = courseService.queryCourseByCourse(sCourse.getCno());
			listc.add(course);
			listt.add(teacherService.queryTeacherByTno(course.getTno()));
		}
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("list", list);
		model.addAttribute("listc", listc);
		model.addAttribute("listt", listt);
		model.addAttribute("sname", student.getSname());
		model.addAttribute("sno", sno);
		model.addAttribute("selectStatus", selectStatus);
		return "StudentCourse";
	}
	
	/**
	 * 学生已选课页面取消选课功能
	 * @param model
	 * @param sno
	 * @param cno
	 * @return
	 */
	@RequestMapping(value = "/cancel", method = RequestMethod.GET)
	public String cancel(Model model, String sno, String cno) {
		model.addAttribute("Status", 1);
		Student student = new Student();
		student = studentService.queryStudentBySno(sno);
		if(studentService.cancelChooseByCno(sno, cno)==1)
			model.addAttribute("resultStatus", 1);
		else 
			model.addAttribute("resultStatus", 0);
		model.addAttribute("sno", sno);
		return "redirect:course";
	}
	
	/**
	 * 学生选课页面取消选课功能
	 * @param model
	 * @param starts
	 * @param counts
	 * @param sno
	 * @param DimName
	 * @return
	 */
	@RequestMapping(value = "/query", method = RequestMethod.GET)
	public String choice(Model model, String starts, String counts, String sno, String DimName, String Status, String iqStatus){
		model.addAttribute("Status", Status);
		model.addAttribute("iqStatus", iqStatus);
		String sname = studentService.querySnameBySno(sno);
		int start = 0;
        int count = 10;
        try {
            start = Integer.parseInt(starts);
            count = Integer.parseInt(counts);
        } catch (Exception e) {
        }
        Page page = new Page(start, count);
		List<Course> listc=new ArrayList<>();
		listc = courseService.queryCourseByDimName(sno, DimName, start, count);
		if(listc.size()>0) 
			model.addAttribute("iqStatus", 0);
		else 
			model.addAttribute("iqStatus", 2);
		model.addAttribute("sno", sno);
		Student student = new Student();
		student = studentService.queryStudentBySno(sno);
		List<Teacher> listt = new ArrayList<>();
		for (Course course : listc) {
			listt.add(teacherService.queryTeacherByTno(course.getTno()));
		}
		int total = courseService.getDCourseTotal(sno, DimName);
        page.setTotal(total);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("DimName", DimName);
		model.addAttribute("Time", term.getPastterm());
        model.addAttribute("page", page);
        model.addAttribute("listc", listc);
        model.addAttribute("listt", listt);
		model.addAttribute("sname", student.getSname());
		model.addAttribute("sno", sno);
		return "StudentSelect";
	}
	
	/**
	 * 学生选课页面选课功能
	 * @param model
	 * @param sno
	 * @param cno
	 * @return
	 */
	@RequestMapping(value = "/choice", method = RequestMethod.GET)
	public String chice(Model model, String sno, String cno) {
		model.addAttribute("Status", 1);
		Student student = new Student();
		student = studentService.queryStudentBySno(sno);
		if(studentService.insertSCourseByCno(sno, cno)==1)
			model.addAttribute("iqStatus", 1);
		else 
			model.addAttribute("iqStatus", 0);
		model.addAttribute("sno", sno);
		return "redirect:select";
	}
}
