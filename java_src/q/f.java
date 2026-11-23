package q;

import android.content.Context;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f96408a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f96409b = "";

    public static synchronized String a() {
        return f96408a;
    }

    public static synchronized void b(b bVar) {
        if (bVar != null) {
            f96408a = bVar.f96399a;
            f96409b = bVar.f96401c;
        }
    }

    public static synchronized boolean c(Context context) {
        try {
            if (Math.abs(System.currentTimeMillis() - e.c(context)) < 86400000) {
                return true;
            }
        } catch (Throwable th) {
            c0.d.c(th);
        }
        return false;
    }

    public static synchronized String d() {
        return f96409b;
    }
}
