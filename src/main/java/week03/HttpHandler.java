package week03;

import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.handler.codec.http.*;
import  week02.OkHttpHelper;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class HttpHandler extends ChannelInboundHandlerAdapter {
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
        FullHttpMessage rep=null;
        try{
            String value = request.uri();
            if(value.equals("/api/hello")){
                value=OkHttpHelper.getHello();
            }
            rep= new DefaultFullHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.OK, Unpooled.wrappedBuffer(value.getBytes(StandardCharsets.UTF_8)));
            rep.headers().set("Content-Type","application/json")
                    .setInt("Content-Length",rep.content().readableBytes());
        }finally {
            if(request!=null){
                if(!HttpUtil.isKeepAlive(request)){
                    ctx.write(rep).addListener(ChannelFutureListener.CLOSE);
                }else{
                    rep.headers().set("CONNECTION","KEEP_ALIVE");
                    ctx.write(rep);
                }
            }
        }
    }

}
