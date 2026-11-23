package l8;

import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.os.Handler;
import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f94097b = "c";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f94098c = com.xinzhu.haunted.d.a(AccountManager.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f94099d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f94100e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f94101f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f94102g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Method> f94103h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f94104i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Method> f94105j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f94106k = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f94107a;

    public c(Object obj) {
        this.f94107a = obj;
    }

    public static boolean d() {
        if (f94103h.get() != null) {
            return true;
        }
        if (f94104i) {
            return false;
        }
        i.a(f94103h, null, com.xinzhu.haunted.d.g(f94098c, "invalidateLocalAccountsDataCaches", new Object[0]));
        f94104i = true;
        return f94103h.get() != null;
    }

    public static void h() {
        if (d()) {
            try {
                f94103h.get().invoke(null, new Object[0]);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public boolean a() {
        if (f94099d.get() != null) {
            return true;
        }
        if (f94100e) {
            return false;
        }
        i.a(f94099d, null, com.xinzhu.haunted.d.f(f94098c, "mService"));
        f94100e = true;
        return f94099d.get() != null;
    }

    public boolean b() {
        if (f94105j.get() != null) {
            return true;
        }
        if (f94106k) {
            return false;
        }
        i.a(f94105j, null, com.xinzhu.haunted.d.g(f94098c, "disableLocalAccountCaches", new Object[0]));
        f94106k = true;
        return f94105j.get() != null;
    }

    public boolean c(String str, String str2, AccountManagerCallback accountManagerCallback, Handler handler) {
        if (f94101f.get() != null) {
            return true;
        }
        if (f94102g) {
            return false;
        }
        i.a(f94101f, null, com.xinzhu.haunted.d.g(f94098c, "getAuthTokenLabel", String.class, String.class, AccountManagerCallback.class, Handler.class));
        f94102g = true;
        return f94101f.get() != null;
    }

    public void e() {
        if (b()) {
            try {
                f94105j.get().invoke(this.f94107a, new Object[0]);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public AccountManagerFuture<String> f(String str, String str2, AccountManagerCallback accountManagerCallback, Handler handler) {
        if (!c(str, str2, accountManagerCallback, handler)) {
            return null;
        }
        try {
            return (AccountManagerFuture) f94101f.get().invoke(this.f94107a, str, str2, accountManagerCallback, handler);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public d g() {
        if (!a()) {
            return null;
        }
        try {
            return new d(f94099d.get().get(this.f94107a));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean i(d dVar) {
        if (!a()) {
            return false;
        }
        try {
            f94099d.get().set(this.f94107a, dVar.f94112a);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private c() {
    }
}
