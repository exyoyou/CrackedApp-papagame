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
import io.netty.handler.codec.http.HttpClientCodec;
import io.netty.handler.codec.http.HttpContentDecompressor;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpObjectAggregator;
import io.netty.handler.codec.http.HttpRequestEncoder;
import io.netty.handler.codec.http.HttpResponse;
import io.netty.handler.codec.http.HttpResponseDecoder;
import io.netty.handler.codec.http.HttpScheme;
import io.netty.util.NetUtil;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.ScheduledFuture;
import io.netty.util.internal.ObjectUtil;
import java.net.URI;
import java.nio.channels.ClosedChannelException;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class WebSocketClientHandshaker {
    protected static final int DEFAULT_FORCE_CLOSE_TIMEOUT_MILLIS = 10000;
    private final boolean absoluteUpgradeUrl;
    private volatile String actualSubprotocol;
    protected final HttpHeaders customHeaders;
    private final String expectedSubprotocol;
    private volatile boolean forceCloseComplete;
    private volatile int forceCloseInit;
    private volatile long forceCloseTimeoutMillis;
    private volatile boolean handshakeComplete;
    private final int maxFramePayloadLength;
    private final URI uri;
    private final WebSocketVersion version;
    private static final String HTTP_SCHEME_PREFIX = HttpScheme.HTTP + "://";
    private static final String HTTPS_SCHEME_PREFIX = HttpScheme.HTTPS + "://";
    private static final AtomicIntegerFieldUpdater<WebSocketClientHandshaker> FORCE_CLOSE_INIT_UPDATER = AtomicIntegerFieldUpdater.newUpdater(WebSocketClientHandshaker.class, "forceCloseInit");

    protected WebSocketClientHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, HttpHeaders httpHeaders, int i10) {
        this(uri, webSocketVersion, str, httpHeaders, i10, 10000L);
    }

    private void applyForceCloseTimeout(final Channel channel, ChannelFuture channelFuture) {
        final long j10 = this.forceCloseTimeoutMillis;
        if (j10 > 0 && channel.isActive() && this.forceCloseInit == 0) {
            channelFuture.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.5
                @Override // io.netty.util.concurrent.GenericFutureListener
                public void operationComplete(ChannelFuture channelFuture2) throws Exception {
                    if (channelFuture2.isSuccess() && channel.isActive() && WebSocketClientHandshaker.FORCE_CLOSE_INIT_UPDATER.compareAndSet(this, 0, 1)) {
                        final ScheduledFuture<?> scheduledFutureSchedule = channel.eventLoop().schedule(new Runnable() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (channel.isActive()) {
                                    channel.close();
                                    WebSocketClientHandshaker.this.forceCloseComplete = true;
                                }
                            }
                        }, j10, TimeUnit.MILLISECONDS);
                        channel.closeFuture().addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.5.2
                            @Override // io.netty.util.concurrent.GenericFutureListener
                            public void operationComplete(ChannelFuture channelFuture3) throws Exception {
                                scheduledFutureSchedule.cancel(false);
                            }
                        });
                    }
                }
            });
        }
    }

    private void setActualSubprotocol(String str) {
        this.actualSubprotocol = str;
    }

    private void setHandshakeComplete() {
        this.handshakeComplete = true;
    }

    static CharSequence websocketHostValue(URI uri) {
        int port = uri.getPort();
        if (port == -1) {
            return uri.getHost();
        }
        String host = uri.getHost();
        String scheme = uri.getScheme();
        HttpScheme httpScheme = HttpScheme.HTTP;
        if (port == httpScheme.port()) {
            return (httpScheme.name().contentEquals(scheme) || WebSocketScheme.WS.name().contentEquals(scheme)) ? host : NetUtil.toSocketAddressString(host, port);
        }
        HttpScheme httpScheme2 = HttpScheme.HTTPS;
        if (port == httpScheme2.port()) {
            return (httpScheme2.name().contentEquals(scheme) || WebSocketScheme.WSS.name().contentEquals(scheme)) ? host : NetUtil.toSocketAddressString(host, port);
        }
        return NetUtil.toSocketAddressString(host, port);
    }

    static CharSequence websocketOriginValue(URI uri) {
        String str;
        int iPort;
        String scheme = uri.getScheme();
        int port = uri.getPort();
        WebSocketScheme webSocketScheme = WebSocketScheme.WSS;
        if (webSocketScheme.name().contentEquals(scheme) || HttpScheme.HTTPS.name().contentEquals(scheme) || (scheme == null && port == webSocketScheme.port())) {
            str = HTTPS_SCHEME_PREFIX;
            iPort = webSocketScheme.port();
        } else {
            str = HTTP_SCHEME_PREFIX;
            iPort = WebSocketScheme.WS.port();
        }
        String lowerCase = uri.getHost().toLowerCase(Locale.US);
        if (port == iPort || port == -1) {
            return str + lowerCase;
        }
        return str + NetUtil.toSocketAddressString(lowerCase, port);
    }

    public String actualSubprotocol() {
        return this.actualSubprotocol;
    }

    public ChannelFuture close(Channel channel, CloseWebSocketFrame closeWebSocketFrame) {
        ObjectUtil.checkNotNull(channel, "channel");
        return close(channel, closeWebSocketFrame, channel.newPromise());
    }

    public String expectedSubprotocol() {
        return this.expectedSubprotocol;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x005b  */
    /* JADX WARN: Code duplicated, block: B:30:0x006c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0079  */
    /* JADX WARN: Code duplicated, block: B:36:0x0086  */
    /* JADX WARN: Code duplicated, block: B:38:0x008e  */
    /* JADX WARN: Code duplicated, block: B:39:0x00af  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:43:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:46:0x00da  */
    public final void finishHandshake(Channel channel, FullHttpResponse fullHttpResponse) {
        boolean z10;
        final ChannelPipeline channelPipelinePipeline;
        HttpContentDecompressor httpContentDecompressor;
        HttpObjectAggregator httpObjectAggregator;
        final ChannelHandlerContext channelHandlerContextContext;
        ChannelHandlerContext channelHandlerContextContext2;
        verify(fullHttpResponse);
        String str = fullHttpResponse.headers().get(HttpHeaderNames.SEC_WEBSOCKET_PROTOCOL);
        String strTrim = str != null ? str.trim() : null;
        String str2 = this.expectedSubprotocol;
        if (str2 == null) {
            str2 = "";
        }
        if (!str2.isEmpty() || strTrim != null) {
            if (!str2.isEmpty() && strTrim != null && !strTrim.isEmpty()) {
                String[] strArrSplit = str2.split(",");
                int length = strArrSplit.length;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        if (strArrSplit[i10].trim().equals(strTrim)) {
                            setActualSubprotocol(strTrim);
                        } else {
                            i10++;
                        }
                    }
                }
            }
            z10 = false;
            if (z10) {
                throw new WebSocketHandshakeException(String.format("Invalid subprotocol. Actual: %s. Expected one of: %s", strTrim, this.expectedSubprotocol));
            }
            setHandshakeComplete();
            channelPipelinePipeline = channel.pipeline();
            httpContentDecompressor = (HttpContentDecompressor) channelPipelinePipeline.get(HttpContentDecompressor.class);
            if (httpContentDecompressor != null) {
                channelPipelinePipeline.remove(httpContentDecompressor);
            }
            httpObjectAggregator = (HttpObjectAggregator) channelPipelinePipeline.get(HttpObjectAggregator.class);
            if (httpObjectAggregator != null) {
                channelPipelinePipeline.remove(httpObjectAggregator);
            }
            channelHandlerContextContext = channelPipelinePipeline.context(HttpResponseDecoder.class);
            if (channelHandlerContextContext == null) {
                if (channelPipelinePipeline.get(HttpRequestEncoder.class) != null) {
                    channelPipelinePipeline.remove(HttpRequestEncoder.class);
                }
                channelPipelinePipeline.addAfter(channelHandlerContextContext.name(), "ws-decoder", newWebsocketDecoder());
                channel.eventLoop().execute(new Runnable() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.3
                    @Override // java.lang.Runnable
                    public void run() {
                        channelPipelinePipeline.remove(channelHandlerContextContext.handler());
                    }
                });
                return;
            }
            channelHandlerContextContext2 = channelPipelinePipeline.context(HttpClientCodec.class);
            if (channelHandlerContextContext2 != null) {
                throw new IllegalStateException("ChannelPipeline does not contain an HttpRequestEncoder or HttpClientCodec");
            }
            final HttpClientCodec httpClientCodec = (HttpClientCodec) channelHandlerContextContext2.handler();
            httpClientCodec.removeOutboundHandler();
            channelPipelinePipeline.addAfter(channelHandlerContextContext2.name(), "ws-decoder", newWebsocketDecoder());
            channel.eventLoop().execute(new Runnable() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.2
                @Override // java.lang.Runnable
                public void run() {
                    channelPipelinePipeline.remove(httpClientCodec);
                }
            });
        }
        setActualSubprotocol(this.expectedSubprotocol);
        z10 = true;
        if (z10) {
            throw new WebSocketHandshakeException(String.format("Invalid subprotocol. Actual: %s. Expected one of: %s", strTrim, this.expectedSubprotocol));
        }
        setHandshakeComplete();
        channelPipelinePipeline = channel.pipeline();
        httpContentDecompressor = (HttpContentDecompressor) channelPipelinePipeline.get(HttpContentDecompressor.class);
        if (httpContentDecompressor != null) {
            channelPipelinePipeline.remove(httpContentDecompressor);
        }
        httpObjectAggregator = (HttpObjectAggregator) channelPipelinePipeline.get(HttpObjectAggregator.class);
        if (httpObjectAggregator != null) {
            channelPipelinePipeline.remove(httpObjectAggregator);
        }
        channelHandlerContextContext = channelPipelinePipeline.context(HttpResponseDecoder.class);
        if (channelHandlerContextContext == null) {
            if (channelPipelinePipeline.get(HttpRequestEncoder.class) != null) {
                channelPipelinePipeline.remove(HttpRequestEncoder.class);
            }
            channelPipelinePipeline.addAfter(channelHandlerContextContext.name(), "ws-decoder", newWebsocketDecoder());
            channel.eventLoop().execute(new Runnable() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.3
                @Override // java.lang.Runnable
                public void run() {
                    channelPipelinePipeline.remove(channelHandlerContextContext.handler());
                }
            });
            return;
        }
        channelHandlerContextContext2 = channelPipelinePipeline.context(HttpClientCodec.class);
        if (channelHandlerContextContext2 != null) {
            throw new IllegalStateException("ChannelPipeline does not contain an HttpRequestEncoder or HttpClientCodec");
        }
        final HttpClientCodec httpClientCodec2 = (HttpClientCodec) channelHandlerContextContext2.handler();
        httpClientCodec2.removeOutboundHandler();
        channelPipelinePipeline.addAfter(channelHandlerContextContext2.name(), "ws-decoder", newWebsocketDecoder());
        channel.eventLoop().execute(new Runnable() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.2
            @Override // java.lang.Runnable
            public void run() {
                channelPipelinePipeline.remove(httpClientCodec2);
            }
        });
    }

    public long forceCloseTimeoutMillis() {
        return this.forceCloseTimeoutMillis;
    }

    public ChannelFuture handshake(Channel channel) {
        ObjectUtil.checkNotNull(channel, "channel");
        return handshake(channel, channel.newPromise());
    }

    protected boolean isForceCloseComplete() {
        return this.forceCloseComplete;
    }

    public boolean isHandshakeComplete() {
        return this.handshakeComplete;
    }

    public int maxFramePayloadLength() {
        return this.maxFramePayloadLength;
    }

    protected abstract FullHttpRequest newHandshakeRequest();

    protected abstract WebSocketFrameEncoder newWebSocketEncoder();

    protected abstract WebSocketFrameDecoder newWebsocketDecoder();

    public final ChannelFuture processHandshake(Channel channel, HttpResponse httpResponse) {
        return processHandshake(channel, httpResponse, channel.newPromise());
    }

    public WebSocketClientHandshaker setForceCloseTimeoutMillis(long j10) {
        this.forceCloseTimeoutMillis = j10;
        return this;
    }

    protected String upgradeUrl(URI uri) {
        if (this.absoluteUpgradeUrl) {
            return uri.toString();
        }
        String rawPath = uri.getRawPath();
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && !rawQuery.isEmpty()) {
            rawPath = rawPath + '?' + rawQuery;
        }
        return (rawPath == null || rawPath.isEmpty()) ? e.F0 : rawPath;
    }

    public URI uri() {
        return this.uri;
    }

    protected abstract void verify(FullHttpResponse fullHttpResponse);

    public WebSocketVersion version() {
        return this.version;
    }

    protected WebSocketClientHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, HttpHeaders httpHeaders, int i10, long j10) {
        this(uri, webSocketVersion, str, httpHeaders, i10, j10, false);
    }

    public final ChannelFuture processHandshake(final Channel channel, HttpResponse httpResponse, final ChannelPromise channelPromise) {
        if (httpResponse instanceof FullHttpResponse) {
            try {
                finishHandshake(channel, (FullHttpResponse) httpResponse);
                channelPromise.setSuccess();
            } catch (Throwable th) {
                channelPromise.setFailure(th);
            }
        } else {
            ChannelPipeline channelPipelinePipeline = channel.pipeline();
            ChannelHandlerContext channelHandlerContextContext = channelPipelinePipeline.context(HttpResponseDecoder.class);
            if (channelHandlerContextContext == null && (channelHandlerContextContext = channelPipelinePipeline.context(HttpClientCodec.class)) == null) {
                return channelPromise.setFailure((Throwable) new IllegalStateException("ChannelPipeline does not contain an HttpResponseDecoder or HttpClientCodec"));
            }
            channelPipelinePipeline.addAfter(channelHandlerContextContext.name(), "httpAggregator", new HttpObjectAggregator(8192));
            channelPipelinePipeline.addAfter("httpAggregator", "handshaker", new SimpleChannelInboundHandler<FullHttpResponse>() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.4
                @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
                public void channelInactive(ChannelHandlerContext channelHandlerContext) throws Exception {
                    if (!channelPromise.isDone()) {
                        channelPromise.tryFailure(new ClosedChannelException());
                    }
                    channelHandlerContext.fireChannelInactive();
                }

                @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler, io.netty.channel.ChannelInboundHandler
                public void exceptionCaught(ChannelHandlerContext channelHandlerContext, Throwable th2) throws Exception {
                    channelHandlerContext.pipeline().remove(this);
                    channelPromise.setFailure(th2);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // io.netty.channel.SimpleChannelInboundHandler
                public void channelRead0(ChannelHandlerContext channelHandlerContext, FullHttpResponse fullHttpResponse) throws Exception {
                    channelHandlerContext.pipeline().remove(this);
                    try {
                        WebSocketClientHandshaker.this.finishHandshake(channel, fullHttpResponse);
                        channelPromise.setSuccess();
                    } catch (Throwable th2) {
                        channelPromise.setFailure(th2);
                    }
                }
            });
            try {
                channelHandlerContextContext.fireChannelRead(ReferenceCountUtil.retain(httpResponse));
            } catch (Throwable th2) {
                channelPromise.setFailure(th2);
            }
        }
        return channelPromise;
    }

    protected WebSocketClientHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, HttpHeaders httpHeaders, int i10, long j10, boolean z10) {
        this.forceCloseTimeoutMillis = 10000L;
        this.uri = uri;
        this.version = webSocketVersion;
        this.expectedSubprotocol = str;
        this.customHeaders = httpHeaders;
        this.maxFramePayloadLength = i10;
        this.forceCloseTimeoutMillis = j10;
        this.absoluteUpgradeUrl = z10;
    }

    public ChannelFuture close(Channel channel, CloseWebSocketFrame closeWebSocketFrame, ChannelPromise channelPromise) {
        ObjectUtil.checkNotNull(channel, "channel");
        channel.writeAndFlush(closeWebSocketFrame, channelPromise);
        applyForceCloseTimeout(channel, channelPromise);
        return channelPromise;
    }

    public final ChannelFuture handshake(Channel channel, final ChannelPromise channelPromise) {
        ChannelPipeline channelPipelinePipeline = channel.pipeline();
        if (((HttpResponseDecoder) channelPipelinePipeline.get(HttpResponseDecoder.class)) == null && ((HttpClientCodec) channelPipelinePipeline.get(HttpClientCodec.class)) == null) {
            channelPromise.setFailure((Throwable) new IllegalStateException("ChannelPipeline does not contain an HttpResponseDecoder or HttpClientCodec"));
            return channelPromise;
        }
        channel.writeAndFlush(newHandshakeRequest()).addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.1
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture channelFuture) {
                if (!channelFuture.isSuccess()) {
                    channelPromise.setFailure(channelFuture.cause());
                    return;
                }
                ChannelPipeline channelPipelinePipeline2 = channelFuture.channel().pipeline();
                ChannelHandlerContext channelHandlerContextContext = channelPipelinePipeline2.context(HttpRequestEncoder.class);
                if (channelHandlerContextContext == null) {
                    channelHandlerContextContext = channelPipelinePipeline2.context(HttpClientCodec.class);
                }
                if (channelHandlerContextContext == null) {
                    channelPromise.setFailure((Throwable) new IllegalStateException("ChannelPipeline does not contain an HttpRequestEncoder or HttpClientCodec"));
                } else {
                    channelPipelinePipeline2.addAfter(channelHandlerContextContext.name(), "ws-encoder", WebSocketClientHandshaker.this.newWebSocketEncoder());
                    channelPromise.setSuccess();
                }
            }
        });
        return channelPromise;
    }
}
