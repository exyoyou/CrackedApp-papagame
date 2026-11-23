package com.join.mgps.Util;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
import com.byazt.bv.BaseConstants;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.uc.crashsdk.export.LogType;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public class p2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f49943a = "ro.miui.ui.version.code";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f49944b = "ro.miui.ui.version.name";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f49945c = "ro.miui.internal.storage";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f49946d = 16;

    public static boolean a(Window window, boolean dark) {
        if (window != null) {
            try {
                WindowManager.LayoutParams attributes = window.getAttributes();
                Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
                Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                int i10 = declaredField.getInt(null);
                int i11 = declaredField2.getInt(attributes);
                declaredField2.setInt(attributes, dark ? i11 | i10 : (~i10) & i11);
                window.setAttributes(attributes);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean b(Window window, boolean dark) {
        if (window == null) {
            return false;
        }
        Class<?> cls = window.getClass();
        try {
            Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            int i10 = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
            Class<?> cls3 = Integer.TYPE;
            Method method = cls.getMethod("setExtraFlags", cls3, cls3);
            if (dark) {
                method.invoke(window, Integer.valueOf(i10), Integer.valueOf(i10));
            } else {
                method.invoke(window, 0, Integer.valueOf(i10));
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void c(Activity activity, int type) {
        if (type == 1) {
            b(activity.getWindow(), false);
        } else if (type == 2) {
            a(activity.getWindow(), false);
        } else if (type == 3) {
            activity.getWindow().getDecorView().setSystemUiVisibility(0);
        }
        u(false, activity);
    }

    public static int d(Activity activity) {
        int i10 = Build.VERSION.SDK_INT;
        if (b(activity.getWindow(), true)) {
            return 1;
        }
        if (a(activity.getWindow(), true)) {
            return 2;
        }
        return i10 >= 23 ? 3 : 0;
    }

    public static int e(Activity activity, boolean mode) {
        int i10 = Build.VERSION.SDK_INT;
        if (b(activity.getWindow(), mode)) {
            return 1;
        }
        if (a(activity.getWindow(), mode)) {
            return 2;
        }
        return i10 >= 23 ? 3 : 0;
    }

    public static void f(Activity activity, int type) {
        if (type == 1) {
            b(activity.getWindow(), true);
        } else if (type == 2) {
            a(activity.getWindow(), true);
        } else if (type == 3) {
            activity.getWindow().getDecorView().setSystemUiVisibility(AVMDLDataLoader.KeyIsLoaderCacheSize);
        }
    }

    public static void g(Context context, boolean dark) {
        if (Build.VERSION.SDK_INT >= 23) {
            View decorView = ((Activity) context).getWindow().getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(dark ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
    }

    private static int h(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int i(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private static boolean j() {
        try {
            return Build.class.getMethod("hasSmartBar", new Class[0]) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean k() {
        try {
            q qVarI = q.i();
            return (qVarI.e(f49943a, null) == null && qVarI.e(f49944b, null) == null && qVarI.e(f49945c, null) == null) ? false : true;
        } catch (IOException unused) {
            return false;
        }
    }

    private static void l(boolean isLightStatusBar, Activity activity) {
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        try {
            Class<?> cls = Class.forName("android.view.WindowManager$LayoutParams");
            int i10 = cls.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON").getInt(attributes);
            Field declaredField = cls.getDeclaredField("meizuFlags");
            declaredField.setAccessible(true);
            int i11 = declaredField.getInt(attributes);
            if (isLightStatusBar) {
                declaredField.set(attributes, Integer.valueOf(i11 | i10));
            } else {
                declaredField.set(attributes, Integer.valueOf((~i10) & i11));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static void m(boolean lightStatusBar, Activity activity) {
        Class<?> cls = activity.getWindow().getClass();
        try {
            Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            int i10 = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
            Class<?> cls3 = Integer.TYPE;
            Method method = cls.getMethod("setExtraFlags", cls3, cls3);
            Window window = activity.getWindow();
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(lightStatusBar ? i10 : 0);
            objArr[1] = Integer.valueOf(i10);
            method.invoke(window, objArr);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void n(Activity activity) {
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(new DisplayMetrics());
    }

    private static void o(Activity activity, boolean useDart) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 23) {
            m(useDart, activity);
        } else if (!useDart) {
            activity.getWindow().getDecorView().setSystemUiVisibility(256);
        } else if (i10 >= 23) {
            activity.getWindow().getDecorView().setSystemUiVisibility(8192);
        }
    }

    private static void p(boolean lightStatusBar, Activity activity) {
        int i10;
        Window window = activity.getWindow();
        window.addFlags(Integer.MIN_VALUE);
        int systemUiVisibility = window.getDecorView().getSystemUiVisibility();
        if (Build.VERSION.SDK_INT >= 23) {
            i10 = lightStatusBar ? systemUiVisibility | 8192 : systemUiVisibility & (-8193);
        } else {
            i10 = lightStatusBar ? systemUiVisibility | 16 : systemUiVisibility & (-17);
        }
        window.getDecorView().setSystemUiVisibility(i10);
    }

    private static void q(Activity activity, boolean useDart) {
        if (!useDart) {
            activity.getWindow().getDecorView().setSystemUiVisibility(256);
        } else if (Build.VERSION.SDK_INT >= 23) {
            activity.getWindow().getDecorView().setSystemUiVisibility(8192);
        } else {
            r(activity, 1140850688, false);
        }
    }

    public static void r(Activity activity, int color, boolean isdarkText) {
        Window window = activity.getWindow();
        b(window, isdarkText);
        a(window, isdarkText);
        com.join.mgps.lib.statusbar.c.i(activity, color, isdarkText);
        u(isdarkText, activity);
    }

    public static void s(Activity activity, boolean useThemestatusBarColor, boolean withoutUseStatusBarColor) {
        int i10 = Build.VERSION.SDK_INT;
        activity.getWindow().getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        if (useThemestatusBarColor) {
            activity.getWindow().setStatusBarColor(activity.getResources().getColor(R.color.white));
        } else {
            activity.getWindow().setStatusBarColor(0);
        }
        if (i10 < 23 || withoutUseStatusBarColor) {
            return;
        }
        activity.getWindow().getDecorView().setSystemUiVisibility(AVMDLDataLoader.KeyIsLoaderCacheSize);
    }

    public static void t(Activity activity, int colorId) {
        Window window = activity.getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(activity.getResources().getColor(colorId));
    }

    @RequiresApi(api = 16)
    public static void u(boolean useDart, Activity activity) {
        try {
            String str = Build.MANUFACTURER;
            if (j()) {
                l(useDart, activity);
            } else if (k()) {
                o(activity, useDart);
            } else if (str.equalsIgnoreCase(BaseConstants.ROM_OPPO_UPPER_CONSTANT)) {
                p(false, activity);
            } else {
                q(activity, useDart);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @TargetApi(19)
    public static void v(Activity activity) {
        w(activity, true);
    }

    public static void w(Activity activity, boolean drawBar) {
        if (activity != null) {
            x(activity.getWindow(), drawBar);
        }
    }

    public static void x(Window window, boolean drawBar) {
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        if (drawBar) {
            window.addFlags(Integer.MIN_VALUE);
        }
        window.setStatusBarColor(0);
    }
}
