package com.kongzue.dialogx.util.views;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import androidx.annotation.NonNull;
import androidx.core.graphics.Insets;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.interfaces.BaseDialog;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FitSystemBarUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f74288a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f74289b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f74290c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f74291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f74292e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BaseDialog f74293f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    View.OnLayoutChangeListener f74294g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    h f74295h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f74296i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f74297j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ViewTreeObserver.OnGlobalLayoutListener f74298k;

    enum Orientation {
        Start,
        Top,
        End,
        Bottom
    }

    class a implements g {
        a() {
        }

        @Override // com.kongzue.dialogx.util.views.FitSystemBarUtils.g
        public void a(int i10, int i11, int i12, int i13) {
        }

        @Override // com.kongzue.dialogx.util.views.FitSystemBarUtils.g
        public int b(Orientation orientation) {
            return 0;
        }

        @Override // com.kongzue.dialogx.util.views.FitSystemBarUtils.g
        public boolean c(Orientation orientation) {
            return true;
        }
    }

    class b implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f74299a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f74300b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f74301c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f74302d;

        b(boolean z10, boolean z11, boolean z12, boolean z13) {
            this.f74299a = z10;
            this.f74300b = z11;
            this.f74301c = z12;
            this.f74302d = z13;
        }

        @Override // com.kongzue.dialogx.util.views.FitSystemBarUtils.g
        public void a(int i10, int i11, int i12, int i13) {
        }

        @Override // com.kongzue.dialogx.util.views.FitSystemBarUtils.g
        public int b(Orientation orientation) {
            return 0;
        }

        @Override // com.kongzue.dialogx.util.views.FitSystemBarUtils.g
        public boolean c(Orientation orientation) {
            int i10 = f.f74314a[orientation.ordinal()];
            if (i10 == 1) {
                return this.f74299a;
            }
            if (i10 == 2) {
                return this.f74300b;
            }
            if (i10 == 3) {
                return this.f74301c;
            }
            if (i10 != 4) {
                return false;
            }
            return this.f74302d;
        }
    }

    class c extends WindowInsetsAnimationCompat.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ h f74303a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(int i10, h hVar) {
            super(i10);
            this.f74303a = hVar;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public void onEnd(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            FitSystemBarUtils.this.B("FitSystemBarUtils: setWindowInsetsAnimationCallback#onEnd ");
            FitSystemBarUtils.this.f74288a = false;
            super.onEnd(windowInsetsAnimationCompat);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public void onPrepare(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            FitSystemBarUtils fitSystemBarUtils = FitSystemBarUtils.this;
            fitSystemBarUtils.f74288a = fitSystemBarUtils.f74290c;
            super.onPrepare(windowInsetsAnimationCompat);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        @NonNull
        public WindowInsetsCompat onProgress(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull List<WindowInsetsAnimationCompat> list) {
            FitSystemBarUtils.this.B("FitSystemBarUtils: setWindowInsetsAnimationCallback#onProgress: " + windowInsetsCompat);
            FitSystemBarUtils fitSystemBarUtils = FitSystemBarUtils.this;
            if (fitSystemBarUtils.f74290c) {
                fitSystemBarUtils.s(windowInsetsCompat, new h(this.f74303a));
            }
            return windowInsetsCompat;
        }
    }

    class d implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ h f74305b;

        class a implements View.OnLayoutChangeListener {
            a() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                WindowInsets rootWindowInsets = view.getRootView().getRootWindowInsets();
                if (rootWindowInsets == null) {
                    FitSystemBarUtils.this.B("    FitSystemBarUtils: RootView not get Insets");
                } else {
                    FitSystemBarUtils.this.B("    FitSystemBarUtils: RootView get Insets");
                    FitSystemBarUtils.this.s(WindowInsetsCompat.toWindowInsetsCompat(rootWindowInsets), new h(d.this.f74305b));
                }
            }
        }

        class b implements View.OnAttachStateChangeListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ View f74308b;

            b(View view) {
                this.f74308b = view;
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                this.f74308b.removeOnLayoutChangeListener(FitSystemBarUtils.this.f74294g);
            }
        }

        class c implements ViewTreeObserver.OnPreDrawListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ View f74310b;

            c(View view) {
                this.f74310b = view;
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                Rect rect = new Rect();
                this.f74310b.getWindowVisibleDisplayFrame(rect);
                int i10 = rect.top;
                Resources resources = this.f74310b.getResources();
                int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
                int dimensionPixelSize = identifier > 0 ? resources.getDimensionPixelSize(identifier) : 0;
                FitSystemBarUtils.this.B("FitSystemBarUtils: below Android M use support mode: statusBarHeight=" + i10 + ", navigationBarHeight=" + dimensionPixelSize);
                int iR = FitSystemBarUtils.this.r();
                FitSystemBarUtils.this.B("    FitSystemBarUtils: deviceOrientation = " + iR);
                if (iR == -1 || iR == 1) {
                    h hVar = d.this.f74305b;
                    hVar.f74317c = dimensionPixelSize;
                    hVar.f74315a = 0;
                } else {
                    h hVar2 = d.this.f74305b;
                    hVar2.f74316b = i10;
                    hVar2.f74318d = dimensionPixelSize;
                }
                d dVar = d.this;
                FitSystemBarUtils.this.m(dVar.f74305b);
                this.f74310b.getViewTreeObserver().removeOnPreDrawListener(this);
                return true;
            }
        }

        d(h hVar) {
            this.f74305b = hVar;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            FitSystemBarUtils.this.B("FitSystemBarUtils: onViewAttachedToWindow");
            int i10 = Build.VERSION.SDK_INT;
            if (i10 < 30 || FitSystemBarUtils.this.t() < 30) {
                if (i10 >= 23) {
                    View view2 = (View) view.getParent();
                    View.OnLayoutChangeListener onLayoutChangeListener = FitSystemBarUtils.this.f74294g;
                    if (onLayoutChangeListener != null) {
                        view2.removeOnLayoutChangeListener(onLayoutChangeListener);
                    }
                    FitSystemBarUtils.this.f74294g = new a();
                    view2.addOnLayoutChangeListener(FitSystemBarUtils.this.f74294g);
                    view2.addOnAttachStateChangeListener(new b(view2));
                } else {
                    View view3 = (View) view.getParent();
                    view3.getViewTreeObserver().addOnPreDrawListener(new c(view3));
                }
            }
            ViewCompat.requestApplyInsets(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    class e implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f74312b;

        e(View view) {
            this.f74312b = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Rect rect = new Rect();
            this.f74312b.getWindowVisibleDisplayFrame(rect);
            int height = this.f74312b.getHeight();
            int i10 = Build.VERSION.SDK_INT;
            WindowInsetsController windowInsetsController = i10 >= 30 ? FitSystemBarUtils.this.u().getWindowInsetsController() : null;
            if (i10 >= 30 && windowInsetsController != null && (windowInsetsController.getSystemBarsBehavior() & 16) == 0) {
                rect.bottom = height;
            }
            int i11 = height - rect.bottom;
            if (i11 != FitSystemBarUtils.this.f74296i) {
                FitSystemBarUtils.this.f74296i = i11;
                FitSystemBarUtils.this.B("    FitSystemBarUtils: specialModeImeHeight=" + FitSystemBarUtils.this.f74296i);
                FitSystemBarUtils.this.l();
            }
        }
    }

    static /* synthetic */ class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f74314a;

        static {
            int[] iArr = new int[Orientation.values().length];
            f74314a = iArr;
            try {
                iArr[Orientation.Start.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74314a[Orientation.Top.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f74314a[Orientation.End.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f74314a[Orientation.Bottom.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface g {
        void a(int i10, int i11, int i12, int i13);

        int b(Orientation orientation);

        boolean c(Orientation orientation);
    }

    private FitSystemBarUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat A(h hVar, View view, WindowInsetsCompat windowInsetsCompat) {
        if (this.f74288a) {
            return windowInsetsCompat;
        }
        s(windowInsetsCompat, new h(hVar));
        return windowInsetsCompat;
    }

    private Activity getActivity() {
        BaseDialog baseDialog = this.f74293f;
        return baseDialog == null ? BaseDialog.X() : baseDialog.N();
    }

    private void k() {
        this.f74297j = true;
        View viewU = u();
        if (viewU == null) {
            return;
        }
        if (this.f74298k != null) {
            viewU.getViewTreeObserver().removeOnGlobalLayoutListener(this.f74298k);
        }
        ViewTreeObserver viewTreeObserver = viewU.getViewTreeObserver();
        e eVar = new e(viewU);
        this.f74298k = eVar;
        viewTreeObserver.addOnGlobalLayoutListener(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        h hVar = this.f74295h;
        if (hVar != null) {
            m(hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(h hVar) {
        g gVar = this.f74292e;
        if (gVar == null) {
            return;
        }
        hVar.f74315a += gVar.b(Orientation.Start);
        hVar.f74316b += this.f74292e.b(Orientation.Top);
        hVar.f74317c += this.f74292e.b(Orientation.End);
        hVar.f74318d += this.f74292e.b(Orientation.Bottom);
        hVar.a(this.f74291d);
        B("    KONGZUE DEBUG DIALOGX FitSystemBarUtils callBack: left=" + hVar.f74315a + " top=" + hVar.f74316b + " right=" + hVar.f74317c + " bottom=" + hVar.f74318d + " specialMode=" + this.f74297j + " specialModeImeHeight=" + this.f74296i);
        this.f74292e.a(hVar.f74315a, hVar.f74316b, hVar.f74317c, hVar.f74318d + (this.f74297j ? this.f74296i : 0));
    }

    public static FitSystemBarUtils o(View view) {
        return p(view, new a());
    }

    public static FitSystemBarUtils p(View view, g gVar) {
        return new FitSystemBarUtils(view, gVar);
    }

    public static FitSystemBarUtils q(View view, boolean z10, boolean z11, boolean z12, boolean z13) {
        return p(view, new b(z10, z11, z12, z13));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int r() {
        Activity activity = getActivity();
        if (activity == null || activity.getResources().getConfiguration().orientation != 2) {
            return 0;
        }
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        if (rotation != 1) {
            return rotation != 3 ? 0 : 1;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(WindowInsetsCompat windowInsetsCompat, h hVar) {
        int safeInsetRight;
        int safeInsetTop;
        int safeInsetLeft;
        int safeInsetRight2;
        DisplayCutoutCompat displayCutout;
        if (this.f74291d == null || windowInsetsCompat == null || hVar == null) {
            return;
        }
        this.f74295h = hVar;
        if (!this.f74289b || (displayCutout = windowInsetsCompat.getDisplayCutout()) == null) {
            safeInsetRight = 0;
            safeInsetTop = 0;
            safeInsetLeft = 0;
            safeInsetRight2 = 0;
        } else {
            safeInsetTop = displayCutout.getSafeInsetTop();
            safeInsetLeft = displayCutout.getSafeInsetLeft();
            safeInsetRight2 = displayCutout.getSafeInsetRight();
            safeInsetRight = displayCutout.getSafeInsetRight();
        }
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime() | WindowInsetsCompat.Type.systemBars());
        int i10 = insets.left;
        int i11 = insets.right;
        int windowSystemUiVisibility = this.f74291d.getRootView().getWindowSystemUiVisibility();
        int i12 = Build.VERSION.SDK_INT;
        boolean z10 = i12 >= 30 || (windowSystemUiVisibility & 4) == 0;
        int i13 = ((i12 >= 30 || (windowSystemUiVisibility & 2) == 0) && (windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime()) || windowInsetsCompat.isVisible(WindowInsetsCompat.Type.navigationBars()))) ? insets.bottom : 0;
        int i14 = (z10 && windowInsetsCompat.isVisible(WindowInsetsCompat.Type.statusBars())) ? insets.top : 0;
        if (z(insets)) {
            B("    FitSystemBarUtils: isWrongInsets try special mode...");
            int iR = r();
            B("    FitSystemBarUtils: deviceOrientation = " + iR);
            if (iR != 1) {
                hVar.f74316b = w();
                hVar.f74318d = v();
            } else {
                hVar.f74317c = w();
                hVar.f74315a = v();
            }
            k();
        } else {
            this.f74297j = false;
            if (this.f74292e.c(Orientation.Top)) {
                hVar.f74316b += Math.max(i14, safeInsetTop);
            }
            if (this.f74292e.c(Orientation.Bottom)) {
                hVar.f74318d += Math.max(i13, safeInsetRight);
            }
            boolean z11 = ViewCompat.getLayoutDirection(this.f74291d) == 1;
            if (this.f74292e.c(Orientation.Start)) {
                if (z11) {
                    hVar.f74315a += Math.max(i11, safeInsetRight2);
                } else {
                    hVar.f74315a += Math.max(i10, safeInsetLeft);
                }
            }
            if (this.f74292e.c(Orientation.End)) {
                if (z11) {
                    hVar.f74317c += Math.max(i10, safeInsetLeft);
                } else {
                    hVar.f74317c += Math.max(i11, safeInsetRight2);
                }
            }
        }
        m(hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int t() {
        try {
            Context contextU = BaseDialog.u();
            if (contextU == null) {
                return -1;
            }
            return contextU.getPackageManager().getApplicationInfo(contextU.getPackageName(), 0).targetSdkVersion;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View u() {
        Activity activity = getActivity();
        if (activity == null) {
            return null;
        }
        return activity.getWindow().getDecorView();
    }

    private int v() {
        if (x() || u() == null) {
            return 0;
        }
        int i10 = Build.VERSION.SDK_INT;
        WindowInsetsController windowInsetsController = i10 >= 30 ? u().getWindowInsetsController() : null;
        if (i10 >= 30 && windowInsetsController != null && (windowInsetsController.getSystemBarsBehavior() & 16) == 0) {
            B("getNavigationBarHeight =0");
            return 0;
        }
        View view = this.f74291d;
        Resources system = (view == null || view.getContext() == null) ? Resources.getSystem() : this.f74291d.getContext().getResources();
        int identifier = system.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return system.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private int w() {
        if (x() || u() == null) {
            return 0;
        }
        int i10 = Build.VERSION.SDK_INT;
        WindowInsetsController windowInsetsController = i10 >= 30 ? u().getWindowInsetsController() : null;
        if (i10 >= 30 && windowInsetsController != null && (windowInsetsController.getSystemBarsBehavior() & 8192) == 0) {
            return 0;
        }
        View view = this.f74291d;
        Resources system = (view == null || view.getContext() == null) ? Resources.getSystem() : this.f74291d.getContext().getResources();
        int identifier = system.getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return system.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private boolean x() {
        Activity activity = getActivity();
        if (activity == null) {
            return false;
        }
        return ((activity.getWindow().getAttributes().flags & 1024) == 0 && (activity.getWindow().getDecorView().getSystemUiVisibility() & 4) == 0) ? false : true;
    }

    private boolean z(Insets insets) {
        return insets.top == 0 && insets.bottom == 0 && insets.left == 0 && insets.right == 0;
    }

    protected void B(String str) {
        if (DialogXBaseRelativeLayout.f74268s) {
            boolean z10 = DialogX.f73590b;
        }
    }

    public void C() {
        View viewU = u();
        if (viewU != null && this.f74298k != null) {
            viewU.getViewTreeObserver().removeOnGlobalLayoutListener(this.f74298k);
        }
        this.f74298k = null;
        this.f74292e = null;
        this.f74291d = null;
        this.f74293f = null;
    }

    public void n() {
        final h hVar = new h(ViewCompat.getPaddingStart(this.f74291d), this.f74291d.getPaddingTop(), ViewCompat.getPaddingEnd(this.f74291d), this.f74291d.getPaddingBottom());
        ViewCompat.setOnApplyWindowInsetsListener(this.f74291d, new OnApplyWindowInsetsListener() { // from class: com.kongzue.dialogx.util.views.d
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f74410a.A(hVar, view, windowInsetsCompat);
            }
        });
        if (Build.VERSION.SDK_INT >= 30) {
            B("FitSystemBarUtils: setWindowInsetsAnimationCallback");
            ViewCompat.setWindowInsetsAnimationCallback(this.f74291d, new c(1, hVar));
        }
        if (ViewCompat.isAttachedToWindow(this.f74291d)) {
            B("FitSystemBarUtils: AttachedToWindow ok");
            ViewCompat.requestApplyInsets(this.f74291d);
        } else {
            B("FitSystemBarUtils: wait AttachedToWindow");
            this.f74291d.addOnAttachStateChangeListener(new d(hVar));
        }
    }

    public boolean y() {
        return this.f74288a;
    }

    public static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f74315a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f74316b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f74317c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f74318d;

        public h(int i10, int i11, int i12, int i13) {
            this.f74315a = i10;
            this.f74316b = i11;
            this.f74317c = i12;
            this.f74318d = i13;
        }

        public void a(View view) {
            if (view instanceof DialogXBaseRelativeLayout) {
                return;
            }
            ViewCompat.setPaddingRelative(view, this.f74315a, this.f74316b, this.f74317c, this.f74318d);
        }

        public h(h hVar) {
            this.f74315a = hVar.f74315a;
            this.f74316b = hVar.f74316b;
            this.f74317c = hVar.f74317c;
            this.f74318d = hVar.f74318d;
        }
    }

    public FitSystemBarUtils(View view, g gVar) {
        this.f74291d = view;
        this.f74292e = gVar;
        if (view instanceof DialogXBaseRelativeLayout) {
            this.f74293f = ((DialogXBaseRelativeLayout) view).getParentDialog();
        }
        n();
    }
}
