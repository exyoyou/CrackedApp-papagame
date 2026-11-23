package com.join.kotlin.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.OverScroller;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J \u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000fH\u0002J8\u0010\u001b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0016J@\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020 2\u0006\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020'2\u0006\u0010!\u001a\u00020 H\u0016JH\u0010(\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020 2\u0006\u0010*\u001a\u00020 2\u0006\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0016J(\u0010-\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\r2\u0006\u0010.\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020 H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015¨\u0006/"}, d2 = {"Lcom/join/kotlin/behavior/AppBarLayoutBehavior;", "Lcom/google/android/material/appbar/AppBarLayout$Behavior;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "isFlinging", "", "shouldBlockNestedScroll", "onInterceptTouchEvent", "parent", "Landroidx/coordinatorlayout/widget/CoordinatorLayout;", "child", "Lcom/google/android/material/appbar/AppBarLayout;", "ev", "Landroid/view/MotionEvent;", "flingRunnableField", "Ljava/lang/reflect/Field;", "getFlingRunnableField", "()Ljava/lang/reflect/Field;", "scrollerField", "getScrollerField", "stopAppbarLayoutFling", "", "appBarLayout", "onStartNestedScroll", "directTargetChild", "Landroid/view/View;", TypedValues.AttributesType.S_TARGET, "nestedScrollAxes", "", "type", "onNestedPreScroll", "coordinatorLayout", "dx", "dy", "consumed", "", "onNestedScroll", "dxConsumed", "dyConsumed", "dxUnconsumed", "dyUnconsumed", "onStopNestedScroll", "abl", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppBarLayoutBehavior extends AppBarLayout.Behavior {
    private boolean isFlinging;
    private boolean shouldBlockNestedScroll;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppBarLayoutBehavior(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final Field getFlingRunnableField() {
        Class superclass;
        Class superclass2;
        Class superclass3 = AppBarLayoutBehavior.class.getSuperclass();
        if (superclass3 != null) {
            try {
                superclass = superclass3.getSuperclass();
            } catch (NoSuchFieldException e10) {
                e10.printStackTrace();
                Class superclass4 = (superclass3 == null || (superclass2 = superclass3.getSuperclass()) == null) ? null : superclass2.getSuperclass();
                if (superclass4 != null) {
                    return superclass4.getDeclaredField("flingRunnable");
                }
                return null;
            }
        } else {
            superclass = null;
        }
        if (superclass != null) {
            return superclass.getDeclaredField("mFlingRunnable");
        }
        return null;
    }

    private final Field getScrollerField() throws NoSuchFieldException {
        Class superclass;
        Class superclass2;
        Class superclass3 = AppBarLayoutBehavior.class.getSuperclass();
        if (superclass3 != null) {
            try {
                superclass = superclass3.getSuperclass();
            } catch (NoSuchFieldException e10) {
                e10.printStackTrace();
                Class superclass4 = (superclass3 == null || (superclass2 = superclass3.getSuperclass()) == null) ? null : superclass2.getSuperclass();
                if (superclass4 != null) {
                    return superclass4.getDeclaredField("scroller");
                }
                return null;
            }
        } else {
            superclass = null;
        }
        if (superclass != null) {
            return superclass.getDeclaredField("mScroller");
        }
        return null;
    }

    private final void stopAppbarLayoutFling(AppBarLayout appBarLayout) {
        try {
            Field flingRunnableField = getFlingRunnableField();
            if (flingRunnableField != null) {
                flingRunnableField.setAccessible(true);
            }
            Object obj = flingRunnableField != null ? flingRunnableField.get(this) : null;
            Runnable runnable = obj instanceof Runnable ? (Runnable) obj : null;
            if (runnable != null) {
                appBarLayout.removeCallbacks(runnable);
                flingRunnableField.set(this, null);
            }
            Field scrollerField = getScrollerField();
            if (scrollerField != null) {
                scrollerField.setAccessible(true);
            }
            Object obj2 = scrollerField != null ? scrollerField.get(this) : null;
            OverScroller overScroller = obj2 instanceof OverScroller ? (OverScroller) obj2 : null;
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
    public boolean onInterceptTouchEvent(@NotNull CoordinatorLayout parent, @NotNull AppBarLayout child, @NotNull MotionEvent ev) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(child, "child");
        Intrinsics.checkNotNullParameter(ev, "ev");
        this.shouldBlockNestedScroll = this.isFlinging;
        if (ev.getActionMasked() == 0) {
            stopAppbarLayoutFling(child);
        }
        return super.onInterceptTouchEvent(parent, (View) child, ev);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(@NotNull CoordinatorLayout coordinatorLayout, @NotNull AppBarLayout child, @NotNull View target, int dx, int dy, @NotNull int[] consumed, int type) {
        Intrinsics.checkNotNullParameter(coordinatorLayout, "coordinatorLayout");
        Intrinsics.checkNotNullParameter(child, "child");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(consumed, "consumed");
        if (type == 1) {
            this.isFlinging = true;
        }
        if (this.shouldBlockNestedScroll) {
            return;
        }
        super.onNestedPreScroll(coordinatorLayout, child, target, dx, dy, consumed, type);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(@NotNull CoordinatorLayout coordinatorLayout, @NotNull AppBarLayout child, @NotNull View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type) {
        Intrinsics.checkNotNullParameter(coordinatorLayout, "coordinatorLayout");
        Intrinsics.checkNotNullParameter(child, "child");
        Intrinsics.checkNotNullParameter(target, "target");
        if (this.shouldBlockNestedScroll) {
            return;
        }
        super.onNestedScroll(coordinatorLayout, child, target, dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, type);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NotNull CoordinatorLayout parent, @NotNull AppBarLayout child, @NotNull View directTargetChild, @NotNull View target, int nestedScrollAxes, int type) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(child, "child");
        Intrinsics.checkNotNullParameter(directTargetChild, "directTargetChild");
        Intrinsics.checkNotNullParameter(target, "target");
        stopAppbarLayoutFling(child);
        return super.onStartNestedScroll(parent, child, directTargetChild, target, nestedScrollAxes, type);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onStopNestedScroll(@NotNull CoordinatorLayout coordinatorLayout, @NotNull AppBarLayout abl, @NotNull View target, int type) {
        Intrinsics.checkNotNullParameter(coordinatorLayout, "coordinatorLayout");
        Intrinsics.checkNotNullParameter(abl, "abl");
        Intrinsics.checkNotNullParameter(target, "target");
        super.onStopNestedScroll(coordinatorLayout, abl, target, type);
        this.isFlinging = false;
        this.shouldBlockNestedScroll = false;
    }
}
