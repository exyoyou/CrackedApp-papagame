package com.kwad.sdk.core.threads;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static Map<String, WeakReference<C0939a>> aYp = new ConcurrentHashMap();

    /* JADX INFO: renamed from: com.kwad.sdk.core.threads.a$a, reason: collision with other inner class name */
    public static class C0939a {
        private HandlerThread aYq;
        private Handler jk;

        public C0939a(String str) {
            String str2;
            if (TextUtils.isEmpty(str)) {
                str2 = "ksad-HT";
            } else {
                str2 = "ksad-" + str;
            }
            HandlerThread handlerThread = new HandlerThread(str2);
            this.aYq = handlerThread;
            handlerThread.start();
            this.jk = new Handler(this.aYq.getLooper());
        }

        public final Handler getHandler() {
            return this.jk;
        }
    }

    public static synchronized Handler NR() {
        return fp("reportHT").getHandler();
    }

    @NonNull
    private static C0939a fp(String str) {
        WeakReference<C0939a> weakReference = aYp.get(str);
        if (weakReference != null && weakReference.get() != null) {
            return weakReference.get();
        }
        C0939a c0939a = new C0939a(str);
        aYp.put(str, new WeakReference<>(c0939a));
        return c0939a;
    }
}
