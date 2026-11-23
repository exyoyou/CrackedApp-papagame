package io.netty.handler.proxy;

import com.join.mgps.activity.arena.GameRoomActivity_;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.base64.Base64;
import io.netty.handler.codec.http.DefaultFullHttpRequest;
import io.netty.handler.codec.http.HttpClientCodec;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpMethod;
import io.netty.handler.codec.http.HttpResponse;
import io.netty.handler.codec.http.HttpResponseStatus;
import io.netty.handler.codec.http.HttpUtil;
import io.netty.handler.codec.http.HttpVersion;
import io.netty.handler.codec.http.LastHttpContent;
import io.netty.util.AsciiString;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.ObjectUtil;
import java.net.InetSocketAddress;
import java.net.SocketAddress;

/* JADX INFO: loaded from: classes.dex */
public final class HttpProxyHandler extends ProxyHandler {
    private static final String AUTH_BASIC = "basic";
    private static final String PROTOCOL = "http";
    private final CharSequence authorization;
    private final HttpClientCodec codec;
    private final boolean ignoreDefaultPortsInConnectHostHeader;
    private HttpHeaders inboundHeaders;
    private final HttpHeaders outboundHeaders;
    private final String password;
    private HttpResponseStatus status;
    private final String username;

    public static final class HttpProxyConnectException extends ProxyConnectException {
        private static final long serialVersionUID = -8824334609292146066L;
        private final HttpHeaders headers;

        public HttpProxyConnectException(String str, HttpHeaders httpHeaders) {
            super(str);
            this.headers = httpHeaders;
        }

        public HttpHeaders headers() {
            return this.headers;
        }
    }

    public HttpProxyHandler(SocketAddress socketAddress) {
        this(socketAddress, null);
    }

    @Override // io.netty.handler.proxy.ProxyHandler
    protected void addCodec(ChannelHandlerContext channelHandlerContext) throws Exception {
        channelHandlerContext.pipeline().addBefore(channelHandlerContext.name(), null, this.codec);
    }

    @Override // io.netty.handler.proxy.ProxyHandler
    public String authScheme() {
        return this.authorization != null ? AUTH_BASIC : "none";
    }

    @Override // io.netty.handler.proxy.ProxyHandler
    protected boolean handleResponse(ChannelHandlerContext channelHandlerContext, Object obj) throws Exception {
        if (obj instanceof HttpResponse) {
            if (this.status != null) {
                throw new HttpProxyConnectException(exceptionMessage("too many responses"), null);
            }
            HttpResponse httpResponse = (HttpResponse) obj;
            this.status = httpResponse.status();
            this.inboundHeaders = httpResponse.headers();
        }
        boolean z10 = obj instanceof LastHttpContent;
        if (z10) {
            HttpResponseStatus httpResponseStatus = this.status;
            if (httpResponseStatus == null) {
                throw new HttpProxyConnectException(exceptionMessage("missing response"), this.inboundHeaders);
            }
            if (httpResponseStatus.code() != 200) {
                throw new HttpProxyConnectException(exceptionMessage("status: " + this.status), this.inboundHeaders);
            }
        }
        return z10;
    }

    @Override // io.netty.handler.proxy.ProxyHandler
    protected Object newInitialMessage(ChannelHandlerContext channelHandlerContext) throws Exception {
        InetSocketAddress inetSocketAddress = (InetSocketAddress) destinationAddress();
        String hostnameForHttp = HttpUtil.formatHostnameForHttp(inetSocketAddress);
        int port = inetSocketAddress.getPort();
        String str = hostnameForHttp + ":" + port;
        if (!this.ignoreDefaultPortsInConnectHostHeader || (port != 80 && port != 443)) {
            hostnameForHttp = str;
        }
        DefaultFullHttpRequest defaultFullHttpRequest = new DefaultFullHttpRequest(HttpVersion.HTTP_1_1, HttpMethod.CONNECT, str, Unpooled.EMPTY_BUFFER, false);
        defaultFullHttpRequest.headers().set(HttpHeaderNames.HOST, hostnameForHttp);
        if (this.authorization != null) {
            defaultFullHttpRequest.headers().set(HttpHeaderNames.PROXY_AUTHORIZATION, this.authorization);
        }
        if (this.outboundHeaders != null) {
            defaultFullHttpRequest.headers().add(this.outboundHeaders);
        }
        return defaultFullHttpRequest;
    }

    public String password() {
        return this.password;
    }

    @Override // io.netty.handler.proxy.ProxyHandler
    public String protocol() {
        return "http";
    }

    @Override // io.netty.handler.proxy.ProxyHandler
    protected void removeDecoder(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.codec.removeInboundHandler();
    }

    @Override // io.netty.handler.proxy.ProxyHandler
    protected void removeEncoder(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.codec.removeOutboundHandler();
    }

    public String username() {
        return this.username;
    }

    public HttpProxyHandler(SocketAddress socketAddress, HttpHeaders httpHeaders) {
        this(socketAddress, httpHeaders, false);
    }

    public HttpProxyHandler(SocketAddress socketAddress, HttpHeaders httpHeaders, boolean z10) {
        super(socketAddress);
        this.codec = new HttpClientCodec();
        this.username = null;
        this.password = null;
        this.authorization = null;
        this.outboundHeaders = httpHeaders;
        this.ignoreDefaultPortsInConnectHostHeader = z10;
    }

    public HttpProxyHandler(SocketAddress socketAddress, String str, String str2) {
        this(socketAddress, str, str2, null);
    }

    public HttpProxyHandler(SocketAddress socketAddress, String str, String str2, HttpHeaders httpHeaders) {
        this(socketAddress, str, str2, httpHeaders, false);
    }

    public HttpProxyHandler(SocketAddress socketAddress, String str, String str2, HttpHeaders httpHeaders, boolean z10) {
        super(socketAddress);
        this.codec = new HttpClientCodec();
        this.username = (String) ObjectUtil.checkNotNull(str, "username");
        this.password = (String) ObjectUtil.checkNotNull(str2, GameRoomActivity_.PASSWORD_EXTRA);
        ByteBuf byteBufCopiedBuffer = Unpooled.copiedBuffer(str + ':' + str2, CharsetUtil.UTF_8);
        ByteBuf byteBufEncode = Base64.encode(byteBufCopiedBuffer, false);
        this.authorization = new AsciiString("Basic " + byteBufEncode.toString(CharsetUtil.US_ASCII));
        byteBufCopiedBuffer.release();
        byteBufEncode.release();
        this.outboundHeaders = httpHeaders;
        this.ignoreDefaultPortsInConnectHostHeader = z10;
    }
}
