package com.wufan.friend.chat.rpc;

import com.wufan.friend.chat.protocol.Response;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.socket.SocketChannel;
import io.netty.handler.codec.LengthFieldBasedFrameDecoder;
import io.netty.handler.codec.LengthFieldPrepender;
import io.netty.handler.codec.protobuf.ProtobufDecoder;
import io.netty.handler.codec.protobuf.ProtobufEncoder;
import io.netty.handler.logging.LoggingHandler;
import io.netty.handler.timeout.IdleStateHandler;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes8.dex */
public class d extends ChannelInitializer<SocketChannel> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.ChannelInitializer
    public void initChannel(SocketChannel ch) throws Exception {
        try {
            ChannelPipeline channelPipelinePipeline = ch.pipeline();
            channelPipelinePipeline.addLast(new LengthFieldBasedFrameDecoder(2097152, 0, 4, 0, 4, true));
            channelPipelinePipeline.addLast(new ProtobufDecoder(Response.getDefaultInstance()));
            channelPipelinePipeline.addLast(new LengthFieldPrepender(4, 0, false));
            channelPipelinePipeline.addLast(new ProtobufEncoder());
            channelPipelinePipeline.addLast(new LoggingHandler());
            channelPipelinePipeline.addLast(new IdleStateHandler(0L, 30L, 0L, TimeUnit.SECONDS));
            channelPipelinePipeline.addLast(new c());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
