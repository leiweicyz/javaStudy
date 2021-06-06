package week05;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

@Component
public class Study {
    @Setter
    @Getter
    private String id;
    public String Hello(){ return  "Hello "+id;}
}
