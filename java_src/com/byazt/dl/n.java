package com.byazt.dl;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 465, 46})
public class n extends tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile n f13011c;

    private n() {
    }

    public static tt c() {
        if (f13011c == null) {
            synchronized (tt.class) {
                if (f13011c == null) {
                    f13011c = new n();
                }
            }
        }
        return f13011c;
    }

    @Override // com.byazt.dl.tt
    public int tt() {
        return com.byazt.by.n.c().ve();
    }

    @Override // com.byazt.dl.tt
    public long ve() {
        return com.byazt.by.n.c().tt();
    }
}
