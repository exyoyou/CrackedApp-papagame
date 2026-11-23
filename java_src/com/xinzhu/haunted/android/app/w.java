package com.xinzhu.haunted.android.app;

import android.app.Notification;
import android.graphics.drawable.Icon;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88610b = "w";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88611c = com.xinzhu.haunted.d.a(Notification.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88612d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88613e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f88614f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88615g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88616a;

    public w(Object obj) {
        this.f88616a = obj;
    }

    public boolean a() {
        if (f88614f.get() != null) {
            return true;
        }
        if (f88615g) {
            return false;
        }
        androidx.lifecycle.i.a(f88614f, null, com.xinzhu.haunted.d.f(f88611c, "mLargeIcon"));
        f88615g = true;
        return f88614f.get() != null;
    }

    public boolean b() {
        if (f88612d.get() != null) {
            return true;
        }
        if (f88613e) {
            return false;
        }
        androidx.lifecycle.i.a(f88612d, null, com.xinzhu.haunted.d.f(f88611c, "mSmallIcon"));
        f88613e = true;
        return f88612d.get() != null;
    }

    public Icon c() {
        if (!a()) {
            return null;
        }
        try {
            return androidx.core.app.l.a(f88614f.get().get(this.f88616a));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Icon d() {
        if (!b()) {
            return null;
        }
        try {
            return androidx.core.app.l.a(f88612d.get().get(this.f88616a));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean e(Icon icon) {
        if (!a()) {
            return false;
        }
        try {
            f88614f.get().set(this.f88616a, icon);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean f(Icon icon) {
        if (!b()) {
            return false;
        }
        try {
            f88612d.get().set(this.f88616a, icon);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private w() {
    }
}
