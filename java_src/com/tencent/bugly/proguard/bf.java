package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class bf implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Handler f83452a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f83455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f83456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<ba> f83457f = new LinkedList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f83453b = 5000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f83458g = 5000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f83454c = true;

    bf(Handler handler, String str) {
        this.f83452a = handler;
        this.f83456e = str;
    }

    private Thread e() {
        return this.f83452a.getLooper().getThread();
    }

    public final boolean a() {
        return !this.f83454c && SystemClock.uptimeMillis() >= this.f83455d + this.f83453b;
    }

    public final long b() {
        return SystemClock.uptimeMillis() - this.f83455d;
    }

    public final List<ba> c() {
        ArrayList arrayList;
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this.f83457f) {
            arrayList = new ArrayList(this.f83457f.size());
            for (int i10 = 0; i10 < this.f83457f.size(); i10++) {
                ba baVar = this.f83457f.get(i10);
                if (!baVar.f83433e && jCurrentTimeMillis - baVar.f83430b < 200000) {
                    arrayList.add(baVar);
                    baVar.f83433e = true;
                }
            }
        }
        return arrayList;
    }

    public final void d() {
        StringBuilder sb2 = new StringBuilder(1024);
        long jNanoTime = System.nanoTime();
        try {
            StackTraceElement[] stackTrace = e().getStackTrace();
            if (stackTrace.length == 0) {
                sb2.append("Thread does not have stack trace.\n");
            } else {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    sb2.append(stackTraceElement);
                    sb2.append("\n");
                }
            }
        } catch (SecurityException e10) {
            sb2.append("getStackTrace() encountered:\n");
            sb2.append(e10.getMessage());
            sb2.append("\n");
            al.a(e10);
        }
        long jNanoTime2 = System.nanoTime();
        ba baVar = new ba(sb2.toString(), System.currentTimeMillis());
        baVar.f83432d = jNanoTime2 - jNanoTime;
        String name = e().getName();
        if (name == null) {
            name = "";
        }
        baVar.f83429a = name;
        synchronized (this.f83457f) {
            while (this.f83457f.size() >= 32) {
                this.f83457f.remove(0);
            }
            this.f83457f.add(baVar);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f83454c = true;
        this.f83453b = this.f83458g;
    }
}
