package week03.outBound;

import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.FullHttpResponse;

import java.io.IOException;

public interface OutBoundHandler {
    public FullHttpResponse Response(FullHttpRequest request, ChannelHandlerContext ctx) throws IOException;
}
