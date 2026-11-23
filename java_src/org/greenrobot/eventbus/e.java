package org.greenrobot.eventbus;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes10.dex */
public class e extends Handler implements k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f95288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f95289c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f95290d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f95291e;

    public e(c cVar, Looper looper, int i10) {
        super(looper);
        this.f95290d = cVar;
        this.f95289c = i10;
        this.f95288b = new j();
    }

    @Override // org.greenrobot.eventbus.k
    public void a(o oVar, Object obj) {
        i iVarA = i.a(oVar, obj);
        synchronized (this) {
            this.f95288b.a(iVarA);
            if (!this.f95291e) {
                this.f95291e = true;
                if (!sendMessage(obtainMessage())) {
                    throw new EventBusException("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                i iVarB = this.f95288b.b();
                if (iVarB == null) {
                    synchronized (this) {
                        iVarB = this.f95288b.b();
                        if (iVarB == null) {
                            this.f95291e = false;
                            return;
                        }
                    }
                }
                this.f95290d.l(iVarB);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.f95289c);
            if (!sendMessage(obtainMessage())) {
                throw new EventBusException("Could not send handler message");
            }
            this.f95291e = true;
        } catch (Throwable th) {
            this.f95291e = false;
            throw th;
        }
    }
}
