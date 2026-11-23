package com.xinzhu.haunted.android.app;

import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88257b = "a0";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88258c = com.xinzhu.haunted.d.a(Service.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f88259d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88260e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88261a;

    public a0(Object obj) {
        this.f88261a = obj;
    }

    public void a(Context context, Object obj, String str, IBinder iBinder, Application application, Object obj2) {
        if (b(context, obj, str, iBinder, application, obj2)) {
            try {
                f88259d.get().invoke(this.f88261a, context, obj, str, iBinder, application, obj2);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public boolean b(Context context, Object obj, String str, IBinder iBinder, Application application, Object obj2) {
        if (f88259d.get() != null) {
            return true;
        }
        if (f88260e) {
            return false;
        }
        androidx.lifecycle.i.a(f88259d, null, com.xinzhu.haunted.d.g(f88258c, "attach", Context.class, "android.app.ActivityThread", String.class, IBinder.class, Application.class, Object.class));
        f88260e = true;
        return f88259d.get() != null;
    }

    private a0() {
    }
}
