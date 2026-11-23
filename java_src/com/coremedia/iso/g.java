package com.coremedia.iso;

import androidx.core.view.MotionEventCompat;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public final class g {
    public static int a(byte b10) {
        return b10 < 0 ? b10 + 256 : b10;
    }

    public static String b(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static double c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((double) ((((0 | ((bArr[0] << BinaryMemcacheOpcodes.FLUSHQ) & (-16777216))) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK)) | (bArr[3] & 255))) / 1.073741824E9d;
    }

    public static double d(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((double) ((((0 | ((bArr[0] << BinaryMemcacheOpcodes.FLUSHQ) & (-16777216))) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK)) | (bArr[3] & 255))) / 65536.0d;
    }

    public static float e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        return ((short) (((short) (0 | ((bArr[0] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK))) | (bArr[1] & 255))) / 256.0f;
    }

    public static String f(ByteBuffer byteBuffer) {
        int i10 = i(byteBuffer);
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < 3; i11++) {
            sb2.append((char) (((i10 >> ((2 - i11) * 5)) & 31) + 96));
        }
        return sb2.toString();
    }

    public static String g(ByteBuffer byteBuffer) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            byte b10 = byteBuffer.get();
            if (b10 == 0) {
                return l.a(byteArrayOutputStream.toByteArray());
            }
            byteArrayOutputStream.write(b10);
        }
    }

    public static String h(ByteBuffer byteBuffer, int i10) {
        byte[] bArr = new byte[i10];
        byteBuffer.get(bArr);
        return l.a(bArr);
    }

    public static int i(ByteBuffer byteBuffer) {
        return (a(byteBuffer.get()) << 8) + 0 + a(byteBuffer.get());
    }

    public static int j(ByteBuffer byteBuffer) {
        return a(byteBuffer.get()) + 0 + (a(byteBuffer.get()) << 8);
    }

    public static int k(ByteBuffer byteBuffer) {
        return (i(byteBuffer) << 8) + 0 + a(byteBuffer.get());
    }

    public static long l(ByteBuffer byteBuffer) {
        long j10 = byteBuffer.getInt();
        return j10 < 0 ? j10 + 4294967296L : j10;
    }

    public static long m(ByteBuffer byteBuffer) {
        long jP = p(byteBuffer);
        return (((long) p(byteBuffer)) << 24) + (((long) p(byteBuffer)) << 16) + (p(byteBuffer) << 8) + (jP << 0);
    }

    public static long n(ByteBuffer byteBuffer) {
        long jI = ((long) i(byteBuffer)) << 32;
        if (jI >= 0) {
            return jI + l(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }

    public static long o(ByteBuffer byteBuffer) {
        long jL = (l(byteBuffer) << 32) + 0;
        if (jL >= 0) {
            return jL + l(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }

    public static int p(ByteBuffer byteBuffer) {
        return a(byteBuffer.get());
    }
}
