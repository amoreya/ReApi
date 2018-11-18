package com.may.apimanagementsystem.controller;

import com.may.apimanagementsystem.constant.ReturnCode;
import com.may.apimanagementsystem.dto.ResponseEntity;
import com.may.apimanagementsystem.po.Interfaces;
import com.may.apimanagementsystem.po.Project;
import com.may.apimanagementsystem.service.InterfaceService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static com.may.apimanagementsystem.constant.ExceptionMessage.SUCCESS;

@RestController
@RequestMapping("interface")
@CrossOrigin
public class InterfaceController {

    @Autowired
    private InterfaceService interfaceService;

    @PostMapping
    public ResponseEntity<Interfaces> addInterface(Interfaces interfaces) {
        interfaceService.addInterface(interfaces);
        return new ResponseEntity<>(ReturnCode.SUCCESS_CODE, SUCCESS, interfaces);
    }


  @GetMapping("url/{url}")
  public ResponseEntity<String> everyInterface(@PathVariable("url") String url){
       Interfaces interfaces=interfaceService.getInterface(url);
       String json="{"+" \"message\"："+SUCCESS+",\n"+"\"status\"："+ReturnCode.SUCCESS_CODE+",\n"+"\"data\"："+"["+"\n"+"{"+"\n"+interfaceService.replaceBlank(interfaces.getJson())+"\n"+"}"+"\n"+"]"+"\n}";
      return new ResponseEntity<>(ReturnCode.SUCCESS_CODE,SUCCESS ,json);
  }



    @GetMapping("projectInterface")
    public ResponseEntity<List<Interfaces>> showInterface(int projectId)  {
        List<Interfaces> interfaces = null;
        interfaces = interfaceService.getInterfaces(projectId);
        return new ResponseEntity<>(ReturnCode.SUCCESS_CODE, SUCCESS, interfaces);
    }

    @DeleteMapping("{interfaceId}")
    public ResponseEntity<Interfaces> deleteInterface(@PathVariable int interfaceId) {
        interfaceService.removeInterface(interfaceId);
        return new ResponseEntity<>(ReturnCode.SUCCESS_CODE, SUCCESS, null);
    }

    @PutMapping("{interfaceId}")
    public ResponseEntity<Interfaces> updateInterface(@PathVariable int interfaceId,Interfaces interfaces) {
        System.out.println(interfaces.getInterfaceName());
        System.out.println(interfaces.getJson());
        System.out.println(interfaces.getMethod());
        System.out.println(interfaces.getUrl());
        interfaceService.updateInterface(interfaces);
        return new ResponseEntity<>(ReturnCode.SUCCESS_CODE, SUCCESS, null);
    }

    @GetMapping("{interfaceId}")
    public ResponseEntity<Interfaces> getInterfaceByInterfaceId(@PathVariable int interfaceId) {
        Interfaces interfaces= interfaceService.getInterfaceByInterfaceId(interfaceId);
        return new ResponseEntity<>(ReturnCode.SUCCESS_CODE, SUCCESS, interfaces);
    }

    @RequestMapping("{projectId}")
    public ResponseEntity<Interfaces> downloadInterface(@PathVariable int projectId) {
        interfaceService.getInterfaceByInterfaceId(projectId);
        return new ResponseEntity<>(ReturnCode.SUCCESS_CODE, SUCCESS, null);
    }


}
