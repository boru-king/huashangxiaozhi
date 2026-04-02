package com.edu;

import com.edu.service.SeparateChatAssistant;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class ToolsTest {

    @Autowired
    private SeparateChatAssistant separateChatAssistant;

    @Test
    public void testCalculatorTools() {
        String answer = separateChatAssistant.chat(9, "50+50等于几，81的平方根是多少，你是谁？");
        //答案：3，689706.4865
        System.out.println(answer);
    }
}