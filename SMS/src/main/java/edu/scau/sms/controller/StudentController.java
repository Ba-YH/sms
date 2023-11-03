package edu.scau.sms.controller;

import cn.hutool.json.JSON;
import cn.hutool.json.JSONUtil;
import edu.scau.sms.entity.Faculty;
import edu.scau.sms.entity.Student;
import edu.scau.sms.entity.Class;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

@Slf4j
@Controller
public class StudentController {
    @Autowired
    private edu.scau.sms.mapper.StudentMapper StudentMapper;

    @Autowired
    private FacultyController facultyController;

    @Autowired
    private ClassController classController;

    public List<Student> getStudentList() {
        return StudentMapper.selectList(null);
    }

    //TODO 学生ID改为String类型
    public Student getStudentById(String id) {
        return StudentMapper.selectById(id);
    }

    @ResponseBody
    @GetMapping("/student/isAvailableStudentNO")
    public HashMap<String, Object> isAvailableStudentNO(Student student) {
        Student room = StudentMapper.selectById(student.getStudentID());
        HashMap<String, Object> map = new HashMap<>();
        if (room == null) {
            map.put("code", "100");
            map.put("id", student.getStudentID());
        } else {
            map.put("code", "500");
            map.put("id", student.getStudentID());
        }
        return map;
    }

    @GetMapping("/student/studentPage")
    public String studentPage(Student student, Model model) {
        System.out.println(student);
        ArrayList<Student> students = new ArrayList<>();
        Student s = StudentMapper.selectById(student.getStudentID());
        //与class关联，获得class表代表的学院专业班级
        s.setFacultyName(facultyController.getFacultyById(s.getFacultyNO()).getFacultyName());
        s.setMajor(classController.getClassById(s.getClassNO()).getMajor());
        s.setClasss(classController.getClassById(s.getClassNO()).getClasss());

        students.add(s);
        model.addAttribute("studentList", students);
        return "student/admin-list-public";
    }

    @GetMapping("/student/studentListPage")
    public String toTeacherList(Model model) {
        List<Student> studentList = StudentMapper.selectList(null);
        for (Student student : studentList) {
            student.setFacultyName(facultyController.getFacultyById(student.getFacultyNO()).getFacultyName());
            student.setMajor(classController.getClassById(student.getClassNO()).getMajor());
            student.setClasss(classController.getClassById(student.getClassNO()).getClasss());
        }
        model.addAttribute("studentList", studentList);
        return "student/admin-list";
    }

    @ResponseBody
    @PostMapping("/student/deleteStudentById")
    public HashMap<String, String> deleteStudentById(Student student) {
        log.info(student.toString());

        int count = StudentMapper.deleteById(student.getStudentID());
        log.info(String.valueOf(count));

        HashMap<String, String> map = new HashMap<>();
        if (count == 1) {
            map.put("code", "100");
            map.put("id", student.getStudentID());
        } else {
            map.put("code", "500");
            map.put("id", student.getStudentID());
        }
        return map;
    }

    @ResponseBody
    @PostMapping("/student/deleteBatchIds")
    public HashMap<String, Object> deleteBatchIds(String ids) {
        System.out.println(ids);

        JSON parse = JSONUtil.parse(ids);
        int count = StudentMapper.deleteBatchIds((Collection<? extends Serializable>) parse);
        log.info(String.valueOf(count));
        HashMap<String, Object> map = new HashMap<>();
        if (count >= 1) {
            map.put("code", "100");
            map.put("ids", ids);
        } else {
            map.put("code", "500");
            map.put("ids", ids);
        }
        return map;
    }

    @GetMapping("/student/studentAdd")
    public String toStudentAdd(Model model) {
        List<Faculty> facultyList = facultyController.toFacultyList();
        model.addAttribute("facultyList", facultyList);
        List<Class> classList = classController.toClassList();
        model.addAttribute("classList", classList);
        return "student/admin-add";
    }

    @ResponseBody
    @PostMapping("/student/studentAdd")
    public HashMap<String, Object> studentAdd(Student student) {
        log.info(student.toString());

        int count = StudentMapper.insert(student);
        log.info(String.valueOf(count));

        HashMap<String, Object> map = new HashMap<>();
        if (count == 1) {
            map.put("code", "100");
            map.put("id", student.getStudentID());
        } else {
            map.put("code", "500");
            map.put("id", student.getStudentID());
        }
        return map;
    }

    //TODO 更改形参id类型
    @GetMapping("/student/studentUpdate/{id}")
    public String toStudentUpdate(@PathVariable("id") String id, Model model) {
        List<Faculty> facultyList = facultyController.toFacultyList();
        model.addAttribute("facultyList", facultyList);
        List<Class> classList = classController.toClassList();
        model.addAttribute("classList", classList);
        Student s = StudentMapper.selectById(id);
        model.addAttribute("student", s);
        return "student/admin-update";
    }

    @ResponseBody
    @PostMapping("/student/studentUpdate")
    public HashMap<String, String> studentUpdate(Student student) {
        log.info(student.toString());

        int count = StudentMapper.updateById(student);
        log.info(String.valueOf(count));

        HashMap<String, String> map = new HashMap<>();
        if (count == 1) {
            map.put("code", "100");
            map.put("id", student.getStudentID());
        } else {
            map.put("code", "500");
            map.put("id", student.getStudentID());
        }
        return map;
    }

}
