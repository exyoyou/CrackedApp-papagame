package vc;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.provider.Settings;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public class b extends notchtools.geek.com.notchtools.core.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97535a = "b";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97536b = "display_notch_status";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f97537c = 65536;

    private boolean j(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), f97536b, 0) == 1;
    }

    @TargetApi(19)
    public static void k(Window window) {
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        try {
            Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
            cls.getMethod("addHwFlags", Integer.TYPE).invoke(cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes), 65536);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException | Exception unused) {
        }
    }

    @RequiresApi(api = 19)
    public static void l(Window window) {
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        try {
            Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
            cls.getMethod("clearHwFlags", Integer.TYPE).invoke(cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes), 65536);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException | Exception unused) {
        }
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void a(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.a(activity, dVar);
        if (e(activity.getWindow())) {
            k(activity.getWindow());
        }
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void d(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.d(activity, dVar);
        if (e(activity.getWindow())) {
            l(activity.getWindow());
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public boolean e(Window window) {
        try {
            Class<?> clsLoadClass = window.getContext().getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(clsLoadClass, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public int f(Window window) {
        if (!e(window)) {
            return 0;
        }
        int[] iArr = {0, 0};
        try {
            Class<?> clsLoadClass = window.getContext().getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((int[]) clsLoadClass.getMethod("getNotchSize", new Class[0]).invoke(clsLoadClass, new Object[0]))[1];
        } catch (ClassNotFoundException unused) {
            return iArr[1];
        } catch (NoSuchMethodException unused2) {
            return iArr[1];
        } catch (Exception unused3) {
            return iArr[1];
        } catch (Throwable unused4) {
            return iArr[1];
        }
    }
}
