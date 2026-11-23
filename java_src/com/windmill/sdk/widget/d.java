package com.windmill.sdk.widget;

import android.os.CountDownTimer;

/* JADX INFO: loaded from: classes8.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CountDownTimer f87569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f87570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f87571c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f87572d;

    interface a {
        void a();

        void a(long millisUntilFinished);
    }

    public d(long millisInFuture, long countDownInterval) {
        this.f87570b = countDownInterval;
        this.f87571c = millisInFuture;
    }

    public void c() {
        CountDownTimer countDownTimer = this.f87569a;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    public void d() {
        if (this.f87569a != null) {
            this.f87569a = null;
        }
    }

    public void b() {
        CountDownTimer countDownTimer = this.f87569a;
        if (countDownTimer != null) {
            countDownTimer.start();
        }
    }

    public void a() {
        this.f87569a = new CountDownTimer(this.f87571c, this.f87570b) { // from class: com.windmill.sdk.widget.d.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (d.this.f87572d != null) {
                    d.this.f87572d.a();
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
                d.this.f87571c = millisUntilFinished;
                if (d.this.f87572d != null) {
                    d.this.f87572d.a(d.this.f87571c);
                }
            }
        };
    }

    public void a(a listener) {
        this.f87572d = listener;
    }
}
