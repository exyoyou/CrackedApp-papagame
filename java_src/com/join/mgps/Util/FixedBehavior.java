package com.join.mgps.Util;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes4.dex */
public class FixedBehavior extends AppBarLayout.Behavior {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f49371d = "AppbarLayoutBehavior";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f49372e = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f49373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f49374c;

    private static class a {
        private a() {
        }

        static void a(String tag, String string) {
        }
    }

    public FixedBehavior(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    private Field getFlingRunnableField() throws NoSuchFieldException {
        Class<? super Object> superclass = getClass().getSuperclass();
        try {
            if (Build.VERSION.SDK_INT <= 27) {
                Class<? super Object> superclass2 = superclass != null ? superclass.getSuperclass() : null;
                if (superclass2 != null) {
                    return superclass2.getDeclaredField("mFlingRunnable");
                }
                return null;
            }
            Class<? super Object> superclass3 = superclass.getSuperclass().getSuperclass();
            if (superclass3 != null) {
                return superclass3.getDeclaredField("flingRunnable");
            }
            return null;
        } catch (NoSuchFieldException unused) {
            Class<? super Object> superclass4 = superclass.getSuperclass().getSuperclass();
            if (superclass4 != null) {
                return superclass4.getDeclaredField("flingRunnable");
            }
            return null;
        }
    }

    private Field getScrollerField() throws NoSuchFieldException {
        Class<? super Object> superclass = getClass().getSuperclass();
        try {
            if (Build.VERSION.SDK_INT <= 27) {
                Class<? super Object> superclass2 = superclass != null ? superclass.getSuperclass() : null;
                if (superclass2 != null) {
                    return superclass2.getDeclaredField("mScroller");
                }
                return null;
            }
            Class<? super Object> superclass3 = superclass.getSuperclass().getSuperclass();
            if (superclass3 != null) {
                return superclass3.getDeclaredField("scroller");
            }
            return null;
        } catch (NoSuchFieldException unused) {
            Class<? super Object> superclass4 = superclass.getSuperclass().getSuperclass();
            if (superclass4 != null) {
                return superclass4.getDeclaredField("scroller");
            }
            return null;
        }
    }

    private void stopAppbarLayoutFling(AppBarLayout appBarLayout) {
        try {
            Field flingRunnableField = getFlingRunnableField();
            Field scrollerField = getScrollerField();
            if (flingRunnableField != null) {
                flingRunnableField.setAccessible(true);
            }
            if (scrollerField != null) {
                scrollerField.setAccessible(true);
            }
            Runnable runnable = flingRunnableField != null ? (Runnable) flingRunnableField.get(this) : null;
            OverScroller overScroller = (OverScroller) scrollerField.get(this);
            if (runnable != null) {
                a.a(f49371d, "存在flingRunnable");
                appBarLayout.removeCallbacks(runnable);
                flingRunnableField.set(this, null);
            }
            if (overScroller == null || overScroller.isFinished()) {
                return;
            }
            overScroller.abortAnimation();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
        } catch (NoSuchFieldException e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.google.android.material.appbar.AppBarLayout.Behavior, com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout parent, AppBarLayout child, MotionEvent ev) {
        a.a(f49371d, "onInterceptTouchEvent:" + child.getTotalScrollRange());
        this.f49374c = this.f49373b;
        if (ev.getActionMasked() == 0) {
            stopAppbarLayoutFling(child);
        }
        return super.onInterceptTouchEvent(parent, (View) child, ev);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout child, View target, int dx, int dy, int[] consumed, int type) {
        a.a(f49371d, "onNestedPreScroll:" + child.getTotalScrollRange() + " ,dx:" + dx + " ,dy:" + dy + " ,type:" + type);
        if (type == 1) {
            this.f49373b = true;
        }
        if (this.f49374c) {
            return;
        }
        super.onNestedPreScroll(coordinatorLayout, child, target, dx, dy, consumed, type);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout child, View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type) {
        a.a(f49371d, "onNestedScroll: target:" + target.getClass() + " ," + child.getTotalScrollRange() + " ,dxConsumed:" + dxConsumed + " ,dyConsumed:" + dyConsumed + " ,type:" + type);
        if (this.f49374c) {
            return;
        }
        super.onNestedScroll(coordinatorLayout, child, target, dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, type);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout parent, AppBarLayout child, View directTargetChild, View target, int nestedScrollAxes, int type) {
        a.a(f49371d, "onStartNestedScroll");
        stopAppbarLayoutFling(child);
        return super.onStartNestedScroll(parent, child, directTargetChild, target, nestedScrollAxes, type);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout abl, View target, int type) {
        a.a(f49371d, "onStopNestedScroll");
        super.onStopNestedScroll(coordinatorLayout, abl, target, type);
        this.f49373b = false;
        this.f49374c = false;
    }
}
