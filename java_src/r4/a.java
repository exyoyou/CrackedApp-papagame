package r4;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f96753a;

    private a() {
    }

    public static String a(String str) throws IOException {
        b bVar;
        synchronized (a.class) {
            bVar = f96753a;
            if (bVar == null) {
                throw new IllegalStateException("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
            }
        }
        return bVar.c(str);
    }

    public static int b() {
        b bVar;
        synchronized (a.class) {
            bVar = f96753a;
            if (bVar == null) {
                throw new IllegalStateException("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
            }
        }
        return bVar.b();
    }

    public static synchronized void c(b bVar) {
        if (f96753a != null) {
            throw new IllegalStateException("Cannot re-initialize NativeLoader.");
        }
        f96753a = bVar;
    }

    public static synchronized void d(b bVar) {
        if (!e()) {
            c(bVar);
        }
    }

    public static synchronized boolean e() {
        return f96753a != null;
    }

    public static boolean f(String str) {
        return g(str, 0);
    }

    public static boolean g(String str, int i10) {
        b bVar;
        synchronized (a.class) {
            bVar = f96753a;
            if (bVar == null) {
                throw new IllegalStateException("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
            }
        }
        return bVar.a(str, i10);
    }
}
