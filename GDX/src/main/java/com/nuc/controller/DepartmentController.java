package com.nuc.controller;

import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.logging.log4j.core.appender.rolling.SizeBasedTriggeringPolicy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nuc.model.Course;
import com.nuc.model.Department;
import com.nuc.model.SCourse;
import com.nuc.model.Student;
import com.nuc.model.Teacher;
import com.nuc.model.Term;
import com.nuc.service.ICourseService;
import com.nuc.service.IDepartmentService;
import com.nuc.service.IStudentService;
import com.nuc.service.ITeacherService;
import com.nuc.service.ITermService;
import com.nuc.service.StudentServiceImpl;
import com.nuc.util.Page;
import com.sun.org.apache.xpath.internal.operations.Mod;

/** 
* @author 作者:ly 
* @version 创建时间：2019年12月31日 下午4:15:23 
* 
*/
@Controller
@RequestMapping("Department")
public class DepartmentController {
	@Resource
	private IDepartmentService departmentService;
	@Resource
	private ITermService termService;
	@Resource
	private IStudentService studentService;
	@Resource
	private ICourseService courseService;
	@Resource
	private ITeacherService teacherService;
	
	@RequestMapping(value = "/Main", method = RequestMethod.GET)
	  public String index(Model model, String Ano){
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		Department department = new Department();
		department = departmentService.queryDepartmentByAno(Ano);
		model.addAttribute("department", department);
		model.addAttribute("Status", 0);
		model.addAttribute("Ano", Ano);
		model.addAttribute("Aname", departmentService.queryDepartmentByAno(Ano).getAname());
		model.addAttribute("selectStatus", courseService.getselectStatus());
		model.addAttribute("entryStatus", courseService.getentryStatus());
	    return "DepartmentMain";
	}
	
	/**
	 * 教务处修改密码界面
	 * @param model
	 * @param Ano
	 * @return
	 */
	@RequestMapping(value = "/updateself", method = RequestMethod.GET)
	public String updateself(Model model, String Ano) {
		model.addAttribute("Status", 0);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		Department department = new Department();
		department = departmentService.queryDepartmentByAno(Ano);
		model.addAttribute("department", department);
		model.addAttribute("Ano", Ano);
		return "DepartmentUpdate";
	}
	
	/**
	 * 教务处修改密码
	 * @param model
	 * @param tno
	 * @return
	 */
	@RequestMapping(value = "/updatepass", method = RequestMethod.GET)
	public String updatepass(Model model, String Ano, String oldpassword, String password) {
		model.addAttribute("Status", 1);
		Department department = new Department();
		department = departmentService.queryDepartmentByAno(Ano);
		if(departmentService.queryApasswordByAno(Ano).equals(oldpassword)) 
		{
			model.addAttribute("oldpassword", 1);
			if(departmentService.updatePasswordByAno(Ano, password)==0) {
				model.addAttribute("updateStatus", 0);
			}
			else
				model.addAttribute("updateStatus", 1);
		}
		else
		model.addAttribute("oldpassword", 0);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("department", department);
		model.addAttribute("Ano", Ano);
		return "DepartmentUpdate";
	}
	
	/**
	 * 查看学生信息界面
	 * @param model
	 * @param sno
	 * @param starts
	 * @param counts
	 * @param Status
	 * @param iqStatus
	 * @return
	 */
	@RequestMapping(value = "/student", method = RequestMethod.GET)
	public String student(Model model, String Sno, String Sclass, String SDimName, String Ssex, String Smajor, String Sdept, String starts, String counts, String Status, String iqStatus, String Ano) {
		model.addAttribute("Status", Status);
		model.addAttribute("iqStatus", iqStatus);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		int start = 0;
        int count = 10;
        try {
            start = Integer.parseInt(starts);
            count = Integer.parseInt(counts);
        } catch (Exception e) {
        }
        Page page = new Page(start, count);
        page.setTotal(studentService.getStudentTotal(Sno, Sclass, SDimName, Ssex, Smajor, Sdept));
        List<Student> lists = new ArrayList<>();
        lists = studentService.queryStudentListByPage(Sno, Sclass, SDimName, Ssex, Smajor, Sdept, start, count);
        for (Student student : lists) {
			student.setSdept(studentService.querySdepBySmajor(student.getSmajor()));
		}
        Department department = new Department();
		department = departmentService.queryDepartmentByAno(Ano);
        model.addAttribute("page", page);
        model.addAttribute("lists", lists);
        model.addAttribute("department", department);
		model.addAttribute("Ano", Ano);
		model.addAttribute("Sclass", Sclass);
        model.addAttribute("Ssex", Ssex);
        model.addAttribute("SDimName", SDimName);
		model.addAttribute("Smajor", Smajor);
		model.addAttribute("Sdept", Sdept);
		model.addAttribute("Sno", Sno);
		return "DepartmentStudent";
	}
	
