package t9;

import android.content.Intent;
import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97357b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97358c = d.b("com.android.internal.content.ReferrerIntent");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Constructor> f97359d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97360e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97361a;

    public a(Object obj) {
        this.f97361a = obj;
    }

    public static boolean a(Intent intent, String str) {
        if (f97359d.get() != null) {
            return true;
        }
        if (f97360e) {
            return false;
        }
        i.a(f97359d, null, d.d(f97358c, "HtReferrerIntent", Intent.class, String.class));
        f97360e = true;
        return f97359d.get() != null;
    }

    public static a b(Intent intent, String str) {
        if (!a(intent, str)) {
            return null;
        }
        try {
            a aVar = new a();
            aVar.f97361a = f97359d.get().newInstance(intent, str);
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

    private a() {
    }
}
