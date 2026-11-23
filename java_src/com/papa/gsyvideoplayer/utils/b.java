package com.papa.gsyvideoplayer.utils;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.net.ConnectivityManager;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.WindowManager;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.TintContextWrapper;
import androidx.fragment.app.FragmentActivity;
import java.io.File;
import java.util.Formatter;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static void a(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            for (String str2 : file.list()) {
                a(str + File.separator + str2);
            }
            file.delete();
        }
    }

    public static int b(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int c(Activity activity) {
        TypedValue typedValue = new TypedValue();
        if (activity.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, activity.getResources().getDisplayMetrics());
        }
        return 0;
    }

    public static Activity d(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof TintContextWrapper) {
            return o(((TintContextWrapper) context).getBaseContext());
        }
        if (context instanceof ContextWrapper) {
            return o(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static AppCompatActivity e(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof AppCompatActivity) {
            return (AppCompatActivity) context;
        }
        if (context instanceof ContextThemeWrapper) {
            return e(((ContextThemeWrapper) context).getBaseContext());
        }
        return null;
    }

    public static boolean f(Activity activity) {
        return activity.getWindowManager().getDefaultDisplay().getRotation() == 1 || activity.getWindowManager().getDefaultDisplay().getRotation() == 3;
    }

    public static int g(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int h(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int i(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static String j(long j10) {
        if (j10 >= 0 && j10 < 1024) {
            return j10 + " KB/s";
        }
        if (j10 >= 1024 && j10 < 1048576) {
            return Long.toString(j10 / 1024) + " KB/s";
        }
        if (j10 < 1048576 || j10 >= 1073741824) {
            return "";
        }
        return Long.toString(j10 / 1048576) + " MB/s";
    }

    public static void k(Context context) {
        if (Build.VERSION.SDK_INT >= 29) {
            ((Activity) context).getWindow().getDecorView().setSystemUiVisibility(3074);
        } else {
            ((Activity) context).getWindow().getDecorView().setSystemUiVisibility(2562);
        }
    }

    @SuppressLint({"RestrictedApi"})
    public static void l(Context context, boolean z10, boolean z11) {
        AppCompatActivity appCompatActivityE;
        ActionBar supportActionBar;
        if (z10 && (appCompatActivityE = e(context)) != null && (supportActionBar = appCompatActivityE.getSupportActionBar()) != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
            supportActionBar.hide();
        }
        if (z11) {
            if (context instanceof FragmentActivity) {
                ((FragmentActivity) context).getWindow().setFlags(1024, 1024);
            } else if (context instanceof Activity) {
                ((Activity) context).getWindow().setFlags(1024, 1024);
            } else {
                e(context).getWindow().setFlags(1024, 1024);
            }
        }
    }

    public static boolean m(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1).isConnected();
    }

    public static int n(Context context, float f10) {
        return (int) ((f10 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static Activity o(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof TintContextWrapper) {
            return o(((TintContextWrapper) context).getBaseContext());
        }
        if (context instanceof ContextWrapper) {
            return o(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static void p(Context context, int i10) {
        ((Activity) context).getWindow().getDecorView().setSystemUiVisibility(i10);
    }

    @SuppressLint({"RestrictedApi"})
    public static void q(Context context, boolean z10, boolean z11) {
        AppCompatActivity appCompatActivityE;
        ActionBar supportActionBar;
        if (z10 && (appCompatActivityE = e(context)) != null && (supportActionBar = appCompatActivityE.getSupportActionBar()) != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
            supportActionBar.show();
        }
        if (z11) {
            if (context instanceof FragmentActivity) {
                ((FragmentActivity) context).getWindow().clearFlags(1024);
            } else if (context instanceof Activity) {
                ((Activity) context).getWindow().clearFlags(1024);
            } else {
                e(context).getWindow().clearFlags(1024);
            }
        }
    }

    public static String r(int i10) {
        if (i10 <= 0 || i10 >= 86400000) {
            return "00:00";
        }
        int i11 = i10 / 1000;
        int i12 = i11 % 60;
        int i13 = (i11 / 60) % 60;
        int i14 = i11 / 3600;
        Formatter formatter = new Formatter(new StringBuilder(), Locale.getDefault());
        return i14 > 0 ? formatter.format("%d:%02d:%02d", Integer.valueOf(i14), Integer.valueOf(i13), Integer.valueOf(i12)).toString() : formatter.format("%02d:%02d", Integer.valueOf(i13), Integer.valueOf(i12)).toString();
    }
}
