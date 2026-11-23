package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.archives.tar.e;
import java.io.UnsupportedEncodingException;
import okio.Utf8;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 13})
public final class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f16932c = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, e.P, 77, 78, 79, 80, 81, 82, e.Q, 84, 85, 86, 87, e.S, 89, 90, 97, 98, 99, 100, 101, 102, e.T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, e.R, 121, 122, e.H, e.I, e.J, e.K, e.L, e.M, e.N, e.O, 56, 57, 43, 47};
    public static final byte[] tt = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, e.P, 77, 78, 79, 80, 81, 82, e.Q, 84, 85, 86, 87, e.S, 89, 90, 97, 98, 99, 100, 101, 102, e.T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, e.R, 121, 122, e.H, e.I, e.J, e.K, e.L, e.M, e.N, e.O, 56, 57, 45, 95};

    public static String c(byte[] bArr) {
        return c(bArr, f16932c);
    }

    private static String c(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11 += 3) {
            int i12 = i10 + 1;
            bArr3[i10] = bArr2[(bArr[i11] & 255) >> 2];
            int i13 = i12 + 1;
            int i14 = i11 + 1;
            bArr3[i12] = bArr2[((bArr[i11] & 3) << 4) | ((bArr[i14] & 255) >> 4)];
            int i15 = i13 + 1;
            int i16 = (bArr[i14] & 15) << 2;
            int i17 = i11 + 2;
            bArr3[i13] = bArr2[i16 | ((bArr[i17] & 255) >> 6)];
            i10 = i15 + 1;
            bArr3[i15] = bArr2[bArr[i17] & Utf8.REPLACEMENT_BYTE];
        }
        int length2 = bArr.length % 3;
        if (length2 == 1) {
            int i18 = i10 + 1;
            bArr3[i10] = bArr2[(bArr[length] & 255) >> 2];
            int i19 = i18 + 1;
            bArr3[i18] = bArr2[(bArr[length] & 3) << 4];
            bArr3[i19] = 61;
            bArr3[i19 + 1] = 61;
        } else if (length2 == 2) {
            int i20 = i10 + 1;
            bArr3[i10] = bArr2[(bArr[length] & 255) >> 2];
            int i21 = i20 + 1;
            int i22 = (bArr[length] & 3) << 4;
            int i23 = length + 1;
            bArr3[i20] = bArr2[((bArr[i23] & 255) >> 4) | i22];
            bArr3[i21] = bArr2[(bArr[i23] & 15) << 2];
            bArr3[i21 + 1] = 61;
        }
        try {
            return new String(bArr3, com.alipay.security.mobile.module.commonutils.crypto.a.f7272b);
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }
}
