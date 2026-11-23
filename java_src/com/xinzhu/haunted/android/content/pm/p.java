package com.xinzhu.haunted.android.content.pm;

import android.content.pm.ServiceInfo;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88865b = "p";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88866c = com.xinzhu.haunted.d.a(ServiceInfo.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88867d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88868e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88869a;

    public p(Object obj) {
        this.f88869a = obj;
    }

    public boolean a() {
        if (f88867d.get() != null) {
            return true;
        }
        if (f88868e) {
            return false;
        }
        androidx.lifecycle.i.a(f88867d, null, com.xinzhu.haunted.d.f(f88866c, "mForegroundServiceType"));
        f88868e = true;
        return f88867d.get() != null;
    }

    public int b() {
        if (!a()) {
            return 0;
        }
        try {
            return ((Integer) f88867d.get().get(this.f88869a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean c(int i10) {
        if (!a()) {
            return false;
        }
        try {
            f88867d.get().set(this.f88869a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private p() {
    }
}
