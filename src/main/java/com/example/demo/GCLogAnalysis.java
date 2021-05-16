package com.example.demo;

import java.util.Random;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.LongAdder;
import okhttp3.*;
public class GCLogAnalysis {
    private static Random random= new Random();
    public static void main(String[] args) {
        long startMillis = System.currentTimeMillis();
        long timeoutMillis = TimeUnit.SECONDS.toMillis(1);
        long endMillis =startMillis+timeoutMillis;
        LongAdder counte=new LongAdder();
        System.out.println("start");
        int cacheCount=2000;
        Object[] cacheGarbage= new Object[cacheCount];
        while (System.currentTimeMillis()<endMillis) {
            var obj = generateObject(1000*1024);
            counte.increment();
            var randomIndex= random.nextInt(2*cacheCount);
            if(randomIndex<cacheCount) {
                cacheGarbage[randomIndex]=obj;
            }
        }
        System.out.println("genrateObject total count:"+counte.longValue());
    }
    private static Object generateObject(int max ) {
        int randomSize = random.nextInt(max);
        int type= randomSize%4;
        Object result ;
        switch (type){
            case  0:
                result=  new int[randomSize];
                break;
            case  1:
                result=  new byte[randomSize];
            case  2:
                result=  new Double[randomSize];
            default:
                String a="";
                for(var i=0;i<randomSize;i++){
                    a+="a";
                }
                result=a;
                break;
        }
        return  result;
    }
}
