package com.sina.weibo.sdk.auth;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, WbAuthListener> f82231e;

    static class a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final b f82232f = new b(0);
    }

    /* synthetic */ b(byte b10) {
        this();
    }

    public static synchronized b b() {
        return a.f82232f;
    }

    public final synchronized void a(String str, WbAuthListener wbAuthListener) {
        if (!TextUtils.isEmpty(str) && wbAuthListener != null) {
            this.f82231e.put(str, wbAuthListener);
        }
    }

    private b() {
        this.f82231e = new HashMap();
    }

    public final synchronized void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f82231e.remove(str);
    }

    public final synchronized WbAuthListener a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f82231e.get(str);
    }
}