	/**
	 * 增加学生
	 * @param model
	 * @param Ano
	 * @param Sno
	 * @param Sclass
	 * @param Sname
	 * @param Ssex
	 * @param Smajor
	 * @param Sdept
	 * @param Stel
	 * @param Semail
	 * @param Saddress
	 * @return
	 */
	@RequestMapping(value = "/insertstudent", method = RequestMethod.GET)
	public String insertStudent(Model model, String Ano, String Sno, String Sclass, String Sname, String Ssex, String Smajor, String Sdept, String Stel, String Semail, String Saddress) {
		Student student = new Student();
		student.setSno(Sno);
		student.setSaddress(Saddress);
		student.setSclass(Sclass);
		student.setSdept(Sdept);
		student.setSemail(Semail);
		student.setSmajor(Smajor);
		student.setSname(Sname);
		student.setSsex(Ssex);
		student.setStel(Stel);
		System.out.println(student);
		model.addAttribute("Status", 1);
		if(studentService.insertStudentByStudent(student)==1) {
			model.addAttribute("iqStatus", 1);
			model.addAttribute("Sno", student.getSno());
			System.out.println("yes");
		}
		else {
			model.addAttribute("iqStatus", 4);
			System.out.println("no");
		}
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("Ano", Ano);
		return "redirect:student";
	}
	
	/**
	 * 修改学生信息
	 * @param model
	 * @param listgrade
	 * @param leng
	 * @return
	 */
	@RequestMapping(value = "/updatestudent")
	public String updatestudent(Model model, String[] liststudent, int leng, String Ano) {
		model.addAttribute("Status", 1);
		if(studentService.updatestudent(liststudent[0], liststudent[1], liststudent[2], liststudent[3], liststudent[4])==1) {
			model.addAttribute("iqStatus", 2);
		}
		else
			model.addAttribute("iqStatus", 3);
		model.addAttribute("Sno", liststudent[0]);
		model.addAttribute("Ano", Ano);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		return "redirect:student";
	}
	
	/**
	 * 重置学生密码
	 * @param model
	 * @param Sno
	 * @param Ano
	 * @return
	 */
	@RequestMapping(value = "/resetstudent")
	public String resetstudent(Model model, String Sno, String Ano) {
		studentService.resetSpassBySno(Sno);
		model.addAttribute("Status", 1);
		model.addAttribute("Ano", Ano);
		model.addAttribute("iqStatus", 2);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		return "redirect:student";
	}
	
	/**
	 * 删除学生
	 * @param model
	 * @param Sno
	 * @param Ano
	 * @return
	 */
	@RequestMapping(value = "/deletestudent")
	public String deletestudent(Model model, String Sno, String Ano) {
		courseService.deletePSCBySno(Sno);
		courseService.deleteSCBySno(Sno);
		studentService.deleteStudentBySno(Sno);
		model.addAttribute("Status", 1);
		model.addAttribute("Ano", Ano);
		model.addAttribute("iqStatus", 3);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		return "redirect:student";
	}
	
	/**
	 * 进入学生成绩界面
	 * @param model
	 * @param Ano
	 * @param Sno
	 * @return
	 */
	@RequestMapping(value = "/studentgrade", method = RequestMethod.GET)
	public String studentgrade(Model model, String Ano, String Sno) {
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("Ano", Ano);
		model.addAttribute("Sno", Sno);
		return "DepartmentStudentGrade";
	}
	
