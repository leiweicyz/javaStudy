package week02;

import okhttp3.*;

import java.io.IOException;

public class OkHttpHelper {
    public static void main(String[] args) throws IOException {

        System.out.println(getHello());
    }
    public static String getHello() throws IOException {
        OkHttpClient client = new OkHttpClient();
        String url = "http://localhost:8088/api/hello";
        Request request = new Request.Builder()
                .url(url)
                .get()
                .build();
        Call call = client.newCall(request);
        Response response = call.execute();
        return  response.body().string();
    }
    public static String get(String serverUrl) throws IOException {
        OkHttpClient client = new OkHttpClient();
        Request request = new Request.Builder()
                .url(serverUrl)
                .get()
                .build();
        Call call = client.newCall(request);
        Response response = call.execute();
        return  response.body().string();
    }
}