package com.xinzhu.haunted.android.content.pm;

import android.content.pm.PackageInfo;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88773b = "h";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88774c = com.xinzhu.haunted.d.a(PackageInfo.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88775d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88776e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88777a;

    public h(Object obj) {
        this.f88777a = obj;
    }

    public boolean a() {
        if (f88775d.get() != null) {
            return true;
        }
        if (f88776e) {
            return false;
        }
        androidx.lifecycle.i.a(f88775d, null, com.xinzhu.haunted.d.f(f88774c, "restrictedAccountType"));
        f88776e = true;
        return f88775d.get() != null;
    }

    public String b() {
        if (!a()) {
            return null;
        }
        try {
            return (String) f88775d.get().get(this.f88777a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean c(String str) {
        if (!a()) {
            return false;
        }
        try {
            f88775d.get().set(this.f88777a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private h() {
    }
}
