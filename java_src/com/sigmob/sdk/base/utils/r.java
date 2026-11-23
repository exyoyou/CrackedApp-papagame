package com.sigmob.sdk.base.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.Window;
import android.view.WindowManager;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.uc.crashsdk.export.LogType;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class r {
    public static int a(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelOffset(identifier);
        }
        return 0;
    }

    public static int b(Activity activity) {
        int i10;
        if (Build.VERSION.SDK_INT >= 23) {
            activity.getWindow().getDecorView().setSystemUiVisibility(AVMDLDataLoader.KeyIsLoaderCacheSize);
            i10 = 3;
        } else {
            i10 = 0;
        }
        if (b(activity.getWindow(), true)) {
            i10 = 1;
        }
        if (a(activity.getWindow(), true)) {
            return 2;
        }
        return i10;
    }

    public static void c(Activity activity, int type) {
        if (type == 1) {
            b(activity.getWindow(), false);
        } else if (type == 2) {
            a(activity.getWindow(), false);
        } else if (type == 3) {
            activity.getWindow().getDecorView().setSystemUiVisibility(0);
        }
    }

    @TargetApi(19)
    public static void a(Activity activity) {
        Window window = activity.getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
    }

    public static void b(Activity activity, int type) {
        if (type == 1) {
            b(activity.getWindow(), true);
            return;
        }
        if (type == 2) {
            a(activity.getWindow(), true);
        } else {
            if (type != 3 || Build.VERSION.SDK_INT < 23) {
                return;
            }
            activity.getWindow().getDecorView().setSystemUiVisibility(AVMDLDataLoader.KeyIsLoaderCacheSize);
        }
    }

    public static void a(Activity activity, int colorId) {
        activity.getWindow().setStatusBarColor(activity.getResources().getColor(colorId));
    }

    @SuppressLint({"PrivateApi"})
    public static boolean b(Window window, boolean dark) {
        if (window != null) {
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
        return false;
    }

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
}
