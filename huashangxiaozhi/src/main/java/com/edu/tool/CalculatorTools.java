package com.edu.tool;

import dev.langchain4j.agent.tool.P;
import dev.langchain4j.agent.tool.Tool;
import dev.langchain4j.agent.tool.ToolMemoryId;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.math.RoundingMode;

@Component("calculatorTools")
public class CalculatorTools {
    
    @Tool
    double sum(double a, double b) {
        System.out.println("调用加法运算");
        return a + b;
    }

    @Tool
    double squareRoot(double x) {
         System.out.println("调用平方根运算");
        return Math.sqrt(x);
    }

    @Tool(name = "加法", value = "返回两个参数相加之和")
    double sum(
            @ToolMemoryId int memoryId,
            @P(value="加数1", required = true) double a,
            @P(value="加数2", required = true) double b) {
        System.out.println("调用加法运算 " + memoryId);
        return a + b;
    }

    @Tool(name = "平方根", value = "返回给定参数的平方根")
    double squareRoot(
            @ToolMemoryId int memoryId, double x) {

        System.out.println("调用平方根运算 " + memoryId);
        return Math.sqrt(x);
    }


//    /**
//     * 加法工具（带memoryId，参数注解仅保留支持的属性：value + required）
//     * @param memoryId 会话ID（和AI的memoryId关联）
//     * @param a 加数1
//     * @param b 加数2
//     * @return 加法结果
//     */
//    @Tool(name = "加法", value = "计算两个数字的和，参数为加数1和加数2，返回相加之和")
//    public Double sum(
//            @ToolMemoryId int memoryId,
//            @P(value = "加数1（第一个待相加的数字）", required = true) double a,
//            @P(value = "加数2（第二个待相加的数字）", required = true) double b) {
//        double result = a + b;
//        System.out.printf("【加法工具调用】memoryId=%d, a=%.0f, b=%.0f, 结果=%.0f%n", memoryId, a, b, result);
//        return result;
//    }
//
//    /**
//     * 平方根工具（高精度计算，修复大数精度丢失，添加负数校验）
//     * @param memoryId 会话ID
//     * @param x 待计算平方根的数字（非负）
//     * @return 平方根结果（保留4位小数，匹配预期值689706.4865）
//     */
//    @Tool(name = "平方根", value = "计算非负数字的平方根，返回保留4位小数的高精度结果")
//    public Double squareRoot(
//            @ToolMemoryId int memoryId,
//            @P(value = "待计算数（非负数字，需计算平方根）", required = true) double x) {
//        // 负数校验
//        if (x < 0) {
//            throw new IllegalArgumentException(String.format("【平方根工具】memoryId=%d，参数不能为负数：%.0f", memoryId, x));
//        }
//        // 高精度计算（修复Math.sqrt大数精度丢失问题）
//        BigDecimal num = BigDecimal.valueOf(x);
//        BigDecimal sqrtResult = highPrecisionSqrt(num, 4);
//        double result = sqrtResult.doubleValue();
//        System.out.printf("【平方根工具调用】memoryId=%d, x=%.0f, 结果=%.4f%n", memoryId, x, result);
//        return result;
//    }
//
//    /**
//     * 高精度平方根计算（牛顿迭代法）
//     * @param num 待计算数
//     * @param scale 保留小数位数
//     * @return 高精度结果
//     */
//    private BigDecimal highPrecisionSqrt(BigDecimal num, int scale) {
//        if (num.compareTo(BigDecimal.ZERO) == 0) {
//            return BigDecimal.ZERO.setScale(scale, RoundingMode.HALF_UP);
//        }
//        BigDecimal guess = new BigDecimal(Math.sqrt(num.doubleValue()));
//        BigDecimal lastGuess = BigDecimal.ZERO;
//        BigDecimal two = BigDecimal.valueOf(2);
//        // 迭代收敛条件：精度高于目标scale
//        while (guess.subtract(lastGuess).abs().compareTo(new BigDecimal("0.0000001")) > 0) {
//            lastGuess = guess;
//            guess = num.divide(guess, scale + 2, RoundingMode.HALF_UP);
//            guess = guess.add(lastGuess).divide(two, scale + 2, RoundingMode.HALF_UP);
//        }
//        return guess.setScale(scale, RoundingMode.HALF_UP);
//    }
}