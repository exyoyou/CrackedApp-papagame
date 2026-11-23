package com.byazt.zb;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 184, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static c f22660c;

    public interface c {
        void c(String str, String str2, Throwable th);
    }

    public static void c(c cVar) {
        f22660c = cVar;
    }

    public static boolean c() {
        return f22660c != null;
    }

    public static void c(String str, String str2, Throwable th) {
        if (f22660c == null) {
            return;
        }
        if (th == null) {
            th = new Throwable();
        }
        f22660c.c(str, str2, th);
    }
}
