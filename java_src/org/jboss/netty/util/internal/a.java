package org.jboss.netty.util.internal;

import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f95809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Method f95810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Method f95811c;

    static {
        Method method;
        Method method2;
        boolean z10 = false;
        Method method3 = null;
        try {
            method2 = Class.forName("java.nio.DirectByteBuffer").getMethod("cleaner", new Class[0]);
            try {
                method2.setAccessible(true);
                method3 = Class.forName("sun.misc.Cleaner").getMethod("clean", new Class[0]);
                method3.setAccessible(true);
                z10 = true;
            } catch (Exception unused) {
                method = method3;
                method3 = method2;
                Method method4 = method;
                method2 = method3;
                method3 = method4;
            }
        } catch (Exception unused2) {
            method = null;
        }
        f95809a = z10;
        f95810b = method2;
        f95811c = method3;
    }

    private a() {
    }

    public static void a(ByteBuffer byteBuffer) {
        if (f95809a && byteBuffer.isDirect()) {
            try {
                f95811c.invoke(f95810b.invoke(byteBuffer, new Object[0]), new Object[0]);
            } catch (Exception unused) {
            }
        }
    }
}
