package week01;

import java.io.IOException;
import java.io.InputStream;

public class XlassClassLoader  extends ClassLoader {

    @Override
    protected Class<?> findClass(String name) throws ClassNotFoundException {
        byte[] xlassBytes = new byte[0];
        try {
            xlassBytes = getXlassBytes(name);
        } catch (IOException e) {
            e.printStackTrace();
            throw new ClassNotFoundException(name + " not found", e);
        }
        return defineClass(name, xlassBytes, 0, xlassBytes.length);
    }


    private byte[] getXlassBytes(String name) throws IOException {
        InputStream stream = this.getClass().getResourceAsStream("/"+name + ".xlass");
        byte[] bytes = new byte[stream.available()];
        stream.read(bytes);
        stream.close();
        for (var i = 0; i < bytes.length; i++) {
            bytes[i] = (byte) (255 - (int) bytes[i]);
        }
        return bytes;
    }
}