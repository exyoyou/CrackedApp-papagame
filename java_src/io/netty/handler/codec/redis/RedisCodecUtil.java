package io.netty.handler.codec.redis;

import io.netty.handler.codec.http2.Http2CodecUtil;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.PlatformDependent;

/* JADX INFO: loaded from: classes.dex */
final class RedisCodecUtil {
    private RedisCodecUtil() {
    }

    static byte[] longToAsciiBytes(long j10) {
        return Long.toString(j10).getBytes(CharsetUtil.US_ASCII);
    }

    static short makeShort(char c10, char c11) {
        return (short) (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? c10 | (c11 << '\b') : (c10 << '\b') | c11);
    }

    static byte[] shortToBytes(short s10) {
        byte[] bArr = new byte[2];
        if (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
            bArr[1] = (byte) ((s10 >> 8) & 255);
            bArr[0] = (byte) (s10 & Http2CodecUtil.MAX_UNSIGNED_BYTE);
        } else {
            bArr[0] = (byte) ((s10 >> 8) & 255);
            bArr[1] = (byte) (s10 & Http2CodecUtil.MAX_UNSIGNED_BYTE);
        }
        return bArr;
    }
}
