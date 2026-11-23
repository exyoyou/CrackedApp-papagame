package com.byazt.utw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RandomAccessFile f21010c;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 151})
    static class c extends Exception {
        public c(Throwable th) {
            super(th);
        }
    }

    public n(File file, String str) throws c {
        try {
            this.f21010c = new RandomAccessFile(file, str);
        } catch (FileNotFoundException e10) {
            throw new c(e10);
        }
    }

    public void c(long j10) throws c {
        try {
            this.f21010c.seek(j10);
        } catch (IOException e10) {
            throw new c(e10);
        }
    }

    public void c(byte[] bArr, int i10, int i11) throws c {
        try {
            this.f21010c.write(bArr, i10, i11);
        } catch (IOException e10) {
            throw new c(e10);
        }
    }

    public void c() {
        com.byazt.nxx.c.c(this.f21010c);
    }
}
