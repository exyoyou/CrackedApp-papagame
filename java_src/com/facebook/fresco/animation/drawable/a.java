package com.facebook.fresco.animation.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.facebook.drawee.drawable.e;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a extends Drawable implements Animatable, n3.a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Class<?> f27449s = a.class;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final c f27450t = new d();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f27451u = 8;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f27452v = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private com.facebook.fresco.animation.backend.a f27453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private com.facebook.fresco.animation.frame.b f27454c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f27455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f27456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f27457f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f27458g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f27459h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f27460i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f27461j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f27462k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f27463l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f27464m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f27465n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile c f27466o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private volatile b f27467p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private e f27468q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Runnable f27469r;

    /* JADX INFO: renamed from: com.facebook.fresco.animation.drawable.a$a, reason: collision with other inner class name */
    class RunnableC0568a implements Runnable {
        RunnableC0568a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            aVar.unscheduleSelf(aVar.f27469r);
            a.this.invalidateSelf();
        }
    }

    public interface b {
        void a(a animatedDrawable, com.facebook.fresco.animation.frame.b frameScheduler, int frameNumberToDraw, boolean frameDrawn, boolean isAnimationRunning, long animationStartTimeMs, long animationTimeMs, long lastFrameAnimationTimeMs, long actualRenderTimeStartMs, long actualRenderTimeEndMs, long startRenderTimeForNextFrameMs, long scheduledRenderTimeForNextFrameMs);
    }

    public a() {
        this(null);
    }

    @Nullable
    private static com.facebook.fresco.animation.frame.b c(@Nullable com.facebook.fresco.animation.backend.a animationBackend) {
        if (animationBackend == null) {
            return null;
        }
        return new com.facebook.fresco.animation.frame.a(animationBackend);
    }

    private long l() {
        return SystemClock.uptimeMillis();
    }

    private void m() {
        this.f27465n++;
        if (i3.a.R(2)) {
            i3.a.V(f27449s, "Dropped a frame. Count: %s", Integer.valueOf(this.f27465n));
        }
    }

    private void n(long targetAnimationTimeMs) {
        long j10 = this.f27456e + targetAnimationTimeMs;
        this.f27458g = j10;
        scheduleSelf(this.f27469r, j10);
    }

    @Override // n3.a
    public void a() {
        com.facebook.fresco.animation.backend.a aVar = this.f27453b;
        if (aVar != null) {
            aVar.clear();
        }
    }

    @Nullable
    public com.facebook.fresco.animation.backend.a d() {
        return this.f27453b;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        long j10;
        long j11;
        long j12;
        if (this.f27453b == null || this.f27454c == null) {
            return;
        }
        long jL = l();
        long jMax = this.f27455d ? (jL - this.f27456e) + this.f27464m : Math.max(this.f27457f, 0L);
        int iC = this.f27454c.c(jMax, this.f27457f);
        if (iC == -1) {
            iC = this.f27453b.c() - 1;
            this.f27466o.b(this);
            this.f27455d = false;
        } else if (iC == 0 && this.f27459h != -1 && jL >= this.f27458g) {
            this.f27466o.e(this);
        }
        int i10 = iC;
        boolean zJ = this.f27453b.j(this, canvas, i10);
        if (zJ) {
            this.f27466o.c(this, i10);
            this.f27459h = i10;
        }
        if (!zJ) {
            m();
        }
        long jL2 = l();
        if (this.f27455d) {
            long jB = this.f27454c.b(jL2 - this.f27456e);
            if (jB != -1) {
                long j13 = this.f27463l + jB;
                n(j13);
                j11 = j13;
            } else {
                this.f27466o.b(this);
                this.f27455d = false;
                j11 = -1;
            }
            j10 = jB;
        } else {
            j10 = -1;
            j11 = -1;
        }
        b bVar = this.f27467p;
        if (bVar != null) {
            bVar.a(this, this.f27454c, i10, zJ, this.f27455d, this.f27456e, jMax, this.f27457f, jL, jL2, j10, j11);
            j12 = jMax;
        } else {
            j12 = jMax;
        }
        this.f27457f = j12;
    }

    public long e() {
        return this.f27465n;
    }

    public int f() {
        com.facebook.fresco.animation.backend.a aVar = this.f27453b;
        if (aVar == null) {
            return 0;
        }
        return aVar.c();
    }

    public int g() {
        com.facebook.fresco.animation.backend.a aVar = this.f27453b;
        if (aVar == null) {
            return 0;
        }
        return aVar.b();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        com.facebook.fresco.animation.backend.a aVar = this.f27453b;
        return aVar == null ? super.getIntrinsicHeight() : aVar.e();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        com.facebook.fresco.animation.backend.a aVar = this.f27453b;
        return aVar == null ? super.getIntrinsicWidth() : aVar.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public long h() {
        if (this.f27453b == null) {
            return 0L;
        }
        com.facebook.fresco.animation.frame.b bVar = this.f27454c;
        if (bVar != null) {
            return bVar.d();
        }
        int iH = 0;
        for (int i10 = 0; i10 < this.f27453b.c(); i10++) {
            iH += this.f27453b.h(i10);
        }
        return iH;
    }

    public long i() {
        return this.f27456e;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f27455d;
    }

    public boolean j() {
        com.facebook.fresco.animation.frame.b bVar = this.f27454c;
        return bVar != null && bVar.e();
    }

    public void k(int targetFrameNumber) {
        com.facebook.fresco.animation.frame.b bVar;
        if (this.f27453b == null || (bVar = this.f27454c) == null) {
            return;
        }
        this.f27457f = bVar.a(targetFrameNumber);
        long jL = l() - this.f27457f;
        this.f27456e = jL;
        this.f27458g = jL;
        invalidateSelf();
    }

    public void o(@Nullable com.facebook.fresco.animation.backend.a animationBackend) {
        this.f27453b = animationBackend;
        if (animationBackend != null) {
            this.f27454c = new com.facebook.fresco.animation.frame.a(animationBackend);
            this.f27453b.f(getBounds());
            e eVar = this.f27468q;
            if (eVar != null) {
                eVar.a(this);
            }
        }
        this.f27454c = c(this.f27453b);
        stop();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        com.facebook.fresco.animation.backend.a aVar = this.f27453b;
        if (aVar != null) {
            aVar.f(bounds);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int level) {
        if (this.f27455d) {
            return false;
        }
        long j10 = level;
        if (this.f27457f == j10) {
            return false;
        }
        this.f27457f = j10;
        invalidateSelf();
        return true;
    }

    public void p(@Nullable c animationListener) {
        if (animationListener == null) {
            animationListener = f27450t;
        }
        this.f27466o = animationListener;
    }

    public void q(@Nullable b drawListener) {
        this.f27467p = drawListener;
    }

    public void r(long frameSchedulingDelayMs) {
        this.f27463l = frameSchedulingDelayMs;
    }

    public void s(long frameSchedulingOffsetMs) {
        this.f27464m = frameSchedulingOffsetMs;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        if (this.f27468q == null) {
            this.f27468q = new e();
        }
        this.f27468q.b(alpha);
        com.facebook.fresco.animation.backend.a aVar = this.f27453b;
        if (aVar != null) {
            aVar.i(alpha);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.f27468q == null) {
            this.f27468q = new e();
        }
        this.f27468q.c(colorFilter);
        com.facebook.fresco.animation.backend.a aVar = this.f27453b;
        if (aVar != null) {
            aVar.g(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        com.facebook.fresco.animation.backend.a aVar;
        if (this.f27455d || (aVar = this.f27453b) == null || aVar.c() <= 1) {
            return;
        }
        this.f27455d = true;
        long jL = l();
        long j10 = jL - this.f27460i;
        this.f27456e = j10;
        this.f27458g = j10;
        this.f27457f = jL - this.f27461j;
        this.f27459h = this.f27462k;
        invalidateSelf();
        this.f27466o.a(this);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f27455d) {
            long jL = l();
            this.f27460i = jL - this.f27456e;
            this.f27461j = jL - this.f27457f;
            this.f27462k = this.f27459h;
            this.f27455d = false;
            this.f27456e = 0L;
            this.f27458g = 0L;
            this.f27457f = -1L;
            this.f27459h = -1;
            unscheduleSelf(this.f27469r);
            this.f27466o.b(this);
        }
    }

    public a(@Nullable com.facebook.fresco.animation.backend.a animationBackend) {
        this.f27463l = 8L;
        this.f27464m = 0L;
        this.f27466o = f27450t;
        this.f27467p = null;
        this.f27469r = new RunnableC0568a();
        this.f27453b = animationBackend;
        this.f27454c = c(animationBackend);
    }
}
