package l8;

import android.accounts.AccountAuthenticatorResponse;
import androidx.lifecycle.i;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f94092b = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f94093c = com.xinzhu.haunted.d.a(AccountAuthenticatorResponse.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Constructor> f94094d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f94095e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f94096a;

    public b(Object obj) {
        this.f94096a = obj;
    }

    public static boolean a(Object obj) {
        if (f94094d.get() != null) {
            return true;
        }
        if (f94095e) {
            return false;
        }
        i.a(f94094d, null, com.xinzhu.haunted.d.d(f94093c, "HtAccountAuthenticatorResponse", "android.accounts.IAccountAuthenticatorResponse"));
        f94095e = true;
        return f94094d.get() != null;
    }

    public static b b(Object obj) {
        if (!a(obj)) {
            return null;
        }
        try {
            b bVar = new b();
            bVar.f94096a = f94094d.get().newInstance(obj);
            return bVar;
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

    private b() {
    }
}
