package week03;


import io.netty.bootstrap.ServerBootstrap;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.PooledByteBufAllocator;
import io.netty.buffer.Unpooled;
import io.netty.channel.*;
import io.netty.channel.epoll.EpollChannelOption;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;

import java.net.InetSocketAddress;
import java.nio.charset.Charset;
import java.util.Optional;

public class neetyServer {
    public  static void main(String[] args) throws Exception {
        new neetyServer().server(8080);
    }
    public void server(int port) throws Exception {
        EventLoopGroup bossGroup =new NioEventLoopGroup(2);
        EventLoopGroup workerGroup =new NioEventLoopGroup(16);
        try{
            ServerBootstrap bootstrap=new ServerBootstrap();
            bootstrap.option(ChannelOption.TCP_NODELAY,true)
                    .option(ChannelOption.SO_BACKLOG,128)
                    .option(ChannelOption.SO_KEEPALIVE,true)
                    .option(ChannelOption.SO_REUSEADDR,true)
                    .option(ChannelOption.SO_RCVBUF,32*1024)
                    .option(ChannelOption.SO_SNDBUF,32*1024)
                    .option(EpollChannelOption.SO_REUSEPORT,true)
                    .option(ChannelOption.ALLOCATOR, PooledByteBufAllocator.DEFAULT);
            bootstrap.group(bossGroup,workerGroup)
                    .channel(NioServerSocketChannel.class)
                    .childHandler((new HttpInitalizer()));
            Channel ch = bootstrap.bind(port).sync().channel();

        } finally {

        }

    }
}