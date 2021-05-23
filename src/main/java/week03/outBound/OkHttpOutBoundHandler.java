package week03.outBound;

import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http.*;
import week02.OkHttpHelper;
import week03.filter.HttpFilter;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;

public class OkHttpOutBoundHandler implements  OutBoundHandler {
    private HashSet<String> ServerPaths=new HashSet<>();
    private HttpFilter filter;
    public  OkHttpOutBoundHandler(){
        filter=new HttpFilter();
        ServerPaths.add("/api/hello");
    }
    @Override
    public FullHttpResponse Response(FullHttpRequest request, ChannelHandlerContext ctx) throws IOException {
        FullHttpResponse response = null;
        try {
            String value = request.uri();
            if (ServerPaths.contains("/api/hello")) {
                var serverUrl = "http://localhost:8088" + value;
                value = OkHttpHelper.get(serverUrl);
            } else {
                value = "access denied";
            }
            response = new DefaultFullHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.OK, Unpooled.wrappedBuffer(value.getBytes(StandardCharsets.UTF_8)));
            filter.filter(response,ctx);
            response.headers().set("Content-Type", "application/json")
                    .setInt("Content-Length", response.content().readableBytes());
        } finally {
            if (response != null)
                ctx.write(response).addListener(ChannelFutureListener.CLOSE);
        }
        return  response;
    }
}