	/**
	 * 查询学生成绩
	 * @param model
	 * @param Ano
	 * @param Sno
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/querystudentgrade", method = RequestMethod.GET)
	public String querystudentgrade(Model model, String Ano, String Sno, String id) {
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		List<SCourse> list = new ArrayList<>();
		String Time = term.getPastterm().get(Integer.valueOf(id));
		if(id.equals("0")) {
			list = studentService.queryResultBySno(Sno);
		}
		else {
			list = studentService.queryPResultBySno(Sno, Time);
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
				course = courseService.queryPCourseByCno(sCourse.getCno(), Time);
				listc.add(course);
				listt.add(teacherService.queryTeacherByTno(course.getTno()));
			}
		}
		model.addAttribute("QTime", Time);
		model.addAttribute("id", id);
		model.addAttribute("listc", listc);
		model.addAttribute("listt", listt);
		model.addAttribute("Ano", Ano);
		model.addAttribute("Sno", Sno);
		return "DepartmentStudentGrade";
	}
	
	/**
	 * 查看教师信息界面
	 * @param model
	 * @param Sno
	 * @param Sclass
	 * @param SDimName
	 * @param Ssex
	 * @param Smajor
	 * @param Sdept
	 * @param starts
	 * @param counts
	 * @param Status
	 * @param iqStatus
	 * @param Ano
	 * @return
	 */
	@RequestMapping(value = "/teacher", method = RequestMethod.GET)
	public String teacher(Model model, String Tno, String TDimName, String Tsex, String Ttitle, String Tdept, String starts, String counts, String Status, String iqStatus, String Ano) {
		model.addAttribute("Status", Status);
		model.addAttribute("iqStatus", iqStatus);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		int start = 0;
        int count = 10;
        try {
            start = Integer.parseInt(starts);
            count = Integer.parseInt(counts);
        } catch (Exception e) {
        }
        Page page = new Page(start, count);
        page.setTotal(teacherService.getTeacherTotal(Tno, TDimName, Tsex, Ttitle, Tdept));
        List<Teacher> listt = new ArrayList<>();
        listt = teacherService.queryTeacherListByPage(Tno, TDimName, Tsex, Ttitle, Tdept, start, count);
        Department department = new Department();
		department = departmentService.queryDepartmentByAno(Ano);
        model.addAttribute("page", page);
        model.addAttribute("listt", listt);
        model.addAttribute("department", department);
		model.addAttribute("Ano", Ano);
		model.addAttribute("Ttitle", Ttitle);
        model.addAttribute("Tsex", Tsex);
        model.addAttribute("TDimName", TDimName);
		model.addAttribute("Tdept", Tdept);
		model.addAttribute("Tno", Tno);
		return "DepartmentTeacher";
	}
	
	/**
	 * 增加教师
	 * @param model
	 * @param Ano
	 * @param Tno
	 * @param Tname
	 * @param Tsex
	 * @param Tdept
	 * @param Ttitle
	 * @param Ttel
	 * @param Taddress
	 * @param Temail
	 * @return
	 */
	@RequestMapping(value = "/insertteacher", method = RequestMethod.GET)
	public String insertTeacher(Model model, String Ano, String Tno, String Tname, String Tsex, String Tdept, String Ttitle, String Ttel, String Taddress, String Temail) {
		Teacher teacher = new Teacher();
		teacher.setTno(Tno);
		teacher.setTaddress(Taddress);
		teacher.setTdept(Tdept);
		teacher.setTemail(Temail);
		teacher.setTname(Tname);
		teacher.setTsex(Tsex);
		teacher.setTtel(Ttel);
		teacher.setTtitle(Ttitle);
		System.out.println(teacher);
		model.addAttribute("Status", 1);
		if(teacherService.insertTeacherByTeacher(teacher)==1) {
			model.addAttribute("iqStatus", 1);
			model.addAttribute("Tno", teacher.getTno());
			System.out.println("yes");
		}
		else {
			model.addAttribute("iqStatus", 4);
			System.out.println("no");
		}
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("Ano", Ano);
		return "redirect:teacher";
	}
	
