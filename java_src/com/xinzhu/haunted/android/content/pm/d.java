package com.xinzhu.haunted.android.content.pm;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88743a = "d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88744b = com.xinzhu.haunted.d.b("android.content.pm.verify.domain.IDomainVerificationManager");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f88745a = com.xinzhu.haunted.d.b("android.content.pm.verify.domain.IDomainVerificationManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f88746b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f88747c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f88746b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f88746b.get() != null) {
                return true;
            }
            if (f88747c) {
                return false;
            }
            androidx.lifecycle.i.a(f88746b, null, com.xinzhu.haunted.d.g(f88745a, "asInterface", IBinder.class));
            f88747c = true;
            return f88746b.get() != null;
        }
    }
}
