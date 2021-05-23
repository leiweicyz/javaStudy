package week03.filter;

import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http.FullHttpResponse;

public class HttpFilter {
    public void filter(FullHttpResponse response, ChannelHandlerContext ctx) {
        response.headers().set("X-study", "week03");
    }
}