	/**
	 * 修改教师信息
	 * @param model
	 * @param listteacher
	 * @param leng
	 * @param Ano
	 * @return
	 */
	@RequestMapping(value = "/updateteacher")
	public String updateteacher(Model model, String[] listteacher, int leng, String Ano) {
		model.addAttribute("Status", 1);
		if(teacherService.updateteacher(listteacher[0], listteacher[1], listteacher[2], listteacher[3], listteacher[4])==1) {
			model.addAttribute("iqStatus", 2);
		}
		else
			model.addAttribute("iqStatus", 3);
		model.addAttribute("Sno", listteacher[0]);
		model.addAttribute("Ano", Ano);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		return "redirect:teacher";
	}
	
	/**
	 * 重置教师密码
	 * @param model
	 * @param Tno
	 * @param Ano
	 * @return
	 */
	@RequestMapping(value = "/resetteacher")
	public String resetteacher(Model model, String Tno, String Ano) {
		teacherService.resetTpassByTno(Tno);
		model.addAttribute("Status", 1);
		model.addAttribute("Ano", Ano);
		model.addAttribute("iqStatus", 2);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		return "redirect:teacher";
	}
	
	/**
	 * 删除教师
	 * @param model
	 * @param Tno
	 * @param Ano
	 * @return
	 */
	@RequestMapping(value = "/deleteteacher")
	public String deleteteacher(Model model, String Tno, String Ano) {
		courseService.deleteSCByTno(Tno);
		courseService.deletePSCByTno(Tno);
		courseService.deletePCourseByTno(Tno);
		courseService.deleteCourseByTno(Tno);
		teacherService.deleteTeacherByTno(Tno);
		model.addAttribute("Status", 1);
		model.addAttribute("Ano", Ano);
		model.addAttribute("iqStatus", 3);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		return "redirect:teacher";
	}
	
