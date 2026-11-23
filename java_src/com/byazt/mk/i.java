package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 42})
public class i extends gt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public gt f16923c;

    public i(gt gtVar) {
        if (gtVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f16923c = gtVar;
    }

    @Override // com.byazt.mk.gt
    public gt a() {
        return this.f16923c.a();
    }

    public final gt c() {
        return this.f16923c;
    }

    @Override // com.byazt.mk.gt
    public gt n() {
        return this.f16923c.n();
    }

    @Override // com.byazt.mk.gt
    public long n_() {
        return this.f16923c.n_();
    }

    @Override // com.byazt.mk.gt
    public long o_() {
        return this.f16923c.o_();
    }

    @Override // com.byazt.mk.gt
    public void sp() throws IOException {
        this.f16923c.sp();
    }

    @Override // com.byazt.mk.gt
    public boolean ve() {
        return this.f16923c.ve();
    }

    public final i c(gt gtVar) {
        if (gtVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f16923c = gtVar;
        return this;
    }

    @Override // com.byazt.mk.gt
    public gt c(long j10, TimeUnit timeUnit) {
        return this.f16923c.c(j10, timeUnit);
    }

    @Override // com.byazt.mk.gt
    public gt c(long j10) {
        return this.f16923c.c(j10);
    }
}
