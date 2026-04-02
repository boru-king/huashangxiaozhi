package com.edu;

import com.edu.service.MemoryChatAssistant;
import com.edu.service.SeparateChatAssistant;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class PromptTest {

    @Autowired
    private SeparateChatAssistant separateChatAssistant;

    @Test
    public void testSystemMessage() {
        String answer = separateChatAssistant.chat(3,"今天几号，你是谁？");

        System.out.println(answer);
    }

    @Autowired
    private MemoryChatAssistant memoryChatAssistant;
    @Test
    public void testUserMessage() {
        String answer = memoryChatAssistant.chat("我是曾博儒");
        System.out.println(answer);
    }


    @Test
    public void testV() {
        String answer1 = separateChatAssistant.chat(8, "我是曾博儒，广州华商学院毕业生");
        System.out.println(answer1);
        String answer2 = separateChatAssistant.chat(8, "我是谁");
        System.out.println(answer2);
    }


    @Test
    public void testUserInfo() {
        String answer = separateChatAssistant.chat3(6, "我是谁，我多大了", "翠花", 18);
        System.out.println(answer);
    }
}