package com.join.mgps.customview.hmfloat;

import android.R;
import android.app.Activity;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.DisplayCutout;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nHMFloatingBall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMFloatingBall.kt\ncom/join/mgps/customview/hmfloat/HMFloatingBall\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,357:1\n254#2:358\n*S KotlinDebug\n*F\n+ 1 HMFloatingBall.kt\ncom/join/mgps/customview/hmfloat/HMFloatingBall\n*L\n301#1:358\n*E\n"})
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final Activity f66565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final HMFloatingBallView f66566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final HMFloatMenuView f66567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final FrameLayout f66568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f66569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f66570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f66571g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f66572h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f66573i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f66574j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NotNull
    private final Handler f66575k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NotNull
    private final Runnable f66576l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f66577m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NotNull
    private final Rect f66578n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private a f66579o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View.OnTouchListener f66580p;

    public interface a {
        void a();

        void onShow();
    }

    @SourceDebugExtension({"SMAP\nHMFloatingBall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMFloatingBall.kt\ncom/join/mgps/customview/hmfloat/HMFloatingBall$initBallTouchListener$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,357:1\n254#2:358\n*S KotlinDebug\n*F\n+ 1 HMFloatingBall.kt\ncom/join/mgps/customview/hmfloat/HMFloatingBall$initBallTouchListener$1\n*L\n169#1:358\n*E\n"})
    public static final class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent == null) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                v.this.f66575k.removeCallbacks(v.this.f66576l);
                v.this.f66572h = motionEvent.getRawX();
                v.this.f66573i = motionEvent.getRawY();
                if (v.this.f66577m) {
                    v.this.f66566b.g(HMBallView.Shape.CIRCLE);
                    v.this.f66577m = false;
                }
            } else if (action == 1) {
                v.this.f0();
                if (v.this.f66567c.getVisibility() == 0) {
                    return true;
                }
                v.this.f66575k.postDelayed(v.this.f66576l, v.this.f66574j);
            } else {
                if (action != 2) {
                    return false;
                }
                int rawX = (int) (motionEvent.getRawX() - v.this.f66572h);
                int rawY = (int) (motionEvent.getRawY() - v.this.f66573i);
                v.this.f66570f += rawX;
                v.this.f66571g += rawY;
                v.this.F();
                v.this.g0();
                v.this.f66572h = motionEvent.getRawX();
                v.this.f66573i = motionEvent.getRawY();
            }
            return true;
        }
    }

    public v(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f66565a = activity;
        this.f66569e = I(40);
        this.f66571g = I(100);
        this.f66574j = 5000L;
        this.f66575k = new Handler(Looper.getMainLooper());
        this.f66576l = new Runnable() { // from class: com.join.mgps.customview.hmfloat.q
            @Override // java.lang.Runnable
            public final void run() {
                v.E(this.f66560b);
            }
        };
        this.f66578n = new Rect();
        View viewFindViewById = activity.findViewById(R.id.content);
        Intrinsics.checkNotNull(viewFindViewById);
        this.f66568d = (FrameLayout) viewFindViewById;
        HMFloatingBallView hMFloatingBallView = new HMFloatingBallView(activity);
        hMFloatingBallView.f66508k = new HMFloatingBallView.a() { // from class: com.join.mgps.customview.hmfloat.r
            @Override // com.join.mgps.customview.hmfloat.HMFloatingBallView.a
            public final void a() {
                v.T(this.f66561a);
            }
        };
        hMFloatingBallView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.customview.hmfloat.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                v.U(this.f66562b, view);
            }
        });
        this.f66566b = hMFloatingBallView;
        HMFloatMenuView hMFloatMenuView = new HMFloatMenuView(activity);
        hMFloatMenuView.setOnHideListener(new HMFloatMenuView.d() { // from class: com.join.mgps.customview.hmfloat.t
            @Override // com.join.mgps.customview.hmfloat.HMFloatMenuView.d
            public final void a() {
                v.V(this.f66563a);
            }
        });
        this.f66567c = hMFloatMenuView;
        J();
    }

    private final void D() {
        Point point = new Point();
        this.f66565a.getWindowManager().getDefaultDisplay().getSize(point);
        int i10 = point.x;
        boolean z10 = this.f66570f < i10 / 2;
        this.f66570f = z10 ? this.f66578n.left : (i10 - this.f66569e) - this.f66578n.right;
        this.f66566b.g(z10 ? HMBallView.Shape.SEMICIRCLE_RIGHT : HMBallView.Shape.SEMICIRCLE_LEFT);
        this.f66577m = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(v vVar) {
        vVar.D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F() {
        Point point = new Point();
        this.f66565a.getWindowManager().getDefaultDisplay().getSize(point);
        int i10 = point.x;
        int i11 = point.y;
        this.f66570f = RangesKt___RangesKt.coerceIn(this.f66570f, 0, i10 - this.f66569e);
        int i12 = this.f66571g;
        Rect rect = this.f66578n;
        this.f66571g = RangesKt___RangesKt.coerceIn(i12, rect.top, (i11 - this.f66569e) - rect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(v vVar) {
        vVar.f66566b.i();
        vVar.f66566b.b();
        vVar.f66567c.n(true);
        vVar.f66575k.removeCallbacks(vVar.f66576l);
    }

    private final int I(int i10) {
        return (int) (i10 * this.f66565a.getResources().getDisplayMetrics().density);
    }

    private final void J() {
        WindowInsets rootWindowInsets;
        DisplayCutout displayCutout;
        if (Build.VERSION.SDK_INT < 28 || (rootWindowInsets = this.f66565a.getWindow().getDecorView().getRootWindowInsets()) == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null) {
            return;
        }
        this.f66578n.set(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(v vVar) {
        vVar.f66566b.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(v vVar) {
        vVar.f66566b.b();
    }

    private final void Q() {
        this.f66565a.runOnUiThread(new Runnable() { // from class: com.join.mgps.customview.hmfloat.u
            @Override // java.lang.Runnable
            public final void run() {
                v.R(this.f66564b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(v vVar) {
        vVar.f66567c.n(true);
    }

    private final void S() {
        this.f66580p = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(v vVar) {
        vVar.c0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(v vVar, View view) {
        vVar.O();
        vVar.c0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(v vVar) {
        vVar.a0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(v vVar) {
        vVar.f66566b.f(vVar.f66565a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(v vVar) {
        vVar.f66566b.f(vVar.f66565a);
    }

    private final void c0() {
        this.f66565a.runOnUiThread(new Runnable() { // from class: com.join.mgps.customview.hmfloat.o
            @Override // java.lang.Runnable
            public final void run() {
                v.d0(this.f66558b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(v vVar) {
        vVar.f66567c.f(vVar.f66565a);
    }

    private final void e0(Activity activity, String str) {
        Toast.makeText(activity, str, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f0() {
        this.f66566b.b();
        if (this.f66567c.getVisibility() == 0) {
            Q();
        } else {
            c0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g0() {
        ViewGroup.LayoutParams layoutParams = this.f66566b.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        layoutParams2.leftMargin = this.f66570f;
        layoutParams2.topMargin = this.f66571g;
        this.f66566b.requestLayout();
        HMFloatMenuView hMFloatMenuView = this.f66567c;
        if (hMFloatMenuView == null || hMFloatMenuView.getVisibility() != 0) {
            return;
        }
        h0();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0037 A[Catch: Exception -> 0x0033, TRY_LEAVE, TryCatch #0 {Exception -> 0x0033, blocks: (B:4:0x0024, B:7:0x0037), top: B:19:0x0024 }] */
    private final void h0() {
        int iCoerceIn;
        Point point = new Point();
        this.f66565a.getWindowManager().getDefaultDisplay().getSize(point);
        int i10 = point.x;
        int i11 = point.y;
        int minimumWidth = this.f66567c.getMinimumWidth();
        int minimumHeight = this.f66567c.getMinimumHeight();
        if (minimumWidth == 0) {
            try {
                minimumWidth = (int) this.f66565a.getResources().getDimension(com.join.android.app.mgsim.wufun.R.dimen.wdp320);
                if (minimumHeight == 0) {
                    minimumHeight = (int) this.f66565a.getResources().getDimension(com.join.android.app.mgsim.wufun.R.dimen.wdp500);
                }
            } catch (Exception unused) {
            }
        } else if (minimumHeight == 0) {
            minimumHeight = (int) this.f66565a.getResources().getDimension(com.join.android.app.mgsim.wufun.R.dimen.wdp500);
        }
        int iCoerceIn2 = 0;
        boolean z10 = this.f66570f < this.f66565a.getResources().getDisplayMetrics().widthPixels / 2;
        int iCoerceIn3 = RangesKt___RangesKt.coerceIn(this.f66571g, 0, i11 - Math.min(minimumHeight, this.f66567c.getMeasuredHeight()));
        if (z10) {
            int i12 = this.f66570f;
            int i13 = this.f66569e;
            iCoerceIn = RangesKt___RangesKt.coerceIn(i12 + i13, i13, i10 - minimumWidth);
        } else {
            int measuredWidth = this.f66570f - this.f66567c.getMeasuredWidth();
            iCoerceIn2 = RangesKt___RangesKt.coerceIn(i10 - this.f66570f, 0, i10 - this.f66569e);
            iCoerceIn = measuredWidth;
        }
        ViewGroup.LayoutParams layoutParams = this.f66567c.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        layoutParams2.leftMargin = iCoerceIn;
        layoutParams2.topMargin = iCoerceIn3;
        layoutParams2.setMarginStart(iCoerceIn);
        layoutParams2.setMarginEnd(iCoerceIn2);
        this.f66567c.setLayoutParams(layoutParams2);
    }

    public final void G() {
        this.f66565a.runOnUiThread(new Runnable() { // from class: com.join.mgps.customview.hmfloat.k
            @Override // java.lang.Runnable
            public final void run() {
                v.H(this.f66554b);
            }
        });
    }

    @NotNull
    public final HMFloatMenuView K() {
        HMFloatMenuView hMFloatMenuView = this.f66567c;
        Intrinsics.checkNotNull(hMFloatMenuView, "null cannot be cast to non-null type com.join.mgps.customview.hmfloat.HMFloatMenuView");
        return hMFloatMenuView;
    }

    @Nullable
    public final a L() {
        return this.f66579o;
    }

    public final void M() {
        this.f66565a.runOnUiThread(new Runnable() { // from class: com.join.mgps.customview.hmfloat.l
            @Override // java.lang.Runnable
            public final void run() {
                v.N(this.f66555b);
            }
        });
    }

    public final void O() {
        this.f66565a.runOnUiThread(new Runnable() { // from class: com.join.mgps.customview.hmfloat.m
            @Override // java.lang.Runnable
            public final void run() {
                v.P(this.f66556b);
            }
        });
    }

    public final void W() {
        Q();
    }

    public final void X(@Nullable a aVar) {
        this.f66579o = aVar;
    }

    public final void Y() {
        this.f66565a.runOnUiThread(new Runnable() { // from class: com.join.mgps.customview.hmfloat.p
            @Override // java.lang.Runnable
            public final void run() {
                v.Z(this.f66559b);
            }
        });
    }

    public final void a0() {
        this.f66565a.runOnUiThread(new Runnable() { // from class: com.join.mgps.customview.hmfloat.n
            @Override // java.lang.Runnable
            public final void run() {
                v.b0(this.f66557b);
            }
        });
    }
}
