package io.netty.handler.codec.http.websocketx;

import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.ChannelPromise;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.HttpContentCompressor;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpObjectAggregator;
import io.netty.handler.codec.http.HttpRequest;
import io.netty.handler.codec.http.HttpRequestDecoder;
import io.netty.handler.codec.http.HttpResponseEncoder;
import io.netty.handler.codec.http.HttpServerCodec;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.channels.ClosedChannelException;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class WebSocketServerHandshaker {
    public static final String SUB_PROTOCOL_WILDCARD = "*";
    protected static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) WebSocketServerHandshaker.class);
    private final WebSocketDecoderConfig decoderConfig;
    private String selectedSubprotocol;
    private final String[] subprotocols;
    private final String uri;
    private final WebSocketVersion version;

    protected WebSocketServerHandshaker(WebSocketVersion webSocketVersion, String str, String str2, int i10) {
        this(webSocketVersion, str, str2, WebSocketDecoderConfig.newBuilder().maxFramePayloadLength(i10).build());
    }

    public ChannelFuture close(Channel channel, CloseWebSocketFrame closeWebSocketFrame) {
        ObjectUtil.checkNotNull(channel, "channel");
        return close(channel, closeWebSocketFrame, channel.newPromise());
    }

    public WebSocketDecoderConfig decoderConfig() {
        return this.decoderConfig;
    }

    public ChannelFuture handshake(Channel channel, FullHttpRequest fullHttpRequest) {
        return handshake(channel, fullHttpRequest, (HttpHeaders) null, channel.newPromise());
    }

    public int maxFramePayloadLength() {
        return this.decoderConfig.maxFramePayloadLength();
    }

    protected abstract FullHttpResponse newHandshakeResponse(FullHttpRequest fullHttpRequest, HttpHeaders httpHeaders);

    protected abstract WebSocketFrameEncoder newWebSocketEncoder();

    protected abstract WebSocketFrameDecoder newWebsocketDecoder();

    protected String selectSubprotocol(String str) {
        if (str != null && this.subprotocols.length != 0) {
            for (String str2 : str.split(",")) {
                String strTrim = str2.trim();
                for (String str3 : this.subprotocols) {
                    if (SUB_PROTOCOL_WILDCARD.equals(str3) || strTrim.equals(str3)) {
                        this.selectedSubprotocol = strTrim;
                        return strTrim;
                    }
                }
            }
        }
        return null;
    }

    public String selectedSubprotocol() {
        return this.selectedSubprotocol;
    }

    public Set<String> subprotocols() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Collections.addAll(linkedHashSet, this.subprotocols);
        return linkedHashSet;
    }

    public String uri() {
        return this.uri;
    }

    public WebSocketVersion version() {
        return this.version;
    }

    public final ChannelFuture handshake(Channel channel, FullHttpRequest fullHttpRequest, HttpHeaders httpHeaders, final ChannelPromise channelPromise) {
        final String strName;
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("{} WebSocket version {} server handshake", channel, version());
        }
        FullHttpResponse fullHttpResponseNewHandshakeResponse = newHandshakeResponse(fullHttpRequest, httpHeaders);
        ChannelPipeline channelPipelinePipeline = channel.pipeline();
        if (channelPipelinePipeline.get(HttpObjectAggregator.class) != null) {
            channelPipelinePipeline.remove(HttpObjectAggregator.class);
        }
        if (channelPipelinePipeline.get(HttpContentCompressor.class) != null) {
            channelPipelinePipeline.remove(HttpContentCompressor.class);
        }
        ChannelHandlerContext channelHandlerContextContext = channelPipelinePipeline.context(HttpRequestDecoder.class);
        if (channelHandlerContextContext == null) {
            ChannelHandlerContext channelHandlerContextContext2 = channelPipelinePipeline.context(HttpServerCodec.class);
            if (channelHandlerContextContext2 == null) {
                channelPromise.setFailure((Throwable) new IllegalStateException("No HttpDecoder and no HttpServerCodec in the pipeline"));
                return channelPromise;
            }
            channelPipelinePipeline.addBefore(channelHandlerContextContext2.name(), "wsencoder", newWebSocketEncoder());
            channelPipelinePipeline.addBefore(channelHandlerContextContext2.name(), "wsdecoder", newWebsocketDecoder());
            strName = channelHandlerContextContext2.name();
        } else {
            channelPipelinePipeline.replace(channelHandlerContextContext.name(), "wsdecoder", newWebsocketDecoder());
            String strName2 = channelPipelinePipeline.context(HttpResponseEncoder.class).name();
            channelPipelinePipeline.addBefore(strName2, "wsencoder", newWebSocketEncoder());
            strName = strName2;
        }
        channel.writeAndFlush(fullHttpResponseNewHandshakeResponse).addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker.1
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture channelFuture) throws Exception {
                if (!channelFuture.isSuccess()) {
                    channelPromise.setFailure(channelFuture.cause());
                } else {
                    channelFuture.channel().pipeline().remove(strName);
                    channelPromise.setSuccess();
                }
            }
        });
        return channelPromise;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [io.netty.channel.ChannelFuture] */
    public ChannelFuture close(Channel channel, CloseWebSocketFrame closeWebSocketFrame, ChannelPromise channelPromise) {
        ObjectUtil.checkNotNull(channel, "channel");
        return channel.writeAndFlush(closeWebSocketFrame, channelPromise).addListener((GenericFutureListener<? extends Future<? super Void>>) ChannelFutureListener.CLOSE);
    }

    protected WebSocketServerHandshaker(WebSocketVersion webSocketVersion, String str, String str2, WebSocketDecoderConfig webSocketDecoderConfig) {
        this.version = webSocketVersion;
        this.uri = str;
        if (str2 != null) {
            String[] strArrSplit = str2.split(",");
            for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                strArrSplit[i10] = strArrSplit[i10].trim();
            }
            this.subprotocols = strArrSplit;
        } else {
            this.subprotocols = EmptyArrays.EMPTY_STRINGS;
        }
        this.decoderConfig = (WebSocketDecoderConfig) ObjectUtil.checkNotNull(webSocketDecoderConfig, "decoderConfig");
    }

    public ChannelFuture handshake(Channel channel, HttpRequest httpRequest) {
        return handshake(channel, httpRequest, (HttpHeaders) null, channel.newPromise());
    }

    public final ChannelFuture handshake(final Channel channel, HttpRequest httpRequest, final HttpHeaders httpHeaders, final ChannelPromise channelPromise) {
        if (httpRequest instanceof FullHttpRequest) {
            return handshake(channel, (FullHttpRequest) httpRequest, httpHeaders, channelPromise);
        }
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("{} WebSocket version {} server handshake", channel, version());
        }
        ChannelPipeline channelPipelinePipeline = channel.pipeline();
        ChannelHandlerContext channelHandlerContextContext = channelPipelinePipeline.context(HttpRequestDecoder.class);
        if (channelHandlerContextContext == null && (channelHandlerContextContext = channelPipelinePipeline.context(HttpServerCodec.class)) == null) {
            channelPromise.setFailure((Throwable) new IllegalStateException("No HttpDecoder and no HttpServerCodec in the pipeline"));
            return channelPromise;
        }
        channelPipelinePipeline.addAfter(channelHandlerContextContext.name(), "httpAggregator", new HttpObjectAggregator(8192));
        channelPipelinePipeline.addAfter("httpAggregator", "handshaker", new SimpleChannelInboundHandler<FullHttpRequest>() { // from class: io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker.2
            @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
            public void channelInactive(ChannelHandlerContext channelHandlerContext) throws Exception {
                if (!channelPromise.isDone()) {
                    channelPromise.tryFailure(new ClosedChannelException());
                }
                channelHandlerContext.fireChannelInactive();
            }

            @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler, io.netty.channel.ChannelInboundHandler
            public void exceptionCaught(ChannelHandlerContext channelHandlerContext, Throwable th) throws Exception {
                channelHandlerContext.pipeline().remove(this);
                channelPromise.tryFailure(th);
                channelHandlerContext.fireExceptionCaught(th);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.netty.channel.SimpleChannelInboundHandler
            public void channelRead0(ChannelHandlerContext channelHandlerContext, FullHttpRequest fullHttpRequest) throws Exception {
                channelHandlerContext.pipeline().remove(this);
                WebSocketServerHandshaker.this.handshake(channel, fullHttpRequest, httpHeaders, channelPromise);
            }
        });
        try {
            channelHandlerContextContext.fireChannelRead(ReferenceCountUtil.retain(httpRequest));
        } catch (Throwable th) {
            channelPromise.setFailure(th);
        }
        return channelPromise;
    }
}
