package com.join.mgps.lib.statusbar;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Environment;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Properties;

/* JADX INFO: loaded from: classes3.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c f71833a;

    class a extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f71834a;

        /* JADX WARN: Illegal instructions before constructor call */
        a() {
            a aVar = null;
            super(aVar);
            this.f71834a = new d(aVar);
        }

        @Override // com.join.mgps.lib.statusbar.b.e, com.join.mgps.lib.statusbar.b.c
        public void a(Window window, boolean lightStatusBar) {
            super.a(window, lightStatusBar);
            this.f71834a.a(window, lightStatusBar);
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.lib.statusbar.b$b, reason: collision with other inner class name */
    class C0736b implements c {
        C0736b() {
        }

        @Override // com.join.mgps.lib.statusbar.b.c
        public void a(Window window, boolean lightStatusBar) {
        }
    }

    interface c {
        void a(Window window, boolean lightStatusBar);
    }

    private static class d implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String f71835a = "ro.miui.ui.version.code";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final String f71836b = "ro.miui.ui.version.name";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f71837c = "ro.miui.internal.storage";

        private d() {
        }

        static boolean b() throws Throwable {
            FileInputStream fileInputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
                try {
                    Properties properties = new Properties();
                    properties.load(fileInputStream2);
                    boolean z10 = (properties.getProperty(f71835a) == null && properties.getProperty(f71836b) == null && properties.getProperty(f71837c) == null) ? false : true;
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused) {
                    }
                    return z10;
                } catch (IOException unused2) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused5) {
            } catch (Throwable th2) {
                th = th2;
            }
        }

        @Override // com.join.mgps.lib.statusbar.b.c
        public void a(Window window, boolean lightStatusBar) {
            Class<?> cls = window.getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i10 = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
                Class<?> cls3 = Integer.TYPE;
                Method method = cls.getMethod("setExtraFlags", cls3, cls3);
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(lightStatusBar ? i10 : 0);
                objArr[1] = Integer.valueOf(i10);
                method.invoke(window, objArr);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    private static class e implements c {
        private e() {
        }

        @Override // com.join.mgps.lib.statusbar.b.c
        @TargetApi(11)
        public void a(Window window, boolean lightStatusBar) {
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(lightStatusBar ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    private static class f implements c {
        private f() {
        }

        static boolean b() {
            return Build.DISPLAY.startsWith("Flyme");
        }

        @Override // com.join.mgps.lib.statusbar.b.c
        public void a(Window window, boolean lightStatusBar) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            try {
                Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
                Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                int i10 = declaredField.getInt(null);
                int i11 = declaredField2.getInt(attributes);
                declaredField2.setInt(attributes, lightStatusBar ? i11 | i10 : (~i10) & i11);
                window.setAttributes(attributes);
                declaredField.setAccessible(false);
                declaredField2.setAccessible(false);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    static {
        a aVar = null;
        if (d.b()) {
            if (Build.VERSION.SDK_INT >= 23) {
                f71833a = new a();
                return;
            } else {
                f71833a = new d(aVar);
                return;
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            f71833a = new e(aVar);
        } else if (f.b()) {
            f71833a = new f(aVar);
        } else {
            f71833a = new C0736b();
        }
    }

    b() {
    }

    static void a(Window window, boolean lightStatusBar) {
        f71833a.a(window, lightStatusBar);
    }
}
