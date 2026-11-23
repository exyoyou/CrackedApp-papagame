package t8;

import android.content.BroadcastReceiver;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97179b = "c";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97180c = com.xinzhu.haunted.d.a(BroadcastReceiver.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f97181d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97182e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97183a;

    public c(Object obj) {
        this.f97183a = obj;
    }

    public boolean a() {
        if (f97181d.get() != null) {
            return true;
        }
        if (f97182e) {
            return false;
        }
        androidx.lifecycle.i.a(f97181d, null, com.xinzhu.haunted.d.g(f97180c, "getSendingUserId", new Object[0]));
        f97182e = true;
        return f97181d.get() != null;
    }

    public int b() {
        if (!a()) {
            return 0;
        }
        try {
            return ((Integer) f97181d.get().invoke(this.f97183a, new Object[0])).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    private c() {
    }
}
