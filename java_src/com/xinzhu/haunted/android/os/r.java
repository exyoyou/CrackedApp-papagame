package com.xinzhu.haunted.android.os;

import android.os.Process;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89073a = "r";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f89074b = com.xinzhu.haunted.d.a(Process.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f89075c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f89076d = false;

    public static boolean a(String str) {
        if (f89075c.get() != null) {
            return true;
        }
        if (f89076d) {
            return false;
        }
        androidx.lifecycle.i.a(f89075c, null, com.xinzhu.haunted.d.g(f89074b, "setArgV0", String.class));
        f89076d = true;
        return f89075c.get() != null;
    }

    public static void b(String str) {
        if (a(str)) {
            try {
                f89075c.get().invoke(null, str);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }
}
