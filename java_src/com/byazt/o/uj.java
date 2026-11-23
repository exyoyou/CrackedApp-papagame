package com.byazt.o;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InputStream f17755c;
    public boolean tt;
    public int ve;

    public uj() {
    }

    public final void c(InputStream inputStream, boolean z10) {
        this.f17755c = inputStream;
        this.tt = z10;
        this.ve = 0;
    }

    public final int tt() throws IOException {
        return c(4);
    }

    public final void ve(int i10) throws IOException {
        if (i10 > 0) {
            long j10 = i10;
            long jSkip = this.f17755c.skip(j10);
            this.ve = (int) (((long) this.ve) + jSkip);
            if (jSkip != j10) {
                throw new EOFException();
            }
        }
    }

    public uj(InputStream inputStream, boolean z10) {
        c(inputStream, z10);
    }

    public final int[] tt(int i10) throws IOException {
        int[] iArr = new int[i10];
        c(iArr, 0, i10);
        return iArr;
    }

    public final void c() {
        InputStream inputStream = this.f17755c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            c(null, false);
        }
    }

    public final void ve() throws IOException {
        ve(4);
    }

    public final int c(int i10) throws IOException {
        if (i10 >= 0 && i10 <= 4) {
            int i11 = 0;
            if (this.tt) {
                for (int i12 = (i10 - 1) * 8; i12 >= 0; i12 -= 8) {
                    int i13 = this.f17755c.read();
                    if (i13 != -1) {
                        this.ve++;
                        i11 |= i13 << i12;
                    } else {
                        throw new EOFException();
                    }
                }
                return i11;
            }
            int i14 = i10 * 8;
            int i15 = 0;
            while (i11 != i14) {
                int i16 = this.f17755c.read();
                if (i16 != -1) {
                    this.ve++;
                    i15 |= i16 << i11;
                    i11 += 8;
                } else {
                    throw new EOFException();
                }
            }
            return i15;
        }
        throw new IllegalArgumentException();
    }

    public final void c(int[] iArr, int i10, int i11) throws IOException {
        while (i11 > 0) {
            iArr[i10] = tt();
            i11--;
            i10++;
        }
    }
}
