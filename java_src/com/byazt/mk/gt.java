package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 195})
public class gt {
    public static final gt ve = new gt() { // from class: com.byazt.mk.gt.1
        @Override // com.byazt.mk.gt
        public gt c(long j10) {
            return this;
        }

        @Override // com.byazt.mk.gt
        public void sp() throws IOException {
        }

        @Override // com.byazt.mk.gt
        public gt c(long j10, TimeUnit timeUnit) {
            return this;
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16922c;
    public long tt;
    public long uj;

    public gt a() {
        this.f16922c = false;
        return this;
    }

    public gt c(long j10, TimeUnit timeUnit) {
        if (j10 < 0) {
            throw new IllegalArgumentException("timeout < 0: ".concat(String.valueOf(j10)));
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.uj = timeUnit.toNanos(j10);
        return this;
    }

    public gt n() {
        this.uj = 0L;
        return this;
    }

    public long n_() {
        return this.uj;
    }

    public long o_() {
        if (this.f16922c) {
            return this.tt;
        }
        throw new IllegalStateException("No deadline");
    }

    public void sp() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.f16922c && this.tt - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public boolean ve() {
        return this.f16922c;
    }

    public gt c(long j10) {
        this.f16922c = true;
        this.tt = j10;
        return this;
    }
}
