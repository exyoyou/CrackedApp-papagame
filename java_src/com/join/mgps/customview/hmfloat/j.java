package com.join.mgps.customview.hmfloat;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import com.join.mgps.Util.p2;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class j {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NotNull
    public static final a f66531q = new a(null);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NotNull
    public static final String f66532r = "KEY_FLOATING_X";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NotNull
    public static final String f66533s = "KEY_FLOATING_Y";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NotNull
    public static final String f66534t = "KEY_FLOATING_ORITATION";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static boolean f66535u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static boolean f66536v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    @Nullable
    private static j f66537w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private Context f66538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private WindowManager f66539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private DisplayMetrics f66540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f66541d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f66542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f66543f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private View f66544g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private WindowManager.LayoutParams f66545h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f66546i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f66547j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f66548k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f66549l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private SharedPreferences f66550m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private SharedPreferences.Editor f66551n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private b f66552o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f66553p;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final j a() {
            if (j.f66537w == null) {
                j.f66537w = new j((DefaultConstructorMarker) null);
            }
            j jVar = j.f66537w;
            Intrinsics.checkNotNull(jVar);
            return jVar;
        }

        private a() {
        }
    }

    public interface b {
        void a(int i10);

        void b(int i10);
    }

    public /* synthetic */ j(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ void N(j jVar, Context context, View view, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showFloatWindow");
        }
        if ((i12 & 4) != 0) {
            i10 = 0;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        jVar.L(context, view, i10, i11);
    }

    private final void O() {
    }

    private final void P(View view, int i10, int i11, int i12, int i13) {
        this.f66544g = view;
        this.f66540c = Resources.getSystem().getDisplayMetrics();
        WindowManager windowManager = this.f66539b;
        Intrinsics.checkNotNull(windowManager);
        Display defaultDisplay = windowManager.getDefaultDisplay();
        DisplayMetrics displayMetrics = this.f66540c;
        Intrinsics.checkNotNull(displayMetrics);
        defaultDisplay.getRealMetrics(displayMetrics);
        this.f66542e = (int) TypedValue.applyDimension(1, 12.0f, this.f66540c);
        G(i10, i11);
        WindowManager.LayoutParams layoutParams = this.f66545h;
        Intrinsics.checkNotNull(layoutParams);
        layoutParams.width = i12;
        WindowManager.LayoutParams layoutParams2 = this.f66545h;
        Intrinsics.checkNotNull(layoutParams2);
        layoutParams2.height = i13;
    }

    @JvmStatic
    @NotNull
    public static final j f() {
        return f66531q.a();
    }

    private final int l() {
        s();
        SharedPreferences sharedPreferences = this.f66550m;
        if (sharedPreferences == null) {
            return 1;
        }
        Intrinsics.checkNotNull(sharedPreferences);
        return sharedPreferences.getInt(f66534t, 1);
    }

    private final int p() {
        s();
        SharedPreferences sharedPreferences = this.f66550m;
        if (sharedPreferences == null) {
            return -1;
        }
        Intrinsics.checkNotNull(sharedPreferences);
        return (int) sharedPreferences.getFloat("KEY_FLOATING_X", -1.0f);
    }

    private final int q() {
        s();
        SharedPreferences sharedPreferences = this.f66550m;
        if (sharedPreferences == null) {
            return -1;
        }
        Intrinsics.checkNotNull(sharedPreferences);
        return (int) sharedPreferences.getFloat("KEY_FLOATING_Y", -1.0f);
    }

    private final void s() {
        if (getContext() == null) {
            return;
        }
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        this.f66550m = context.getSharedPreferences("floatViewLoc", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(int i10, j jVar, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue = i10 + ((Integer) animatedValue).intValue();
        WindowManager.LayoutParams layoutParams = jVar.f66545h;
        Intrinsics.checkNotNull(layoutParams);
        layoutParams.x = iIntValue;
        b bVar = jVar.f66552o;
        if (bVar != null) {
            bVar.a(iIntValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(int i10, j jVar, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue = i10 + ((Integer) animatedValue).intValue();
        WindowManager.LayoutParams layoutParams = jVar.f66545h;
        Intrinsics.checkNotNull(layoutParams);
        layoutParams.y = iIntValue;
        b bVar = jVar.f66552o;
        if (bVar != null) {
            bVar.b(iIntValue);
        }
        if (jVar.f66543f) {
            WindowManager windowManager = jVar.f66539b;
            Intrinsics.checkNotNull(windowManager);
            windowManager.updateViewLayout(jVar.f66544g, jVar.f66545h);
        }
    }

    public final void A(boolean z10) {
        if (z10) {
            WindowManager.LayoutParams layoutParams = this.f66545h;
            Intrinsics.checkNotNull(layoutParams);
            layoutParams.flags = -2130704856;
        } else {
            WindowManager.LayoutParams layoutParams2 = this.f66545h;
            Intrinsics.checkNotNull(layoutParams2);
            layoutParams2.flags = -2130704896;
        }
        if (this.f66544g != null) {
            WindowManager windowManager = this.f66539b;
            Intrinsics.checkNotNull(windowManager);
            windowManager.updateViewLayout(this.f66544g, this.f66545h);
        }
    }

    public final void B(float f10, float f11) {
        if (this.f66553p) {
            s();
            SharedPreferences sharedPreferences = this.f66550m;
            if (sharedPreferences == null) {
                return;
            }
            Intrinsics.checkNotNull(sharedPreferences);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            this.f66551n = editorEdit;
            if (editorEdit == null) {
                return;
            }
            Intrinsics.checkNotNull(editorEdit);
            editorEdit.putFloat("KEY_FLOATING_X", f10);
            SharedPreferences.Editor editor = this.f66551n;
            Intrinsics.checkNotNull(editor);
            editor.putFloat("KEY_FLOATING_Y", f11);
            this.f66546i = this.f66547j;
            SharedPreferences.Editor editor2 = this.f66551n;
            Intrinsics.checkNotNull(editor2);
            editor2.putInt(f66534t, this.f66546i);
            SharedPreferences.Editor editor3 = this.f66551n;
            Intrinsics.checkNotNull(editor3);
            editor3.apply();
        }
    }

    public final void C(boolean z10) {
        this.f66553p = z10;
    }

    protected final void D(@Nullable WindowManager.LayoutParams layoutParams) {
        this.f66545h = layoutParams;
    }

    public final void E(@Nullable View view) {
        this.f66544g = view;
    }

    public final void F(@Nullable b bVar) {
        this.f66552o = bVar;
    }

    public final void G(int i10, int i11) {
        if (this.f66545h == null) {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.f66545h = layoutParams;
            layoutParams.gravity = 8388659;
            layoutParams.flags = -2130704856;
            layoutParams.format = 1;
            layoutParams.type = 2;
        }
        WindowManager.LayoutParams layoutParams2 = this.f66545h;
        if (layoutParams2 != null) {
            layoutParams2.x = i10;
        }
        if (layoutParams2 != null) {
            layoutParams2.y = i11;
        }
    }

    public final void H(int i10) {
        this.f66549l = i10;
    }

    public final void I(int i10) {
        this.f66548k = i10;
    }

    @JvmOverloads
    public final void J(@Nullable Context context, @NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        N(this, context, view, 0, 0, 12, null);
    }

    @JvmOverloads
    public final void K(@Nullable Context context, @NotNull View view, int i10) {
        Intrinsics.checkNotNullParameter(view, "view");
        N(this, context, view, i10, 0, 8, null);
    }

    @JvmOverloads
    public final void L(@Nullable Context context, @NotNull View view, int i10, int i11) {
        Intrinsics.checkNotNullParameter(view, "view");
        M(context, view, i10, i11, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public final void M(@Nullable Context context, @NotNull View view, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (context == null) {
            context = getContext();
        }
        if (context != null) {
            Activity activity = (Activity) context;
            if (activity.isDestroyed() || activity.isFinishing()) {
                return;
            }
            this.f66538a = context;
            Object systemService = activity.getSystemService("window");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            this.f66539b = (WindowManager) systemService;
            try {
                if (context instanceof Activity) {
                    this.f66539b = ((Activity) context).getWindowManager();
                }
                ViewParent parent = view.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(view);
                    this.f66543f = false;
                }
                if (this.f66543f) {
                    return;
                }
                P(view, i10, i11, i12, i13);
                View view2 = this.f66544g;
                if (view2 != null) {
                    WindowManager windowManager = this.f66539b;
                    if (windowManager != null) {
                        windowManager.addView(view2, this.f66545h);
                    }
                    view2.postInvalidate();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                if (this.f66544g != null) {
                    WindowManager windowManager2 = this.f66539b;
                    Intrinsics.checkNotNull(windowManager2);
                    windowManager2.updateViewLayout(this.f66544g, this.f66545h);
                }
            }
            this.f66543f = true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00b7  */
    @NotNull
    public final float[] e() {
        int i10;
        int measuredWidth;
        int i11;
        int measuredHeight;
        DisplayMetrics displayMetrics = this.f66540c;
        Intrinsics.checkNotNull(displayMetrics);
        this.f66548k = displayMetrics.widthPixels;
        DisplayMetrics displayMetrics2 = this.f66540c;
        Intrinsics.checkNotNull(displayMetrics2);
        this.f66549l = displayMetrics2.heightPixels;
        WindowManager.LayoutParams layoutParams = this.f66545h;
        Intrinsics.checkNotNull(layoutParams);
        float measuredWidth2 = layoutParams.x;
        WindowManager.LayoutParams layoutParams2 = this.f66545h;
        Intrinsics.checkNotNull(layoutParams2);
        float measuredHeight2 = layoutParams2.y;
        int i12 = this.f66548k;
        View view = this.f66544g;
        Intrinsics.checkNotNull(view);
        float f10 = 0.0f;
        if (measuredWidth2 < (i12 - view.getMeasuredWidth()) / 2.0f) {
            View view2 = this.f66544g;
            Intrinsics.checkNotNull(view2);
            if (measuredWidth2 >= view2.getMeasuredWidth() / 3.0f) {
                View view3 = this.f66544g;
                Intrinsics.checkNotNull(view3);
                if (measuredHeight2 < view3.getMeasuredHeight() * 3) {
                    measuredHeight2 = 0.0f;
                } else {
                    int i13 = this.f66549l;
                    View view4 = this.f66544g;
                    Intrinsics.checkNotNull(view4);
                    if (measuredHeight2 > i13 - (view4.getMeasuredHeight() * 3)) {
                        i11 = this.f66549l;
                        View view5 = this.f66544g;
                        Intrinsics.checkNotNull(view5);
                        measuredHeight = view5.getMeasuredHeight();
                        measuredHeight2 = i11 - measuredHeight;
                    }
                }
            }
            measuredWidth2 = 0.0f;
        } else {
            float f11 = this.f66548k;
            View view6 = this.f66544g;
            Intrinsics.checkNotNull(view6);
            float measuredWidth3 = f11 - (view6.getMeasuredWidth() / 3.0f);
            View view7 = this.f66544g;
            Intrinsics.checkNotNull(view7);
            if (measuredWidth2 > measuredWidth3 - view7.getMeasuredWidth()) {
                i10 = this.f66548k;
                View view8 = this.f66544g;
                Intrinsics.checkNotNull(view8);
                measuredWidth = view8.getMeasuredWidth();
            } else {
                View view9 = this.f66544g;
                Intrinsics.checkNotNull(view9);
                if (measuredHeight2 < view9.getMeasuredHeight() * 3) {
                    measuredHeight2 = 0.0f;
                } else {
                    int i14 = this.f66549l;
                    View view10 = this.f66544g;
                    Intrinsics.checkNotNull(view10);
                    if (measuredHeight2 > i14 - (view10.getMeasuredHeight() * 3)) {
                        i11 = this.f66549l;
                        View view11 = this.f66544g;
                        Intrinsics.checkNotNull(view11);
                        measuredHeight = view11.getMeasuredHeight();
                        measuredHeight2 = i11 - measuredHeight;
                    } else {
                        i10 = this.f66548k;
                        View view12 = this.f66544g;
                        Intrinsics.checkNotNull(view12);
                        measuredWidth = view12.getMeasuredWidth();
                    }
                }
            }
            measuredWidth2 = i10 - measuredWidth;
        }
        if (measuredWidth2 <= (this.f66546i == 2 ? this.f66541d : 0)) {
            Context context = this.f66538a;
            Intrinsics.checkNotNull(context);
            if (t(context)) {
                measuredWidth2 = 0.0f;
            } else {
                measuredWidth2 = this.f66546i == 2 ? this.f66541d : 0;
            }
        }
        int i15 = this.f66548k;
        View view13 = this.f66544g;
        Intrinsics.checkNotNull(view13);
        if (measuredWidth2 > i15 - view13.getMeasuredWidth()) {
            int i16 = this.f66548k;
            View view14 = this.f66544g;
            Intrinsics.checkNotNull(view14);
            measuredWidth2 = i16 - view14.getMeasuredWidth();
        }
        if (measuredHeight2 <= (this.f66546i == 2 ? 0 : this.f66541d)) {
            Context context2 = this.f66538a;
            Intrinsics.checkNotNull(context2);
            if (!t(context2)) {
                f10 = this.f66546i == 2 ? 0 : this.f66541d;
            }
            measuredHeight2 = f10;
        }
        int i17 = this.f66549l;
        View view15 = this.f66544g;
        Intrinsics.checkNotNull(view15);
        if (measuredHeight2 > i17 - view15.getMeasuredHeight()) {
            int i18 = this.f66549l;
            View view16 = this.f66544g;
            Intrinsics.checkNotNull(view16);
            measuredHeight2 = i18 - view16.getMeasuredHeight();
        }
        return new float[]{measuredWidth2, measuredHeight2};
    }

    public final boolean g() {
        return this.f66553p;
    }

    @Nullable
    public final Context getContext() {
        return this.f66538a;
    }

    @NotNull
    public final int[] h() {
        WindowManager.LayoutParams layoutParams = this.f66545h;
        if (layoutParams == null) {
            return CollectionsKt___CollectionsKt.toIntArray(CollectionsKt__CollectionsKt.emptyList());
        }
        return new int[]{layoutParams != null ? layoutParams.x : 0, layoutParams != null ? layoutParams.y : 0};
    }

    @Nullable
    protected final WindowManager.LayoutParams i() {
        return this.f66545h;
    }

    @Nullable
    public final View j() {
        return this.f66544g;
    }

    @Nullable
    public final b k() {
        return this.f66552o;
    }

    public final int m() {
        return this.f66549l;
    }

    public final int n() {
        return this.f66548k;
    }

    @Nullable
    public final View o() {
        return this.f66544g;
    }

    public final void r(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f66538a = context;
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f66539b = (WindowManager) systemService;
        this.f66541d = p2.i(context);
        this.f66540c = Resources.getSystem().getDisplayMetrics();
        WindowManager windowManager = this.f66539b;
        Intrinsics.checkNotNull(windowManager);
        Display defaultDisplay = windowManager.getDefaultDisplay();
        DisplayMetrics displayMetrics = this.f66540c;
        Intrinsics.checkNotNull(displayMetrics);
        defaultDisplay.getRealMetrics(displayMetrics);
        Context context2 = this.f66538a;
        Intrinsics.checkNotNull(context2);
        this.f66546i = context2.getResources().getConfiguration().orientation;
        DisplayMetrics displayMetrics2 = this.f66540c;
        Intrinsics.checkNotNull(displayMetrics2);
        this.f66548k = displayMetrics2.widthPixels;
        DisplayMetrics displayMetrics3 = this.f66540c;
        Intrinsics.checkNotNull(displayMetrics3);
        this.f66549l = displayMetrics3.heightPixels;
    }

    public final boolean t(@NotNull Context context) {
        float f10;
        float f11;
        Intrinsics.checkNotNullParameter(context, "context");
        if (f66535u) {
            return f66536v;
        }
        f66535u = true;
        f66536v = false;
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i10 = point.x;
        int i11 = point.y;
        if (i10 < i11) {
            f11 = i10;
            f10 = i11;
        } else {
            float f12 = i11;
            f10 = i10;
            f11 = f12;
        }
        if (f10 / f11 >= 1.97f) {
            f66536v = true;
        }
        return f66536v;
    }

    public final void u(@Nullable Configuration configuration) {
        if (configuration == null) {
            return;
        }
        this.f66547j = configuration.orientation;
        DisplayMetrics displayMetrics = this.f66540c;
        Intrinsics.checkNotNull(displayMetrics);
        this.f66548k = displayMetrics.widthPixels;
        DisplayMetrics displayMetrics2 = this.f66540c;
        Intrinsics.checkNotNull(displayMetrics2);
        this.f66549l = displayMetrics2.heightPixels;
        if (this.f66546i != this.f66547j) {
            update(q(), p());
        } else {
            update(p(), q());
        }
    }

    public final void update(int i10, int i11) {
        View view;
        if (this.f66545h == null || (view = this.f66544g) == null || this.f66539b == null) {
            return;
        }
        if (i10 <= 0) {
            i10 = 0;
        }
        int i12 = this.f66548k;
        Intrinsics.checkNotNull(view);
        if (i10 > i12 - view.getMeasuredWidth()) {
            int i13 = this.f66548k;
            View view2 = this.f66544g;
            Intrinsics.checkNotNull(view2);
            i10 = i13 - view2.getMeasuredWidth();
        }
        if (i11 <= 0) {
            i11 = 0;
        }
        int i14 = this.f66549l;
        View view3 = this.f66544g;
        Intrinsics.checkNotNull(view3);
        if (i11 > i14 - view3.getMeasuredHeight()) {
            int i15 = this.f66549l;
            View view4 = this.f66544g;
            Intrinsics.checkNotNull(view4);
            i11 = i15 - view4.getMeasuredHeight();
        }
        WindowManager.LayoutParams layoutParams = this.f66545h;
        Intrinsics.checkNotNull(layoutParams);
        layoutParams.x = i10;
        WindowManager.LayoutParams layoutParams2 = this.f66545h;
        Intrinsics.checkNotNull(layoutParams2);
        layoutParams2.y = i11;
        if (this.f66543f) {
            WindowManager windowManager = this.f66539b;
            Intrinsics.checkNotNull(windowManager);
            windowManager.updateViewLayout(this.f66544g, this.f66545h);
            WindowManager.LayoutParams layoutParams3 = this.f66545h;
            Intrinsics.checkNotNull(layoutParams3);
            float f10 = layoutParams3.x;
            WindowManager.LayoutParams layoutParams4 = this.f66545h;
            Intrinsics.checkNotNull(layoutParams4);
            B(f10, layoutParams4.y);
        }
    }

    public final void v(float f10, float f11) {
        WindowManager.LayoutParams layoutParams = this.f66545h;
        Intrinsics.checkNotNull(layoutParams);
        if (layoutParams.width == -1) {
            WindowManager.LayoutParams layoutParams2 = this.f66545h;
            Intrinsics.checkNotNull(layoutParams2);
            layoutParams2.x = 0;
        } else {
            WindowManager.LayoutParams layoutParams3 = this.f66545h;
            Intrinsics.checkNotNull(layoutParams3);
            layoutParams3.x += (int) f10;
        }
        WindowManager.LayoutParams layoutParams4 = this.f66545h;
        Intrinsics.checkNotNull(layoutParams4);
        if (layoutParams4.height == -1) {
            WindowManager.LayoutParams layoutParams5 = this.f66545h;
            Intrinsics.checkNotNull(layoutParams5);
            layoutParams5.y = 0;
        } else {
            WindowManager.LayoutParams layoutParams6 = this.f66545h;
            Intrinsics.checkNotNull(layoutParams6);
            layoutParams6.y += (int) f11;
        }
        if (this.f66543f) {
            WindowManager windowManager = this.f66539b;
            Intrinsics.checkNotNull(windowManager);
            windowManager.updateViewLayout(this.f66544g, this.f66545h);
            WindowManager.LayoutParams layoutParams7 = this.f66545h;
            Intrinsics.checkNotNull(layoutParams7);
            float f12 = layoutParams7.x;
            WindowManager.LayoutParams layoutParams8 = this.f66545h;
            Intrinsics.checkNotNull(layoutParams8);
            B(f12, layoutParams8.y);
        }
    }

    public final void w() {
        WindowManager.LayoutParams layoutParams = this.f66545h;
        Intrinsics.checkNotNull(layoutParams);
        final int i10 = layoutParams.x;
        WindowManager.LayoutParams layoutParams2 = this.f66545h;
        Intrinsics.checkNotNull(layoutParams2);
        final int i11 = layoutParams2.y;
        WindowManager.LayoutParams layoutParams3 = this.f66545h;
        Intrinsics.checkNotNull(layoutParams3);
        if (layoutParams3.width == -1) {
            WindowManager.LayoutParams layoutParams4 = this.f66545h;
            Intrinsics.checkNotNull(layoutParams4);
            if (layoutParams4.height == -1) {
                WindowManager.LayoutParams layoutParams5 = this.f66545h;
                Intrinsics.checkNotNull(layoutParams5);
                layoutParams5.x = 0;
                WindowManager.LayoutParams layoutParams6 = this.f66545h;
                Intrinsics.checkNotNull(layoutParams6);
                layoutParams6.y = 0;
                WindowManager windowManager = this.f66539b;
                Intrinsics.checkNotNull(windowManager);
                windowManager.updateViewLayout(this.f66544g, this.f66545h);
                return;
            }
        }
        float[] fArrE = e();
        float f10 = fArrE[0];
        int i12 = (int) (f10 - i10);
        float f11 = fArrE[1];
        int i13 = (int) (f11 - i11);
        B(f10, f11);
        if (i12 == 0 && i13 == 0) {
            return;
        }
        ValueAnimator duration = ValueAnimator.ofInt(0, i12).setDuration(300L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.join.mgps.customview.hmfloat.h
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                j.x(i10, this, valueAnimator);
            }
        });
        ValueAnimator duration2 = ValueAnimator.ofInt(0, i13).setDuration(300L);
        duration2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.join.mgps.customview.hmfloat.i
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                j.y(i11, this, valueAnimator);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(duration).with(duration2);
        animatorSet.start();
    }

    public final void z() {
        if (!this.f66543f || this.f66544g == null) {
            return;
        }
        O();
        if (this.f66543f) {
            View view = this.f66544g;
            Intrinsics.checkNotNull(view);
            if (view.isAttachedToWindow()) {
                WindowManager windowManager = this.f66539b;
                Intrinsics.checkNotNull(windowManager);
                View view2 = this.f66544g;
                Intrinsics.checkNotNull(view2);
                windowManager.removeViewImmediate(view2);
            }
        }
        this.f66543f = false;
    }

    private j() {
        this.f66546i = 1;
        this.f66547j = 1;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public j(@NotNull Context context) {
        this();
        Intrinsics.checkNotNullParameter(context, "context");
        this.f66538a = context;
        r(context);
    }
}
