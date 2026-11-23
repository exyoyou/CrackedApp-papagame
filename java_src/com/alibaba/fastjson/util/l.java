package com.alibaba.fastjson.util;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.fasterxml.jackson.core.base.GeneratorBase;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import okio.Utf8;

/* JADX INFO: loaded from: classes7.dex */
public class l extends CharsetDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Charset f6860a = Charset.forName("UTF-8");

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f6861a = 65536;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f6862b = 1114111;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final /* synthetic */ boolean f6863c = false;

        private a() {
        }

        public static char a(int i10) {
            return (char) ((((i10 - 65536) >> 10) & 1023) | GeneratorBase.SURR1_FIRST);
        }

        public static char b(int i10) {
            return (char) (((i10 - 65536) & 1023) | 56320);
        }

        public static boolean c(int i10) {
            return i10 >= 65536 && i10 <= 1114111;
        }
    }

    public l() {
        super(f6860a, 1.0f, 1.0f);
    }

    private CoderResult a(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        int i10;
        byte[] bArrArray = byteBuffer.array();
        int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
        int iArrayOffset2 = byteBuffer.arrayOffset() + byteBuffer.limit();
        char[] cArrArray = charBuffer.array();
        int iArrayOffset3 = charBuffer.arrayOffset() + charBuffer.position();
        int iArrayOffset4 = charBuffer.arrayOffset() + charBuffer.limit();
        int iMin = Math.min(iArrayOffset2 - iArrayOffset, iArrayOffset4 - iArrayOffset3) + iArrayOffset3;
        while (iArrayOffset3 < iMin) {
            byte b10 = bArrArray[iArrayOffset];
            if (b10 < 0) {
                break;
            }
            iArrayOffset++;
            cArrArray[iArrayOffset3] = (char) b10;
            iArrayOffset3++;
        }
        int i11 = iArrayOffset;
        while (true) {
            int i12 = iArrayOffset3;
            while (i11 < iArrayOffset2) {
                byte b11 = bArrArray[i11];
                if (b11 < 0) {
                    if ((b11 >> 5) == -2) {
                        if (iArrayOffset2 - i11 < 2 || i12 >= iArrayOffset4) {
                            return j(byteBuffer, i11, iArrayOffset2, charBuffer, i12, 2);
                        }
                        byte b12 = bArrArray[i11 + 1];
                        if (b(b11, b12)) {
                            return g(byteBuffer, i11, charBuffer, i12, 2);
                        }
                        i10 = i12 + 1;
                        cArrArray[i12] = (char) (((b11 << 6) ^ b12) ^ Utf8.MASK_2BYTES);
                        i11 += 2;
                    } else if ((b11 >> 4) == -2) {
                        if (iArrayOffset2 - i11 < 3 || i12 >= iArrayOffset4) {
                            return j(byteBuffer, i11, iArrayOffset2, charBuffer, i12, 3);
                        }
                        byte b13 = bArrArray[i11 + 1];
                        byte b14 = bArrArray[i11 + 2];
                        if (c(b11, b13, b14)) {
                            return g(byteBuffer, i11, charBuffer, i12, 3);
                        }
                        i10 = i12 + 1;
                        cArrArray[i12] = (char) ((((b11 << 12) ^ (b13 << 6)) ^ b14) ^ 8064);
                        i11 += 3;
                    } else {
                        if ((b11 >> 3) != -2) {
                            return g(byteBuffer, i11, charBuffer, i12, 1);
                        }
                        if (iArrayOffset2 - i11 < 4 || iArrayOffset4 - i12 < 2) {
                            return j(byteBuffer, i11, iArrayOffset2, charBuffer, i12, 4);
                        }
                        byte b15 = bArrArray[i11 + 1];
                        byte b16 = bArrArray[i11 + 2];
                        byte b17 = bArrArray[i11 + 3];
                        int i13 = ((b11 & 7) << 18) | ((b15 & Utf8.REPLACEMENT_BYTE) << 12) | ((b16 & Utf8.REPLACEMENT_BYTE) << 6) | (b17 & Utf8.REPLACEMENT_BYTE);
                        if (d(b15, b16, b17) || !a.c(i13)) {
                            return g(byteBuffer, i11, charBuffer, i12, 4);
                        }
                        int i14 = i12 + 1;
                        cArrArray[i12] = a.a(i13);
                        i10 = i14 + 1;
                        cArrArray[i14] = a.b(i13);
                        i11 += 4;
                    }
                    i12 = i10;
                } else {
                    if (i12 >= iArrayOffset4) {
                        return j(byteBuffer, i11, iArrayOffset2, charBuffer, i12, 1);
                    }
                    iArrayOffset3 = i12 + 1;
                    cArrArray[i12] = (char) b11;
                    i11++;
                }
            }
            return j(byteBuffer, i11, iArrayOffset2, charBuffer, i12, 0);
        }
    }

    private static final boolean b(int i10, int i11) {
        return (i10 & 30) == 0 || (i11 & 192) != 128;
    }

    private static boolean c(int i10, int i11, int i12) {
        return ((i10 != -32 || (i11 & Opcodes.SHL_INT_LIT8) != 128) && (i11 & 192) == 128 && (i12 & 192) == 128) ? false : true;
    }

    private static final boolean d(int i10, int i11, int i12) {
        return ((i10 & 192) == 128 && (i11 & 192) == 128 && (i12 & 192) == 128) ? false : true;
    }

    private static boolean e(int i10) {
        return (i10 & 192) != 128;
    }

    private static CoderResult f(ByteBuffer byteBuffer, int i10) {
        for (int i11 = 1; i11 < i10; i11++) {
            if (e(byteBuffer.get())) {
                return CoderResult.malformedForLength(i11);
            }
        }
        return CoderResult.malformedForLength(i10);
    }

    private static CoderResult g(ByteBuffer byteBuffer, int i10, CharBuffer charBuffer, int i11, int i12) {
        byteBuffer.position(i10 - byteBuffer.arrayOffset());
        CoderResult coderResultH = h(byteBuffer, i12);
        i(byteBuffer, i10, charBuffer, i11);
        return coderResultH;
    }

    public static CoderResult h(ByteBuffer byteBuffer, int i10) {
        int i11 = 1;
        if (i10 == 1) {
            byte b10 = byteBuffer.get();
            if ((b10 >> 2) == -2) {
                return byteBuffer.remaining() < 4 ? CoderResult.UNDERFLOW : f(byteBuffer, 5);
            }
            if ((b10 >> 1) == -2) {
                return byteBuffer.remaining() < 5 ? CoderResult.UNDERFLOW : f(byteBuffer, 6);
            }
            return CoderResult.malformedForLength(1);
        }
        if (i10 == 2) {
            return CoderResult.malformedForLength(1);
        }
        if (i10 == 3) {
            byte b11 = byteBuffer.get();
            byte b12 = byteBuffer.get();
            if ((b11 != -32 || (b12 & 224) != 128) && !e(b12)) {
                i11 = 2;
            }
            return CoderResult.malformedForLength(i11);
        }
        if (i10 != 4) {
            throw new IllegalStateException();
        }
        int i12 = byteBuffer.get() & 255;
        int i13 = byteBuffer.get() & 255;
        if (i12 > 244 || ((i12 == 240 && (i13 < 144 || i13 > 191)) || ((i12 == 244 && (i13 & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) != 128) || e(i13)))) {
            return CoderResult.malformedForLength(1);
        }
        return e(byteBuffer.get()) ? CoderResult.malformedForLength(2) : CoderResult.malformedForLength(3);
    }

    static final void i(Buffer buffer, int i10, Buffer buffer2, int i11) {
        buffer.position(i10);
        buffer2.position(i11);
    }

    private static CoderResult j(Buffer buffer, int i10, int i11, Buffer buffer2, int i12, int i13) {
        i(buffer, i10, buffer2, i12);
        return (i13 == 0 || i11 - i10 < i13) ? CoderResult.UNDERFLOW : CoderResult.OVERFLOW;
    }

    @Override // java.nio.charset.CharsetDecoder
    protected CoderResult decodeLoop(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        return a(byteBuffer, charBuffer);
    }
}
