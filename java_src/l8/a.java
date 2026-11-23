package l8;

import android.accounts.Account;
import androidx.lifecycle.i;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f94079b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f94080c = com.xinzhu.haunted.d.a(Account.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f94081d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f94082e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f94083f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f94084g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Method> f94085h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f94086i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Constructor> f94087j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f94088k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Constructor> f94089l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f94090m = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f94091a;

    public a(Object obj) {
        this.f94091a = obj;
    }

    public static boolean a(Account account, String str) {
        if (f94087j.get() != null) {
            return true;
        }
        if (f94088k) {
            return false;
        }
        i.a(f94087j, null, com.xinzhu.haunted.d.d(f94080c, "HtAccount", Account.class, String.class));
        f94088k = true;
        return f94087j.get() != null;
    }

    public static boolean b(String str, String str2, String str3) {
        if (f94089l.get() != null) {
            return true;
        }
        if (f94090m) {
            return false;
        }
        i.a(f94089l, null, com.xinzhu.haunted.d.d(f94080c, "HtAccount", String.class, String.class, String.class));
        f94090m = true;
        return f94089l.get() != null;
    }

    public static a f(Account account, String str) {
        if (!a(account, str)) {
            return null;
        }
        try {
            a aVar = new a();
            aVar.f94091a = f94087j.get().newInstance(account, str);
            return aVar;
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

    public static a g(String str, String str2, String str3) {
        if (!b(str, str2, str3)) {
            return null;
        }
        try {
            a aVar = new a();
            aVar.f94091a = f94089l.get().newInstance(str, str2, str3);
            return aVar;
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

    public boolean c() {
        if (f94083f.get() != null) {
            return true;
        }
        if (f94084g) {
            return false;
        }
        i.a(f94083f, null, com.xinzhu.haunted.d.g(f94080c, "getAccessId", new Object[0]));
        f94084g = true;
        return f94083f.get() != null;
    }

    public boolean d(String str, String str2) {
        if (f94085h.get() != null) {
            return true;
        }
        if (f94086i) {
            return false;
        }
        i.a(f94085h, null, com.xinzhu.haunted.d.g(f94080c, "putString", String.class, String.class));
        f94086i = true;
        return f94085h.get() != null;
    }

    public boolean e() {
        if (f94081d.get() != null) {
            return true;
        }
        if (f94082e) {
            return false;
        }
        i.a(f94081d, null, com.xinzhu.haunted.d.g(f94080c, "toSafeString", new Object[0]));
        f94082e = true;
        return f94081d.get() != null;
    }

    public String h() {
        if (!c()) {
            return null;
        }
        try {
            return (String) f94083f.get().invoke(this.f94091a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public String i(String str, String str2) {
        if (!d(str, str2)) {
            return null;
        }
        try {
            return (String) f94085h.get().invoke(this.f94091a, str, str2);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public String j() {
        if (!e()) {
            return null;
        }
        try {
            return (String) f94081d.get().invoke(this.f94091a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    private a() {
    }
}
