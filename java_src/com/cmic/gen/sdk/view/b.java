package com.cmic.gen.sdk.view;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f24626b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f24627a = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f24628c;

    public interface a {
        void a();
    }

    public static b a() {
        if (f24626b == null) {
            synchronized (b.class) {
                if (f24626b == null) {
                    f24626b = new b();
                }
            }
        }
        return f24626b;
    }

    public a b() {
        return this.f24628c;
    }

    public void c() {
        if (this.f24628c == null || this.f24627a == 1) {
            return;
        }
        this.f24628c = null;
        com.cmic.gen.sdk.e.c.b("LoginProxy", "mLoginAuthProxy == null");
    }

    public void a(a aVar) {
        this.f24627a = 1;
        this.f24628c = aVar;
    }
}
