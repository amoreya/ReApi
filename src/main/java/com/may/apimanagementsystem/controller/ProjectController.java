package com.may.apimanagementsystem.controller;

import com.may.apimanagementsystem.constant.ReturnCode;
import com.may.apimanagementsystem.dto.ResponseEntity;
import com.may.apimanagementsystem.po.Project;
import com.may.apimanagementsystem.po.ProjectUserRef;
import com.may.apimanagementsystem.po.TeamProject;
import com.may.apimanagementsystem.service.ProjectService;
import com.may.apimanagementsystem.service.TeamProjectServise;
import com.may.apimanagementsystem.service.UserProjectServise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static com.may.apimanagementsystem.constant.ExceptionMessage.SUCCESS;

@RestController
@RequestMapping("project")
@CrossOrigin
public class ProjectController {

    @Autowired
    private ProjectService projectService;
    @Autowired
    private TeamProjectServise teamProjectServise;
    @Autowired
    private UserProjectServise userProjectServise;


    @PostMapping
    public ResponseEntity<Project> addProject(Project project){
        projectService.addProject(project);
        return new ResponseEntity<>(ReturnCode.SUCCESS_CODE,SUCCESS,project);
    }

    @DeleteMapping("{projectId}")
    public ResponseEntity<Project> deleteProject(@PathVariable int projectId){
        projectService.removeProject(projectId);
        return new ResponseEntity<>(ReturnCode.SUCCESS_CODE,SUCCESS,null);
    }

    @PutMapping("{projectId}")
    public ResponseEntity<Project> updateProject(@PathVariable int projectId, Project project){
        projectService.updateProject(project);
        return new ResponseEntity<>(ReturnCode.SUCCESS_CODE,SUCCESS,null);
    }

    @GetMapping("{projectId}")
    public ResponseEntity<Project> findProjectByProjectId(@PathVariable int projectId,Project project){
        projectService.getProjectByProjectId(projectId);
        return new ResponseEntity<>(ReturnCode.SUCCESS_CODE,SUCCESS,project);
    }


    /*团队项目*/
    @DeleteMapping("team/{projectId}")
    public ResponseEntity<TeamProject> deleteTeamproject(@PathVariable int projectId) {
        teamProjectServise.removeTeamProject(projectId);
        return new ResponseEntity<>(200, SUCCESS, null);
    }
    @GetMapping("team")
    public ResponseEntity<List<Project>> selectTeamproject(int teamId) {
        List<Project> projects = teamProjectServise.selectTeamProjectByTeamId(teamId);
        return new ResponseEntity<>(200, SUCCESS, projects);
    }
    @PostMapping("team")
    public ResponseEntity<TeamProject> createTeamProject(TeamProject teamProject) {
        teamProjectServise.addTeamProject(teamProject);
        return new ResponseEntity<>(200, SUCCESS, teamProject);
    }

    /*个人项目*/
    @DeleteMapping("user/{projectId}")
    public ResponseEntity<ProjectUserRef> deleteUserproject(@PathVariable int projectId){
        userProjectServise.removeUserProject(projectId);
        return new ResponseEntity<>(200, SUCCESS, null);
    }
    @GetMapping("user")
    public ResponseEntity<List<Project>> selectUserproject(int userId){
        List<Project> projects =userProjectServise.selectUserProjectByUserId(userId);
        return new ResponseEntity<>(200, SUCCESS, projects);
    }

    @PostMapping("user")
    public ResponseEntity<ProjectUserRef> createUserProject(ProjectUserRef projectUserRef) {
       userProjectServise.addUserProject(projectUserRef);
        return new ResponseEntity<>(200, SUCCESS, projectUserRef);
    }



}
