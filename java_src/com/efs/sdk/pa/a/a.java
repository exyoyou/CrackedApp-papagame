package com.efs.sdk.pa.a;

import android.app.Application;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import com.efs.sdk.pa.PAANRListener;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile boolean f26600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Handler f26601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Thread f26602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f26603d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f26604e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f26605f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Handler f26606g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    PAANRListener f26607h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    long f26608i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    long f26609j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final long f26610k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f26611l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final Runnable f26612m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final Runnable f26613n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private HandlerThread f26614o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Application f26615p;

    public a(Application application, long j10) {
        this(application, j10, true);
    }

    static boolean a(StringBuilder sb2) {
        Set<Map.Entry<Thread, StackTraceElement[]>> setEntrySet = Thread.getAllStackTraces().entrySet();
        if (setEntrySet.size() == 0) {
            return false;
        }
        boolean z10 = false;
        for (Map.Entry<Thread, StackTraceElement[]> entry : setEntrySet) {
            Thread key = entry.getKey();
            StackTraceElement[] value = entry.getValue();
            if (key.getId() == Looper.getMainLooper().getThread().getId()) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(key.getName());
                sb3.append(" ");
                sb3.append(key.getPriority());
                sb3.append(" ");
                sb3.append(key.getState());
                sb3.append("\n");
                for (StackTraceElement stackTraceElement : value) {
                    String string = stackTraceElement.toString();
                    sb3.append("  at  ");
                    sb3.append(string);
                    sb3.append('\n');
                }
                sb3.append("\n");
                sb2.insert(0, (CharSequence) sb3);
                z10 = true;
            } else {
                sb2.append(key.getName());
                sb2.append(" ");
                sb2.append(key.getPriority());
                sb2.append(" ");
                sb2.append(key.getState());
                sb2.append("\n");
                for (StackTraceElement stackTraceElement2 : value) {
                    String string2 = stackTraceElement2.toString();
                    sb2.append("  at  ");
                    sb2.append(string2);
                    sb2.append('\n');
                }
                sb2.append("\n");
            }
        }
        if (!z10) {
            sb2.insert(0, a(Looper.getMainLooper().getThread()));
        }
        return true;
    }

    public a(Application application, long j10, boolean z10) {
        this.f26600a = true;
        this.f26604e = 4L;
        this.f26605f = true;
        this.f26608i = 0L;
        this.f26612m = new Runnable() { // from class: com.efs.sdk.pa.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                PAANRListener pAANRListener;
                if (a.this.f26605f) {
                    return;
                }
                long jUptimeMillis = SystemClock.uptimeMillis();
                a aVar = a.this;
                long j11 = jUptimeMillis - aVar.f26609j;
                if (j11 > aVar.f26610k && (pAANRListener = aVar.f26607h) != null) {
                    pAANRListener.unexcept(Long.valueOf(j11));
                }
                if (a.this.f26600a) {
                    a aVar2 = a.this;
                    aVar2.f26608i = 0L;
                    aVar2.f26600a = false;
                    a aVar3 = a.this;
                    aVar3.f26601b.postAtFrontOfQueue(aVar3.f26613n);
                } else {
                    a aVar4 = a.this;
                    aVar4.f26608i++;
                    if (!aVar4.f26600a) {
                        a aVar5 = a.this;
                        long j12 = aVar5.f26608i;
                        long j13 = aVar5.f26604e;
                        if (j12 >= j13 && j12 == j13) {
                            StringBuilder sb2 = new StringBuilder();
                            if (aVar5.f26611l) {
                                sb2.append(a.a(aVar5.f26602c));
                            } else if (a.a(sb2)) {
                            }
                            if (aVar5.f26607h != null && sb2.length() > 0) {
                                aVar5.f26607h.anrStack(sb2.toString());
                            }
                        }
                    }
                }
                a.this.f26609j = SystemClock.uptimeMillis();
                a aVar6 = a.this;
                aVar6.f26606g.postDelayed(aVar6.f26612m, aVar6.f26603d);
            }
        };
        this.f26613n = new Runnable() { // from class: com.efs.sdk.pa.a.a.2
            @Override // java.lang.Runnable
            public final void run() {
                a.this.f26600a = true;
            }
        };
        this.f26610k = j10;
        this.f26615p = application;
        this.f26611l = z10;
        long j11 = ((long) (j10 * 0.8f)) / this.f26604e;
        this.f26603d = j11;
        if (j11 < 100) {
            this.f26603d = 100L;
            this.f26604e = j10 / 100;
        }
        StringBuilder sb2 = new StringBuilder("anrTrace, final mAnrBeatTime:");
        sb2.append(this.f26603d);
        sb2.append(", mAnrBeatRate:");
        sb2.append(this.f26603d);
        this.f26602c = Looper.getMainLooper().getThread();
        this.f26601b = new Handler(Looper.getMainLooper());
        HandlerThread handlerThread = new HandlerThread("ANR HANDLER THREAD");
        this.f26614o = handlerThread;
        handlerThread.start();
        this.f26606g = new Handler(this.f26614o.getLooper());
    }

    static String a(Thread thread) {
        StringBuilder sb2 = new StringBuilder();
        StackTraceElement[] stackTrace = thread.getStackTrace();
        sb2.append(thread.getName());
        sb2.append(" ");
        sb2.append(thread.getPriority());
        sb2.append(" ");
        sb2.append(thread.getState());
        sb2.append("\n");
        for (StackTraceElement stackTraceElement : stackTrace) {
            String string = stackTraceElement.toString();
            sb2.append("  at  ");
            sb2.append(string);
            sb2.append('\n');
        }
        sb2.append("\n");
        return sb2.toString();
    }
}
