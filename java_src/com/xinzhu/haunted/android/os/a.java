package com.xinzhu.haunted.android.os;

import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88954a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88955b = com.xinzhu.haunted.d.a(Bundle.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f88956c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f88957d = false;

    public static boolean a(Bundle bundle, boolean z10) {
        if (f88956c.get() != null) {
            return true;
        }
        if (f88957d) {
            return false;
        }
        androidx.lifecycle.i.a(f88956c, null, com.xinzhu.haunted.d.g(f88955b, "setDefusable", Bundle.class, Boolean.TYPE));
        f88957d = true;
        return f88956c.get() != null;
    }

    public static Bundle b(Bundle bundle, boolean z10) {
        if (!a(bundle, z10)) {
            return null;
        }
        try {
            return (Bundle) f88956c.get().invoke(null, bundle, Boolean.valueOf(z10));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }
}
