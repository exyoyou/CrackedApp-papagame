package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.flipboard.bottomsheet.BottomSheetLayout;

/* JADX INFO: loaded from: classes3.dex */
public class CoordinatorLayout extends androidx.coordinatorlayout.widget.CoordinatorLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    BottomSheetLayout f64675b;

    public interface a {
        boolean a();
    }

    public CoordinatorLayout(@NonNull Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        return e() ? this.f64675b.dispatchTouchEvent(ev) : super.dispatchTouchEvent(ev);
    }

    boolean e() {
        BottomSheetLayout bottomSheetLayout = this.f64675b;
        return bottomSheetLayout != null && bottomSheetLayout.A();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return e() ? this.f64675b.onInterceptTouchEvent(ev) : super.onInterceptTouchEvent(ev);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        return e() ? this.f64675b.onTouchEvent(ev) : super.onTouchEvent(ev);
    }

    public void setSheetLayout(BottomSheetLayout sheetLayout) {
        this.f64675b = sheetLayout;
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
