package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f30961a = "q0";

    private static class a {
        private a() {
        }

        @NonNull
        static Rect a(@NonNull WindowManager windowManager) {
            int i10;
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point pointB = b(defaultDisplay);
            Rect rect = new Rect();
            int i11 = pointB.x;
            if (i11 == 0 || (i10 = pointB.y) == 0) {
                defaultDisplay.getRectSize(rect);
            } else {
                rect.right = i11;
                rect.bottom = i10;
            }
            return rect;
        }

        private static Point b(Display display) {
            Point point = new Point();
            try {
                Method declaredMethod = Display.class.getDeclaredMethod("getRealSize", Point.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(display, point);
            } catch (IllegalAccessException unused) {
                String unused2 = q0.f30961a;
            } catch (NoSuchMethodException unused3) {
                String unused4 = q0.f30961a;
            } catch (InvocationTargetException unused5) {
                String unused6 = q0.f30961a;
            }
            return point;
        }
    }

    @RequiresApi(api = 17)
    private static class b {
        private b() {
        }

        @NonNull
        static Rect a(@NonNull WindowManager windowManager) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            Rect rect = new Rect();
            rect.right = point.x;
            rect.bottom = point.y;
            return rect;
        }
    }

    @RequiresApi(api = 30)
    private static class c {
        private c() {
        }

        @NonNull
        static Rect a(@NonNull WindowManager windowManager) {
            return windowManager.getCurrentWindowMetrics().getBounds();
        }
    }

    private q0() {
    }

    @NonNull
    public static Rect b(@NonNull Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        return Build.VERSION.SDK_INT >= 30 ? c.a(windowManager) : b.a(windowManager);
    }
}
