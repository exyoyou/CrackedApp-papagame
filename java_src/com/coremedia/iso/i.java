package com.coremedia.iso;

import io.netty.handler.codec.http2.Http2CodecUtil;
import java.nio.ByteBuffer;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes9.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f25231a = false;

    public static void a(ByteBuffer byteBuffer, double d10) {
        int i10 = (int) (d10 * 1.073741824E9d);
        byteBuffer.put((byte) (((-16777216) & i10) >> 24));
        byteBuffer.put((byte) ((16711680 & i10) >> 16));
        byteBuffer.put((byte) ((65280 & i10) >> 8));
        byteBuffer.put((byte) (i10 & 255));
    }

    public static void b(ByteBuffer byteBuffer, double d10) {
        int i10 = (int) (d10 * 65536.0d);
        byteBuffer.put((byte) (((-16777216) & i10) >> 24));
        byteBuffer.put((byte) ((16711680 & i10) >> 16));
        byteBuffer.put((byte) ((65280 & i10) >> 8));
        byteBuffer.put((byte) (i10 & 255));
    }

    public static void c(ByteBuffer byteBuffer, double d10) {
        short s10 = (short) (d10 * 256.0d);
        byteBuffer.put((byte) ((65280 & s10) >> 8));
        byteBuffer.put((byte) (s10 & Http2CodecUtil.MAX_UNSIGNED_BYTE));
    }

    public static void d(ByteBuffer byteBuffer, String str) {
        if (str.getBytes().length != 3) {
            throw new IllegalArgumentException(x.a.f97579g + str + "\" language string isn't exactly 3 characters long!");
        }
        int i10 = 0;
        for (int i11 = 0; i11 < 3; i11++) {
            i10 += (str.getBytes()[i11] - 96) << ((2 - i11) * 5);
        }
        f(byteBuffer, i10);
    }

    public static void e(ByteBuffer byteBuffer, String str) {
        byte[] bArrB = l.b(str);
        m(byteBuffer, bArrB.length);
        byteBuffer.put(bArrB);
    }

    public static void f(ByteBuffer byteBuffer, int i10) {
        int i11 = i10 & 65535;
        m(byteBuffer, i11 >> 8);
        m(byteBuffer, i11 & 255);
    }

    public static void g(ByteBuffer byteBuffer, int i10) {
        int i11 = i10 & 65535;
        m(byteBuffer, i11 & 255);
        m(byteBuffer, i11 >> 8);
    }

    public static void h(ByteBuffer byteBuffer, int i10) {
        int i11 = i10 & 16777215;
        f(byteBuffer, i11 >> 8);
        m(byteBuffer, i11);
    }

    public static void i(ByteBuffer byteBuffer, long j10) {
        byteBuffer.putInt((int) j10);
    }

    public static void j(ByteBuffer byteBuffer, long j10) {
        g(byteBuffer, ((int) j10) & 65535);
        g(byteBuffer, (int) ((j10 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    public static void k(ByteBuffer byteBuffer, long j10) {
        long j11 = j10 & 281474976710655L;
        f(byteBuffer, (int) (j11 >> 32));
        i(byteBuffer, j11 & 4294967295L);
    }

    public static void l(ByteBuffer byteBuffer, long j10) {
        byteBuffer.putLong(j10);
    }

    public static void m(ByteBuffer byteBuffer, int i10) {
        byteBuffer.put((byte) (i10 & 255));
    }

    public static void n(ByteBuffer byteBuffer, String str) {
        byteBuffer.put(l.b(str));
        m(byteBuffer, 0);
    }

    public static void o(ByteBuffer byteBuffer, String str) {
        byteBuffer.put(l.b(str));
        m(byteBuffer, 0);
    }
}
