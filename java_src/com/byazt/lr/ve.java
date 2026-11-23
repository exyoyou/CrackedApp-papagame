package com.byazt.lr;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 155, 54})
public class ve extends com.byazt.w.x<Long, com.byazt.nn.tt> {

    @com.byazt.zqa.c(c = {0, 1, 155, 24})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static ve f16769c = new ve();
    }

    public static ve c() {
        return c.f16769c;
    }

    private ve() {
        super(16, 16);
    }

    public void c(com.byazt.nn.tt ttVar) {
        if (ttVar == null) {
            return;
        }
        put(Long.valueOf(ttVar.c()), ttVar);
    }

    public com.byazt.nn.tt c(long j10, long j11) {
        return get(get(Long.valueOf(j10)) != null ? Long.valueOf(j10) : Long.valueOf(j11));
    }
}
