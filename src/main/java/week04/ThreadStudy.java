package week04;

import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

public class ThreadStudy {
    private static Object object=new Object();
    public static void main(String[] args) throws InterruptedException, ExecutionException {
        Thread1[] threads= new Thread1[4];
        for(var i=0;i<4;i++){
            threads[i]=new Thread1(object,"thread"+i);
            new Thread(threads[i]).start();
        }
        System.out.println("thread running......");

         synchronized (object){
            object.wait();
         }
        for(var thread : threads) {
            System.out.println(thread.getData());
        }


        FutureTask<String> task= new FutureTask<>(()->{
            Thread.sleep(3000);
            return  "callable";
        });
        task.run();
        System.out.println("main thread 1");
        System.out.println(task.get());

      final CountDownLatch latch=new CountDownLatch(3);
        Thread2[] threads1= new Thread2[3];
        for(var t=0;t<3;t++) {
            threads1[t] = new Thread2(latch, "latch" + t);
            threads1[t].start();
        }

        synchronized (latch) {
            latch.wait(2000);
        }
        for(var thread : threads) {
            System.out.println(thread.getData());
        }
    }
}
