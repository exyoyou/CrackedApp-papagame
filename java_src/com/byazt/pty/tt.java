package com.byazt.pty;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_TTMP_DNS_PARSE_TIMEOUT, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f18864c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ByteBuffer f18865n;
    public final long tt;
    public final long uj;
    public final int ve;

    public tt(long j10, long j11, int i10, long j12, ByteBuffer byteBuffer) {
        this.f18864c = j10;
        this.tt = j11;
        this.ve = i10;
        this.uj = j12;
        this.f18865n = byteBuffer;
    }

    public long c() {
        return this.f18864c;
    }

    public ByteBuffer n() {
        return this.f18865n;
    }

    public long tt() {
        return this.tt;
    }

    public long uj() {
        return this.uj;
    }

    public int ve() {
        return this.ve;
    }
}
