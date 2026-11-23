package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.charset.Charset;
import kotlin.UShort;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 117})
public final class rl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f16926c = Charset.forName("UTF-8");

    public static int c(int i10) {
        return ((i10 & 255) << 24) | (((-16777216) & i10) >>> 24) | ((16711680 & i10) >>> 8) | ((65280 & i10) << 8);
    }

    private static <T extends Throwable> void tt(Throwable th) throws Throwable {
        throw th;
    }

    public static short c(short s10) {
        int i10 = s10 & UShort.MAX_VALUE;
        return (short) (((i10 & 255) << 8) | ((65280 & i10) >>> 8));
    }

    public static void c(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j10), Long.valueOf(j11), Long.valueOf(j12)));
        }
    }

    public static void c(Throwable th) throws Throwable {
        tt(th);
    }

    public static boolean c(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            if (bArr[i13 + i10] != bArr2[i13 + i11]) {
                return false;
            }
        }
        return true;
    }
}
