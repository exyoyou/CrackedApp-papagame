package com.aggmoread.sdk.z.a.m;

import android.os.CountDownTimer;

/* JADX INFO: loaded from: classes7.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CountDownTimer f3721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3722b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f3723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f3724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f3725e;

    class a extends CountDownTimer {
        a(long j10, long j11) {
            super(j10, j11);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            m.this.c();
            m.this.g();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            m.this.a(j10);
            m mVar = m.this;
            mVar.a(j10, mVar.f3723c - j10);
        }
    }

    public m(long j10, long j11) {
        this.f3723c = j10;
        this.f3724d = j11;
        this.f3725e = j10;
    }

    public long a() {
        return this.f3725e;
    }

    public abstract void a(long j10, long j11);

    public final synchronized void b(long j10, long j11) {
        this.f3725e = j10;
        this.f3724d = j11;
        if (this.f3723c > 0 && j11 > 0) {
            if (!this.f3722b) {
                g();
            }
            if (this.f3722b) {
                a aVar = new a(a(), this.f3724d);
                this.f3721a = aVar;
                try {
                    aVar.start();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                this.f3722b = false;
            }
        }
    }

    public abstract void c();

    public final void d() {
        if (this.f3722b) {
            return;
        }
        try {
            this.f3721a.cancel();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f3722b = true;
    }

    public final void e() {
        if (b()) {
            return;
        }
        b(this.f3725e, this.f3724d);
    }

    public final void f() {
        b(this.f3725e, this.f3724d);
    }

    public final void g() {
        try {
            this.f3721a.cancel();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f3722b = true;
        this.f3725e = this.f3723c;
    }

    public final boolean b() {
        return !this.f3722b;
    }

    public final void a(long j10) {
        this.f3725e = j10;
    }
}
