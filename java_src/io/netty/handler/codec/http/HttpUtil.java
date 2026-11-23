package io.netty.handler.codec.http;

import com.j256.ormlite.stmt.query.SimpleComparison;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import io.netty.util.AsciiString;
import io.netty.util.CharsetUtil;
import io.netty.util.NetUtil;
import io.netty.util.internal.ObjectUtil;
import java.net.InetSocketAddress;
import java.net.URI;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class HttpUtil {
    private static final AsciiString CHARSET_EQUALS = AsciiString.of(((Object) HttpHeaderValues.CHARSET) + SimpleComparison.EQUAL_TO_OPERATION);
    private static final AsciiString SEMICOLON = AsciiString.cached(";");

    private HttpUtil() {
    }

    public static String formatHostnameForHttp(InetSocketAddress inetSocketAddress) {
        String hostname = NetUtil.getHostname(inetSocketAddress);
        if (!NetUtil.isValidIpV6Address(hostname)) {
            return hostname;
        }
        if (!inetSocketAddress.isUnresolved()) {
            hostname = NetUtil.toAddressString(inetSocketAddress.getAddress());
        }
        return '[' + hostname + ']';
    }

    public static Charset getCharset(HttpMessage httpMessage) {
        return getCharset(httpMessage, CharsetUtil.ISO_8859_1);
    }

    public static CharSequence getCharsetAsSequence(HttpMessage httpMessage) {
        String str = httpMessage.headers().get(HttpHeaderNames.CONTENT_TYPE);
        if (str != null) {
            return getCharsetAsSequence(str);
        }
        return null;
    }

    @Deprecated
    public static CharSequence getCharsetAsString(HttpMessage httpMessage) {
        return getCharsetAsSequence(httpMessage);
    }

    public static long getContentLength(HttpMessage httpMessage) {
        HttpHeaders httpHeadersHeaders = httpMessage.headers();
        AsciiString asciiString = HttpHeaderNames.CONTENT_LENGTH;
        String str = httpHeadersHeaders.get(asciiString);
        if (str != null) {
            return Long.parseLong(str);
        }
        long webSocketContentLength = getWebSocketContentLength(httpMessage);
        if (webSocketContentLength >= 0) {
            return webSocketContentLength;
        }
        throw new NumberFormatException("header not found: " + ((Object) asciiString));
    }

    public static CharSequence getMimeType(HttpMessage httpMessage) {
        String str = httpMessage.headers().get(HttpHeaderNames.CONTENT_TYPE);
        if (str != null) {
            return getMimeType(str);
        }
        return null;
    }

    private static int getWebSocketContentLength(HttpMessage httpMessage) {
        HttpHeaders httpHeadersHeaders = httpMessage.headers();
        if (httpMessage instanceof HttpRequest) {
            return (HttpMethod.GET.equals(((HttpRequest) httpMessage).method()) && httpHeadersHeaders.contains(HttpHeaderNames.SEC_WEBSOCKET_KEY1) && httpHeadersHeaders.contains(HttpHeaderNames.SEC_WEBSOCKET_KEY2)) ? 8 : -1;
        }
        return ((httpMessage instanceof HttpResponse) && ((HttpResponse) httpMessage).status().code() == 101 && httpHeadersHeaders.contains(HttpHeaderNames.SEC_WEBSOCKET_ORIGIN) && httpHeadersHeaders.contains(HttpHeaderNames.SEC_WEBSOCKET_LOCATION)) ? 16 : -1;
    }

    public static boolean is100ContinueExpected(HttpMessage httpMessage) {
        return isExpectHeaderValid(httpMessage) && httpMessage.headers().contains((CharSequence) HttpHeaderNames.EXPECT, (CharSequence) HttpHeaderValues.CONTINUE, true);
    }

    public static boolean isAsteriskForm(URI uri) {
        return WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD.equals(uri.getPath()) && uri.getScheme() == null && uri.getSchemeSpecificPart() == null && uri.getHost() == null && uri.getAuthority() == null && uri.getQuery() == null && uri.getFragment() == null;
    }

    public static boolean isContentLengthSet(HttpMessage httpMessage) {
        return httpMessage.headers().contains(HttpHeaderNames.CONTENT_LENGTH);
    }

    private static boolean isExpectHeaderValid(HttpMessage httpMessage) {
        return (httpMessage instanceof HttpRequest) && httpMessage.protocolVersion().compareTo(HttpVersion.HTTP_1_1) >= 0;
    }

    public static boolean isKeepAlive(HttpMessage httpMessage) {
        HttpHeaders httpHeadersHeaders = httpMessage.headers();
        AsciiString asciiString = HttpHeaderNames.CONNECTION;
        return !httpHeadersHeaders.containsValue(asciiString, HttpHeaderValues.CLOSE, true) && (httpMessage.protocolVersion().isKeepAliveDefault() || httpMessage.headers().containsValue(asciiString, HttpHeaderValues.KEEP_ALIVE, true));
    }

    public static boolean isOriginForm(URI uri) {
        return uri.getScheme() == null && uri.getSchemeSpecificPart() == null && uri.getHost() == null && uri.getAuthority() == null;
    }

    public static boolean isTransferEncodingChunked(HttpMessage httpMessage) {
        return httpMessage.headers().contains((CharSequence) HttpHeaderNames.TRANSFER_ENCODING, (CharSequence) HttpHeaderValues.CHUNKED, true);
    }

    static boolean isUnsupportedExpectation(HttpMessage httpMessage) {
        String str;
        return (!isExpectHeaderValid(httpMessage) || (str = httpMessage.headers().get(HttpHeaderNames.EXPECT)) == null || HttpHeaderValues.CONTINUE.toString().equalsIgnoreCase(str)) ? false : true;
    }

    public static void set100ContinueExpected(HttpMessage httpMessage, boolean z10) {
        if (z10) {
            httpMessage.headers().set(HttpHeaderNames.EXPECT, HttpHeaderValues.CONTINUE);
        } else {
            httpMessage.headers().remove(HttpHeaderNames.EXPECT);
        }
    }

    public static void setContentLength(HttpMessage httpMessage, long j10) {
        httpMessage.headers().set(HttpHeaderNames.CONTENT_LENGTH, Long.valueOf(j10));
    }

    public static void setKeepAlive(HttpMessage httpMessage, boolean z10) {
        setKeepAlive(httpMessage.headers(), httpMessage.protocolVersion(), z10);
    }

    public static void setTransferEncodingChunked(HttpMessage httpMessage, boolean z10) {
        if (z10) {
            httpMessage.headers().set(HttpHeaderNames.TRANSFER_ENCODING, HttpHeaderValues.CHUNKED);
            httpMessage.headers().remove(HttpHeaderNames.CONTENT_LENGTH);
            return;
        }
        List<String> all = httpMessage.headers().getAll(HttpHeaderNames.TRANSFER_ENCODING);
        if (all.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(all);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (HttpHeaderValues.CHUNKED.contentEqualsIgnoreCase((CharSequence) it2.next())) {
                it2.remove();
            }
        }
        if (arrayList.isEmpty()) {
            httpMessage.headers().remove(HttpHeaderNames.TRANSFER_ENCODING);
        } else {
            httpMessage.headers().set((CharSequence) HttpHeaderNames.TRANSFER_ENCODING, (Iterable<?>) arrayList);
        }
    }

    public static Charset getCharset(CharSequence charSequence) {
        return charSequence != null ? getCharset(charSequence, CharsetUtil.ISO_8859_1) : CharsetUtil.ISO_8859_1;
    }

    public static void setKeepAlive(HttpHeaders httpHeaders, HttpVersion httpVersion, boolean z10) {
        if (httpVersion.isKeepAliveDefault()) {
            if (z10) {
                httpHeaders.remove(HttpHeaderNames.CONNECTION);
                return;
            } else {
                httpHeaders.set(HttpHeaderNames.CONNECTION, HttpHeaderValues.CLOSE);
                return;
            }
        }
        if (z10) {
            httpHeaders.set(HttpHeaderNames.CONNECTION, HttpHeaderValues.KEEP_ALIVE);
        } else {
            httpHeaders.remove(HttpHeaderNames.CONNECTION);
        }
    }

    public static CharSequence getCharsetAsSequence(CharSequence charSequence) {
        int length;
        ObjectUtil.checkNotNull(charSequence, "contentTypeValue");
        AsciiString asciiString = CHARSET_EQUALS;
        int iIndexOfIgnoreCaseAscii = AsciiString.indexOfIgnoreCaseAscii(charSequence, asciiString, 0);
        if (iIndexOfIgnoreCaseAscii == -1 || (length = iIndexOfIgnoreCaseAscii + asciiString.length()) >= charSequence.length()) {
            return null;
        }
        CharSequence charSequenceSubSequence = charSequence.subSequence(length, charSequence.length());
        int iIndexOfIgnoreCaseAscii2 = AsciiString.indexOfIgnoreCaseAscii(charSequenceSubSequence, SEMICOLON, 0);
        return iIndexOfIgnoreCaseAscii2 == -1 ? charSequenceSubSequence : charSequenceSubSequence.subSequence(0, iIndexOfIgnoreCaseAscii2);
    }

    public static CharSequence getMimeType(CharSequence charSequence) {
        ObjectUtil.checkNotNull(charSequence, "contentTypeValue");
        int iIndexOfIgnoreCaseAscii = AsciiString.indexOfIgnoreCaseAscii(charSequence, SEMICOLON, 0);
        if (iIndexOfIgnoreCaseAscii != -1) {
            return charSequence.subSequence(0, iIndexOfIgnoreCaseAscii);
        }
        if (charSequence.length() > 0) {
            return charSequence;
        }
        return null;
    }

    public static Charset getCharset(HttpMessage httpMessage, Charset charset) {
        String str = httpMessage.headers().get(HttpHeaderNames.CONTENT_TYPE);
        return str != null ? getCharset(str, charset) : charset;
    }

    public static long getContentLength(HttpMessage httpMessage, long j10) {
        String str = httpMessage.headers().get(HttpHeaderNames.CONTENT_LENGTH);
        if (str != null) {
            return Long.parseLong(str);
        }
        long webSocketContentLength = getWebSocketContentLength(httpMessage);
        return webSocketContentLength >= 0 ? webSocketContentLength : j10;
    }

    public static Charset getCharset(CharSequence charSequence, Charset charset) {
        CharSequence charsetAsSequence;
        if (charSequence != null && (charsetAsSequence = getCharsetAsSequence(charSequence)) != null) {
            try {
                return Charset.forName(charsetAsSequence.toString());
            } catch (IllegalCharsetNameException | UnsupportedCharsetException unused) {
            }
        }
        return charset;
    }

    public static int getContentLength(HttpMessage httpMessage, int i10) {
        return (int) Math.min(2147483647L, getContentLength(httpMessage, i10));
    }
}
