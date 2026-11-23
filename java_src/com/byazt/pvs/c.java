package com.byazt.pvs;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 705, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile tt f18867c;

    public static tt c(com.byazt.vb.n nVar) {
        if (f18867c == null) {
            synchronized (tt.class) {
                if (f18867c == null) {
                    f18867c = new ve(new a(nVar), nVar);
                }
            }
        }
        return f18867c;
    }
}
