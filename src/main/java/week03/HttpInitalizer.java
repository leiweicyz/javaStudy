package week03;

import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.socket.SocketChannel;
import io.netty.handler.codec.http.HttpObjectAggregator;
import io.netty.handler.codec.http.HttpServerCodec;

public class HttpInitalizer extends ChannelInitializer<SocketChannel> {
    @Override
    protected void initChannel(SocketChannel socketChannel) throws Exception {
        ChannelPipeline p= socketChannel.pipeline();
        p.addLast(new HttpServerCodec())
        .addLast(new HttpObjectAggregator(1024*1024))
        .addLast(new HttpHandlerV2());

    }
}
