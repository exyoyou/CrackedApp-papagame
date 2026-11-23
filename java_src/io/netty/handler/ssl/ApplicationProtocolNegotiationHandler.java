package io.netty.handler.ssl;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.ChannelPipeline;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;

/* JADX INFO: loaded from: classes.dex */
public abstract class ApplicationProtocolNegotiationHandler extends ChannelInboundHandlerAdapter {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) ApplicationProtocolNegotiationHandler.class);
    private final String fallbackProtocol;

    protected ApplicationProtocolNegotiationHandler(String str) {
        this.fallbackProtocol = (String) ObjectUtil.checkNotNull(str, "fallbackProtocol");
    }

    protected abstract void configurePipeline(ChannelHandlerContext channelHandlerContext, String str) throws Exception;

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler, io.netty.channel.ChannelInboundHandler
    public void exceptionCaught(ChannelHandlerContext channelHandlerContext, Throwable th) throws Exception {
        logger.warn("{} Failed to select the application-level protocol:", channelHandlerContext.channel(), th);
        channelHandlerContext.fireExceptionCaught(th);
        channelHandlerContext.close();
    }

    protected void handshakeFailure(ChannelHandlerContext channelHandlerContext, Throwable th) throws Exception {
        logger.warn("{} TLS handshake failed:", channelHandlerContext.channel(), th);
        channelHandlerContext.close();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0041 A[PHI: r0
      0x0041: PHI (r0v4 io.netty.channel.ChannelPipeline) = (r0v3 io.netty.channel.ChannelPipeline), (r0v8 io.netty.channel.ChannelPipeline) binds: [B:22:0x0051, B:17:0x003f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void userEventTriggered(ChannelHandlerContext channelHandlerContext, Object obj) throws Exception {
        ChannelPipeline channelPipelinePipeline;
        if (obj instanceof SslHandshakeCompletionEvent) {
            try {
                SslHandshakeCompletionEvent sslHandshakeCompletionEvent = (SslHandshakeCompletionEvent) obj;
                if (sslHandshakeCompletionEvent.isSuccess()) {
                    SslHandler sslHandler = (SslHandler) channelHandlerContext.pipeline().get(SslHandler.class);
                    if (sslHandler == null) {
                        throw new IllegalStateException("cannot find an SslHandler in the pipeline (required for application-level protocol negotiation)");
                    }
                    String strApplicationProtocol = sslHandler.applicationProtocol();
                    if (strApplicationProtocol == null) {
                        strApplicationProtocol = this.fallbackProtocol;
                    }
                    configurePipeline(channelHandlerContext, strApplicationProtocol);
                } else {
                    handshakeFailure(channelHandlerContext, sslHandshakeCompletionEvent.cause());
                }
                channelPipelinePipeline = channelHandlerContext.pipeline();
                if (channelPipelinePipeline.context(this) != null) {
                    channelPipelinePipeline.remove(this);
                }
            } catch (Throwable th) {
                try {
                    exceptionCaught(channelHandlerContext, th);
                    channelPipelinePipeline = channelHandlerContext.pipeline();
                    if (channelPipelinePipeline.context(this) != null) {
                        channelPipelinePipeline.remove(this);
                    }
                } catch (Throwable th2) {
                    ChannelPipeline channelPipelinePipeline2 = channelHandlerContext.pipeline();
                    if (channelPipelinePipeline2.context(this) != null) {
                        channelPipelinePipeline2.remove(this);
                    }
                    throw th2;
                }
            }
        }
        channelHandlerContext.fireUserEventTriggered(obj);
    }
}
