//package week05;
//
//import org.springframework.beans.BeansException;
//import org.springframework.boot.context.properties.EnableConfigurationProperties;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//
//
//@EnableConfigurationProperties
//public class SpringBean {
//    public static void main(String[] args){
//        System.out.println("xml spring bean");
//        /*定义配置文件路径*/
//        String xmlPath ="applicationContext.xml";
//        /*加载配置文件*/
//        ApplicationContext applicationContext = new ClassPathXmlApplicationContext(xmlPath);
//        /*构造方式输出结果*/
//        var study = (Study) applicationContext.getBean("test");
//        System.out.println(study.Hello());
//
//        System.out.println("auto spring bean");
//        xmlPath="autoApplicationContext.xml";
//        applicationContext = new ClassPathXmlApplicationContext(xmlPath);
//
//        study = (Study) applicationContext.getBean("test");
//
//        System.out.println(study.Hello());
//
//        System.out.println("scan spring bean");
//        xmlPath="componentScanApplicationContext.xml";
//
//        //applicationContext = new ClassPathXmlApplicationContext(xmlPath);
//
//        //study = (Study) applicationContext.getBean("Study");
//
//        //System.out.println(study.Hello());
//    }
//}
