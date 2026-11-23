package i9;

import android.os.IInterface;
import android.provider.Settings;
import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f91500a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f91501b = com.xinzhu.haunted.d.a(Settings.class);

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f91506a = com.xinzhu.haunted.d.b("android.provider.Settings$Global");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Field> f91507b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f91508c = false;

        public static boolean a() {
            if (f91507b.get() != null) {
                return true;
            }
            if (f91508c) {
                return false;
            }
            i.a(f91507b, null, com.xinzhu.haunted.d.f(f91506a, "sNameValueCache"));
            f91508c = true;
            return f91507b.get() != null;
        }

        public static Object b() {
            if (!a()) {
                return null;
            }
            try {
                return f91507b.get().get(null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public static boolean c(Object obj) {
            if (!a()) {
                return false;
            }
            try {
                f91507b.get().set(null, obj);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f91515a = com.xinzhu.haunted.d.b("android.provider.Settings$Secure");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Field> f91516b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f91517c = false;

        public static boolean a() {
            if (f91516b.get() != null) {
                return true;
            }
            if (f91517c) {
                return false;
            }
            i.a(f91516b, null, com.xinzhu.haunted.d.f(f91515a, "sNameValueCache"));
            f91517c = true;
            return f91516b.get() != null;
        }

        public static Object b() {
            if (!a()) {
                return null;
            }
            try {
                return f91516b.get().get(null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public static boolean c(Object obj) {
            if (!a()) {
                return false;
            }
            try {
                f91516b.get().set(null, obj);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f91518a = com.xinzhu.haunted.d.b("android.provider.Settings$System");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Field> f91519b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f91520c = false;

        public static boolean a() {
            if (f91519b.get() != null) {
                return true;
            }
            if (f91520c) {
                return false;
            }
            i.a(f91519b, null, com.xinzhu.haunted.d.f(f91518a, "sNameValueCache"));
            f91520c = true;
            return f91519b.get() != null;
        }

        public static Object b() {
            if (!a()) {
                return null;
            }
            try {
                return f91519b.get().get(null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public static boolean c(Object obj) {
            if (!a()) {
                return false;
            }
            try {
                f91519b.get().set(null, obj);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }
    }

    /* JADX INFO: renamed from: i9.a$a, reason: collision with other inner class name */
    public static final class C1173a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f91502b = com.xinzhu.haunted.d.b("android.provider.Settings$ContentProviderHolder");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Field> f91503c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f91504d = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f91505a;

        public C1173a(Object obj) {
            this.f91505a = obj;
        }

        public boolean a() {
            if (f91503c.get() != null) {
                return true;
            }
            if (f91504d) {
                return false;
            }
            i.a(f91503c, null, com.xinzhu.haunted.d.f(f91502b, "mContentProvider"));
            f91504d = true;
            return f91503c.get() != null;
        }

        public IInterface b() {
            if (!a()) {
                return null;
            }
            try {
                return (IInterface) f91503c.get().get(this.f91505a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public boolean c(IInterface iInterface) {
            if (!a()) {
                return false;
            }
            try {
                f91503c.get().set(this.f91505a, iInterface);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        private C1173a() {
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f91509b = com.xinzhu.haunted.d.b("android.provider.Settings$NameValueCache");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Field> f91510c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f91511d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static AtomicReference<Field> f91512e = new AtomicReference<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static boolean f91513f = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f91514a;

        public c(Object obj) {
            this.f91514a = obj;
        }

        public boolean a() {
            if (f91510c.get() != null) {
                return true;
            }
            if (f91511d) {
                return false;
            }
            i.a(f91510c, null, com.xinzhu.haunted.d.f(f91509b, "mContentProvider"));
            f91511d = true;
            return f91510c.get() != null;
        }

        public boolean b() {
            if (f91512e.get() != null) {
                return true;
            }
            if (f91513f) {
                return false;
            }
            i.a(f91512e, null, com.xinzhu.haunted.d.f(f91509b, "mProviderHolder"));
            f91513f = true;
            return f91512e.get() != null;
        }

        public Object c() {
            if (!a()) {
                return null;
            }
            try {
                return f91510c.get().get(this.f91514a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public Object d() {
            if (!b()) {
                return null;
            }
            try {
                return f91512e.get().get(this.f91514a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public boolean e(Object obj) {
            if (!a()) {
                return false;
            }
            try {
                f91510c.get().set(this.f91514a, obj);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean f(Object obj) {
            if (!b()) {
                return false;
            }
            try {
                f91512e.get().set(this.f91514a, obj);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        private c() {
        }
    }
}
