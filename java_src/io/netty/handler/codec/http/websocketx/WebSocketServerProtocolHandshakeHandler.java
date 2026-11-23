package io.netty.handler.codec.http.websocketx;

import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.http.DefaultFullHttpResponse;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpMethod;
import io.netty.handler.codec.http.HttpRequest;
import io.netty.handler.codec.http.HttpResponse;
import io.netty.handler.codec.http.HttpResponseStatus;
import io.netty.handler.codec.http.HttpUtil;
import io.netty.handler.codec.http.HttpVersion;
import io.netty.handler.ssl.SslHandler;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.FutureListener;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.ScheduledFuture;
import io.netty.util.internal.ObjectUtil;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class WebSocketServerProtocolHandshakeHandler extends ChannelInboundHandlerAdapter {
    private ChannelHandlerContext ctx;
    private ChannelPromise handshakePromise;
    private final WebSocketServerProtocolConfig serverConfig;

    WebSocketServerProtocolHandshakeHandler(WebSocketServerProtocolConfig webSocketServerProtocolConfig) {
        this.serverConfig = (WebSocketServerProtocolConfig) ObjectUtil.checkNotNull(webSocketServerProtocolConfig, "serverConfig");
    }

    private void applyHandshakeTimeout() {
        final ChannelPromise channelPromise = this.handshakePromise;
        long jHandshakeTimeoutMillis = this.serverConfig.handshakeTimeoutMillis();
        if (jHandshakeTimeoutMillis <= 0 || channelPromise.isDone()) {
            return;
        }
        final ScheduledFuture<?> scheduledFutureSchedule = this.ctx.executor().schedule(new Runnable() { // from class: io.netty.handler.codec.http.websocketx.WebSocketServerProtocolHandshakeHandler.2
            @Override // java.lang.Runnable
            public void run() {
                if (channelPromise.isDone() || !channelPromise.tryFailure(new WebSocketHandshakeException("handshake timed out"))) {
                    return;
                }
                WebSocketServerProtocolHandshakeHandler.this.ctx.flush().fireUserEventTriggered((Object) WebSocketServerProtocolHandler.ServerHandshakeStateEvent.HANDSHAKE_TIMEOUT).close();
            }
        }, jHandshakeTimeoutMillis, TimeUnit.MILLISECONDS);
        channelPromise.addListener((GenericFutureListener<? extends Future<? super Void>>) new FutureListener<Void>() { // from class: io.netty.handler.codec.http.websocketx.WebSocketServerProtocolHandshakeHandler.3
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(Future<Void> future) {
                scheduledFutureSchedule.cancel(false);
            }
        });
    }

    private static String getWebSocketLocation(ChannelPipeline channelPipeline, HttpRequest httpRequest, String str) {
        return (channelPipeline.get(SslHandler.class) != null ? "wss" : "ws") + "://" + httpRequest.headers().get(HttpHeaderNames.HOST) + str;
    }

    private boolean isNotWebSocketPath(FullHttpRequest fullHttpRequest) {
        String strWebsocketPath = this.serverConfig.websocketPath();
        boolean zCheckStartsWith = this.serverConfig.checkStartsWith();
        String strUri = fullHttpRequest.uri();
        if (zCheckStartsWith) {
            if (!strUri.startsWith(strWebsocketPath)) {
                return true;
            }
        } else if (!strUri.equals(strWebsocketPath)) {
            return true;
        }
        return false;
    }

    private static void sendHttpResponse(ChannelHandlerContext channelHandlerContext, HttpRequest httpRequest, HttpResponse httpResponse) {
        ChannelFuture channelFutureWriteAndFlush = channelHandlerContext.channel().writeAndFlush(httpResponse);
        if (HttpUtil.isKeepAlive(httpRequest) && httpResponse.status().code() == 200) {
            return;
        }
        channelFutureWriteAndFlush.addListener((GenericFutureListener<? extends Future<? super Void>>) ChannelFutureListener.CLOSE);
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelRead(final ChannelHandlerContext channelHandlerContext, Object obj) throws Exception {
        final FullHttpRequest fullHttpRequest = (FullHttpRequest) obj;
        if (isNotWebSocketPath(fullHttpRequest)) {
            channelHandlerContext.fireChannelRead(obj);
            return;
        }
        try {
            if (!HttpMethod.GET.equals(fullHttpRequest.method())) {
                sendHttpResponse(channelHandlerContext, fullHttpRequest, new DefaultFullHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.FORBIDDEN, channelHandlerContext.alloc().buffer(0)));
                return;
            }
            final WebSocketServerHandshaker webSocketServerHandshakerNewHandshaker = new WebSocketServerHandshakerFactory(getWebSocketLocation(channelHandlerContext.pipeline(), fullHttpRequest, this.serverConfig.websocketPath()), this.serverConfig.subprotocols(), this.serverConfig.decoderConfig()).newHandshaker(fullHttpRequest);
            final ChannelPromise channelPromise = this.handshakePromise;
            if (webSocketServerHandshakerNewHandshaker == null) {
                WebSocketServerHandshakerFactory.sendUnsupportedVersionResponse(channelHandlerContext.channel());
            } else {
                WebSocketServerProtocolHandler.setHandshaker(channelHandlerContext.channel(), webSocketServerHandshakerNewHandshaker);
                channelHandlerContext.pipeline().remove(this);
                webSocketServerHandshakerNewHandshaker.handshake(channelHandlerContext.channel(), fullHttpRequest).addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.http.websocketx.WebSocketServerProtocolHandshakeHandler.1
                    @Override // io.netty.util.concurrent.GenericFutureListener
                    public void operationComplete(ChannelFuture channelFuture) {
                        if (!channelFuture.isSuccess()) {
                            channelPromise.tryFailure(channelFuture.cause());
                            channelHandlerContext.fireExceptionCaught(channelFuture.cause());
                        } else {
                            channelPromise.trySuccess();
                            channelHandlerContext.fireUserEventTriggered((Object) WebSocketServerProtocolHandler.ServerHandshakeStateEvent.HANDSHAKE_COMPLETE);
                            channelHandlerContext.fireUserEventTriggered((Object) new WebSocketServerProtocolHandler.HandshakeComplete(fullHttpRequest.uri(), fullHttpRequest.headers(), webSocketServerHandshakerNewHandshaker.selectedSubprotocol()));
                        }
                    }
                });
                applyHandshakeTimeout();
            }
        } finally {
            fullHttpRequest.release();
        }
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext channelHandlerContext) {
        this.ctx = channelHandlerContext;
        this.handshakePromise = channelHandlerContext.newPromise();
    }
}
