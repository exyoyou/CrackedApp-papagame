package com.efs.sdk.pa.a;

import android.os.SystemClock;
import android.util.Printer;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Iterator;
import java.util.Vector;

/* JADX INFO: loaded from: classes9.dex */
final class e implements Printer {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f26639f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f26635b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f26636c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f26637d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f26638e = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Vector<d> f26634a = new Vector<>();

    e() {
    }

    @Override // android.util.Printer
    public final void println(String str) {
        if (str.startsWith(SimpleComparison.GREATER_THAN_OPERATION)) {
            this.f26637d = SystemClock.elapsedRealtime();
            this.f26638e = SystemClock.currentThreadTimeMillis();
            this.f26636c = str;
            this.f26635b = true;
            Iterator<d> it2 = this.f26634a.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
            return;
        }
        if (this.f26635b && str.startsWith(SimpleComparison.LESS_THAN_OPERATION)) {
            this.f26635b = false;
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f26637d;
            if (jElapsedRealtime > this.f26639f) {
                long jCurrentThreadTimeMillis = SystemClock.currentThreadTimeMillis() - this.f26638e;
                Iterator<d> it3 = this.f26634a.iterator();
                while (it3.hasNext()) {
                    it3.next().a(this.f26636c, jElapsedRealtime, jCurrentThreadTimeMillis);
                }
            }
        }
    }
}
