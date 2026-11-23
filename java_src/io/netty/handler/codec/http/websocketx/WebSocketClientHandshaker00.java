package io.netty.handler.codec.http.websocketx;

import io.netty.buffer.ByteBuf;
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
import java.net.URI;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketClientHandshaker00 extends WebSocketClientHandshaker {
    private static final AsciiString WEBSOCKET = AsciiString.cached(HttpHeaders.Values.WEBSOCKET);
    private ByteBuf expectedChallengeResponseBytes;

    public WebSocketClientHandshaker00(URI uri, WebSocketVersion webSocketVersion, String str, HttpHeaders httpHeaders, int i10) {
        this(uri, webSocketVersion, str, httpHeaders, i10, 10000L);
    }

    private static String insertRandomCharacters(String str) {
        int iRandomNumber = WebSocketUtil.randomNumber(1, 12);
        char[] cArr = new char[iRandomNumber];
        int i10 = 0;
        while (i10 < iRandomNumber) {
            int iRandom = (int) ((Math.random() * 126.0d) + 33.0d);
            if ((33 < iRandom && iRandom < 47) || (58 < iRandom && iRandom < 126)) {
                cArr[i10] = (char) iRandom;
                i10++;
            }
        }
        for (int i11 = 0; i11 < iRandomNumber; i11++) {
            int iRandomNumber2 = WebSocketUtil.randomNumber(0, str.length());
            str = str.substring(0, iRandomNumber2) + cArr[i11] + str.substring(iRandomNumber2);
        }
        return str;
    }

    private static String insertSpaces(String str, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int iRandomNumber = WebSocketUtil.randomNumber(1, str.length() - 1);
            str = str.substring(0, iRandomNumber) + ' ' + str.substring(iRandomNumber);
        }
        return str;
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    protected FullHttpRequest newHandshakeRequest() {
        int iRandomNumber = WebSocketUtil.randomNumber(1, 12);
        int iRandomNumber2 = WebSocketUtil.randomNumber(1, 12);
        int iRandomNumber3 = WebSocketUtil.randomNumber(0, Integer.MAX_VALUE / iRandomNumber);
        int iRandomNumber4 = WebSocketUtil.randomNumber(0, Integer.MAX_VALUE / iRandomNumber2);
        String string = Integer.toString(iRandomNumber3 * iRandomNumber);
        String string2 = Integer.toString(iRandomNumber4 * iRandomNumber2);
        String strInsertRandomCharacters = insertRandomCharacters(string);
        String strInsertRandomCharacters2 = insertRandomCharacters(string2);
        String strInsertSpaces = insertSpaces(strInsertRandomCharacters, iRandomNumber);
        String strInsertSpaces2 = insertSpaces(strInsertRandomCharacters2, iRandomNumber2);
        byte[] bArrRandomBytes = WebSocketUtil.randomBytes(8);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(iRandomNumber3);
        byte[] bArrArray = byteBufferAllocate.array();
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
        byteBufferAllocate2.putInt(iRandomNumber4);
        byte[] bArrArray2 = byteBufferAllocate2.array();
        byte[] bArr = new byte[16];
        System.arraycopy(bArrArray, 0, bArr, 0, 4);
        System.arraycopy(bArrArray2, 0, bArr, 4, 4);
        System.arraycopy(bArrRandomBytes, 0, bArr, 8, 8);
        this.expectedChallengeResponseBytes = Unpooled.wrappedBuffer(WebSocketUtil.md5(bArr));
        URI uri = uri();
        DefaultFullHttpRequest defaultFullHttpRequest = new DefaultFullHttpRequest(HttpVersion.HTTP_1_1, HttpMethod.GET, upgradeUrl(uri), Unpooled.wrappedBuffer(bArrRandomBytes));
        HttpHeaders httpHeadersHeaders = defaultFullHttpRequest.headers();
        HttpHeaders httpHeaders = this.customHeaders;
        if (httpHeaders != null) {
            httpHeadersHeaders.add(httpHeaders);
        }
        httpHeadersHeaders.set(HttpHeaderNames.UPGRADE, WEBSOCKET).set(HttpHeaderNames.CONNECTION, HttpHeaderValues.UPGRADE).set(HttpHeaderNames.HOST, WebSocketClientHandshaker.websocketHostValue(uri)).set(HttpHeaderNames.SEC_WEBSOCKET_KEY1, strInsertSpaces).set(HttpHeaderNames.SEC_WEBSOCKET_KEY2, strInsertSpaces2);
        AsciiString asciiString = HttpHeaderNames.ORIGIN;
        if (!httpHeadersHeaders.contains(asciiString)) {
            httpHeadersHeaders.set(asciiString, WebSocketClientHandshaker.websocketOriginValue(uri));
        }
        String strExpectedSubprotocol = expectedSubprotocol();
        if (strExpectedSubprotocol != null && !strExpectedSubprotocol.isEmpty()) {
            httpHeadersHeaders.set(HttpHeaderNames.SEC_WEBSOCKET_PROTOCOL, strExpectedSubprotocol);
        }
        httpHeadersHeaders.set(HttpHeaderNames.CONTENT_LENGTH, Integer.valueOf(bArrRandomBytes.length));
        return defaultFullHttpRequest;
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    protected WebSocketFrameEncoder newWebSocketEncoder() {
        return new WebSocket00FrameEncoder();
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    protected WebSocketFrameDecoder newWebsocketDecoder() {
        return new WebSocket00FrameDecoder(maxFramePayloadLength());
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    protected void verify(FullHttpResponse fullHttpResponse) {
        if (!fullHttpResponse.status().equals(HttpResponseStatus.SWITCHING_PROTOCOLS)) {
            throw new WebSocketHandshakeException("Invalid handshake response getStatus: " + fullHttpResponse.status());
        }
        HttpHeaders httpHeadersHeaders = fullHttpResponse.headers();
        String str = httpHeadersHeaders.get(HttpHeaderNames.UPGRADE);
        if (!WEBSOCKET.contentEqualsIgnoreCase(str)) {
            throw new WebSocketHandshakeException("Invalid handshake response upgrade: " + ((Object) str));
        }
        AsciiString asciiString = HttpHeaderNames.CONNECTION;
        if (httpHeadersHeaders.containsValue(asciiString, HttpHeaderValues.UPGRADE, true)) {
            if (!fullHttpResponse.content().equals(this.expectedChallengeResponseBytes)) {
                throw new WebSocketHandshakeException("Invalid challenge");
            }
        } else {
            throw new WebSocketHandshakeException("Invalid handshake response connection: " + httpHeadersHeaders.get(asciiString));
        }
    }

    public WebSocketClientHandshaker00(URI uri, WebSocketVersion webSocketVersion, String str, HttpHeaders httpHeaders, int i10, long j10) {
        this(uri, webSocketVersion, str, httpHeaders, i10, j10, false);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    public WebSocketClientHandshaker00 setForceCloseTimeoutMillis(long j10) {
        super.setForceCloseTimeoutMillis(j10);
        return this;
    }

    WebSocketClientHandshaker00(URI uri, WebSocketVersion webSocketVersion, String str, HttpHeaders httpHeaders, int i10, long j10, boolean z10) {
        super(uri, webSocketVersion, str, httpHeaders, i10, j10, z10);
    }
}
