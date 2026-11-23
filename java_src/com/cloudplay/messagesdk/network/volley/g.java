package com.cloudplay.messagesdk.network.volley;

import android.os.SystemClock;
import android.util.Log;
import com.join.mgps.Util.o0;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f24050a = "Volley";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f24051b = Log.isLoggable(f24050a, 2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f24052c = g.class.getName();

    public static void a(Throwable th, String str, Object... objArr) {
        a(str, objArr);
    }

    public static void b(String str, Object... objArr) {
        a(str, objArr);
    }

    public static void c(String str, Object... objArr) {
        a(str, objArr);
    }

    public static void d(String str, Object... objArr) {
        if (f24051b) {
            a(str, objArr);
        }
    }

    public static void e(String str, Object... objArr) {
        Log.wtf(f24050a, a(str, objArr));
    }

    private static String a(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        for (int i10 = 2; i10 < stackTrace.length; i10++) {
            if (!stackTrace[i10].getClassName().equals(f24052c)) {
                String className = stackTrace[i10].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                str2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1) + o0.f49827a + stackTrace[i10].getMethodName();
                return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
            }
        }
        str2 = "<unknown>";
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    static class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final boolean f24053c = g.f24051b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<C0527a> f24054a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f24055b = false;

        /* JADX INFO: renamed from: com.cloudplay.messagesdk.network.volley.g$a$a, reason: collision with other inner class name */
        private static class C0527a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f24056a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final long f24057b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final long f24058c;

            public C0527a(String str, long j10, long j11) {
                this.f24056a = str;
                this.f24057b = j10;
                this.f24058c = j11;
            }
        }

        a() {
        }

        public synchronized void a(String str, long j10) {
            if (this.f24055b) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f24054a.add(new C0527a(str, j10, SystemClock.elapsedRealtime()));
        }

        protected void finalize() throws Throwable {
            if (this.f24055b) {
                return;
            }
            a("Request on the loose");
            g.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }

        public synchronized void a(String str) {
            this.f24055b = true;
            long jA = a();
            if (jA <= 0) {
                return;
            }
            long j10 = this.f24054a.get(0).f24058c;
            g.b("(%-4d ms) %s", Long.valueOf(jA), str);
            for (C0527a c0527a : this.f24054a) {
                long j11 = c0527a.f24058c;
                g.b("(+%-4d) [%2d] %s", Long.valueOf(j11 - j10), Long.valueOf(c0527a.f24057b), c0527a.f24056a);
                j10 = j11;
            }
        }

        private long a() {
            if (this.f24054a.size() == 0) {
                return 0L;
            }
            long j10 = this.f24054a.get(0).f24058c;
            List<C0527a> list = this.f24054a;
            return list.get(list.size() - 1).f24058c - j10;
        }
    }
}
