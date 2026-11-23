package io.netty.handler.codec.http;

import io.netty.channel.embedded.EmbeddedChannel;
import io.netty.handler.codec.compression.ZlibCodecFactory;
import io.netty.handler.codec.compression.ZlibWrapper;

/* JADX INFO: loaded from: classes.dex */
public class HttpContentDecompressor extends HttpContentDecoder {
    private final boolean strict;

    public HttpContentDecompressor() {
        this(false);
    }

    @Override // io.netty.handler.codec.http.HttpContentDecoder
    protected EmbeddedChannel newContentDecoder(String str) throws Exception {
        if (HttpHeaderValues.GZIP.contentEqualsIgnoreCase(str) || HttpHeaderValues.X_GZIP.contentEqualsIgnoreCase(str)) {
            return new EmbeddedChannel(this.ctx.channel().id(), this.ctx.channel().metadata().hasDisconnect(), this.ctx.channel().config(), ZlibCodecFactory.newZlibDecoder(ZlibWrapper.GZIP));
        }
        if (HttpHeaderValues.DEFLATE.contentEqualsIgnoreCase(str) || HttpHeaderValues.X_DEFLATE.contentEqualsIgnoreCase(str)) {
            return new EmbeddedChannel(this.ctx.channel().id(), this.ctx.channel().metadata().hasDisconnect(), this.ctx.channel().config(), ZlibCodecFactory.newZlibDecoder(this.strict ? ZlibWrapper.ZLIB : ZlibWrapper.ZLIB_OR_NONE));
        }
        return null;
    }

    public HttpContentDecompressor(boolean z10) {
        this.strict = z10;
    }
}
