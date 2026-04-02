package com.edu;

import dev.langchain4j.community.model.dashscope.QwenChatModel;
import dev.langchain4j.community.model.dashscope.WanxImageModel;
import dev.langchain4j.data.image.Image;
import dev.langchain4j.model.ollama.OllamaChatModel;
import dev.langchain4j.model.openai.OpenAiChatModel;
import dev.langchain4j.model.output.Response;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class LLMTest {

    /**
     * gpt-4o-mini语言模型接入测试
     */
    @Test
    public void testGPTDemo() {
        //初始化模型
        OpenAiChatModel model = OpenAiChatModel.builder()
                //LangChain4j提供的代理服务器，该代理服务器会将演示密钥替换成真实密钥， 再将请求转发给OpenAI API
                //.baseUrl("http://langchain4j.dev/demo/openai/v1") //设置模型api地址（如果apiKey="demo"，则可省略baseUrl的配置）
                .apiKey("demo") //设置模型apiKey
                .modelName("gpt-4o-mini") //设置模型名称
                .build();

        //向模型提问
        String answer = model.chat("你好");
        //输出结果
        System.out.println(answer);
    }

    /**
     * 整合SpringBoot
     */
    @Autowired
    private OpenAiChatModel openAiChatModel;

    @Test
    public void testSpringBoot() {
        //向模型提问
        String answer = openAiChatModel.chat("你好,你是谁？");
        //输出结果
        System.out.println(answer);
    }

    /**
     * ollama接入
     */
    @Autowired
    private OllamaChatModel ollamaChatModel;
    @Test
    public void testOllama() {
        //向模型提问
        String answer = ollamaChatModel.chat("你好，你是谁？现在的北京时间是？");
        //输出结果
        System.out.println(answer);
    }


    /**
     * 通义千问大模型
     */
    @Autowired
    private QwenChatModel qwenChatModel;
    @Test
    public void testDashScopeQwen() {
        //向模型提问
        String answer = qwenChatModel.chat("你好，你是谁？");
        //输出结果
        System.out.println(answer);
    }


    @Test
    public void testDashScopeWanx(){
        WanxImageModel wanxImageModel = WanxImageModel.builder()
                .modelName("wanx2.1-t2i-plus")
                .apiKey(System.getenv("aliQwen-api"))
                .build();
        Response<Image> response = wanxImageModel.generate("帮我生成一张图片:请帮我生成一张图片，帮我生成--直平白无奇的自拍照片，没有明确的构图感，随手一拍。室内打光不均导致的轻微曝光，整体呈现出一种刻意的平庸感,像是从口袋拿出手机随便--张自拍。人物为将五官完全遮住的美女，穿着还原动漫角色(不要重复)的装扮，着重体现出腿部和身材,姿势要自然符合现实自拍逻辑，身材比例不用过于夸张,手机要体现出真实，更加还原真实女性皮肤质感照片略带运动模糊。图片比例3:4。比例1:1。" );
        System.out.println(response.content().url());
    }
}