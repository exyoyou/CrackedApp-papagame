package com.byazt.dl;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 465, 20})
public class c extends tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f13010c;

    private c() {
    }

    public static tt c() {
        if (f13010c == null) {
            synchronized (tt.class) {
                if (f13010c == null) {
                    f13010c = new c();
                }
            }
        }
        return f13010c;
    }

    @Override // com.byazt.dl.tt
    public synchronized int tt() {
        int iVe = com.byazt.by.n.c().ve();
        float fUj = com.byazt.by.n.c().uj();
        if (fUj <= 0.0f) {
            return iVe;
        }
        return (int) Math.ceil(fUj * iVe);
    }

    @Override // com.byazt.dl.tt
    public synchronized long ve() {
        return com.byazt.by.n.c().tt();
    }
}
