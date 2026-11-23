package com.xinzhu.haunted.android.os;

import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f89077b = "s";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f89078c = com.xinzhu.haunted.d.b("android.os.RemoteCallback");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f89079d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f89080e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f89081a;

    public s(Object obj) {
        this.f89081a = obj;
    }

    public boolean a(Bundle bundle) {
        if (f89079d.get() != null) {
            return true;
        }
        if (f89080e) {
            return false;
        }
        androidx.lifecycle.i.a(f89079d, null, com.xinzhu.haunted.d.g(f89078c, "sendResult", Bundle.class));
        f89080e = true;
        return f89079d.get() != null;
    }

    public void b(Bundle bundle) {
        if (a(bundle)) {
            try {
                f89079d.get().invoke(this.f89081a, bundle);
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
