package com.byazt.kk;

import android.view.Choreographer;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.MainThread;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID, 91})
public class sp extends c implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.ga.a f16296da;
    public float tt = 1.0f;
    public boolean ve = false;
    public long uj = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f16298n = 0.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f16294a = 0.0f;
    public int sp = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f16299x = -2.1474836E9f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f16297i = 2.1474836E9f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16295c = false;
    public boolean sl = false;

    private boolean gt() {
        return da() < 0.0f;
    }

    private float my() {
        com.byazt.ga.a aVar = this.f16296da;
        if (aVar == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / aVar.u()) / Math.abs(this.tt);
    }

    private void rl() {
        if (this.f16296da == null) {
            return;
        }
        float f10 = this.f16294a;
        if (f10 < this.f16299x || f10 > this.f16297i) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f16299x), Float.valueOf(this.f16297i), Float.valueOf(this.f16294a)));
        }
    }

    public float a() {
        com.byazt.ga.a aVar = this.f16296da;
        if (aVar == null) {
            return 0.0f;
        }
        return (this.f16294a - aVar.a()) / (this.f16296da.sp() - this.f16296da.a());
    }

    public void c(com.byazt.ga.a aVar) {
        boolean z10 = this.f16296da == null;
        this.f16296da = aVar;
        if (z10) {
            c(Math.max(this.f16299x, aVar.a()), Math.min(this.f16297i, aVar.sp()));
        } else {
            c((int) aVar.a(), (int) aVar.sp());
        }
        float f10 = this.f16294a;
        this.f16294a = 0.0f;
        this.f16298n = 0.0f;
        c((int) f10);
        ve();
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    @MainThread
    public void cancel() {
        tt();
        rh();
    }

    public float da() {
        return this.tt;
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j10) {
        nu();
        if (this.f16296da == null || !isRunning()) {
            return;
        }
        com.byazt.ga.n.c("LottieValueAnimator#doFrame");
        long j11 = this.uj;
        float fMy = (j11 != 0 ? j10 - j11 : 0L) / my();
        float f10 = this.f16298n;
        if (gt()) {
            fMy = -fMy;
        }
        float f11 = f10 + fMy;
        boolean z10 = !i.ve(f11, z(), m());
        float f12 = this.f16298n;
        float fTt = i.tt(f11, z(), m());
        this.f16298n = fTt;
        if (this.sl) {
            fTt = (float) Math.floor(fTt);
        }
        this.f16294a = fTt;
        this.uj = j10;
        if (!this.sl || this.f16298n != f12) {
            ve();
        }
        if (z10) {
            if (getRepeatCount() == -1 || this.sp < getRepeatCount()) {
                c();
                this.sp++;
                if (getRepeatMode() == 2) {
                    this.ve = !this.ve;
                    i();
                } else {
                    float fM = gt() ? m() : z();
                    this.f16298n = fM;
                    this.f16294a = fM;
                }
                this.uj = j10;
            } else {
                float fZ = this.tt < 0.0f ? z() : m();
                this.f16298n = fZ;
                this.f16294a = fZ;
                rh();
                tt(gt());
            }
        }
        rl();
        com.byazt.ga.n.tt("LottieValueAnimator#doFrame");
    }

    @Override // android.animation.ValueAnimator
    public float getAnimatedFraction() {
        float fZ;
        float fM;
        float fZ2;
        if (this.f16296da == null) {
            return 0.0f;
        }
        if (gt()) {
            fZ = m() - this.f16294a;
            fM = m();
            fZ2 = z();
        } else {
            fZ = this.f16294a - z();
            fM = m();
            fZ2 = z();
        }
        return fZ / (fM - fZ2);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(a());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        com.byazt.ga.a aVar = this.f16296da;
        if (aVar == null) {
            return 0L;
        }
        return (long) aVar.n();
    }

    public void i() {
        ve(-da());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.f16295c;
    }

    public float m() {
        com.byazt.ga.a aVar = this.f16296da;
        if (aVar == null) {
            return 0.0f;
        }
        float f10 = this.f16297i;
        return f10 == 2.1474836E9f ? aVar.sp() : f10;
    }

    public void nu() {
        if (isRunning()) {
            uj(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    @MainThread
    public void rh() {
        uj(true);
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i10) {
        super.setRepeatMode(i10);
        if (i10 == 2 || !this.ve) {
            return;
        }
        this.ve = false;
        i();
    }

    @MainThread
    public void sl() {
        this.f16295c = true;
        c(gt());
        c((int) (gt() ? m() : z()));
        this.uj = 0L;
        this.sp = 0;
        nu();
    }

    public float sp() {
        return this.f16294a;
    }

    @MainThread
    public void t() {
        rh();
        tt(gt());
    }

    public void tt(float f10) {
        c(this.f16299x, f10);
    }

    @MainThread
    public void u() {
        rh();
        uj();
    }

    @MainThread
    public void uj(boolean z10) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z10) {
            this.f16295c = false;
        }
    }

    public void ve(boolean z10) {
        this.sl = z10;
    }

    public void x() {
        this.f16296da = null;
        this.f16299x = -2.1474836E9f;
        this.f16297i = 2.1474836E9f;
    }

    @MainThread
    public void yp() {
        this.f16295c = true;
        nu();
        this.uj = 0L;
        if (gt() && sp() == z()) {
            c(m());
        } else if (!gt() && sp() == m()) {
            c(z());
        }
        n();
    }

    public float z() {
        com.byazt.ga.a aVar = this.f16296da;
        if (aVar == null) {
            return 0.0f;
        }
        float f10 = this.f16299x;
        return f10 == -2.1474836E9f ? aVar.a() : f10;
    }

    @Override // com.byazt.kk.c
    public void tt() {
        super.tt();
        tt(gt());
    }

    public void ve(float f10) {
        this.tt = f10;
    }

    public void c(float f10) {
        if (this.f16298n == f10) {
            return;
        }
        float fTt = i.tt(f10, z(), m());
        this.f16298n = fTt;
        if (this.sl) {
            fTt = (float) Math.floor(fTt);
        }
        this.f16294a = fTt;
        this.uj = 0L;
        ve();
    }

    public void c(int i10) {
        c(i10, (int) this.f16297i);
    }

    public void c(float f10, float f11) {
        if (f10 <= f11) {
            com.byazt.ga.a aVar = this.f16296da;
            float fA = aVar == null ? -3.4028235E38f : aVar.a();
            com.byazt.ga.a aVar2 = this.f16296da;
            float fSp = aVar2 == null ? Float.MAX_VALUE : aVar2.sp();
            float fTt = i.tt(f10, fA, fSp);
            float fTt2 = i.tt(f11, fA, fSp);
            if (fTt == this.f16299x && fTt2 == this.f16297i) {
                return;
            }
            this.f16299x = fTt;
            this.f16297i = fTt2;
            c((int) i.tt(this.f16294a, fTt, fTt2));
            return;
        }
        throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f10), Float.valueOf(f11)));
    }
}
