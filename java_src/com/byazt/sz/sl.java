package com.byazt.sz;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 158})
public class sl implements sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f20047a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AtomicInteger f20048c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public my f20049i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AtomicInteger f20050n;
    public t sp;
    public AtomicInteger tt;
    public AtomicInteger uj;
    public AtomicInteger ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public qy f20051x;

    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        if ((TextUtils.equals(str, "src") || TextUtils.equals(str, "backgroundImage")) && str2.startsWith("http")) {
            this.tt.incrementAndGet();
        }
    }

    public int tt() {
        int i10 = (int) (this.f20047a * this.tt.get());
        this.f20048c.set(i10);
        return i10;
    }

    public boolean ve() {
        return this.f20048c.get() > 0;
    }

    @Override // com.byazt.sz.sp
    public void tt(com.byazt.xj.ve veVar, String str) {
        int iIncrementAndGet = this.f20050n.incrementAndGet();
        if (iIncrementAndGet > this.tt.get() - this.f20048c.get()) {
            synchronized (this) {
                if (iIncrementAndGet > this.tt.get() - this.f20048c.get() && this.f20049i != null) {
                    rl rlVar = new rl();
                    rlVar.c(-3);
                    rlVar.c("image download fail");
                    rlVar.c(veVar.tt(veVar));
                }
            }
        }
    }

    public void c(my myVar) {
        this.f20049i = myVar;
    }

    public void c(qy qyVar) {
        this.f20051x = qyVar;
    }

    @Override // com.byazt.sz.sp
    public void c() {
        this.uj.incrementAndGet();
        if (this.uj.get() == 1) {
            synchronized (this) {
                this.uj.get();
            }
        }
    }

    @Override // com.byazt.sz.sp
    public void c(com.byazt.xj.ve veVar, String str) {
        if (this.ve.incrementAndGet() == this.f20048c.get()) {
            synchronized (this) {
                if (this.ve.get() == this.f20048c.get()) {
                    if (this.sp != null) {
                        this.tt.get();
                    }
                    if (this.f20049i != null) {
                        rl rlVar = new rl();
                        rlVar.c(0);
                        rlVar.c(veVar.tt(veVar));
                    }
                }
            }
        }
    }
}
