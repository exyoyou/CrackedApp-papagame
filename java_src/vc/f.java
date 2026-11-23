package vc;

import android.app.Activity;
import android.view.Window;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class f extends notchtools.geek.com.notchtools.core.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f97540c = "f";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Class f97541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Method f97542b;

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    public void a(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.a(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void b(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        d(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void c(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.c(activity, dVar);
        if (e(activity.getWindow())) {
            notchtools.geek.com.notchtools.helper.b.c(activity.getWindow());
        }
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void d(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.d(activity, dVar);
        if (e(activity.getWindow())) {
            notchtools.geek.com.notchtools.helper.b.d(activity.getWindow());
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public boolean e(Window window) {
        if (window == null) {
            return false;
        }
        try {
            Class<?> clsLoadClass = window.getContext().getClassLoader().loadClass("android.util.FtFeature");
            this.f97541a = clsLoadClass;
            Method method = clsLoadClass.getMethod("isFeatureSupport", Integer.TYPE);
            this.f97542b = method;
            return ((Boolean) method.invoke(this.f97541a, 32)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public int f(Window window) {
        if (e(window)) {
            return notchtools.geek.com.notchtools.helper.b.b(window.getContext());
        }
        return 0;
    }
}
