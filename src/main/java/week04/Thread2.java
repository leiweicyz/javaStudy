package week04;

import java.util.concurrent.CountDownLatch;

public class Thread2 extends Thread {
    private CountDownLatch countDownLatch;

    public Thread2(CountDownLatch latcher,String d) {
        _d=d;
        countDownLatch=latcher;
    }

    private String _d;

    private String data;

    public String getData() {
        return data;
    }

    @Override
    public void run() {
        try {
            synchronized (countDownLatch) {
                data = _d;

                Thread.sleep(100);
                countDownLatch.countDown();
            }
        }
        catch (InterruptedException ex) {
        }

    }
}