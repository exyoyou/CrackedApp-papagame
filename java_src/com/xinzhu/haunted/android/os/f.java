package com.xinzhu.haunted.android.os;

import android.os.Handler;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88995b = "f";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88996c = com.xinzhu.haunted.d.a(Handler.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88997d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88998e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88999a;

    public f(Object obj) {
        this.f88999a = obj;
    }

    public boolean a() {
        if (f88997d.get() != null) {
            return true;
        }
        if (f88998e) {
            return false;
        }
        androidx.lifecycle.i.a(f88997d, null, com.xinzhu.haunted.d.f(f88996c, "mCallback"));
        f88998e = true;
        return f88997d.get() != null;
    }

    public Handler.Callback b() {
        if (!a()) {
            return null;
        }
        try {
            return (Handler.Callback) f88997d.get().get(this.f88999a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean c(Handler.Callback callback) {
        if (!a()) {
            return false;
        }
        try {
            f88997d.get().set(this.f88999a, callback);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private f() {
    }
}
