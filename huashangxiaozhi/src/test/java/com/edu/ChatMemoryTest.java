package com.edu;

import com.edu.service.Assistant;
import com.edu.service.MemoryChatAssistant;
import com.edu.service.SeparateChatAssistant;
import dev.langchain4j.community.model.dashscope.QwenChatModel;
import dev.langchain4j.memory.chat.MessageWindowChatMemory;
import dev.langchain4j.service.AiServices;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import dev.langchain4j.data.message.AiMessage;
import dev.langchain4j.data.message.UserMessage;
import dev.langchain4j.model.chat.response.ChatResponse;


import java.util.Arrays;


@SpringBootTest
public class ChatMemoryTest {

    @Autowired
    private Assistant assistant;

    @Test
    public void testChatMemory() {

        String answer1 = assistant.chat("我是曾博儒");
        System.out.println(answer1);

        String answer2 = assistant.chat("我是谁");
        System.out.println(answer2);
    }


    @Autowired
    private QwenChatModel qwenChatModel;

    @Test
    public void testChatMemory2() {
        UserMessage userMessage1 = UserMessage.userMessage("我是曾博儒");
        ChatResponse chatResponse1 = qwenChatModel.chat(userMessage1);
        AiMessage aiMessage1 = chatResponse1.aiMessage();
        System.out.println(aiMessage1.text());

        UserMessage userMessage2 = UserMessage.userMessage("我是谁");
        ChatResponse chatResponse2= qwenChatModel.chat(Arrays.asList(userMessage1,aiMessage1,userMessage2));
        AiMessage aiMessage2 = chatResponse2.aiMessage();
        System.out.println(aiMessage2.text());
    }


    @Test
    public void testChatMemory3() {

        //创建chatMemory
        MessageWindowChatMemory chatMemory = MessageWindowChatMemory.withMaxMessages(10);

        //创建AIService
        Assistant assistant = AiServices
                .builder(Assistant.class)
                .chatLanguageModel(qwenChatModel)
                .chatMemory(chatMemory)
                .build();
        //调用service的接口
        String answer1 = assistant.chat("我是曾博儒，一名广州华商学院的计算机科学与技术专业的大四毕业生。");
        System.out.println(answer1);
        String answer2 = assistant.chat("我是谁");
        System.out.println(answer2);
    }



    @Autowired
    private MemoryChatAssistant memoryChatAssistant;

    @Test
    public void testChatMemory4() {
        String answer1 = memoryChatAssistant.chat("我是曾博儒");
        System.out.println(answer1);
        String answer2 = memoryChatAssistant.chat("我是谁");
        System.out.println(answer2);
    }


    @Autowired
    private SeparateChatAssistant separateChatAssistant;

    @Test
    public void testChatMemory5() {
        String answer1 = separateChatAssistant.chat(1,"我是曾博儒，一名广州华商学院的计算机科学与技术专业的大四毕业生。");
        System.out.println(answer1);
        String answer2 = separateChatAssistant.chat(1,"我是谁");
        System.out.println(answer2);
        String answer3 = separateChatAssistant.chat(2,"我是谁");
        System.out.println(answer3);
        String answer4 = separateChatAssistant.chat(1,"我是那个学校毕业的？");
        System.out.println(answer4);
    }
}