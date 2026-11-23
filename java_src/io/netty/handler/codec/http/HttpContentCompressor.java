package io.netty.handler.codec.http;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.embedded.EmbeddedChannel;
import io.netty.handler.codec.compression.ZlibCodecFactory;
import io.netty.handler.codec.compression.ZlibWrapper;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;

/* JADX INFO: loaded from: classes.dex */
public class HttpContentCompressor extends HttpContentEncoder {
    private final int compressionLevel;
    private final int contentSizeThreshold;
    private ChannelHandlerContext ctx;
    private final int memLevel;
    private final int windowBits;

    /* JADX INFO: renamed from: io.netty.handler.codec.http.HttpContentCompressor$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$compression$ZlibWrapper;

        static {
            int[] iArr = new int[ZlibWrapper.values().length];
            $SwitchMap$io$netty$handler$codec$compression$ZlibWrapper = iArr;
            try {
                iArr[ZlibWrapper.GZIP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$ZlibWrapper[ZlibWrapper.ZLIB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public HttpContentCompressor() {
        this(6);
    }

    @Override // io.netty.handler.codec.http.HttpContentEncoder
    protected HttpContentEncoder.Result beginEncode(HttpResponse httpResponse, String str) throws Exception {
        ZlibWrapper zlibWrapperDetermineWrapper;
        String str2;
        if ((this.contentSizeThreshold > 0 && (httpResponse instanceof HttpContent) && ((HttpContent) httpResponse).content().readableBytes() < this.contentSizeThreshold) || httpResponse.headers().get(HttpHeaderNames.CONTENT_ENCODING) != null || (zlibWrapperDetermineWrapper = determineWrapper(str)) == null) {
            return null;
        }
        int i10 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper[zlibWrapperDetermineWrapper.ordinal()];
        if (i10 == 1) {
            str2 = "gzip";
        } else {
            if (i10 != 2) {
                throw new Error();
            }
            str2 = "deflate";
        }
        return new HttpContentEncoder.Result(str2, new EmbeddedChannel(this.ctx.channel().id(), this.ctx.channel().metadata().hasDisconnect(), this.ctx.channel().config(), ZlibCodecFactory.newZlibEncoder(zlibWrapperDetermineWrapper, this.compressionLevel, this.windowBits, this.memLevel)));
    }

    protected ZlibWrapper determineWrapper(String str) {
        String[] strArrSplit = str.split(",");
        int length = strArrSplit.length;
        int i10 = 0;
        float f10 = -1.0f;
        float f11 = -1.0f;
        float f12 = -1.0f;
        while (true) {
            float f13 = 0.0f;
            if (i10 >= length) {
                break;
            }
            String str2 = strArrSplit[i10];
            int iIndexOf = str2.indexOf(61);
            if (iIndexOf != -1) {
                try {
                    f13 = Float.parseFloat(str2.substring(iIndexOf + 1));
                } catch (NumberFormatException unused) {
                }
            } else {
                f13 = 1.0f;
            }
            if (str2.contains(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD)) {
                f12 = f13;
            } else if (str2.contains("gzip") && f13 > f10) {
                f10 = f13;
            } else if (str2.contains("deflate") && f13 > f11) {
                f11 = f13;
            }
            i10++;
        }
        if (f10 > 0.0f || f11 > 0.0f) {
            return f10 >= f11 ? ZlibWrapper.GZIP : ZlibWrapper.ZLIB;
        }
        if (f12 <= 0.0f) {
            return null;
        }
        if (f10 == -1.0f) {
            return ZlibWrapper.GZIP;
        }
        if (f11 == -1.0f) {
            return ZlibWrapper.ZLIB;
        }
        return null;
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.ctx = channelHandlerContext;
    }

    public HttpContentCompressor(int i10) {
        this(i10, 15, 8, 0);
    }

    public HttpContentCompressor(int i10, int i11, int i12) {
        this(i10, i11, i12, 0);
    }

    public HttpContentCompressor(int i10, int i11, int i12, int i13) {
        if (i10 < 0 || i10 > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i10 + " (expected: 0-9)");
        }
        if (i11 < 9 || i11 > 15) {
            throw new IllegalArgumentException("windowBits: " + i11 + " (expected: 9-15)");
        }
        if (i12 < 1 || i12 > 9) {
            throw new IllegalArgumentException("memLevel: " + i12 + " (expected: 1-9)");
        }
        if (i13 >= 0) {
            this.compressionLevel = i10;
            this.windowBits = i11;
            this.memLevel = i12;
            this.contentSizeThreshold = i13;
            return;
        }
        throw new IllegalArgumentException("contentSizeThreshold: " + i13 + " (expected: non negative number)");
    }
}
