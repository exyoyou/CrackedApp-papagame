package com.xinzhu.haunted.android.app;

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88492b = "m";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88493c = com.xinzhu.haunted.d.b("android.app.IActivityClientController");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f88494d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88495e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88496a;

    public m(Object obj) {
        this.f88496a = obj;
    }

    public boolean a(IBinder iBinder, boolean z10) {
        if (f88494d.get() != null) {
            return true;
        }
        if (f88495e) {
            return false;
        }
        androidx.lifecycle.i.a(f88494d, null, com.xinzhu.haunted.d.g(f88493c, "getTaskForActivity", IBinder.class, Boolean.TYPE));
        f88495e = true;
        return f88494d.get() != null;
    }

    public int b(IBinder iBinder, boolean z10) {
        if (!a(iBinder, z10)) {
            return 0;
        }
        try {
            return ((Integer) f88494d.get().invoke(this.f88496a, iBinder, Boolean.valueOf(z10))).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    private m() {
    }
}
