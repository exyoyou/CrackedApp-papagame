package com.kongzue.dialogx.util;

import android.os.Handler;
import android.os.Looper;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f74159l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f74160m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f74161n = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f74163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f74164c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f74166e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Interpolator f74167f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f74168g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f74169h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Handler f74162a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f74165d = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f74170i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f74171j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f74172k = 16;

    class a implements Runnable {

        /* JADX INFO: renamed from: com.kongzue.dialogx.util.f$a$a, reason: collision with other inner class name */
        class RunnableC0778a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ float f74174b;

            RunnableC0778a(float f10) {
                this.f74174b = f10;
            }

            @Override // java.lang.Runnable
            public void run() {
                f.this.f74166e.a(this.f74174b);
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (f.this.f74165d) {
                long jCurrentTimeMillis = System.currentTimeMillis() - f.this.f74164c;
                if (jCurrentTimeMillis < f.this.f74163b) {
                    float interpolation = jCurrentTimeMillis / f.this.f74163b;
                    if (f.this.f74167f != null) {
                        interpolation = f.this.f74167f.getInterpolation(interpolation);
                    }
                    float f10 = f.this.f74168g + (interpolation * (f.this.f74169h - f.this.f74168g));
                    if (f.this.f74166e != null) {
                        f.this.u().post(new RunnableC0778a(f10));
                    }
                } else {
                    f.this.f74165d = false;
                    f.this.D();
                    if (f.this.f74170i == -1 || f.this.f74171j < f.this.f74170i) {
                        f.e(f.this);
                        f.this.f74164c = System.currentTimeMillis();
                        f.this.f74165d = true;
                    }
                }
                try {
                    Thread.sleep(f.this.f74172k);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public interface b {
        void a(float f10);
    }

    public f(float f10, float f11) {
        this.f74168g = f10;
        this.f74169h = f11;
    }

    public static f C(float f10, float f11) {
        return new f(f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
    }

    static /* synthetic */ int e(f fVar) {
        int i10 = fVar.f74171j;
        fVar.f74171j = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Handler u() {
        if (this.f74162a == null) {
            this.f74162a = new Handler(Looper.getMainLooper());
        }
        return this.f74162a;
    }

    public float A() {
        return this.f74168g;
    }

    public boolean B() {
        return this.f74165d;
    }

    public f E(long j10) {
        this.f74163b = j10;
        return this;
    }

    public f F(float f10) {
        this.f74169h = f10;
        return this;
    }

    public void G(float f10, float f11) {
        this.f74168g = f10;
        this.f74169h = f11;
    }

    public void H(Interpolator interpolator) {
        this.f74167f = interpolator;
    }

    public f I(b bVar) {
        this.f74166e = bVar;
        return this;
    }

    public f J(int i10) {
        this.f74172k = i10;
        return this;
    }

    public void K(int i10) {
        this.f74170i = i10;
    }

    public f L(long j10) {
        this.f74164c = j10;
        return this;
    }

    public f M(float f10) {
        this.f74168g = f10;
        return this;
    }

    public void N() {
        if (this.f74165d) {
            return;
        }
        this.f74165d = true;
        this.f74164c = System.currentTimeMillis();
        new Thread(new a()).start();
    }

    public void p(b bVar) {
        this.f74166e = bVar;
    }

    public void q() {
        this.f74165d = false;
    }

    public int r() {
        return this.f74171j;
    }

    public long s() {
        return this.f74163b;
    }

    public float t() {
        return this.f74169h;
    }

    public Interpolator v() {
        return this.f74167f;
    }

    public b w() {
        return this.f74166e;
    }

    public int x() {
        return this.f74172k;
    }

    public int y() {
        return this.f74170i;
    }

    public long z() {
        return this.f74164c;
    }
}
