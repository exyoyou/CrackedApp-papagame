package com.join.android.app.common.manager;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f34634h = -1728053248;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f34635i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final C0640b f34636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f34637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f34638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f34639d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f34640e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f34641f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f34642g;

    /* JADX INFO: renamed from: com.join.android.app.common.manager.b$b, reason: collision with other inner class name */
    public static class C0640b {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final String f34643j = "status_bar_height";

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final String f34644k = "navigation_bar_height";

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final String f34645l = "navigation_bar_height_landscape";

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final String f34646m = "navigation_bar_width";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f34647a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f34648b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f34649c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f34650d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f34651e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f34652f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f34653g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f34654h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final float f34655i;

        @TargetApi(14)
        private int b(Context context) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
            return context.getResources().getDimensionPixelSize(typedValue.resourceId);
        }

        private int c(Resources res, String key) {
            int identifier = res.getIdentifier(key, "dimen", "android");
            if (identifier > 0) {
                return res.getDimensionPixelSize(identifier);
            }
            return 0;
        }

        @TargetApi(14)
        private int e(Context context) {
            Resources resources = context.getResources();
            if (ViewConfiguration.get(context).hasPermanentMenuKey()) {
                return 0;
            }
            return c(resources, this.f34654h ? f34644k : f34645l);
        }

        @TargetApi(14)
        private int g(Context context) {
            Resources resources = context.getResources();
            if (ViewConfiguration.get(context).hasPermanentMenuKey()) {
                return 0;
            }
            return c(resources, f34646m);
        }

        @SuppressLint({"NewApi"})
        private float k(Activity activity) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
            float f10 = displayMetrics.widthPixels;
            float f11 = displayMetrics.density;
            return Math.min(f10 / f11, displayMetrics.heightPixels / f11);
        }

        public int a() {
            return this.f34650d;
        }

        public int d() {
            return this.f34652f;
        }

        public int f() {
            return this.f34653g;
        }

        public int h() {
            if (this.f34648b && n()) {
                return this.f34652f;
            }
            return 0;
        }

        public int i() {
            if (!this.f34648b || n()) {
                return 0;
            }
            return this.f34653g;
        }

        public int j(boolean withActionBar) {
            return (this.f34647a ? this.f34649c : 0) + (withActionBar ? this.f34650d : 0);
        }

        public int l() {
            return this.f34649c;
        }

        public boolean m() {
            return this.f34651e;
        }

        public boolean n() {
            return this.f34655i >= 600.0f || this.f34654h;
        }

        private C0640b(Activity activity, boolean translucentStatusBar, boolean traslucentNavBar) {
            Resources resources = activity.getResources();
            this.f34654h = resources.getConfiguration().orientation == 1;
            this.f34655i = k(activity);
            this.f34649c = c(resources, f34643j);
            this.f34650d = b(activity);
            int iE = e(activity);
            this.f34652f = iE;
            this.f34653g = g(activity);
            this.f34651e = iE > 0;
            this.f34647a = translucentStatusBar;
            this.f34648b = traslucentNavBar;
        }
    }

    @TargetApi(19)
    public b(Activity activity) {
        Window window = activity.getWindow();
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(new int[]{R.attr.windowTranslucentStatus, R.attr.windowTranslucentNavigation});
        try {
            this.f34637b = typedArrayObtainStyledAttributes.getBoolean(0, false);
            this.f34638c = typedArrayObtainStyledAttributes.getBoolean(1, false);
            typedArrayObtainStyledAttributes.recycle();
            int i10 = window.getAttributes().flags;
            if ((67108864 & i10) != 0) {
                this.f34637b = true;
            }
            if ((i10 & 1024) == 1024) {
                this.f34637b = false;
            }
            if ((i10 & 134217728) != 0) {
                this.f34638c = true;
            }
            C0640b c0640b = new C0640b(activity, this.f34637b, this.f34638c);
            this.f34636a = c0640b;
            if (!c0640b.m()) {
                this.f34638c = false;
            }
            if (this.f34637b) {
                t(activity, viewGroup);
            }
            if (this.f34638c) {
                s(activity, viewGroup);
            }
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void s(Context context, ViewGroup decorViewGroup) {
        FrameLayout.LayoutParams layoutParams;
        this.f34642g = new View(context);
        if (this.f34636a.n()) {
            layoutParams = new FrameLayout.LayoutParams(-1, this.f34636a.d());
            layoutParams.gravity = 80;
        } else {
            layoutParams = new FrameLayout.LayoutParams(this.f34636a.f(), -1);
            layoutParams.gravity = 5;
        }
        this.f34642g.setLayoutParams(layoutParams);
        this.f34642g.setBackgroundColor(-1728053248);
        this.f34642g.setVisibility(8);
        decorViewGroup.addView(this.f34642g);
    }

    private void t(Context context, ViewGroup decorViewGroup) {
        this.f34641f = new View(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.f34636a.l());
        layoutParams.gravity = 48;
        if (this.f34638c && !this.f34636a.n()) {
            layoutParams.rightMargin = this.f34636a.f();
        }
        this.f34641f.setLayoutParams(layoutParams);
        this.f34641f.setBackgroundColor(-1728053248);
        this.f34641f.setVisibility(8);
        decorViewGroup.addView(this.f34641f);
    }

    public C0640b a() {
        return this.f34636a;
    }

    public boolean b() {
        return this.f34640e;
    }

    public boolean c() {
        return this.f34639d;
    }

    @TargetApi(11)
    public void d(float alpha) {
        if (this.f34638c) {
            this.f34642g.setAlpha(alpha);
        }
    }

    public void e(int color) {
        if (this.f34638c) {
            this.f34642g.setBackgroundColor(color);
        }
    }

    public void f(Drawable drawable) {
        if (this.f34638c) {
            this.f34642g.setBackgroundDrawable(drawable);
        }
    }

    public void g(boolean enabled) {
        this.f34640e = enabled;
        if (this.f34638c) {
            this.f34642g.setVisibility(enabled ? 0 : 8);
        }
    }

    public void h(int res) {
        if (this.f34638c) {
            this.f34642g.setBackgroundResource(res);
        }
    }

    @TargetApi(11)
    public void i(float alpha) {
        if (this.f34637b) {
            this.f34641f.setAlpha(alpha);
        }
    }

    public void j(boolean darkmode, Activity activity) {
        if (f34635i) {
            Class<?> cls = activity.getWindow().getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i10 = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
                Class<?> cls3 = Integer.TYPE;
                Method method = cls.getMethod("setExtraFlags", cls3, cls3);
                Window window = activity.getWindow();
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(darkmode ? i10 : 0);
                objArr[1] = Integer.valueOf(i10);
                method.invoke(window, objArr);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void k(int color) {
        if (this.f34637b) {
            this.f34641f.setBackgroundColor(color);
        }
    }

    public void l(Drawable drawable) {
        if (this.f34637b) {
            this.f34641f.setBackgroundDrawable(drawable);
        }
    }

    public void m(boolean enabled) {
        this.f34639d = enabled;
        if (this.f34637b) {
            this.f34641f.setVisibility(enabled ? 0 : 8);
        }
    }

    public void n(int res) {
        if (this.f34637b) {
            this.f34641f.setBackgroundResource(res);
        }
    }

    public void o(float alpha) {
        i(alpha);
        d(alpha);
    }

    public void p(int color) {
        k(color);
        e(color);
    }

    public void q(Drawable drawable) {
        l(drawable);
        f(drawable);
    }

    public void r(int res) {
        n(res);
        h(res);
    }
}
