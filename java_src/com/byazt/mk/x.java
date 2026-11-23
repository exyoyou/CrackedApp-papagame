package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 71})
public abstract class x implements my {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final my f16936c;

    public x(my myVar) {
        if (myVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f16936c = myVar;
    }

    @Override // com.byazt.mk.my
    public long c(ve veVar, long j10) throws IOException {
        return this.f16936c.c(veVar, j10);
    }

    @Override // com.byazt.mk.my, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f16936c.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f16936c.toString() + ")";
    }

    public final my tt() {
        return this.f16936c;
    }

    @Override // com.byazt.mk.my
    public gt c() {
        return this.f16936c.c();
    }
}
