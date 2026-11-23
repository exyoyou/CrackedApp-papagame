package io.netty.handler.codec.http.websocketx;

import com.qq.e.comm.managers.setting.GlobalSetting;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.http.DefaultFullHttpRequest;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpHeaderValues;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpMethod;
import io.netty.handler.codec.http.HttpResponseStatus;
import io.netty.handler.codec.http.HttpVersion;
import io.netty.util.AsciiString;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.net.URI;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketClientHandshaker08 extends WebSocketClientHandshaker {
    public static final String MAGIC_GUID = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) WebSocketClientHandshaker08.class);
    private final boolean allowExtensions;
    private final boolean allowMaskMismatch;
    private String expectedChallengeResponseString;
    private final boolean performMasking;

    public WebSocketClientHandshaker08(URI uri, WebSocketVersion webSocketVersion, String str, boolean z10, HttpHeaders httpHeaders, int i10) {
        this(uri, webSocketVersion, str, z10, httpHeaders, i10, true, false, 10000L);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    protected FullHttpRequest newHandshakeRequest() {
        URI uri = uri();
        String strBase64 = WebSocketUtil.base64(WebSocketUtil.randomBytes(16));
        this.expectedChallengeResponseString = WebSocketUtil.base64(WebSocketUtil.sha1((strBase64 + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").getBytes(CharsetUtil.US_ASCII)));
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("WebSocket version 08 client handshake key: {}, expected response: {}", strBase64, this.expectedChallengeResponseString);
        }
        DefaultFullHttpRequest defaultFullHttpRequest = new DefaultFullHttpRequest(HttpVersion.HTTP_1_1, HttpMethod.GET, upgradeUrl(uri), Unpooled.EMPTY_BUFFER);
        HttpHeaders httpHeadersHeaders = defaultFullHttpRequest.headers();
        HttpHeaders httpHeaders = this.customHeaders;
        if (httpHeaders != null) {
            httpHeadersHeaders.add(httpHeaders);
        }
        httpHeadersHeaders.set(HttpHeaderNames.UPGRADE, HttpHeaderValues.WEBSOCKET).set(HttpHeaderNames.CONNECTION, HttpHeaderValues.UPGRADE).set(HttpHeaderNames.SEC_WEBSOCKET_KEY, strBase64).set(HttpHeaderNames.HOST, WebSocketClientHandshaker.websocketHostValue(uri));
        AsciiString asciiString = HttpHeaderNames.SEC_WEBSOCKET_ORIGIN;
        if (!httpHeadersHeaders.contains(asciiString)) {
            httpHeadersHeaders.set(asciiString, WebSocketClientHandshaker.websocketOriginValue(uri));
        }
        String strExpectedSubprotocol = expectedSubprotocol();
        if (strExpectedSubprotocol != null && !strExpectedSubprotocol.isEmpty()) {
            httpHeadersHeaders.set(HttpHeaderNames.SEC_WEBSOCKET_PROTOCOL, strExpectedSubprotocol);
        }
        httpHeadersHeaders.set(HttpHeaderNames.SEC_WEBSOCKET_VERSION, GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD);
        return defaultFullHttpRequest;
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    protected WebSocketFrameEncoder newWebSocketEncoder() {
        return new WebSocket08FrameEncoder(this.performMasking);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    protected WebSocketFrameDecoder newWebsocketDecoder() {
        return new WebSocket08FrameDecoder(false, this.allowExtensions, maxFramePayloadLength(), this.allowMaskMismatch);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    protected void verify(FullHttpResponse fullHttpResponse) {
        HttpResponseStatus httpResponseStatus = HttpResponseStatus.SWITCHING_PROTOCOLS;
        HttpHeaders httpHeadersHeaders = fullHttpResponse.headers();
        if (!fullHttpResponse.status().equals(httpResponseStatus)) {
            throw new WebSocketHandshakeException("Invalid handshake response getStatus: " + fullHttpResponse.status());
        }
        String str = httpHeadersHeaders.get(HttpHeaderNames.UPGRADE);
        if (!HttpHeaderValues.WEBSOCKET.contentEqualsIgnoreCase(str)) {
            throw new WebSocketHandshakeException("Invalid handshake response upgrade: " + ((Object) str));
        }
        AsciiString asciiString = HttpHeaderNames.CONNECTION;
        if (!httpHeadersHeaders.containsValue(asciiString, HttpHeaderValues.UPGRADE, true)) {
            throw new WebSocketHandshakeException("Invalid handshake response connection: " + httpHeadersHeaders.get(asciiString));
        }
        String str2 = httpHeadersHeaders.get(HttpHeaderNames.SEC_WEBSOCKET_ACCEPT);
        if (str2 == null || !str2.equals(this.expectedChallengeResponseString)) {
            throw new WebSocketHandshakeException(String.format("Invalid challenge. Actual: %s. Expected: %s", str2, this.expectedChallengeResponseString));
        }
    }

    public WebSocketClientHandshaker08(URI uri, WebSocketVersion webSocketVersion, String str, boolean z10, HttpHeaders httpHeaders, int i10, boolean z11, boolean z12) {
        this(uri, webSocketVersion, str, z10, httpHeaders, i10, z11, z12, 10000L);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    public WebSocketClientHandshaker08 setForceCloseTimeoutMillis(long j10) {
        super.setForceCloseTimeoutMillis(j10);
        return this;
    }

    public WebSocketClientHandshaker08(URI uri, WebSocketVersion webSocketVersion, String str, boolean z10, HttpHeaders httpHeaders, int i10, boolean z11, boolean z12, long j10) {
        this(uri, webSocketVersion, str, z10, httpHeaders, i10, z11, z12, j10, false);
    }

    WebSocketClientHandshaker08(URI uri, WebSocketVersion webSocketVersion, String str, boolean z10, HttpHeaders httpHeaders, int i10, boolean z11, boolean z12, long j10, boolean z13) {
        super(uri, webSocketVersion, str, httpHeaders, i10, j10, z13);
        this.allowExtensions = z10;
        this.performMasking = z11;
        this.allowMaskMismatch = z12;
    }
}
