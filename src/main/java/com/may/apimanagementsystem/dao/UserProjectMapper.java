package com.may.apimanagementsystem.dao;


import com.may.apimanagementsystem.po.Project;
import com.may.apimanagementsystem.po.ProjectUserRef;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserProjectMapper {


    boolean insertUserProjectByUser(ProjectUserRef projectUserRef);

    boolean deleteUserProject(int projectId);

    List<Project> selectUserProject(@Param("userId") int userId);

}
