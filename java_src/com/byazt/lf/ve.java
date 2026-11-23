package com.byazt.lf;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 526, 54})
public final class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f16637c;
    public tt tt;

    public enum c {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    public interface tt {
        void c(String str, String str2);
    }

    /* JADX INFO: renamed from: com.byazt.lf.ve$ve, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 526, 917})
    private static class C0368ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ve f16640c = new ve();
    }

    public static void c(c cVar) {
        synchronized (ve.class) {
            C0368ve.f16640c.f16637c = cVar;
        }
    }

    public static void tt(String str, String str2) {
        if (C0368ve.f16640c.f16637c.compareTo(c.DEBUG) <= 0) {
            ve unused = C0368ve.f16640c;
        }
    }

    private ve() {
        this.f16637c = c.OFF;
        this.tt = new com.byazt.lf.tt();
    }

    public static void c(String str, String str2) {
        if (C0368ve.f16640c.f16637c.compareTo(c.ERROR) <= 0) {
            C0368ve.f16640c.tt.c(str, str2);
        }
    }
}
