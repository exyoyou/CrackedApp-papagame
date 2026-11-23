package com.sigmob.sdk.mraid;

import android.os.Handler;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f81132a = 50;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final long f81133b = 3000000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f81135d = 3000000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<String, a> f81136e = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final b f81134c = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Handler f81137f = new Handler();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.sigmob.sdk.base.views.f f81138a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference<com.sigmob.sdk.base.common.y> f81139b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.sigmob.sdk.base.common.v f81140c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final h f81141d;

        a(com.sigmob.sdk.base.views.f baseWebView, com.sigmob.sdk.base.common.y baseInterstitial, com.sigmob.sdk.base.common.v sessionManager, h controller) {
            this.f81138a = baseWebView;
            this.f81139b = new WeakReference<>(baseInterstitial);
            this.f81140c = sessionManager;
            this.f81141d = controller;
        }

        public com.sigmob.sdk.base.views.f a() {
            return this.f81138a;
        }

        public WeakReference<com.sigmob.sdk.base.common.y> b() {
            return this.f81139b;
        }

        public com.sigmob.sdk.base.common.v c() {
            return this.f81140c;
        }

        public h d() {
            return this.f81141d;
        }
    }

    private static class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.a();
        }
    }

    private z() {
    }

    public static a a(final String broadcastIdentifier) {
        Preconditions.checkNotNull(broadcastIdentifier);
        return f81136e.remove(broadcastIdentifier);
    }

    @Deprecated
    public static void b() {
        f81136e.clear();
        f81137f.removeCallbacks(f81134c);
    }

    @Deprecated
    static Map<String, a> c() {
        return f81136e;
    }

    static synchronized void a() {
        Iterator<Map.Entry<String, a>> it2 = f81136e.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, a> next = it2.next();
            if (next.getValue().b().get() == null) {
                next.getValue().c().a();
                it2.remove();
            }
        }
        if (f81136e.isEmpty()) {
            return;
        }
        Handler handler = f81137f;
        b bVar = f81134c;
        handler.removeCallbacks(bVar);
        f81137f.postDelayed(bVar, 3000000L);
    }

    @Deprecated
    static void a(final Handler handler) {
        f81137f = handler;
    }

    public static void a(String broadcastIdentifier, i baseInterstitial, com.sigmob.sdk.base.views.f baseWebView, com.sigmob.sdk.base.common.v sessionManager, h controller) {
        Preconditions.checkNotNull(broadcastIdentifier);
        Preconditions.checkNotNull(baseInterstitial);
        Preconditions.checkNotNull(baseWebView);
        a();
        Map<String, a> map = f81136e;
        if (map.size() >= 50) {
            SigmobLog.w("Unable to cache web view. Please destroy some via #destroy() and try again.");
        } else {
            map.put(broadcastIdentifier, new a(baseWebView, baseInterstitial, sessionManager, controller));
        }
    }
}
