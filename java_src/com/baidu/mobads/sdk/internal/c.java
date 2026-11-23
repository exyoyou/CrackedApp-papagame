package com.baidu.mobads.sdk.internal;

/* JADX INFO: loaded from: classes6.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile c f7676a;

    public interface a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String f7677a = "remote_adserv";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f7678b = "remote_novel";
    }

    private c() {
    }

    public static c a() {
        if (f7676a == null) {
            synchronized (c.class) {
                if (f7676a == null) {
                    f7676a = new c();
                }
            }
        }
        return f7676a;
    }

    public as a(String str) {
        return new as(str);
    }
}
