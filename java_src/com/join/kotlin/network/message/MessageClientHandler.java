package com.join.kotlin.network.message;

import com.wufan.user.service.protobuf.MessageProto;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.timeout.IdleState;
import io.netty.handler.timeout.IdleStateEvent;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001c\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0014J\u0012\u0010\u000e\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0012\u0010\u000f\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u001c\u0010\u0010\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/join/kotlin/network/message/MessageClientHandler;", "Lio/netty/channel/SimpleChannelInboundHandler;", "Lcom/wufan/user/service/protobuf/MessageProto$Response;", "<init>", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "channelRead0", "", "ctx", "Lio/netty/channel/ChannelHandlerContext;", "msg", "channelActive", "channelInactive", "userEventTriggered", "evt", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MessageClientHandler extends SimpleChannelInboundHandler<MessageProto.Response> {

    @NotNull
    private final String TAG = "MessageClientHandler";

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelActive(@Nullable ChannelHandlerContext ctx) throws Exception {
        super.channelActive(ctx);
        MessageManager.INSTANCE.handleChanelActive();
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(@Nullable ChannelHandlerContext ctx) throws Exception {
        super.channelInactive(ctx);
        MessageManager.INSTANCE.setActiveState(false);
    }

    @NotNull
    public final String getTAG() {
        return this.TAG;
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void userEventTriggered(@Nullable ChannelHandlerContext ctx, @Nullable Object evt) throws Exception {
        super.userEventTriggered(ctx, evt);
        if (!(evt instanceof IdleStateEvent)) {
            super.userEventTriggered(ctx, evt);
        } else if (((IdleStateEvent) evt).state() == IdleState.WRITER_IDLE) {
            MessageManager.INSTANCE.sendHeartBeat();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.SimpleChannelInboundHandler
    public void channelRead0(@Nullable ChannelHandlerContext ctx, @Nullable MessageProto.Response msg) {
        if (msg != null) {
            MessageManager.INSTANCE.handleResponseMessage(msg);
        }
    }
}
