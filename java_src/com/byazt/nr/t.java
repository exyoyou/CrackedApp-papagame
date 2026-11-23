package com.byazt.nr;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.sdk.api.model.AdnName;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 66})
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f17589a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f17590c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final byte[] f17591n;
    public static final int sp;
    public static final byte[] tt;
    public static final byte[] uj;
    public static final byte[] ve;

    static {
        byte[] bArr = {-1, -40, -1};
        f17590c = bArr;
        byte[] bArr2 = {-119, 80, 78, 71, 13, 10, 26, 10};
        tt = bArr2;
        byte[] bArr3 = {0, 0, 1, 0};
        ve = bArr3;
        byte[] bArrC = c("BM");
        uj = bArrC;
        f17591n = c("GIF87a");
        f17589a = c("GIF89a");
        sp = ((Integer) Collections.max(Arrays.asList(Integer.valueOf(bArr.length), Integer.valueOf(bArr2.length), Integer.valueOf(bArr3.length), Integer.valueOf(bArrC.length), 6))).intValue();
    }

    private static boolean a(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = ve;
        return length >= bArr2.length && c(bArr, bArr2);
    }

    public static int c() {
        return sp;
    }

    private static boolean n(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = uj;
        return length >= bArr2.length && c(bArr, bArr2);
    }

    private static boolean tt(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = f17590c;
        return length >= bArr2.length && c(bArr, bArr2);
    }

    private static boolean uj(byte[] bArr) {
        return (bArr.length >= 6 && c(bArr, f17591n)) || c(bArr, f17589a);
    }

    private static boolean ve(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = tt;
        return length >= bArr2.length && c(bArr, bArr2);
    }

    public static final String c(byte[] bArr) {
        if (tt(bArr)) {
            return "jpeg";
        }
        if (ve(bArr)) {
            return "png";
        }
        if (uj(bArr)) {
            return "gif";
        }
        if (n(bArr)) {
            return "bmp";
        }
        return a(bArr) ? "ico" : AdnName.OTHER;
    }

    private static boolean c(byte[] bArr, byte[] bArr2) {
        return c(bArr, bArr2, 0);
    }

    private static boolean c(byte[] bArr, byte[] bArr2, int i10) {
        if (bArr2.length + i10 > bArr.length) {
            return false;
        }
        for (int i11 = 0; i11 < bArr2.length; i11++) {
            if (bArr[i10 + i11] != bArr2[i11]) {
                return false;
            }
        }
        return true;
    }

    private static byte[] c(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("ASCII not found!", e10);
        }
    }
}
