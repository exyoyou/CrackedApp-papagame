package com.xinzhu.haunted.android.os;

import android.os.WorkSource;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88958b = "a0";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88959c = com.xinzhu.haunted.d.a(WorkSource.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Constructor> f88960d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88961e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88962a;

    public a0(Object obj) {
        this.f88962a = obj;
    }

    public static boolean a(WorkSource workSource) {
        if (f88960d.get() != null) {
            return true;
        }
        if (f88961e) {
            return false;
        }
        androidx.lifecycle.i.a(f88960d, null, com.xinzhu.haunted.d.d(f88959c, "HtWorkSource", WorkSource.class));
        f88961e = true;
        return f88960d.get() != null;
    }

    public static a0 b(WorkSource workSource) {
        if (!a(workSource)) {
            return null;
        }
        try {
            a0 a0Var = new a0();
            a0Var.f88962a = f88960d.get().newInstance(workSource);
            return a0Var;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InstantiationException e11) {
            e11.printStackTrace();
            return null;
        } catch (InvocationTargetException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    private a0() {
    }
}
