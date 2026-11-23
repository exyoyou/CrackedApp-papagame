package org.androidannotations.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Handler f95000a = new a(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<String, C1221b> f95001b = new HashMap();

    static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Runnable callback = message.getCallback();
            if (callback == null) {
                super.handleMessage(message);
            } else {
                callback.run();
                b.c((C1221b) message.obj);
            }
        }
    }

    /* JADX INFO: renamed from: org.androidannotations.api.b$b, reason: collision with other inner class name */
    private static final class C1221b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f95002a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f95003b;

        /* synthetic */ C1221b(String str, a aVar) {
            this(str);
        }

        private C1221b(String str) {
            this.f95002a = 0;
            this.f95003b = str;
        }
    }

    private b() {
    }

    public static void b(String str) {
        C1221b c1221bRemove;
        Map<String, C1221b> map = f95001b;
        synchronized (map) {
            c1221bRemove = map.remove(str);
        }
        if (c1221bRemove == null) {
            return;
        }
        f95000a.removeCallbacksAndMessages(c1221bRemove);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(C1221b c1221b) {
        String str;
        C1221b c1221bRemove;
        Map<String, C1221b> map = f95001b;
        synchronized (map) {
            int i10 = c1221b.f95002a - 1;
            c1221b.f95002a = i10;
            if (i10 == 0 && (c1221bRemove = map.remove((str = c1221b.f95003b))) != c1221b) {
                map.put(str, c1221bRemove);
            }
        }
    }

    private static C1221b d(String str) {
        C1221b c1221b;
        Map<String, C1221b> map = f95001b;
        synchronized (map) {
            c1221b = map.get(str);
            if (c1221b == null) {
                c1221b = new C1221b(str, null);
                map.put(str, c1221b);
            }
            c1221b.f95002a++;
        }
        return c1221b;
    }

    public static void e(String str, Runnable runnable, long j10) {
        if ("".equals(str)) {
            f95000a.postDelayed(runnable, j10);
        } else {
            f95000a.postAtTime(runnable, d(str), SystemClock.uptimeMillis() + j10);
        }
    }
}
