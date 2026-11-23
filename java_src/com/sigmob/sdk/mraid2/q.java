package com.sigmob.sdk.mraid2;

import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f81256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f81257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f81258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f81259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Timer f81260e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TimerTask f81261f = null;

    /* JADX INFO: renamed from: com.sigmob.sdk.mraid2.q$1, reason: invalid class name */
    class AnonymousClass1 extends TimerTask {
        AnonymousClass1() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (q.this.f81259d == null) {
                return;
            }
            q.this.f81259d.a().post(new Runnable() { // from class: com.sigmob.sdk.mraid2.n0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81243b.a();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            q.this.f81259d.e(q.this.f81256a);
        }
    }

    public q(d bridge, JSONObject args) {
        this.f81259d = bridge;
        this.f81257b = args.optInt("interval");
        this.f81258c = args.optBoolean("repeats");
        this.f81256a = args.optString("uniqueId");
    }

    private void d() {
        this.f81260e = new Timer();
        this.f81261f = new AnonymousClass1();
    }

    public void c() {
        TimerTask timerTask = this.f81261f;
        if (timerTask != null) {
            timerTask.cancel();
            this.f81261f = null;
        }
        Timer timer = this.f81260e;
        if (timer != null) {
            timer.cancel();
            this.f81260e.purge();
            this.f81260e = null;
        }
    }

    public void a() {
        c();
    }

    public void b() {
        try {
            c();
            d();
            int i10 = this.f81257b;
            if (i10 > 0) {
                if (this.f81258c) {
                    this.f81260e.schedule(this.f81261f, i10, i10);
                } else {
                    this.f81260e.schedule(this.f81261f, i10);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
