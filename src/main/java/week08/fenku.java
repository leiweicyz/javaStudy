package week08;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.sql.DataSource;

@RestController
@SpringBootApplication
public class fenku {
    @Resource
    private DataSource dataSource;

    public static void main(String... args) {
        SpringApplication.run(fenku.class, args);
    }

    @RequestMapping("/insert")
    public String insert(){
        var jdbcTemplate = new JdbcTemplate(dataSource);
        for(int i=100;i<1000;i++) {
            jdbcTemplate.execute("insert into study_member values("+i+",'user_name','pwd','real name')");
        }

        return  "insert";
    }
    @RequestMapping("/delete")
    public String delete(){
        var jdbcTemplate = new JdbcTemplate(dataSource);
        for(var i=1;i<10;i++){
            jdbcTemplate.execute("delete from study_member where user_id="+i);
        }
        return  "delete";
    }


    @RequestMapping("/update")
    public String update(){
        var jdbcTemplate = new JdbcTemplate(dataSource);
        for(var i=1;i<10;i++){
            jdbcTemplate.execute("update study_member set read_name='read_name"+i+"' where  user_id="+i);
        }
        return  "update";
    }
    @RequestMapping("/query")
    public long query(@RequestParam int user_id) {
        var jdbcTemplate = new JdbcTemplate(dataSource);
        var result = jdbcTemplate.queryForList("select read_name from study_member  where  user_id=" + user_id);

        return result.stream().count();
    }

}
