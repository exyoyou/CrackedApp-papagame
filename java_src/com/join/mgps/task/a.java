package com.join.mgps.task;

import android.content.Context;
import android.os.CountDownTimer;
import com.join.mgps.Util.i;

/* JADX INFO: loaded from: classes3.dex */
public class a implements Runnable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f73187d = "a";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f73188e = 15000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f73189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    CountDownTimer f73190c = new CountDownTimerC0751a(15000, 1000);

    /* JADX INFO: renamed from: com.join.mgps.task.a$a, reason: collision with other inner class name */
    class CountDownTimerC0751a extends CountDownTimer {
        CountDownTimerC0751a(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            a.this.b();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            String unused = a.f73187d;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onTick: 开始倒计时");
            long j10 = millisUntilFinished / 1000;
            sb2.append(j10);
            if (j10 > 0) {
                a.this.d();
            }
        }
    }

    public a(Context context) {
        this.f73189b = context;
    }

    void b() {
        com.join.mgps.event.e eVar = new com.join.mgps.event.e();
        eVar.f68167a = 0;
        org.greenrobot.eventbus.c.f().q(eVar);
    }

    public void c() {
        CountDownTimer countDownTimer = this.f73190c;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    void d() {
        if (i.f(this.f73189b)) {
            com.join.mgps.event.e eVar = new com.join.mgps.event.e();
            eVar.f68167a = 1;
            eVar.f68168b = i.f49758a;
            eVar.f68169c = i.f49759b;
            org.greenrobot.eventbus.c.f().q(eVar);
            this.f73190c.cancel();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f73190c.start();
    }
}
