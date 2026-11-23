package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 91})
public abstract class sp implements rh {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final rh f16928c;

    public sp(rh rhVar) {
        if (rhVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f16928c = rhVar;
    }

    @Override // com.byazt.mk.rh
    public void a_(ve veVar, long j10) throws IOException {
        this.f16928c.a_(veVar, j10);
    }

    @Override // com.byazt.mk.rh
    public gt c() {
        return this.f16928c.c();
    }

    @Override // com.byazt.mk.rh, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f16928c.close();
    }

    @Override // com.byazt.mk.rh, java.io.Flushable
    public void flush() throws IOException {
        this.f16928c.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f16928c.toString() + ")";
    }
}
