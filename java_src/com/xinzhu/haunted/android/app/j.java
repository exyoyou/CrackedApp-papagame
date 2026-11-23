package com.xinzhu.haunted.android.app;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88461b = "j";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88462c = com.xinzhu.haunted.d.b("android.app.ApplicationPackageManager");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88463d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88464e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88465a;

    public j(Object obj) {
        this.f88465a = obj;
    }

    public boolean a() {
        if (f88463d.get() != null) {
            return true;
        }
        if (f88464e) {
            return false;
        }
        androidx.lifecycle.i.a(f88463d, null, com.xinzhu.haunted.d.f(f88462c, "mPermissionManager"));
        f88464e = true;
        return f88463d.get() != null;
    }

    public IInterface b() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f88463d.get().get(this.f88465a);
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
            f88463d.get().set(this.f88465a, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private j() {
    }
}
