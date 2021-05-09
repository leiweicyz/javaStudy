package week01;

import lombok.SneakyThrows;
import java.io.IOException;
import java.lang.reflect.Method;

public class Program {
    @SneakyThrows
    public static void main(String[] args) throws IOException, ClassNotFoundException {
         String className = "Hello";
         String methodName = "hello";
        // 创建类加载器
        ClassLoader classLoader = new XlassClassLoader();
        // 加载相应的类
        Class<?> clazz = classLoader.loadClass(className);

        // 创建对象
        Object instance = clazz.getDeclaredConstructor().newInstance();
        // 调用实例方法
        Method method = clazz.getMethod(methodName);
        method.invoke(instance);


    }


}
