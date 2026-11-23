package io.netty.handler.codec.spdy;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.util.internal.PlatformDependent;

/* JADX INFO: loaded from: classes.dex */
abstract class SpdyHeaderBlockEncoder {
    SpdyHeaderBlockEncoder() {
    }

    static SpdyHeaderBlockEncoder newInstance(SpdyVersion spdyVersion, int i10, int i11, int i12) {
        return PlatformDependent.javaVersion() >= 7 ? new SpdyHeaderBlockZlibEncoder(spdyVersion, i10) : new SpdyHeaderBlockJZlibEncoder(spdyVersion, i10, i11, i12);
    }

    abstract ByteBuf encode(ByteBufAllocator byteBufAllocator, SpdyHeadersFrame spdyHeadersFrame) throws Exception;

    abstract void end();
}
