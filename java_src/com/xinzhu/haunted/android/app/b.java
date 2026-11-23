package com.xinzhu.haunted.android.app;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88264a = "b";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88265b = com.xinzhu.haunted.d.b("android.app.ActivityClient");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f88266c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f88267d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Method> f88268e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f88269f = false;

    public static boolean a() {
        if (f88266c.get() != null) {
            return true;
        }
        if (f88267d) {
            return false;
        }
        androidx.lifecycle.i.a(f88266c, null, com.xinzhu.haunted.d.f(f88265b, "INTERFACE_SINGLETON"));
        f88267d = true;
        return f88266c.get() != null;
    }

    public static boolean b() {
        if (f88268e.get() != null) {
            return true;
        }
        if (f88269f) {
            return false;
        }
        androidx.lifecycle.i.a(f88268e, null, com.xinzhu.haunted.d.g(f88265b, "getActivityClientController", new Object[0]));
        f88269f = true;
        return f88268e.get() != null;
    }

    public static IInterface c() {
        if (!b()) {
            return null;
        }
        try {
            return (IInterface) f88268e.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static Object d() {
        if (!a()) {
            return null;
        }
        try {
            return f88266c.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean e(Object obj) {
        if (!a()) {
            return false;
        }
        try {
            f88266c.get().set(null, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f88270b = com.xinzhu.haunted.d.b("android.app.ActivityClient$ActivityClientControllerSingleton");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Field> f88271c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f88272d = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f88273a;

        public a(Object obj) {
            this.f88273a = obj;
        }

        public boolean a() {
            if (f88271c.get() != null) {
                return true;
            }
            if (f88272d) {
                return false;
            }
            androidx.lifecycle.i.a(f88271c, null, com.xinzhu.haunted.d.f(f88270b, "mKnownInstance"));
            f88272d = true;
            return f88271c.get() != null;
        }

        public IInterface b() {
            if (!a()) {
                return null;
            }
            try {
                return (IInterface) f88271c.get().get(this.f88273a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public boolean c(IInterface iInterface) {
            if (!a()) {
                return false;
            }
            try {
                f88271c.get().set(this.f88273a, iInterface);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        private a() {
        }
    }
}
