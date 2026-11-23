package com.xinzhu.haunted.android.app;

import android.content.ComponentName;
import android.os.IBinder;
import com.haima.hmcp.ConstantsInternal;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88563b = "s";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88564c = com.xinzhu.haunted.d.b("android.app.IServiceConnection");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f88565d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88566e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88567a;

    public s(Object obj) {
        this.f88567a = obj;
    }

    public boolean a(ComponentName componentName, IBinder iBinder, boolean z10) {
        if (f88565d.get() != null) {
            return true;
        }
        if (f88566e) {
            return false;
        }
        androidx.lifecycle.i.a(f88565d, null, com.xinzhu.haunted.d.g(f88564c, ConstantsInternal.HM_SYS_CONFIG_NOTIFY_CONNECTED, ComponentName.class, IBinder.class, Boolean.TYPE));
        f88566e = true;
        return f88565d.get() != null;
    }

    public void b(ComponentName componentName, IBinder iBinder, boolean z10) {
        if (a(componentName, iBinder, z10)) {
            try {
                f88565d.get().invoke(this.f88567a, componentName, iBinder, Boolean.valueOf(z10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    private s() {
    }
}
