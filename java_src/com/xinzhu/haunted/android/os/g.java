package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f89001b = "g";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f89002c = com.xinzhu.haunted.d.a(IBinder.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f89003d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f89004e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f89005a;

    public g(Object obj) {
        this.f89005a = obj;
    }

    public boolean a() {
        if (f89003d.get() != null) {
            return true;
        }
        if (f89004e) {
            return false;
        }
        androidx.lifecycle.i.a(f89003d, null, com.xinzhu.haunted.d.g(f89002c, "getExtension", new Object[0]));
        f89004e = true;
        return f89003d.get() != null;
    }

    public IBinder b() {
        if (!a()) {
            return null;
        }
        try {
            return (IBinder) f89003d.get().invoke(this.f89005a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    private g() {
    }
}
