package week05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
@EnableAutoConfiguration
public class StarterApplication {
    public static void main(String[] args) {
        SpringApplication.run(StarterApplication.class, args);
    }

    @Autowired
    SchoolConfig config;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @RequestMapping("/school/name")
    public String test() {
        return  config.getSchoolName();
    }

    @RequestMapping("/odbc")
    public Object List(){
       return jdbcTemplate.queryForList("select * from school");
    }
}