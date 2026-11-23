package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;

/* JADX INFO: loaded from: classes5.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f29488m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f29489n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f29490o = 2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f29491p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f29492q = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f29493r = 2;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final float f29494s = 0.5f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final float f29495t = 0.0f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final float f29496u = 0.5f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ViewDragHelper f29497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    c f29498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f29499d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f29500e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f29502g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f29501f = 0.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f29503h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f29504i = 0.5f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f29505j = 0.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    float f29506k = 0.5f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final ViewDragHelper.Callback f29507l = new a();

    class a extends ViewDragHelper.Callback {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final int f29508d = -1;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f29509a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f29510b = -1;

        a() {
        }

        private boolean a(@NonNull View view, float f10) {
            if (f10 == 0.0f) {
                return Math.abs(view.getLeft() - this.f29509a) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f29504i);
            }
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int i10 = SwipeDismissBehavior.this.f29503h;
            if (i10 == 2) {
                return true;
            }
            if (i10 == 0) {
                if (z10) {
                    if (f10 >= 0.0f) {
                        return false;
                    }
                } else if (f10 <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (i10 != 1) {
                return false;
            }
            if (z10) {
                if (f10 <= 0.0f) {
                    return false;
                }
            } else if (f10 >= 0.0f) {
                return false;
            }
            return true;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i10, int i11) {
            int width;
            int width2;
            int width3;
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int i12 = SwipeDismissBehavior.this.f29503h;
            if (i12 == 0) {
                if (z10) {
                    width = this.f29509a - view.getWidth();
                    width2 = this.f29509a;
                } else {
                    width = this.f29509a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i12 != 1) {
                width = this.f29509a - view.getWidth();
                width2 = view.getWidth() + this.f29509a;
            } else if (z10) {
                width = this.f29509a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f29509a - view.getWidth();
                width2 = this.f29509a;
            }
            return SwipeDismissBehavior.k(width, i10, width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i10, int i11) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(@NonNull View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(@NonNull View view, int i10) {
            this.f29510b = i10;
            this.f29509a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                SwipeDismissBehavior.this.f29500e = true;
                parent.requestDisallowInterceptTouchEvent(true);
                SwipeDismissBehavior.this.f29500e = false;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i10) {
            c cVar = SwipeDismissBehavior.this.f29498c;
            if (cVar != null) {
                cVar.b(i10);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i10, int i11, int i12, int i13) {
            float width = view.getWidth() * SwipeDismissBehavior.this.f29505j;
            float width2 = view.getWidth() * SwipeDismissBehavior.this.f29506k;
            float fAbs = Math.abs(i10 - this.f29509a);
            if (fAbs <= width) {
                view.setAlpha(1.0f);
            } else if (fAbs >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.j(0.0f, 1.0f - SwipeDismissBehavior.m(width, width2, fAbs), 1.0f));
            }
        }

        /* JADX WARN: Code duplicated, block: B:10:0x001d  */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NonNull View view, float f10, float f11) {
            int i10;
            boolean z10;
            c cVar;
            this.f29510b = -1;
            int width = view.getWidth();
            if (a(view, f10)) {
                if (f10 >= 0.0f) {
                    int left = view.getLeft();
                    int i11 = this.f29509a;
                    if (left < i11) {
                        i10 = this.f29509a - width;
                    } else {
                        i10 = i11 + width;
                    }
                } else {
                    i10 = this.f29509a - width;
                }
                z10 = true;
            } else {
                i10 = this.f29509a;
                z10 = false;
            }
            if (SwipeDismissBehavior.this.f29497b.settleCapturedViewAt(i10, view.getTop())) {
                ViewCompat.postOnAnimation(view, new d(view, z10));
            } else {
                if (!z10 || (cVar = SwipeDismissBehavior.this.f29498c) == null) {
                    return;
                }
                cVar.a(view);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i10) {
            int i11 = this.f29510b;
            return (i11 == -1 || i11 == i10) && SwipeDismissBehavior.this.i(view);
        }
    }

    class b implements AccessibilityViewCommand {
        b() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            boolean z10 = false;
            if (!SwipeDismissBehavior.this.i(view)) {
                return false;
            }
            boolean z11 = ViewCompat.getLayoutDirection(view) == 1;
            int i10 = SwipeDismissBehavior.this.f29503h;
            if ((i10 == 0 && z11) || (i10 == 1 && !z11)) {
                z10 = true;
            }
            int width = view.getWidth();
            if (z10) {
                width = -width;
            }
            ViewCompat.offsetLeftAndRight(view, width);
            view.setAlpha(0.0f);
            c cVar = SwipeDismissBehavior.this.f29498c;
            if (cVar != null) {
                cVar.a(view);
            }
            return true;
        }
    }

    public interface c {
        void a(View view);

        void b(int i10);
    }

    private class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f29513b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f29514c;

        d(View view, boolean z10) {
            this.f29513b = view;
            this.f29514c = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.f29497b;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.f29513b, this);
            } else {
                if (!this.f29514c || (cVar = SwipeDismissBehavior.this.f29498c) == null) {
                    return;
                }
                cVar.a(this.f29513b);
            }
        }
    }

    static float j(float f10, float f11, float f12) {
        return Math.min(Math.max(f10, f11), f12);
    }

    static int k(int i10, int i11, int i12) {
        return Math.min(Math.max(i10, i11), i12);
    }

    private void l(ViewGroup viewGroup) {
        if (this.f29497b == null) {
            this.f29497b = this.f29502g ? ViewDragHelper.create(viewGroup, this.f29501f, this.f29507l) : ViewDragHelper.create(viewGroup, this.f29507l);
        }
    }

    static float m(float f10, float f11, float f12) {
        return (f12 - f10) / (f11 - f10);
    }

    private void v(View view) {
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (i(view)) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new b());
        }
    }

    public boolean i(@NonNull View view) {
        return true;
    }

    public int n() {
        ViewDragHelper viewDragHelper = this.f29497b;
        if (viewDragHelper != null) {
            return viewDragHelper.getViewDragState();
        }
        return 0;
    }

    @Nullable
    @VisibleForTesting
    public c o() {
        return this.f29498c;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull MotionEvent motionEvent) {
        boolean zIsPointInChildBounds = this.f29499d;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zIsPointInChildBounds = coordinatorLayout.isPointInChildBounds(v10, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f29499d = zIsPointInChildBounds;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f29499d = false;
        }
        if (!zIsPointInChildBounds) {
            return false;
        }
        l(coordinatorLayout);
        return !this.f29500e && this.f29497b.shouldInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i10) {
        boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, v10, i10);
        if (ViewCompat.getImportantForAccessibility(v10) == 0) {
            ViewCompat.setImportantForAccessibility(v10, 1);
            v(v10);
        }
        return zOnLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        if (this.f29497b == null) {
            return false;
        }
        if (this.f29500e && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f29497b.processTouchEvent(motionEvent);
        return true;
    }

    public void p(float f10) {
        this.f29504i = j(0.0f, f10, 1.0f);
    }

    public void q(float f10) {
        this.f29506k = j(0.0f, f10, 1.0f);
    }

    public void r(@Nullable c cVar) {
        this.f29498c = cVar;
    }

    public void s(float f10) {
        this.f29501f = f10;
        this.f29502g = true;
    }

    public void t(float f10) {
        this.f29505j = j(0.0f, f10, 1.0f);
    }

    public void u(int i10) {
        this.f29503h = i10;
    }
}
