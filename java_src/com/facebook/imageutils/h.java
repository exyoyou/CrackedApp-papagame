package com.facebook.imageutils;

import android.util.Pair;
import androidx.core.view.MotionEventCompat;
import com.facebook.infer.annotation.Nullsafe;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f28789a = "VP8 ";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f28790b = "VP8L";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f28791c = "VP8X";

    private h() {
    }

    private static boolean a(byte[] what, String with) {
        if (what.length != with.length()) {
            return false;
        }
        for (int i10 = 0; i10 < what.length; i10++) {
            if (with.charAt(i10) != what[i10]) {
                return false;
            }
        }
        return true;
    }

    public static int b(InputStream is) throws IOException {
        return ((((byte) is.read()) << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (((byte) is.read()) & 255);
    }

    private static byte c(InputStream is) throws IOException {
        return (byte) (is.read() & 255);
    }

    private static String d(byte[] header) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : header) {
            sb2.append((char) b10);
        }
        return sb2.toString();
    }

    private static int e(InputStream is) throws IOException {
        byte b10 = (byte) is.read();
        byte b11 = (byte) is.read();
        return ((((byte) is.read()) << BinaryMemcacheOpcodes.FLUSHQ) & (-16777216)) | ((((byte) is.read()) << 16) & 16711680) | ((b11 << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (b10 & 255);
    }

    private static short f(InputStream is) throws IOException {
        return (short) (is.read() & 255);
    }

    @Nullable
    public static Pair<Integer, Integer> g(InputStream is) {
        byte[] bArr = new byte[4];
        try {
            try {
                try {
                    is.read(bArr);
                    if (!a(bArr, "RIFF")) {
                        try {
                            is.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        return null;
                    }
                    e(is);
                    is.read(bArr);
                    if (!a(bArr, "WEBP")) {
                        try {
                            is.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                        return null;
                    }
                    is.read(bArr);
                    String strD = d(bArr);
                    if (f28789a.equals(strD)) {
                        Pair<Integer, Integer> pairH = h(is);
                        try {
                            is.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                        return pairH;
                    }
                    if (f28790b.equals(strD)) {
                        Pair<Integer, Integer> pairI = i(is);
                        try {
                            is.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                        return pairI;
                    }
                    if (!f28791c.equals(strD)) {
                        is.close();
                        return null;
                    }
                    Pair<Integer, Integer> pairJ = j(is);
                    try {
                        is.close();
                    } catch (IOException e14) {
                        e14.printStackTrace();
                    }
                    return pairJ;
                } catch (IOException e15) {
                    e15.printStackTrace();
                }
            } catch (IOException e16) {
                e16.printStackTrace();
                if (is != null) {
                    is.close();
                }
            }
        } catch (Throwable th) {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e17) {
                    e17.printStackTrace();
                }
            }
            throw th;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> h(final InputStream is) throws IOException {
        is.skip(7L);
        short sF = f(is);
        short sF2 = f(is);
        short sF3 = f(is);
        if (sF == 157 && sF2 == 1 && sF3 == 42) {
            return new Pair<>(Integer.valueOf(b(is)), Integer.valueOf(b(is)));
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> i(final InputStream is) throws IOException {
        e(is);
        if (c(is) != 47) {
            return null;
        }
        int i10 = ((byte) is.read()) & 255;
        int i11 = ((byte) is.read()) & 255;
        return new Pair<>(Integer.valueOf((i10 | ((i11 & 63) << 8)) + 1), Integer.valueOf(((((((byte) is.read()) & 255) & 15) << 10) | ((((byte) is.read()) & 255) << 2) | ((i11 & 192) >> 6)) + 1));
    }

    private static Pair<Integer, Integer> j(final InputStream is) throws IOException {
        is.skip(8L);
        return new Pair<>(Integer.valueOf(l(is) + 1), Integer.valueOf(l(is) + 1));
    }

    private static boolean k(byte input, int bitIndex) {
        return ((input >> (bitIndex % 8)) & 1) == 1;
    }

    private static int l(InputStream is) throws IOException {
        byte bC = c(is);
        return ((c(is) << 16) & 16711680) | ((c(is) << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bC & 255);
    }
}
