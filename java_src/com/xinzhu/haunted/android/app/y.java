package com.xinzhu.haunted.android.app;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.UserHandle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88635b = "y";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88636c = com.xinzhu.haunted.d.b("android.app.PendingIntent");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f88637d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88638e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f88639f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88640g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88641a;

    public y(Object obj) {
        this.f88641a = obj;
    }

    public static boolean a(Context context, int i10, Intent intent, int i11, Bundle bundle, UserHandle userHandle) {
        if (f88637d.get() != null) {
            return true;
        }
        if (f88638e) {
            return false;
        }
        AtomicReference<Method> atomicReference = f88637d;
        Class<?> cls = f88636c;
        Class cls2 = Integer.TYPE;
        androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.g(cls, "getActivityAsUser", Context.class, cls2, Intent.class, cls2, Bundle.class, UserHandle.class));
        f88638e = true;
        return f88637d.get() != null;
    }

    public static PendingIntent c(Context context, int i10, Intent intent, int i11, Bundle bundle, UserHandle userHandle) {
        if (!a(context, i10, intent, i11, bundle, userHandle)) {
            return null;
        }
        try {
            return (PendingIntent) f88637d.get().invoke(null, context, Integer.valueOf(i10), intent, Integer.valueOf(i11), bundle, userHandle);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public boolean b() {
        if (f88639f.get() != null) {
            return true;
        }
        if (f88640g) {
            return false;
        }
        androidx.lifecycle.i.a(f88639f, null, com.xinzhu.haunted.d.g(f88636c, "getIntentSender", new Object[0]));
        f88640g = true;
        return f88639f.get() != null;
    }

    public IntentSender d() {
        if (!b()) {
            return null;
        }
        try {
            return (IntentSender) f88639f.get().invoke(this.f88641a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    private y() {
    }
}
