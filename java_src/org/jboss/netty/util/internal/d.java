package org.jboss.netty.util.internal;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Queue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes10.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f95817a = f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f95818b = b(AtomicInteger.class.getClassLoader());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f95819c = j.c("os.name", "").toLowerCase().contains("win");

    static class a implements PrivilegedExceptionAction<Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Class f95820a;

        a(Class cls) {
            this.f95820a = cls;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean run() throws Exception {
            this.f95820a.getDeclaredField("theUnsafe");
            return Boolean.TRUE;
        }
    }

    private d() {
    }

    public static boolean a() {
        return f95818b;
    }

    private static boolean b(ClassLoader classLoader) {
        if (j.d("io.netty.noUnsafe", false)) {
            return false;
        }
        if (!(j.a("io.netty.tryUnsafe") ? j.d("io.netty.tryUnsafe", true) : j.d("org.jboss.netty.tryUnsafe", true))) {
            return false;
        }
        try {
            return c(Class.forName("sun.misc.Unsafe", true, classLoader));
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean c(Class<?> cls) throws PrivilegedActionException {
        return ((Boolean) AccessController.doPrivileged(new a(cls))).booleanValue();
    }

    public static boolean d() {
        return f95819c;
    }

    public static int e() {
        return f95817a;
    }

    private static int f() {
        try {
            Class.forName("android.app.Application");
            return 6;
        } catch (ClassNotFoundException unused) {
            try {
                try {
                    Class.forName("java.util.concurrent.LinkedTransferQueue", false, BlockingQueue.class.getClassLoader());
                    return 7;
                } catch (Exception unused2) {
                    Class.forName("java.util.ArrayDeque", false, Queue.class.getClassLoader());
                    return 6;
                }
            } catch (Exception unused3) {
                return 5;
            }
        }
    }
}
