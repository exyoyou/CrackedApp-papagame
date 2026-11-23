package com.byazt.vxy;

import com.byazt.omf.x;
import com.byazt.ut.uj;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 146, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static c f21423c;

    public static c c() {
        if (f21423c == null) {
            synchronized (c.class) {
                if (f21423c == null) {
                    f21423c = new c();
                }
            }
        }
        return f21423c;
    }

    public static com.byazt.dna.c n() {
        return uj.getAppContext(uj());
    }

    public static String tt() {
        return x.m().rl();
    }

    public static String uj() {
        return x.m().rl();
    }

    public static String ve() {
        return x.m().rl();
    }

    public com.byazt.dna.c c(String str) {
        return uj.getAppContext(str);
    }
}
