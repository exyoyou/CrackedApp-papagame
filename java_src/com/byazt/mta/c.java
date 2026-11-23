package com.byazt.mta;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1959, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f17005c;
    public int tt;

    private c() {
    }

    public static c c() {
        if (f17005c == null) {
            synchronized (c.class) {
                if (f17005c == null) {
                    f17005c = new c();
                }
            }
        }
        return f17005c;
    }

    public int tt() {
        return this.tt;
    }

    public void c(int i10) {
        if (i10 <= 0) {
            return;
        }
        this.tt = i10;
    }
}
