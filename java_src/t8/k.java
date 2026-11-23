package t8;

import android.content.Intent;
import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97256b = "k";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97257c = com.xinzhu.haunted.d.b("android.content.IIntentReceiver");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f97258d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97259e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97260a;

    public k(Object obj) {
        this.f97260a = obj;
    }

    public boolean a(Intent intent, int i10, String str, Bundle bundle, boolean z10, boolean z11, int i11) {
        if (f97258d.get() != null) {
            return true;
        }
        if (f97259e) {
            return false;
        }
        AtomicReference<Method> atomicReference = f97258d;
        Class<?> cls = f97257c;
        Class cls2 = Integer.TYPE;
        Class cls3 = Boolean.TYPE;
        androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.g(cls, "performReceive", Intent.class, cls2, String.class, Bundle.class, cls3, cls3, cls2));
        f97259e = true;
        return f97258d.get() != null;
    }

    public void b(Intent intent, int i10, String str, Bundle bundle, boolean z10, boolean z11, int i11) {
        if (a(intent, i10, str, bundle, z10, z11, i11)) {
            try {
                f97258d.get().invoke(this.f97260a, intent, Integer.valueOf(i10), str, bundle, Boolean.valueOf(z10), Boolean.valueOf(z11), Integer.valueOf(i11));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    private k() {
    }
}
