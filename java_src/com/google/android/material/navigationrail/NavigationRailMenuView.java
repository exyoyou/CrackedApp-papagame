package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class NavigationRailMenuView extends NavigationBarMenuView {

    @Px
    private int K;
    private final FrameLayout.LayoutParams L;

    public NavigationRailMenuView(@NonNull Context context) {
        super(context);
        this.K = -1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.L = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
        setItemActiveIndicatorResizeable(true);
    }

    private int t(int i10, int i11, int i12) {
        int iMax = i11 / Math.max(1, i12);
        int size = this.K;
        if (size == -1) {
            size = View.MeasureSpec.getSize(i10);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(size, iMax), 0);
    }

    private int u(View view, int i10, int i11) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        view.measure(i10, i11);
        return view.getMeasuredHeight();
    }

    private int v(int i10, int i11, int i12, View view) {
        int iT = view == null ? t(i10, i11, i12) : View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        int childCount = getChildCount();
        int iU = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt != view) {
                iU += u(childAt, i10, iT);
            }
        }
        return iU;
    }

    private int w(int i10, int i11, int i12) {
        int iU;
        View childAt = getChildAt(getSelectedItemPosition());
        if (childAt != null) {
            iU = u(childAt, i10, t(i10, i11, i12));
            i11 -= iU;
            i12--;
        } else {
            iU = 0;
        }
        return iU + v(i10, i11, i12, childAt);
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    @NonNull
    protected NavigationBarItemView f(@NonNull Context context) {
        return new a(context);
    }

    @Px
    public int getItemMinimumHeight() {
        return this.K;
    }

    int getMenuGravity() {
        return this.L.gravity;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int i14 = i12 - i10;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + i15;
                childAt.layout(0, i15, i14, measuredHeight);
                i15 = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i11);
        int size2 = getMenu().getVisibleItems().size();
        setMeasuredDimension(View.MeasureSpec.getSize(i10), View.resolveSizeAndState((size2 <= 1 || !k(getLabelVisibilityMode(), size2)) ? v(i10, size, size2, null) : w(i10, size, size2), i11, 0));
    }

    boolean s() {
        return (this.L.gravity & 112) == 48;
    }

    public void setItemMinimumHeight(@Px int i10) {
        if (this.K != i10) {
            this.K = i10;
            requestLayout();
        }
    }

    void setMenuGravity(int i10) {
        FrameLayout.LayoutParams layoutParams = this.L;
        if (layoutParams.gravity != i10) {
            layoutParams.gravity = i10;
            setLayoutParams(layoutParams);
        }
    }
}
