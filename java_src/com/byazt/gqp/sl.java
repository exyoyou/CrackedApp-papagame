package com.byazt.gqp;

import com.byazt.eg.md;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, 158})
public class sl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f14687a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f14688c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f14689n;
    public long sp;
    public long tt;
    public long uj;
    public long ve;

    public sl() {
        this.f14688c = System.currentTimeMillis();
    }

    public void c() {
        this.ve = System.currentTimeMillis();
    }

    public void tt() {
        this.uj = System.currentTimeMillis();
    }

    public void uj() {
        this.tt = System.currentTimeMillis();
    }

    public void ve() {
        this.f14689n = System.currentTimeMillis();
    }

    public void c(long j10) {
        this.f14687a = j10;
    }

    public void tt(long j10) {
        this.sp = j10;
    }

    public sl(Object obj) {
        this.f14688c = System.currentTimeMillis();
        try {
            if (obj instanceof md) {
                md mdVar = (md) obj;
                this.f14688c = mdVar.uj();
                this.tt = mdVar.da();
                this.ve = mdVar.n();
                this.uj = mdVar.a();
                this.f14689n = mdVar.sp();
                this.f14687a = mdVar.x();
                this.sp = mdVar.i();
            }
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }
}
