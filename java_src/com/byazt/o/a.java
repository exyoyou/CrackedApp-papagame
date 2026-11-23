package com.byazt.o;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f17744c;
    public int[] tt;

    private a() {
    }

    public static a c(uj ujVar) throws IOException {
        tt.c(ujVar, 1835009);
        int iTt = ujVar.tt();
        int iTt2 = ujVar.tt();
        int iTt3 = ujVar.tt();
        ujVar.tt();
        int iTt4 = ujVar.tt();
        int iTt5 = ujVar.tt();
        a aVar = new a();
        aVar.f17744c = ujVar.tt(iTt2);
        if (iTt3 != 0) {
            ujVar.tt(iTt3);
        }
        int i10 = (iTt5 == 0 ? iTt : iTt5) - iTt4;
        if (i10 % 4 != 0) {
            throw new IOException("String data size is not multiple of 4 (" + i10 + ").");
        }
        aVar.tt = ujVar.tt(i10 / 4);
        if (iTt5 != 0) {
            int i11 = iTt - iTt5;
            if (i11 % 4 != 0) {
                throw new IOException("Style data size is not multiple of 4 (" + i11 + ").");
            }
            ujVar.tt(i11 / 4);
        }
        return aVar;
    }

    public String c(int i10) {
        int[] iArr;
        if (i10 < 0 || (iArr = this.f17744c) == null || i10 >= iArr.length) {
            return null;
        }
        int i11 = iArr[i10];
        int iC = c(this.tt, i11);
        StringBuilder sb2 = new StringBuilder(iC);
        while (iC != 0) {
            i11 += 2;
            sb2.append((char) c(this.tt, i11));
            iC--;
        }
        return sb2.toString();
    }

    private static final int c(int[] iArr, int i10) {
        int i11 = iArr[i10 / 4];
        return (i10 % 4) / 2 == 0 ? i11 & 65535 : i11 >>> 16;
    }
}
