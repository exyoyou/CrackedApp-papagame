package ca;

import android.util.ArrayMap;
import androidx.lifecycle.i;
import com.sigmob.sdk.downloader.core.breakpoint.f;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f526b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f527c = d.b("com.android.server.SystemConfig");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f528d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f529e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f530f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f531g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f532a;

    public a(Object obj) {
        this.f532a = obj;
    }

    public static boolean a() {
        if (f528d.get() != null) {
            return true;
        }
        if (f529e) {
            return false;
        }
        i.a(f528d, null, d.g(f527c, "getInstance", new Object[0]));
        f529e = true;
        return f528d.get() != null;
    }

    public static Object c() {
        if (!a()) {
            return null;
        }
        try {
            return f528d.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public boolean b() {
        if (f530f.get() != null) {
            return true;
        }
        if (f531g) {
            return false;
        }
        i.a(f530f, null, d.g(f527c, "getSharedLibraries", new Object[0]));
        f531g = true;
        return f530f.get() != null;
    }

    public ArrayMap<String, Object> d() {
        if (!b()) {
            return null;
        }
        try {
            return (ArrayMap) f530f.get().invoke(this.f532a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: renamed from: ca.a$a, reason: collision with other inner class name */
    public static final class C0024a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f533b = d.b("com.android.server.SystemConfig$SharedLibraryEntry");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Field> f534c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f535d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static AtomicReference<Field> f536e = new AtomicReference<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static boolean f537f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static AtomicReference<Field> f538g = new AtomicReference<>();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static boolean f539h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static AtomicReference<Field> f540i = new AtomicReference<>();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static boolean f541j = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f542a;

        public C0024a(Object obj) {
            this.f542a = obj;
        }

        public boolean a() {
            if (f538g.get() != null) {
                return true;
            }
            if (f539h) {
                return false;
            }
            i.a(f538g, null, d.f(f533b, "dependencies"));
            f539h = true;
            return f538g.get() != null;
        }

        public boolean b() {
            if (f536e.get() != null) {
                return true;
            }
            if (f537f) {
                return false;
            }
            i.a(f536e, null, d.f(f533b, f.f80402e));
            f537f = true;
            return f536e.get() != null;
        }

        public boolean c() {
            if (f540i.get() != null) {
                return true;
            }
            if (f541j) {
                return false;
            }
            i.a(f540i, null, d.f(f533b, "isNative"));
            f541j = true;
            return f540i.get() != null;
        }

        public boolean d() {
            if (f534c.get() != null) {
                return true;
            }
            if (f535d) {
                return false;
            }
            i.a(f534c, null, d.f(f533b, "name"));
            f535d = true;
            return f534c.get() != null;
        }

        public String[] e() {
            if (!a()) {
                return null;
            }
            try {
                return (String[]) f538g.get().get(this.f542a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public String f() {
            if (!b()) {
                return null;
            }
            try {
                return (String) f536e.get().get(this.f542a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public boolean g() {
            if (!c()) {
                return false;
            }
            try {
                return ((Boolean) f540i.get().get(this.f542a)).booleanValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public String h() {
            if (!d()) {
                return null;
            }
            try {
                return (String) f534c.get().get(this.f542a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public boolean i(String[] strArr) {
            if (!a()) {
                return false;
            }
            try {
                f538g.get().set(this.f542a, strArr);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean j(String str) {
            if (!b()) {
                return false;
            }
            try {
                f536e.get().set(this.f542a, str);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean k(boolean z10) {
            if (!c()) {
                return false;
            }
            try {
                f540i.get().set(this.f542a, Boolean.valueOf(z10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean l(String str) {
            if (!d()) {
                return false;
            }
            try {
                f534c.get().set(this.f542a, str);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        private C0024a() {
        }
    }

    private a() {
    }
}
