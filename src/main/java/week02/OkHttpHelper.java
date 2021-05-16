package week02;

import okhttp3.*;

import java.io.IOException;

public class OkHttpHelper {
    public static void main(String[] args) throws IOException {
        OkHttpClient client = new OkHttpClient();
        String url = "http://localhost:8088/api/hello";
        Request request = new Request.Builder()
                .url(url)
                .get()
                .build();
        Call call = client.newCall(request);
        Response response = call.execute();
        System.out.println(response.body().string());
    }
}