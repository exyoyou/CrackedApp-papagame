package ms.bz.bd.c.Pgl;

/* JADX INFO: loaded from: classes.dex */
public final class u1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile u1 f94470c;
    private Throwable tt = null;

    private u1() {
    }

    public static u1 c() {
        if (f94470c == null) {
            synchronized (u1.class) {
                if (f94470c == null) {
                    f94470c = new u1();
                }
            }
        }
        return f94470c;
    }

    public final synchronized Throwable tt() {
        return this.tt;
    }
}
