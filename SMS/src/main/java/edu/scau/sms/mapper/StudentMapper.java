package edu.scau.sms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import edu.scau.sms.entity.Student;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentMapper extends BaseMapper<Student> {
}
