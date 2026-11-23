package com.byazt.fq;

import android.R;
import android.content.Context;
import android.os.Build;
import android.util.TypedValue;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.byazt.nr.m;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1576, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Field f14228c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f14229n;
    public static Method tt;
    public static Field uj;
    public static boolean ve;

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                tt = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", new Class[0]);
            } catch (Exception unused) {
                m.c("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
    }

    public static boolean a(View view) {
        return view.hasTransientState();
    }

    public static int c(View view) {
        return view.getLayoutDirection();
    }

    public static void da(View view) {
        view.stopNestedScroll();
    }

    public static int i(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    public static int n(View view) {
        return view.getMinimumHeight();
    }

    public static Display sp(View view) {
        return view.getDisplay();
    }

    public static float tt(ViewConfiguration viewConfiguration, Context context) {
        return Build.VERSION.SDK_INT >= 26 ? viewConfiguration.getScaledVerticalScrollFactor() : ve(viewConfiguration, context);
    }

    public static int uj(View view) {
        return view.getMinimumWidth();
    }

    private static float ve(ViewConfiguration viewConfiguration, Context context) {
        Method method;
        if (Build.VERSION.SDK_INT >= 25 && (method = tt) != null) {
            try {
                return ((Integer) method.invoke(viewConfiguration, new Object[0])).intValue();
            } catch (Exception unused) {
                m.c("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
            return typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return 0.0f;
    }

    public static boolean x(View view) {
        return view.isAttachedToWindow();
    }

    public static void c(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    public static int tt(View view) {
        return view.getImportantForAccessibility();
    }

    public static void c(View view, Runnable runnable, long j10) {
        view.postOnAnimationDelayed(runnable, j10);
    }

    public static void tt(View view, int i10) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i10);
        }
    }

    public static float c(ViewConfiguration viewConfiguration, Context context) {
        return Build.VERSION.SDK_INT >= 26 ? viewConfiguration.getScaledHorizontalScrollFactor() : ve(viewConfiguration, context);
    }

    public static void c(View view, int i10) {
        view.setImportantForAccessibility(i10);
    }

    public static boolean c(MotionEvent motionEvent, int i10) {
        return (motionEvent.getSource() & i10) == i10;
    }

    public static void ve(View view) {
        view.postInvalidateOnAnimation();
    }
}
