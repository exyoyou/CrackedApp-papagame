package com.sigmob.sdk.base.utils;

import android.os.CountDownTimer;
import com.czhj.sdk.logger.SigmobLogger;
import com.haima.hmcp.ConstantsInternal;

/* JADX INFO: loaded from: classes5.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f79763a = "p";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CountDownTimer f79764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f79765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f79766d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f79767e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f79768f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f79769g;

    public interface a {
        void onTimerFinished();
    }

    public p(long totalTime, long interval) {
        this.f79766d = totalTime;
        this.f79767e = interval;
        this.f79765c = totalTime;
    }

    public void b() {
        SigmobLogger.d(f79763a, ConstantsInternal.STOP, new Object[0]);
        CountDownTimer countDownTimer = this.f79764b;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f79765c = this.f79766d;
        this.f79768f = false;
    }

    public void c() {
        SigmobLogger.d(f79763a, com.sigmob.sdk.base.common.a.f78876j, new Object[0]);
        CountDownTimer countDownTimer = this.f79764b;
        if (countDownTimer == null || this.f79768f) {
            return;
        }
        countDownTimer.cancel();
        this.f79768f = true;
    }

    public void d() {
        SigmobLogger.d(f79763a, "resume", new Object[0]);
        if (this.f79768f) {
            a();
        }
    }

    public void e() {
        SigmobLogger.d(f79763a, "destroy", new Object[0]);
        CountDownTimer countDownTimer = this.f79764b;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.f79764b = null;
        }
        this.f79769g = null;
    }

    public long f() {
        return this.f79765c;
    }

    public void a() {
        SigmobLogger.d(f79763a, "start", new Object[0]);
        CountDownTimer countDownTimer = this.f79764b;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f79764b = new CountDownTimer(this.f79765c, this.f79767e) { // from class: com.sigmob.sdk.base.utils.p.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                SigmobLogger.d(p.f79763a, "start#onFinish", new Object[0]);
                p.this.f79765c = 0L;
                if (p.this.f79769g == null) {
                    return;
                }
                p.this.f79769g.onTimerFinished();
            }

            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
                SigmobLogger.d(p.f79763a, "start#onTick: remainingTime = " + Math.round(millisUntilFinished / 1000.0f), new Object[0]);
                p.this.f79765c = millisUntilFinished;
            }
        }.start();
        this.f79768f = false;
    }

    public void a(a listener) {
        this.f79769g = listener;
    }
}
