package com.byazt.ab;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import com.byazt.aas.pf;
import com.byazt.bzd.t;
import com.byazt.dna.qp;
import com.byazt.ete.ic;
import com.byazt.ete.lo;
import com.byazt.ete.my;
import com.byazt.ete.xd;
import com.byazt.jzl.a;
import com.byazt.nr.d;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 757, 20})
public class c implements qp.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FrameLayout f11510a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f11511c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f11514n;
    public boolean sl;
    public PlayableVideoContainer sp;
    public final Context tt;
    public final ic ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ve f11517x;
    public final com.byazt.zd.tt yp;
    public final d uj = new d(Looper.getMainLooper(), this);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f11513i = false;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f11512da = true;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f11515t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f11516u = false;

    public c(String str, Activity activity, ic icVar, int i10, com.byazt.zd.tt ttVar, FrameLayout frameLayout) {
        this.f11511c = str;
        this.tt = activity;
        this.ve = icVar;
        this.f11514n = i10;
        if (!my.uj(icVar)) {
            this.f11510a = frameLayout;
        }
        n();
        this.yp = ttVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void da() {
        if (this.sp == null || this.f11510a == null) {
            return;
        }
        sp();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.sp, "translationX", -pf.ve(this.tt, 150.0f), 0.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.sp, "translationY", -pf.ve(this.tt, 100.0f), 0.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.sp, "alpha", 0.1f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.setDuration(500L);
        animatorSet.start();
    }

    private void i() {
        PlayableVideoContainer playableVideoContainer = this.sp;
        if (playableVideoContainer == null) {
            return;
        }
        playableVideoContainer.tt(true);
        this.uj.sendEmptyMessageDelayed(1, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        this.f11515t = true;
        if (this.sl) {
            this.sl = false;
            tt();
        }
        c(this.f11512da);
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        PlayableVideoContainer playableVideoContainer = this.sp;
        if (playableVideoContainer == null) {
            return;
        }
        playableVideoContainer.tt(false);
    }

    private void a() {
        pf.c((View) this.f11510a, 8);
        pf.c((View) this.sp, 8);
    }

    private void n() {
        if (this.f11510a == null) {
            return;
        }
        if (lo.tt(this.ve) == 1) {
            PlayableVideoContainer playableVideoContainer = new PlayableVideoContainer(this.tt);
            playableVideoContainer.setBackgroundColor(0);
            playableVideoContainer.setVisibility(8);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(pf.ve(this.tt, 156.0f), pf.ve(this.tt, 87.0f));
            layoutParams.gravity = 8388661;
            layoutParams.topMargin = pf.ve(this.tt, 55.0f);
            layoutParams.rightMargin = pf.ve(this.tt, 20.0f);
            this.f11510a.addView(playableVideoContainer, layoutParams);
            this.sp = playableVideoContainer;
            return;
        }
        PlayableVideoContainer playableVideoContainer2 = new PlayableVideoContainer(this.tt);
        playableVideoContainer2.setBackgroundColor(0);
        playableVideoContainer2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(pf.ve(this.tt, 73.0f), pf.ve(this.tt, 130.0f));
        layoutParams2.gravity = 8388661;
        layoutParams2.topMargin = pf.ve(this.tt, 55.0f);
        layoutParams2.rightMargin = pf.ve(this.tt, 30.0f);
        this.f11510a.addView(playableVideoContainer2, layoutParams2);
        this.sp = playableVideoContainer2;
    }

    private void sp() {
        pf.c((View) this.f11510a, 0);
        pf.c((View) this.sp, 0);
    }

    public void c(long j10, boolean z10) {
        PlayableVideoContainer playableVideoContainer;
        this.f11516u = true;
        this.f11512da = z10;
        c(j10);
        if (this.f11513i) {
            if (this.yp != null && (playableVideoContainer = this.sp) != null) {
                playableVideoContainer.postDelayed(new Runnable() { // from class: com.byazt.ab.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.da();
                    }
                }, 500L);
                this.sp.setCustomClickListener(new View.OnClickListener() { // from class: com.byazt.ab.c.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (c.this.f11510a != null) {
                            c.this.c();
                            c.this.yp.tt();
                        }
                    }
                });
            } else if (t.c(this.ve)) {
                a();
            } else {
                sp();
            }
        }
    }

    public void tt() {
        if (this.f11516u && this.f11513i && this.f11517x != null) {
            this.uj.removeMessages(1);
            if (this.f11515t) {
                this.f11517x.a();
            } else {
                this.sl = true;
            }
        }
    }

    public void uj() {
        ve veVar = this.f11517x;
        if (veVar == null) {
            return;
        }
        veVar.da();
        this.f11517x = null;
        this.f11513i = false;
        this.sl = false;
        this.f11515t = false;
    }

    public void ve() {
        if (this.f11516u && this.f11513i && this.f11517x != null) {
            this.sl = false;
            this.uj.sendEmptyMessageDelayed(1, 2000L);
            if (this.f11517x.lr()) {
                return;
            }
            this.f11517x.x();
        }
    }

    public void c() {
        this.f11516u = false;
        uj();
        a();
    }

    private void c(long j10) {
        if (this.sp == null) {
            return;
        }
        if (this.yp != null || t.c(this.ve)) {
            if (this.f11513i) {
                ve veVar = this.f11517x;
                if (veVar != null) {
                    veVar.tt(j10);
                    this.f11517x.c(j10);
                    return;
                }
                return;
            }
            this.f11513i = true;
            a aVarC = xd.c(1, this.ve);
            aVarC.setCid(this.ve.uj());
            aVarC.setWidth(this.sp.getWidth());
            aVarC.setHeight(this.sp.getHeight());
            aVarC.setLogExtra(this.ve.w_());
            aVarC.setCurrent(j10);
            aVarC.setQuiet(this.f11512da);
            if (t.c(this.ve)) {
                aVarC.setAudio(true);
            }
            ve veVar2 = new ve(this.tt, this.sp.getVideoContainer(), this.ve, null);
            this.f11517x = veVar2;
            veVar2.c(new com.byazt.zd.c.InterfaceC0501c() { // from class: com.byazt.ab.c.3
                @Override // com.byazt.zd.c.InterfaceC0501c
                public void c() {
                    if (c.this.yp != null) {
                        c.this.c();
                        c.this.yp.ve();
                    } else {
                        if (!t.c(c.this.ve) || c.this.f11517x == null || c.this.f11517x.n()) {
                            return;
                        }
                        c.this.c();
                    }
                }

                @Override // com.byazt.zd.c.InterfaceC0501c
                public void tt() {
                    c.this.sp.c(true);
                    if (c.this.yp != null) {
                        c.this.yp.da();
                    }
                }

                @Override // com.byazt.zd.c.InterfaceC0501c
                public void ve() {
                    c.this.x();
                }

                @Override // com.byazt.zd.c.InterfaceC0501c
                public void c(int i10, String str) {
                    if (i10 == 308) {
                        return;
                    }
                    c.this.sp.c(true);
                }

                @Override // com.byazt.zd.c.InterfaceC0501c
                public void c(long j11, long j12) {
                    c.this.sp.c(false);
                    if (c.this.yp != null) {
                        c.this.yp.c(j11, j12);
                    }
                }
            });
            this.f11517x.tt(j10);
            this.f11517x.c(aVarC);
            if (this.yp != null) {
                this.f11517x.gr();
                this.f11517x.sp(false);
                this.sp.c();
            } else {
                if (t.c(this.ve)) {
                    this.f11517x.sp(true);
                }
                i();
            }
        }
    }

    public void c(boolean z10) {
        ve veVar = this.f11517x;
        if (veVar == null) {
            return;
        }
        this.f11512da = z10;
        veVar.tt(z10);
    }
}
