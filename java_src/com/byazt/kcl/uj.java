package com.byazt.kcl;

import com.byazt.aas.rl;
import com.byazt.ete.ic;
import com.byazt.lcf.TTBaseVideoActivity;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_PRIMING_WORK_AROUND, 15})
public class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f16157a = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16158c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public n f16159n;
    public final TTBaseVideoActivity tt;
    public tt uj;
    public ic ve;

    public uj(TTBaseVideoActivity tTBaseVideoActivity) {
        this.tt = tTBaseVideoActivity;
    }

    public boolean a() {
        return this.f16158c;
    }

    public void c(tt ttVar, ic icVar, String str, n nVar) {
        if (this.f16157a) {
            return;
        }
        this.f16157a = true;
        this.uj = ttVar;
        this.ve = icVar;
        this.f16159n = nVar;
    }

    public boolean n() {
        if (rl.ve(this.ve)) {
            return this.uj.or();
        }
        return false;
    }

    public void tt() {
        if (rl.tt(this.ve)) {
            if (this.uj.cu() || uj()) {
                boolean z10 = !this.f16158c;
                this.f16158c = z10;
                this.uj.c(z10);
            }
        }
    }

    public boolean uj() {
        tt ttVar = this.uj;
        if (ttVar != null) {
            return ttVar.d();
        }
        return false;
    }

    public void ve() {
        this.uj.md();
        this.f16159n.c(this.tt.to().tx());
    }

    public void tt(boolean z10) {
        this.uj.a(z10);
    }

    public void c() {
        if (rl.tt(this.ve) && !this.uj.cu()) {
            uj();
        }
    }

    public void c(boolean z10) {
        tt ttVar = this.uj;
        if (ttVar != null && ttVar.h()) {
            this.f16158c = z10;
            this.f16159n.uj(z10);
            this.uj.c(this.f16158c);
        }
    }

    public void c(boolean z10, boolean z11) {
        this.uj.zm();
        c(z10);
        tt(z11);
    }

    public void c(int i10, int i11) {
        this.uj.tt(i10, i11);
    }

    public void c(ic icVar) {
        this.ve = icVar;
    }
}
