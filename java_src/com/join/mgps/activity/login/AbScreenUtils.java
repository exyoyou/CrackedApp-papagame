package com.join.mgps.activity.login;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Toast;
import com.uc.crashsdk.export.LogType;

/* JADX INFO: loaded from: classes9.dex */
public class AbScreenUtils {
    private static Handler mainHandler;

    public static int dp2px(Context context, float dpValue) {
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private static void execute(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            mainHandler.post(runnable);
        }
    }

    public static int getScreenHeight(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static Point getScreenSize(Context context, boolean isDp) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        if (!isDp) {
            return new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        float f10 = displayMetrics.density;
        return new Point((int) (displayMetrics.widthPixels / f10), (int) (displayMetrics.heightPixels / f10));
    }

    public static int getScreenWidth(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static void setViewWH(View view, int widthPixels, int heightPixels) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        layoutParams.width = widthPixels;
        layoutParams.height = heightPixels;
        view.setLayoutParams(layoutParams);
        view.requestLayout();
    }

    public static void setWindowDecor(Activity activity) {
        Window window = activity.getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
    }

    public static void showToast(final Context context, final String msg) {
        mainHandler = new Handler(Looper.getMainLooper());
        execute(new Runnable() { // from class: com.join.mgps.activity.login.AbScreenUtils.1
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(context, msg, 0).show();
            }
        });
    }

    public static int getScreenWidth(Context context, boolean isDp) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        int i10 = displayMetrics.widthPixels;
        if (!isDp) {
            return i10;
        }
        return (int) (i10 / displayMetrics.density);
    }
}
