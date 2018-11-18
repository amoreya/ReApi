package com.may.apimanagementsystem.service;


import com.may.apimanagementsystem.dao.MessageMapper;
import com.may.apimanagementsystem.dao.TeamMapper;
import com.may.apimanagementsystem.dao.UserMapper;
import com.may.apimanagementsystem.exception.ServerException;
import com.may.apimanagementsystem.po.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

@Service
public class MessageServise {

    @Autowired
    private TeamMapper teamMapper;
    @Autowired
    private MessageMapper messageMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private UserService userService;

    public void inviteAddMessage(Message message) {

        message.setSendUserId(teamMapper.findTeamByTeamId(message.getTeamId()).getCreateuserId());
        message.setUserName(userService.getUserByUserId( message.getSendUserId()).getUserName());
        System.out.println(message.getUserName());
        if (!messageMapper.insertMessage(message)) {
            throw new ServerException();
        }
        else{
            System.out.println("cuole");
        }
    }

    public void addMessage(Message message) {
        message.setUserId(teamMapper.findTeamByTeamId(message.getTeamId()).getCreateuserId());
        if (!messageMapper.insertMessage(message)) {
            throw new ServerException();
        }
    }

    public void removeMessage(int messageId) {
        if (!messageMapper.deleteMessage(messageId)) {
            throw new ServerException();
        }
    }

    public Message rdMyMessage(int messageId) {
        Message message = messageMapper.readMyMessage(messageId);
       // Objects.requireNonNull(message);
        return message;
    }


    public List<Message> selectMyMessages(int userId) {

        List<Message> messages = messageMapper.selectMessages(userId);
        return messages;
    }
}
