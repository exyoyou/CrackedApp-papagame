package com.byazt.vj;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 2022, 20})
public final class c {
    public static volatile c tt;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile tt f21220c;

    private c() {
    }

    public static c c() {
        if (tt == null) {
            synchronized (c.class) {
                if (tt == null) {
                    tt = new c();
                }
            }
        }
        return tt;
    }

    public tt tt() {
        return this.f21220c;
    }
}
