package com.zhongxun.sys.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.zhongxun.commons.utils.PageInfo;
import com.zhongxun.sys.model.User;
import com.zhongxun.sys.model.vo.UserVo;

/**
 *
 * User 表数据服务层接口
 *
 */
public interface IUserService extends IService<User> {

    List<User> selectByLoginName(UserVo userVo);

    void insertByVo(UserVo userVo);

    UserVo selectVoById(Long id);

    void updateByVo(UserVo userVo);

    void updatePwdByUserId(Long userId, String md5Hex);

    void selectDataGrid(PageInfo pageInfo);

    void deleteUserById(Long id);
}