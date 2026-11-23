package com.xinzhu.haunted.android.os;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f89139b = "y";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f89140c = com.xinzhu.haunted.d.b("android.os.UserManager");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f89141d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f89142e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f89143a;

    public y(Object obj) {
        this.f89143a = obj;
    }

    public boolean a() {
        if (f89141d.get() != null) {
            return true;
        }
        if (f89142e) {
            return false;
        }
        androidx.lifecycle.i.a(f89141d, null, com.xinzhu.haunted.d.f(f89140c, "mService"));
        f89142e = true;
        return f89141d.get() != null;
    }

    public IInterface b() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f89141d.get().get(this.f89143a);
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
            f89141d.get().set(this.f89143a, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private y() {
    }
}
