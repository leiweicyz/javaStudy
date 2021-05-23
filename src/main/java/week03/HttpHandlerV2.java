package week03;

import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.handler.codec.http.*;
import week02.OkHttpHelper;
import week03.outBound.OkHttpOutBoundHandler;
import week03.outBound.OutBoundHandler;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class HttpHandlerV2 extends ChannelInboundHandlerAdapter {
    private OutBoundHandler outBoundHandler;
    public HttpHandlerV2(){
        outBoundHandler = new OkHttpOutBoundHandler();
    }
    @Override
    public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
        ctx.flush();
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {

        FullHttpRequest request = (FullHttpRequest) msg;


        HandlerTest(request,ctx);

    }
    private void HandlerTest(FullHttpRequest request, ChannelHandlerContext ctx) throws IOException {
FullHttpResponse response=null;
        try{
             response = outBoundHandler.Response(request,ctx);

        }finally {
            if (request != null) {
                if (!HttpUtil.isKeepAlive(request)) {
                    ctx.write(response).addListener(ChannelFutureListener.CLOSE);
                } else {
                    response.headers().set("CONNECTION", "KEEP_ALIVE");
                    ctx.write(response);
                }
            }
        }
    }

}
