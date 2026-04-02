package com.edu.service;

import dev.langchain4j.service.*;
import dev.langchain4j.service.spring.AiService;
import reactor.core.publisher.Flux;

import static dev.langchain4j.service.spring.AiServiceWiringMode.EXPLICIT;

//@AiService(
//        wiringMode = EXPLICIT,
//        chatModel = "qwenChatModel",
////        chatModel = "ollamaChatModel",
//        chatMemoryProvider = "chatMemoryProviderXiaozhi",
//        tools = "appointmentTools", //tools配置
//        contentRetriever = "contentRetrieverXiaozhiPincone" //配置向量存储
//)
//public interface XiaozhiAgent {
//
//    @SystemMessage(fromResource = "zhaozhi-prompt-template.txt")
//    String chat(@MemoryId Long memoryId, @UserMessage String userMessage);
//}
//流式
@AiService(
        wiringMode = EXPLICIT,
        streamingChatModel = "qwenStreamingChatModel",
        chatMemoryProvider = "chatMemoryProviderXiaozhi",
        tools = "appointmentTools",
        contentRetriever = "contentRetrieverXiaozhiPincone")
public interface XiaozhiAgent {

    @SystemMessage(fromResource = "zhaozhi-prompt-template.txt")
    Flux<String> chat(@MemoryId Long memoryId, @UserMessage String userMessage);
}