package com.xinzhu.haunted.android.app;

import android.util.Printer;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88454a = "i";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88455b = com.xinzhu.haunted.d.b("android.app.ApplicationErrorReport");

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f88456b = com.xinzhu.haunted.d.b("android.app.ApplicationErrorReport$CrashInfo");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Method> f88457c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f88458d = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f88459a;

        public a(Object obj) {
            this.f88459a = obj;
        }

        public boolean a(Printer printer, String str) {
            if (f88457c.get() != null) {
                return true;
            }
            if (f88458d) {
                return false;
            }
            androidx.lifecycle.i.a(f88457c, null, com.xinzhu.haunted.d.g(f88456b, com.sigmob.sdk.archives.d.f78710c, Printer.class, String.class));
            f88458d = true;
            return f88457c.get() != null;
        }

        public void b(Printer printer, String str) {
            if (a(printer, str)) {
                try {
                    f88457c.get().invoke(this.f88459a, printer, str);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                } catch (InvocationTargetException e11) {
                    e11.printStackTrace();
                }
            }
        }

        private a() {
        }
    }
}
