package com.may.apimanagementsystem.service;

import com.github.pagehelper.PageHelper;
import com.may.apimanagementsystem.constant.ExceptionMessage;
import com.may.apimanagementsystem.dao.ProjectMapper;
import com.may.apimanagementsystem.dao.UserProjectMapper;
import com.may.apimanagementsystem.exception.ParameterException;
import com.may.apimanagementsystem.exception.ResourceNotFoundException;
import com.may.apimanagementsystem.exception.ServerException;
import com.may.apimanagementsystem.po.Project;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Objects;

import static com.may.apimanagementsystem.constant.ExceptionMessage.*;

@Service
public class ProjectService {
    @Resource
    private ProjectMapper projectMapper;
    @Resource
    private UserProjectMapper userProjectMapper;

    public void addProject(Project project) {
        checkAddProjectParameter(project);
        if (!projectMapper.insertProject(project)) {
            throw new ServerException();
        }
    }

    public void updateProject(Project project) {

        checkUpdateProjectParameter(project);
        if (!projectMapper.updateProject(project)) {
            throw new ServerException();
        }

    }

    public void removeProject(int projectId) {

        if (!projectMapper.deleteProject(projectId)) {
            throw new ServerException();
        }

    }

    public Project getProjectByProjectId(int projectId) {
        Project project = projectMapper.findProjectByProjectId(projectId);
        if (project == null)
            throw new ResourceNotFoundException(NOT_FIND_OBJECT);
        return project;
    }

    public Project getProjectByProjectName(String projectName) {
        Project project = projectMapper.findProjectByProjectName(projectName);
        Objects.requireNonNull(project);
        return project;
    }

    private void checkAddProjectParameter(Project project) {
        if (project.getProjectName() == null)
            throw new ParameterException(PARAMETER_CANNOT_NULL);
        checkProjectName(project.getProjectName());
        checkProjectDescription(project.getDescription());
    }

    private void checkProjectName(String projectName) {
        if (projectName.length() > 20)
            throw new ParameterException(PROJECT_NAME_IS_TOO_LONG);
        Project project = projectMapper.findProjectByProjectName(projectName);
        if (project != null) {
            throw new ParameterException(ExceptionMessage.DOUBLE_TEAM_NAME);
        }

    }

    private void checkProjectDescription(String projectDescription) {
        if (projectDescription.length() > 255)
            throw new ParameterException(PROJECT_DESCRIPTION_IS_TOO_LONG);
    }

    private void checkUpdateProjectParameter(Project project) {
        if (project.getProjectName() != null) {
            checkProjectName(project.getProjectName());
            checkProjectDescription(project.getDescription());
        } else {
            throw new ParameterException(PARAMETER_CANNOT_NULL);
        }
    }


}
