package com.may.apimanagementsystem.service;


import com.may.apimanagementsystem.po.Project;
import com.may.apimanagementsystem.po.ProjectUserRef;
import com.may.apimanagementsystem.dao.UserProjectMapper;
import com.may.apimanagementsystem.exception.ServerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserProjectServise {

    @Autowired
    private UserProjectMapper userProjectMapper;

    public void addUserProject(ProjectUserRef projectUserRef )
    {
        if (!userProjectMapper.insertUserProjectByUser( projectUserRef)) {
            throw new ServerException();
        }
    }

    public void removeUserProject(int projectId) {
        if (!userProjectMapper.deleteUserProject(projectId)) {
            throw new ServerException();
        }
    }

    public List<Project> selectUserProjectByUserId(int userId) {

        return userProjectMapper.selectUserProject(userId);
    }

}
