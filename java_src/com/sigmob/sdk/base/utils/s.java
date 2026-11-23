package com.sigmob.sdk.base.utils;

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
import androidx.core.view.GravityCompat;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f79771a = -1728053248;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f79772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f79773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f79774d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f79775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f79776f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f79777g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f79778h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f79779i;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String f79780a = "status_bar_height";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final String f79781b = "navigation_bar_height";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f79782c = "navigation_bar_height_landscape";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final String f79783d = "navigation_bar_width";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final String f79784e = "config_showNavigationBar";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f79785f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f79786g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f79787h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final int f79788i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final boolean f79789j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final int f79790k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final int f79791l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final boolean f79792m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final float f79793n;

        private a(Activity activity, boolean translucentStatusBar, boolean traslucentNavBar) {
            Resources resources = activity.getResources();
            this.f79792m = resources.getConfiguration().orientation == 1;
            this.f79793n = a(activity);
            this.f79787h = a(resources, f79780a);
            this.f79788i = a((Context) activity);
            int iB = b(activity);
            this.f79790k = iB;
            this.f79791l = c(activity);
            this.f79789j = iB > 0;
            this.f79785f = translucentStatusBar;
            this.f79786g = traslucentNavBar;
        }

        @SuppressLint({"NewApi"})
        private float a(Activity activity) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
            float f10 = displayMetrics.widthPixels;
            float f11 = displayMetrics.density;
            return Math.min(f10 / f11, displayMetrics.heightPixels / f11);
        }

        public int b() {
            return this.f79787h;
        }

        public int c() {
            return this.f79788i;
        }

        public boolean d() {
            return this.f79789j;
        }

        public int e() {
            return this.f79790k;
        }

        public int f() {
            return this.f79791l;
        }

        public int g() {
            if (this.f79786g && a()) {
                return this.f79790k;
            }
            return 0;
        }

        public int h() {
            if (!this.f79786g || a()) {
                return 0;
            }
            return this.f79791l;
        }

        @TargetApi(14)
        private int a(Context context) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
            return TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
        }

        @TargetApi(14)
        private int b(Context context) {
            Resources resources = context.getResources();
            if (d(context)) {
                return a(resources, this.f79792m ? f79781b : f79782c);
            }
            return 0;
        }

        @TargetApi(14)
        private int c(Context context) {
            Resources resources = context.getResources();
            if (d(context)) {
                return a(resources, f79783d);
            }
            return 0;
        }

        @TargetApi(14)
        private boolean d(Context context) {
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier(f79784e, "bool", "android");
            if (identifier == 0) {
                return !ViewConfiguration.get(context).hasPermanentMenuKey();
            }
            boolean z10 = resources.getBoolean(identifier);
            if ("1".equals(s.f79772b)) {
                return false;
            }
            if ("0".equals(s.f79772b)) {
                return true;
            }
            return z10;
        }

        private int a(Resources res, String key) {
            int identifier = res.getIdentifier(key, "dimen", "android");
            if (identifier > 0) {
                return res.getDimensionPixelSize(identifier);
            }
            return 0;
        }

        public int a(boolean withActionBar) {
            return (this.f79785f ? this.f79787h : 0) + (withActionBar ? this.f79788i : 0);
        }

        public boolean a() {
            return this.f79793n >= 600.0f || this.f79792m;
        }
    }

    static {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
            declaredMethod.setAccessible(true);
            f79772b = (String) declaredMethod.invoke(null, "qemu.hw.mainkeys");
        } catch (Throwable unused) {
            f79772b = null;
        }
    }

    @TargetApi(19)
    public s(Activity activity) {
        Window window = activity.getWindow();
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(new int[]{R.attr.windowTranslucentStatus, R.attr.windowTranslucentNavigation});
        try {
            this.f79774d = typedArrayObtainStyledAttributes.getBoolean(0, false);
            this.f79775e = typedArrayObtainStyledAttributes.getBoolean(1, false);
            typedArrayObtainStyledAttributes.recycle();
            int i10 = window.getAttributes().flags;
            if ((67108864 & i10) != 0) {
                this.f79774d = true;
            }
            if ((i10 & 134217728) != 0) {
                this.f79775e = true;
            }
            a aVar = new a(activity, this.f79774d, this.f79775e);
            this.f79773c = aVar;
            if (!aVar.d()) {
                this.f79775e = false;
            }
            if (this.f79774d) {
                a(activity, viewGroup);
            }
            if (this.f79775e) {
                b(activity, viewGroup);
            }
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public a a() {
        return this.f79773c;
    }

    @TargetApi(11)
    public void b(float alpha) {
        if (this.f79774d) {
            this.f79778h.setAlpha(alpha);
        }
    }

    @TargetApi(11)
    public void c(float alpha) {
        if (this.f79775e) {
            this.f79779i.setAlpha(alpha);
        }
    }

    public void e(int color) {
        if (this.f79775e) {
            this.f79779i.setBackgroundColor(color);
        }
    }

    public void f(int res) {
        if (this.f79775e) {
            this.f79779i.setBackgroundResource(res);
        }
    }

    public void a(float alpha) {
        b(alpha);
        c(alpha);
    }

    public void b(int res) {
        d(res);
        f(res);
    }

    public void c(int color) {
        if (this.f79774d) {
            this.f79778h.setBackgroundColor(color);
        }
    }

    public void d(int res) {
        if (this.f79774d) {
            this.f79778h.setBackgroundResource(res);
        }
    }

    private void b(Context context, ViewGroup decorViewGroup) {
        FrameLayout.LayoutParams layoutParams;
        int i10;
        this.f79779i = new View(context);
        if (this.f79773c.a()) {
            layoutParams = new FrameLayout.LayoutParams(-1, this.f79773c.e());
            i10 = 80;
        } else {
            layoutParams = new FrameLayout.LayoutParams(this.f79773c.f(), -1);
            i10 = GravityCompat.END;
        }
        layoutParams.gravity = i10;
        this.f79779i.setLayoutParams(layoutParams);
        this.f79779i.setBackgroundColor(-1728053248);
        this.f79779i.setVisibility(8);
        decorViewGroup.addView(this.f79779i);
    }

    public void a(int color) {
        c(color);
        e(color);
    }

    public void c(Drawable drawable) {
        if (this.f79775e) {
            this.f79779i.setBackgroundDrawable(drawable);
        }
    }

    private void a(Context context, ViewGroup decorViewGroup) {
        this.f79778h = new View(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.f79773c.b());
        layoutParams.gravity = 48;
        if (this.f79775e && !this.f79773c.a()) {
            layoutParams.rightMargin = this.f79773c.f();
        }
        this.f79778h.setLayoutParams(layoutParams);
        this.f79778h.setBackgroundColor(-1728053248);
        this.f79778h.setVisibility(8);
        decorViewGroup.addView(this.f79778h);
    }

    public void b(Drawable drawable) {
        if (this.f79774d) {
            this.f79778h.setBackgroundDrawable(drawable);
        }
    }

    public boolean c() {
        return this.f79777g;
    }

    public void a(Drawable drawable) {
        b(drawable);
        c(drawable);
    }

    public void b(boolean enabled) {
        this.f79777g = enabled;
        if (this.f79775e) {
            this.f79779i.setVisibility(enabled ? 0 : 8);
        }
    }

    public void a(boolean enabled) {
        this.f79776f = enabled;
        if (this.f79774d) {
            this.f79778h.setVisibility(enabled ? 0 : 8);
        }
    }

    public boolean b() {
        return this.f79776f;
    }
}
