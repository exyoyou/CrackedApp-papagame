package com.netease.nis.quicklogin.utils;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class i {
    public static void a(View view, int i10) {
        if (view == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.bottomMargin = a(view.getContext(), i10);
        marginLayoutParams.topMargin = 0;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(marginLayoutParams);
        layoutParams.addRule(12);
        view.setLayoutParams(layoutParams);
    }

    public static void b(View view, int i10) {
        if (view == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.leftMargin = a(view.getContext(), i10);
        view.setLayoutParams(marginLayoutParams);
    }

    public static void c(View view, int i10) {
        if (view == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.rightMargin = a(view.getContext(), i10);
        view.setLayoutParams(marginLayoutParams);
    }

    public static void d(View view, int i10) {
        if (view == null) {
            return;
        }
        Context context = view.getContext();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.topMargin = a(context, i10);
        marginLayoutParams.bottomMargin = 0;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(marginLayoutParams);
        layoutParams.addRule(10);
        view.setLayoutParams(layoutParams);
    }

    public static void e(View view, int i10) {
        if (view != null && (view.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams.leftMargin = a(view.getContext(), i10);
            layoutParams.addRule(9);
            view.setLayoutParams(layoutParams);
        }
    }

    public static void b(View view) {
        if (view != null && (view.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams.addRule(14);
            view.setLayoutParams(layoutParams);
        }
    }

    public static void c(View view) {
        if (view != null && (view.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams.addRule(14);
            layoutParams.addRule(12);
            view.setLayoutParams(layoutParams);
        }
    }

    public static void a(Activity activity, int i10, int i11, int i12, int i13, boolean z10) {
        Context applicationContext = activity.getApplicationContext();
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        activity.getWindow().getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        attributes.width = a(applicationContext, i10);
        attributes.height = a(applicationContext, i11);
        attributes.x = i12;
        if (z10) {
            attributes.gravity = 80;
        } else {
            attributes.y = i13;
        }
        activity.getWindow().setAttributes(attributes);
    }

    public static int b(Context context, float f10) {
        return (int) TypedValue.applyDimension(2, f10, context.getResources().getDisplayMetrics());
    }

    public static int c(Context context) {
        int top;
        if (!(context instanceof Activity) || (top = ((Activity) context).getWindow().findViewById(R.id.content).getTop()) == 0) {
            return 50;
        }
        return top - b(context);
    }

    public static int b(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 25;
    }

    public static void b(Activity activity, boolean z10) {
        Window window = activity.getWindow();
        int i10 = Build.VERSION.SDK_INT;
        window.addFlags(Integer.MIN_VALUE);
        if (!z10) {
            window.getDecorView().setSystemUiVisibility(0);
        } else if (i10 >= 23) {
            window.getDecorView().setSystemUiVisibility(8192);
        }
    }

    public static List<View> a(View view) {
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                arrayList.add(childAt);
                arrayList.addAll(a(childAt));
            }
        }
        return arrayList;
    }

    public static int a(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int a(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static void a(Activity activity, int i10) {
        Window window = activity.getWindow();
        if (i10 != 0) {
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(i10);
        }
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    public static void a(Activity activity, boolean z10) {
        if (Build.VERSION.SDK_INT == 26) {
            if (z10) {
                activity.setRequestedOrientation(3);
            }
        } else if (z10) {
            activity.setRequestedOrientation(0);
        } else {
            activity.setRequestedOrientation(1);
        }
    }
}
