package com.join.kotlin.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\u000fH\u0002R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/behavior/RecyclerViewBehavior;", "Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "mRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "onInterceptTouchEvent", "", "parent", "Landroidx/coordinatorlayout/widget/CoordinatorLayout;", "child", "Landroid/view/View;", "ev", "Landroid/view/MotionEvent;", "onTouchedSelf", "view", "getNestedScrollingChild", "parentView", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RecyclerViewBehavior extends AppBarLayout.ScrollingViewBehavior {

    @Nullable
    private RecyclerView mRecyclerView;

    public RecyclerViewBehavior(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private final RecyclerView getNestedScrollingChild(View parentView) {
        RecyclerView nestedScrollingChild;
        if (parentView instanceof RecyclerView) {
            return (RecyclerView) parentView;
        }
        if (parentView instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parentView;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                ViewGroup viewGroup2 = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
                if (viewGroup2 != null && (nestedScrollingChild = getNestedScrollingChild(viewGroup2)) != null) {
                    return nestedScrollingChild;
                }
            }
        }
        return null;
    }

    private final boolean onTouchedSelf(View view, MotionEvent ev) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return ev.getRawY() > ((float) iArr[1]);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NotNull CoordinatorLayout parent, @NotNull View child, @NotNull MotionEvent ev) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(child, "child");
        Intrinsics.checkNotNullParameter(ev, "ev");
        if (ev.getAction() == 0 && !onTouchedSelf(child, ev)) {
            RecyclerView nestedScrollingChild = this.mRecyclerView;
            if (nestedScrollingChild == null) {
                nestedScrollingChild = getNestedScrollingChild(child);
            }
            if (nestedScrollingChild != null) {
                nestedScrollingChild.stopNestedScroll();
                nestedScrollingChild.stopScroll();
                this.mRecyclerView = nestedScrollingChild;
            }
        }
        return super.onInterceptTouchEvent(parent, child, ev);
    }
}
