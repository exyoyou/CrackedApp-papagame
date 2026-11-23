package com.xinzhu.haunted.android.content.pm;

import android.content.pm.PackageInstaller;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88779a = "i";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88780b = com.xinzhu.haunted.d.a(PackageInstaller.class);

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f88781b = com.xinzhu.haunted.d.b("android.content.pm.PackageInstaller$SessionParams");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Field> f88782c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f88783d = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f88784a;

        public a(Object obj) {
            this.f88784a = obj;
        }

        public boolean a() {
            if (f88782c.get() != null) {
                return true;
            }
            if (f88783d) {
                return false;
            }
            androidx.lifecycle.i.a(f88782c, null, com.xinzhu.haunted.d.f(f88781b, "installerPackageName"));
            f88783d = true;
            return f88782c.get() != null;
        }

        public String b() {
            if (!a()) {
                return null;
            }
            try {
                return (String) f88782c.get().get(this.f88784a);
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
                f88782c.get().set(this.f88784a, str);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        private a() {
        }
    }
}
