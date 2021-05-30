package week04;

public class Thread1 extends Thread {
    private Object object;

    public Thread1(Object obj,String d) {
        _d=d;
        object = obj;
    }

    private String _d;

    private String data;

    public String getData() {
        return data;
    }

    @Override
    public void run() {
        synchronized (object) {
            try{
            data = _d;
            Thread.sleep(40);
            object.notifyAll();}catch (InterruptedException ex){}
        }
    }
}