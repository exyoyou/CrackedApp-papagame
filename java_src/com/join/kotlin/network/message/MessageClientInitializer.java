package com.join.kotlin.network.message;

import com.wufan.user.service.protobuf.MessageProto;
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
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014¨\u0006\b"}, d2 = {"Lcom/join/kotlin/network/message/MessageClientInitializer;", "Lio/netty/channel/ChannelInitializer;", "Lio/netty/channel/socket/SocketChannel;", "<init>", "()V", "initChannel", "", "ch", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MessageClientInitializer extends ChannelInitializer<SocketChannel> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.ChannelInitializer
    public void initChannel(@Nullable SocketChannel ch) {
        try {
            Intrinsics.checkNotNull(ch);
            ChannelPipeline channelPipelinePipeline = ch.pipeline();
            channelPipelinePipeline.addLast(new LengthFieldBasedFrameDecoder(2097152, 0, 4, 0, 4, true));
            channelPipelinePipeline.addLast(new ProtobufDecoder(MessageProto.Response.getDefaultInstance()));
            channelPipelinePipeline.addLast(new LengthFieldPrepender(4, 0, false));
            channelPipelinePipeline.addLast(new ProtobufEncoder());
            channelPipelinePipeline.addLast(new LoggingHandler());
            channelPipelinePipeline.addLast(new IdleStateHandler(0L, 30L, 0L, TimeUnit.SECONDS));
            channelPipelinePipeline.addLast(new MessageClientHandler());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
