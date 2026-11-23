package com.byazt.v;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_TRY_COUNT, 20})
public class c implements tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RandomAccessFile f21128c;

    public c(File file) throws FileNotFoundException {
        this.f21128c = new RandomAccessFile(file, "r");
    }

    @Override // com.byazt.v.tt
    public long c() throws IOException {
        return this.f21128c.length();
    }

    @Override // com.byazt.v.tt
    public void tt() throws IOException {
        this.f21128c.close();
    }

    @Override // com.byazt.v.tt
    public int c(byte[] bArr, int i10, int i11) throws IOException {
        return this.f21128c.read(bArr, i10, i11);
    }

    @Override // com.byazt.v.tt
    public void c(long j10, long j11) throws IOException {
        this.f21128c.seek(j10);
    }
}
