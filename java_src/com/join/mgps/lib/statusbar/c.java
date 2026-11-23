package com.join.mgps.lib.statusbar;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Color;
import android.os.Build;
import android.os.Environment;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.ColorInt;
import androidx.annotation.IdRes;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final com.join.mgps.lib.statusbar.a f71838a;

    class a implements com.join.mgps.lib.statusbar.a {
        a() {
        }

        @Override // com.join.mgps.lib.statusbar.a
        public void a(Window window, @ColorInt int color) {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 23) {
            f71838a = new g();
        } else if (c()) {
            f71838a = new e();
        } else {
            f71838a = new f();
        }
    }

    private static void a(View actionBarContainer) {
        if (actionBarContainer != null) {
            ViewGroup.LayoutParams layoutParams = actionBarContainer.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = 0;
                actionBarContainer.setLayoutParams(layoutParams);
            }
        }
    }

    @TargetApi(14)
    static void b(Window window, boolean fitSystemWindows) {
        View childAt = ((ViewGroup) window.findViewById(R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(fitSystemWindows);
        }
    }

    private static boolean c() throws Throwable {
        File file = new File(Environment.getRootDirectory(), "build.prop");
        if (!file.exists()) {
            return false;
        }
        Properties properties = new Properties();
        FileInputStream fileInputStream = null;
        try {
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    try {
                        properties.load(fileInputStream2);
                        fileInputStream2.close();
                    } catch (Exception e10) {
                        e = e10;
                        fileInputStream = fileInputStream2;
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        return properties.containsKey("ro.build.hw_emui_api_level");
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e12) {
                    e12.printStackTrace();
                }
            } catch (Exception e13) {
                e = e13;
            }
            return properties.containsKey("ro.build.hw_emui_api_level");
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void d(Window window) {
        ViewGroup viewGroup = (ViewGroup) window.findViewById(R.id.content).getParent();
        if (viewGroup.getChildCount() > 1) {
            a(viewGroup.getChildAt(1));
        }
    }

    public static void e(Window window, @IdRes int actionBarContainerId) {
        a(window.findViewById(actionBarContainerId));
    }

    public static void f(Window window, boolean fitSystemWindows) {
        b(window, fitSystemWindows);
    }

    public static void g(Window window, boolean isLightStatusBar) {
        b.a(window, isLightStatusBar);
    }

    public static void h(Activity activity, @ColorInt int color) {
        i(activity, color, l(color) > 225);
    }

    public static void i(Activity activity, @ColorInt int color, boolean lightStatusBar) {
        j(activity.getWindow(), color, lightStatusBar);
    }

    public static void j(Window window, @ColorInt int color, boolean lightStatusBar) {
        if ((window.getAttributes().flags & 1024) > 0 || d.f71839a) {
            return;
        }
        f71838a.a(window, color);
        b.a(window, lightStatusBar);
    }

    public static void k(Window window, boolean translucent) {
        if (!translucent) {
            window.clearFlags(67108864);
        } else {
            window.addFlags(67108864);
            b(window, false);
        }
    }

    public static int l(@ColorInt int color) {
        int iBlue = Color.blue(color);
        return (((Color.red(color) * 38) + (Color.green(color) * 75)) + (iBlue * 15)) >> 7;
    }
}
