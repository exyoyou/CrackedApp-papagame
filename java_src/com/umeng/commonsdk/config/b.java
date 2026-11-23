package com.umeng.commonsdk.config;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<String, Boolean> f85070a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Object f85071b = new Object();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final b f85072a = new b();

        private a() {
        }
    }

    public static b b() {
        return a.f85072a;
    }

    public void a() {
        synchronized (f85071b) {
            f85070a.clear();
        }
    }

    private b() {
    }

    public static boolean a(String str) {
        if (!d.a(str)) {
            return false;
        }
        synchronized (f85071b) {
            if (!f85070a.containsKey(str)) {
                return true;
            }
            return f85070a.get(str).booleanValue();
        }
    }

    @Override // com.umeng.commonsdk.config.f
    public void a(String str, Boolean bool) {
        if (d.a(str)) {
            synchronized (f85071b) {
                Map<String, Boolean> map = f85070a;
                if (map != null) {
                    map.put(str, bool);
                }
            }
        }
    }
}