	/**
	 * 进入课程界面
	 * @param model
	 * @param Ano
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/course")
	public String course(Model model, String Ano, String id, String Cno, String CDimName, String TDimName, String Status, String iqStatus, String starts, String counts) {
		model.addAttribute("Status", Status);
		model.addAttribute("iqStatus", iqStatus);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		int start = 0;
        int count = 10;
        try {
            start = Integer.parseInt(starts);
            count = Integer.parseInt(counts);
        } catch (Exception e) {
        }
        List<Course> listc = new ArrayList<>();
        List<String> listt = new ArrayList<>();
        Page page = new Page(start, count);
        if(id.equals("0")) {
        	 page.setTotal(courseService.getCourseTotal(Cno, CDimName, TDimName, term.getPastterm().get(Integer.valueOf(id))));
        	 listc = courseService.queryCourseListByPage(Cno, CDimName, TDimName, term.getPastterm().get(Integer.valueOf(id)), start, count);
        }
        else {
        	 page.setTotal(courseService.getPACourseTotal(Cno, CDimName, TDimName, term.getPastterm().get(Integer.valueOf(id))));
       	 	 listc = courseService.queryPACourseListByPage(Cno, CDimName, TDimName, term.getPastterm().get(Integer.valueOf(id)), start, count);
		}
        for (Course course : listc) {
			listt.add(teacherService.queryTeacherByTno(course.getTno()).getTname());
		}
        Department department = new Department();
		department = departmentService.queryDepartmentByAno(Ano);
        model.addAttribute("page", page);
        model.addAttribute("listt", listt);
        model.addAttribute("listc", listc);
        model.addAttribute("department", department);
		model.addAttribute("Ano", Ano);
		model.addAttribute("Cno", Cno);
        model.addAttribute("CDimName", CDimName);
        model.addAttribute("TDimName", TDimName);
        model.addAttribute("id", id);
		return "DepartmentCourse";
	}
	
	/**
	 * 增加课程
	 * @param model
	 * @param Ano
	 * @param Cno
	 * @param Cname
	 * @param Ccredit
	 * @param Cperiod
	 * @param Tno
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/insertcourse", method = RequestMethod.GET)
	public String insertcourse(Model model, String Ano, String Cno, String Cname, String Ccredit, String Cperiod, String Tno, String id) {
		Course course = new Course();
		course.setCcredit(Ccredit);
		course.setCname(Cname);
		course.setCno(Cno);
		course.setCperiod(Cperiod);
		course.setTno(Tno);
		System.out.println(course);
		model.addAttribute("Status", 1);
		if(courseService.insertCourseByCourse(course)==1) {
			model.addAttribute("iqStatus", 1);
			model.addAttribute("Tno", course.getCno());
			System.out.println("yes");
		}
		else {
			model.addAttribute("iqStatus", 4);
			System.out.println("no");
		}
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("Ano", Ano);
		model.addAttribute("id", id);
		return "redirect:course";
	}
	
	/**
	 * 删除课程
	 * @param model
	 * @param Cno
	 * @param Ano
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/deletecourse")
	public String deletecourse(Model model, String Cno, String Ano, String id) {
		courseService.deleteCourseByCno(Cno);
		model.addAttribute("id", id);
		model.addAttribute("Status", 1);
		model.addAttribute("Ano", Ano);
		model.addAttribute("iqStatus", 3);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Time", term.getPastterm());
		return "redirect:course";
	}
	
	/**
	 * 修改课程信息
	 * @param model
	 * @param listcourse
	 * @param leng
	 * @param Ano
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/updatecourse")
	public String updatecourse(Model model, String[] listcourse, int leng, String Ano, String id) {
		model.addAttribute("Status", 1);
		if(courseService.updatecourse(listcourse[0], listcourse[2], listcourse[3], listcourse[1])==1) {
			model.addAttribute("iqStatus", 2);
		}
		else
			model.addAttribute("iqStatus", 3);
		model.addAttribute("Cno", listcourse[0]);
		model.addAttribute("Ano", Ano);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("id", id);
		model.addAttribute("Time", term.getPastterm());
		return "redirect:course";
	}
	
	/**
	 * 进入课程成绩界面
	 * @param model
	 * @param cno
	 * @param tno
	 * @return
	 */
	@RequestMapping(value = "/grade", method = RequestMethod.GET)
	public String grade(Model model, String Cno, String Tno, String id, String Ano) {
		Teacher teacher = new Teacher();
		teacher = teacherService.queryTeacherByTno(Tno);
		Term term = new Term();
		term = termService.getTerm();
		term.createPastterm();
		String Time = term.getPastterm().get(Integer.valueOf(id));
		List<Student> lists = new ArrayList<>();
		List<String> listg = new ArrayList<>();
		if(id.equals("0")) {
			lists = courseService.queryStudentByCno(Cno);
			model.addAttribute("cname", courseService.queryCourseByCourse(Cno).getCname());
		}
		else {
			lists = courseService.queryPStudentByCno(Cno, Time);
			model.addAttribute("cname", courseService.queryPCourseByCno(Cno, Time));
		}
		for (Student student : lists) {
			student.setSdept(studentService.querySdepBySmajor(student.getSmajor()));
			if(id.equals("0")) {
				listg.add(studentService.queryGradeByCno(student.getSno(), Cno));
			}
			else {
				listg.add(studentService.queryPGradeByCno(student.getSno(), Cno, Time));
			}
		}
		model.addAttribute("cno", Cno);
		model.addAttribute("listg", listg);
		model.addAttribute("Ano", Ano);
		model.addAttribute("total", lists.size());
		model.addAttribute("lists", lists);
		model.addAttribute("Status", 0);
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("tname", teacher.getTname());
		model.addAttribute("tno", Tno);
		model.addAttribute("id", id);
		return "DepartmentCourseGrade";
	}
	
	@RequestMapping(value = "/next", method = RequestMethod.GET)
	public String next(Model model, String Ano) {
		Term term = new Term();
		term = termService.getTerm();
		String Time = term.getNextterm();
		courseService.next0(Time);
		Time = term.getNowterm();
		courseService.next1(Time);
		courseService.next2(Time);
		courseService.next5();
		courseService.next4();
		courseService.next3();
		courseService.next6();
		term = termService.getTerm();
		term.createPastterm();
		model.addAttribute("Ano", Ano);
		model.addAttribute("Time", term.getPastterm());
		model.addAttribute("Status", 1);
		model.addAttribute("nextStatus", 1);
		return "DepartmentMain";
	}
	
	@RequestMapping(value = "/controllentry")
	public String controllentry(Model model, String entryStatus) {
		courseService.setentryStatus(entryStatus);
		return "DepartmentMain";
	}
	
	@RequestMapping(value = "/controllselect")
	public String controllselect(Model model, String selectStatus) {
		courseService.setselectStatus(selectStatus);
		return "DepartmentMain";
	}
}
