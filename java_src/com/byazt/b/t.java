package com.byazt.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 66})
public class t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile com.byazt.zz.u f11838c;
    public static volatile com.byazt.zz.u tt;

    public static com.byazt.zz.u c(boolean z10) {
        if (z10 && com.byazt.zz.ve.lo()) {
            if (tt == null) {
                synchronized (t.class) {
                    if (tt == null) {
                        tt = com.byazt.zz.ve.pu().tt();
                    }
                }
            }
            return tt;
        }
        if (f11838c == null) {
            synchronized (t.class) {
                if (f11838c == null) {
                    f11838c = new m();
                }
            }
        }
        return f11838c;
    }
}
