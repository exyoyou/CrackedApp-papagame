package l8;

import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f94108b = "d";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f94109c = com.xinzhu.haunted.d.b("android.accounts.IAccountManager");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f94110d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f94111e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f94112a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f94113a = com.xinzhu.haunted.d.b("android.accounts.IAccountManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f94114b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f94115c = false;

        public static IInterface a() {
            if (!b()) {
                return null;
            }
            try {
                return (IInterface) f94114b.get().invoke(null, new Object[0]);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b() {
            if (f94114b.get() != null) {
                return true;
            }
            if (f94115c) {
                return false;
            }
            i.a(f94114b, null, com.xinzhu.haunted.d.g(f94113a, "asInterface", new Object[0]));
            f94115c = true;
            return f94114b.get() != null;
        }
    }

    public d(Object obj) {
        this.f94112a = obj;
    }

    public boolean a() {
        if (f94110d.get() != null) {
            return true;
        }
        if (f94111e) {
            return false;
        }
        i.a(f94110d, null, com.xinzhu.haunted.d.f(f94109c, "_stub"));
        f94111e = true;
        return f94110d.get() != null;
    }

    public Object b() {
        if (!a()) {
            return null;
        }
        try {
            return f94110d.get().get(this.f94112a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean c(Object obj) {
        if (!a()) {
            return false;
        }
        try {
            f94110d.get().set(this.f94112a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private d() {
    }
}
