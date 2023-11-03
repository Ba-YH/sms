package edu.scau.sms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import edu.scau.sms.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper extends BaseMapper<User> {
}
