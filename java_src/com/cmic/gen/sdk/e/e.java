package com.cmic.gen.sdk.e;

import com.cmic.gen.sdk.auth.GenTokenListener;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ConcurrentHashMap<String, GenTokenListener> f24480a = new ConcurrentHashMap<>(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ConcurrentHashMap<String, com.cmic.gen.sdk.a> f24481b = new ConcurrentHashMap<>();

    public static boolean a(String str) {
        return !f24480a.containsKey(str);
    }

    public static void b(String str) {
        f24480a.remove(str);
    }

    public static GenTokenListener c(String str) {
        return f24480a.get(str);
    }

    public static com.cmic.gen.sdk.a d(String str) {
        return str != null ? f24481b.get(str) : new com.cmic.gen.sdk.a(0);
    }

    public static void a(String str, GenTokenListener genTokenListener) {
        f24480a.put(str, genTokenListener);
    }

    public static void a(String str, com.cmic.gen.sdk.a aVar) {
        if (str == null || aVar == null) {
            return;
        }
        f24481b.put(str, aVar);
    }
}
