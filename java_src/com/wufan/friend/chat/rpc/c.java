package com.wufan.friend.chat.rpc;

import com.join.mgps.Util.h1;
import com.wufan.friend.chat.protocol.Response;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.timeout.IdleState;
import io.netty.handler.timeout.IdleStateEvent;

/* JADX INFO: loaded from: classes8.dex */
public class c extends SimpleChannelInboundHandler<Response> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.SimpleChannelInboundHandler
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void channelRead0(ChannelHandlerContext ctx, Response msg) throws Exception {
        org.greenrobot.eventbus.c.f().q(msg);
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        h1.e("channelInactive", "channelActive");
        super.channelActive(ctx);
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        super.channelInactive(ctx);
        h1.e("channelInactive", "连接断开");
        com.wufan.friend.chat.c.u().T(false);
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void userEventTriggered(ChannelHandlerContext ctx, Object evt) throws Exception {
        if (!(evt instanceof IdleStateEvent)) {
            super.userEventTriggered(ctx, evt);
        } else if (((IdleStateEvent) evt).state() == IdleState.WRITER_IDLE) {
            com.wufan.friend.chat.c.u().B();
        }
    }
}
