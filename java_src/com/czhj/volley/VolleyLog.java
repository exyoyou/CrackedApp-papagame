package com.czhj.volley;

import android.os.SystemClock;
import android.util.Log;
import com.join.mgps.Util.o0;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public class VolleyLog {
    public static boolean DEBUG = false;
    public static String TAG = "Sigmob-Volley";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f25761a = "com.czhj.volley.VolleyLog";

    static class MarkerLog {
        public static final boolean ENABLED = VolleyLog.DEBUG;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final long f25762a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<Marker> f25763b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f25764c = false;

        private static class Marker {
            public final String name;
            public final long thread;
            public final long time;

            public Marker(String str, long j10, long j11) {
                this.name = str;
                this.thread = j10;
                this.time = j11;
            }
        }

        MarkerLog() {
        }

        private long a() {
            if (this.f25763b.size() == 0) {
                return 0L;
            }
            long j10 = this.f25763b.get(0).time;
            List<Marker> list = this.f25763b;
            return list.get(list.size() - 1).time - j10;
        }

        public synchronized void add(String str, long j10) {
            if (this.f25764c) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f25763b.add(new Marker(str, j10, SystemClock.elapsedRealtime()));
        }

        protected void finalize() {
            if (this.f25764c) {
                return;
            }
            finish("Request on the loose");
            VolleyLog.e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }

        public synchronized void finish(String str) {
            this.f25764c = true;
            long jA = a();
            if (jA <= 0) {
                return;
            }
            long j10 = this.f25763b.get(0).time;
            VolleyLog.d("(%-4d ms) %s", Long.valueOf(jA), str);
            for (Marker marker : this.f25763b) {
                long j11 = marker.time;
                VolleyLog.d("(+%-4d) [%2d] %s", Long.valueOf(j11 - j10), Long.valueOf(marker.thread), marker.name);
                j10 = j11;
            }
        }
    }

    private static String a(String str, Object... objArr) {
        String str2;
        if (objArr != null && objArr.length != 0) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        for (int i10 = 2; i10 < stackTrace.length; i10++) {
            if (!stackTrace[i10].getClassName().equals(f25761a)) {
                String className = stackTrace[i10].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                str2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1) + o0.f49827a + stackTrace[i10].getMethodName();
                return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
            }
        }
        str2 = "<unknown>";
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    public static void d(String str, Object... objArr) {
        if (DEBUG) {
            a(str, objArr);
        }
    }

    public static void e(String str, Object... objArr) {
        a(str, objArr);
    }

    public static void setTag(String str) {
        d("Changing log tag to %s", str);
        TAG = str;
    }

    public static void v(String str, Object... objArr) {
        if (DEBUG) {
            a(str, objArr);
        }
    }

    public static void wtf(String str, Object... objArr) {
        Log.wtf(TAG, a(str, objArr));
    }

    public static void e(Throwable th, String str, Object... objArr) {
        a(str, objArr);
    }

    public static void wtf(Throwable th, String str, Object... objArr) {
        Log.wtf(TAG, a(str, objArr), th);
    }
}
