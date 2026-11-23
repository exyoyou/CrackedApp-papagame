package com.xinzhu.haunted.android.os;

import android.os.DropBoxManager;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88963b = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88964c = com.xinzhu.haunted.d.a(DropBoxManager.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88965d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88966e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88967a;

    public b(Object obj) {
        this.f88967a = obj;
    }

    public boolean a() {
        if (f88965d.get() != null) {
            return true;
        }
        if (f88966e) {
            return false;
        }
        androidx.lifecycle.i.a(f88965d, null, com.xinzhu.haunted.d.f(f88964c, "mService"));
        f88966e = true;
        return f88965d.get() != null;
    }

    public IInterface b() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f88965d.get().get(this.f88967a);
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
            f88965d.get().set(this.f88967a, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private b() {
    }
}
