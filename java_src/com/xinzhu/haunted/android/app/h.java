package com.xinzhu.haunted.android.app;

import android.app.AppOpsManager;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88407b = "h";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88408c = com.xinzhu.haunted.d.a(AppOpsManager.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88409d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88410e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88411a;

    public h(Object obj) {
        this.f88411a = obj;
    }

    public boolean a() {
        if (f88409d.get() != null) {
            return true;
        }
        if (f88410e) {
            return false;
        }
        androidx.lifecycle.i.a(f88409d, null, com.xinzhu.haunted.d.f(f88408c, "mService"));
        f88410e = true;
        return f88409d.get() != null;
    }

    public IInterface b() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f88409d.get().get(this.f88411a);
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
            f88409d.get().set(this.f88411a, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private h() {
    }
}
