package com.xinzhu.haunted.android.content.pm;

import android.content.pm.PackageItemInfo;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88794b = "j";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88795c = com.xinzhu.haunted.d.a(PackageItemInfo.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88796d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88797e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88798a;

    public j(Object obj) {
        this.f88798a = obj;
    }

    public boolean a() {
        if (f88796d.get() != null) {
            return true;
        }
        if (f88797e) {
            return false;
        }
        androidx.lifecycle.i.a(f88796d, null, com.xinzhu.haunted.d.f(f88795c, "showUserIcon"));
        f88797e = true;
        return f88796d.get() != null;
    }

    public int b() {
        if (!a()) {
            return 0;
        }
        try {
            return ((Integer) f88796d.get().get(this.f88798a)).intValue();
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
            f88796d.get().set(this.f88798a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private j() {
    }
}
