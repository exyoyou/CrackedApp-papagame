package com.sigmob.sdk.base.common;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f78901a = "NativeLoadReadyRecordManager";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ab f78902f = new ab();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f78903b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f78904c = 120;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HandlerThread f78905d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f78906e;

    private class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ab.this.f78903b) {
                ab.this.d();
                try {
                    HashMap<String, aa> mapA = aa.a();
                    if (com.sigmob.sdk.base.utils.e.b(mapA)) {
                        for (aa aaVar : new ArrayList(mapA.values())) {
                            if (aaVar != null) {
                                ad.a(aaVar);
                                aaVar.b();
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
                if (com.sigmob.sdk.base.utils.w.b(ab.this.f78906e)) {
                    ab.this.f78906e.postDelayed(this, ((long) ab.this.f78904c) * 1000);
                }
            }
        }
    }

    private ab() {
    }

    public static ab a() {
        return f78902f;
    }

    public synchronized void b() {
        if (this.f78903b) {
            return;
        }
        this.f78903b = true;
        aa.c();
        if (this.f78905d == null) {
            HandlerThread handlerThread = new HandlerThread(f78901a);
            this.f78905d = handlerThread;
            handlerThread.start();
        }
        if (this.f78906e == null) {
            this.f78906e = new Handler(this.f78905d.getLooper());
        }
        this.f78906e.removeCallbacksAndMessages(null);
        this.f78906e.postDelayed(new a(), ((long) this.f78904c) * 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Handler handler = this.f78906e;
        if (handler == null) {
            return;
        }
        handler.removeCallbacksAndMessages(null);
    }

    public void a(int logIntervalTime) {
        if (logIntervalTime <= 0) {
            c();
            return;
        }
        int iMax = Math.max(logIntervalTime, 10);
        if (this.f78904c == iMax) {
            return;
        }
        this.f78904c = iMax;
        if (!this.f78903b) {
            b();
        } else if (com.sigmob.sdk.base.utils.w.b(this.f78906e)) {
            this.f78906e.removeCallbacksAndMessages(null);
            this.f78906e.postDelayed(new a(), ((long) logIntervalTime) * 1000);
        }
    }

    public void c() {
        this.f78903b = false;
        d();
    }
}
