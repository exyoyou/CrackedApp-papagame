package org.jboss.netty.util;

/* JADX INFO: loaded from: classes10.dex */
public class e implements Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile d f95731e = d.f95729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f95732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f95733c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f95734d;

    public e(Runnable runnable, String str, d dVar) {
        if (runnable == null) {
            throw new NullPointerException("runnable");
        }
        if (str == null) {
            throw new NullPointerException("proposedThreadName");
        }
        this.f95733c = runnable;
        this.f95732b = dVar;
        this.f95734d = str;
    }

    private String a(String str) {
        String strA;
        try {
            d dVarB = this.f95732b;
            if (dVarB == null) {
                dVarB = b();
            }
            strA = dVarB.a(str, this.f95734d);
        } catch (Throwable th) {
            th.printStackTrace();
            strA = null;
        }
        return strA == null ? str : strA;
    }

    public static d b() {
        return f95731e;
    }

    public static void c(d dVar) {
        if (dVar == null) {
            throw new NullPointerException("threadNameDeterminer");
        }
        f95731e = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z10;
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        String strA = a(name);
        if (name.equals(strA)) {
            z10 = false;
        } else {
            try {
                threadCurrentThread.setName(strA);
                z10 = true;
            } catch (SecurityException e10) {
                e10.printStackTrace();
                z10 = false;
            }
        }
        try {
            this.f95733c.run();
        } finally {
            if (z10) {
                threadCurrentThread.setName(name);
            }
        }
    }

    public e(Runnable runnable, String str) {
        this(runnable, str, null);
    }
}
