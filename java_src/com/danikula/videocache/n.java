package com.danikula.videocache;

/* JADX INFO: loaded from: classes9.dex */
public final class n {
    public static void a(Object... objArr) {
        for (Object obj : objArr) {
            obj.getClass();
        }
    }

    static void b(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    static void c(boolean z10, String str) {
        if (!z10) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T> T d(T t10) {
        t10.getClass();
        return t10;
    }

    public static <T> T e(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(str);
    }
}
