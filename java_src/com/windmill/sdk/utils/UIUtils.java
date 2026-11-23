package com.windmill.sdk.utils;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.byazt.bv.BaseConstants;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes8.dex */
public class UIUtils {
    public static final int VIVO_FILLET = 8;
    public static final int VIVO_NOTCH = 32;

    public static int dp2px(Context context, float dp) {
        return (int) ((dp * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static float getHeight(Activity activity) {
        hideBottomUIMenu(activity);
        int realHeight = getRealHeight(activity);
        return hasNotchScreen(activity) ? px2dip(activity, realHeight - getStatusBarHeight(activity)) : px2dip(activity, realHeight);
    }

    public static int getInt(String key, Activity activity) {
        if (!isMiui()) {
            return 0;
        }
        try {
            Class<?> clsLoadClass = activity.getClassLoader().loadClass("android.os.SystemProperties");
            return ((Integer) clsLoadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(clsLoadClass, new String(key), new Integer(0))).intValue();
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            return 0;
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
            return 0;
        } catch (IllegalArgumentException e12) {
            e12.printStackTrace();
            return 0;
        } catch (NoSuchMethodException e13) {
            e13.printStackTrace();
            return 0;
        } catch (InvocationTargetException e14) {
            e14.printStackTrace();
            return 0;
        }
    }

    public static String getKllkDecryptString(String encryptionString) {
        if (TextUtils.isEmpty(encryptionString)) {
            return "";
        }
        if (encryptionString.contains("KLLK")) {
            return encryptionString.replace("KLLK", BaseConstants.ROM_OPPO_UPPER_CONSTANT);
        }
        return encryptionString.contains("kllk") ? encryptionString.replace("kllk", "oppo") : "";
    }

    public static int getRealHeight(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int getScreenHeight(Context context) {
        return (int) (getScreenHeightInPx(context) + getStatusBarHeight(context));
    }

    public static float getScreenHeightDp(Context context) {
        try {
            float f10 = context.getResources().getDisplayMetrics().density;
            float f11 = context.getResources().getDisplayMetrics().heightPixels;
            if (f10 <= 0.0f) {
                f10 = 1.0f;
            }
            return (f11 / f10) + 0.5f;
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    public static int getScreenHeightInPx(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().heightPixels;
    }

    public static float getScreenHeightPx(Context context) {
        try {
            return context.getResources().getDisplayMetrics().heightPixels;
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    public static int[] getScreenSize(Context context) {
        int[] iArr = {0, 0};
        if (context == null) {
            return iArr;
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        iArr[0] = displayMetrics.widthPixels;
        iArr[1] = displayMetrics.heightPixels;
        return iArr;
    }

    public static float getScreenWidthDp(Context context) {
        try {
            float f10 = context.getResources().getDisplayMetrics().density;
            float f11 = context.getResources().getDisplayMetrics().widthPixels;
            if (f10 <= 0.0f) {
                f10 = 1.0f;
            }
            return (f11 / f10) + 0.5f;
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    public static int getScreenWidthInPx(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().widthPixels;
    }

    public static float getScreenWidthPx(Context context) {
        try {
            return context.getResources().getDisplayMetrics().widthPixels;
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    public static float getStatusBarHeight(Context context) {
        int identifier = context.getApplicationContext().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getApplicationContext().getResources().getDimensionPixelSize(identifier);
        }
        return 0.0f;
    }

    public static boolean hasNotchAtHuawei(Context context) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(clsLoadClass, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean hasNotchAtOPPO(Context context) {
        return context.getPackageManager().hasSystemFeature(getKllkDecryptString("com.kllk.feature.screen.heteromorphism"));
    }

    public static boolean hasNotchAtVivo(Context context) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.util.FtFeature");
            return ((Boolean) clsLoadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(clsLoadClass, 32)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean hasNotchScreen(Activity activity) {
        return isAndroidPHasNotch(activity) || getInt("ro.miui.notch", activity) == 1 || hasNotchAtHuawei(activity) || hasNotchAtOPPO(activity) || hasNotchAtVivo(activity);
    }

    public static void hideBottomUIMenu(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(3842);
            activity.getWindow().addFlags(134217728);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean isAndroidPHasNotch(Activity activity) {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        try {
            WindowInsets rootWindowInsets = activity.getWindow().getDecorView().getRootWindowInsets();
            return (rootWindowInsets != null ? rootWindowInsets.getDisplayCutout() : null) != null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean isMiui() {
        try {
            Class.forName("miui.os.Build");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static int px2dip(Context context, float pxValue) {
        float f10 = context.getResources().getDisplayMetrics().density;
        if (f10 <= 0.0f) {
            f10 = 1.0f;
        }
        return (int) ((pxValue / f10) + 0.5f);
    }

    public static void removeFromParent(View view) {
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
    }

    public static void setViewSize(View view, int width, int height) {
        if (view.getParent() instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            layoutParams.width = width;
            layoutParams.height = height;
            view.setLayoutParams(layoutParams);
            view.requestLayout();
            return;
        }
        if (view.getParent() instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams2.width = width;
            layoutParams2.height = height;
            view.setLayoutParams(layoutParams2);
            view.requestLayout();
            return;
        }
        if (view.getParent() instanceof LinearLayout) {
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams3.width = width;
            layoutParams3.height = height;
            view.setLayoutParams(layoutParams3);
            view.requestLayout();
        }
    }
}
