package com.umeng.ccg;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f84994a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f84995b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile boolean f84996c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile boolean f84997d = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Map<String, Boolean> f84999f = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Object f84998e = new Object();

    public static boolean a() {
        boolean z10;
        synchronized (f84998e) {
            z10 = f84994a;
        }
        return z10;
    }

    public static boolean b() {
        boolean z10;
        synchronized (f84998e) {
            z10 = f84995b;
        }
        return z10;
    }

    public static boolean c() {
        boolean z10;
        synchronized (f84998e) {
            z10 = f84996c;
        }
        return z10;
    }

    public static boolean d() {
        boolean z10;
        synchronized (f84998e) {
            z10 = f84997d;
        }
        return z10;
    }

    public static void a(boolean z10) {
        synchronized (f84998e) {
            f84997d = z10;
            f84999f.put(a.f84978e, Boolean.valueOf(z10));
        }
    }

    public static boolean a(String str) {
        boolean zBooleanValue;
        synchronized (f84998e) {
            zBooleanValue = f84999f.containsKey(str) ? f84999f.get(str).booleanValue() : true;
        }
        return zBooleanValue;
    }
}
