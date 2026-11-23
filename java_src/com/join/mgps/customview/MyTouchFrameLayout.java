package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes3.dex */
public class MyTouchFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private GestureDetector f65361b;

    public MyTouchFrameLayout(@NonNull Context context) {
        super(context);
    }

    public GestureDetector getDetector() {
        return this.f65361b;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        GestureDetector gestureDetector = this.f65361b;
        return gestureDetector != null ? gestureDetector.onTouchEvent(ev) : super.onInterceptTouchEvent(ev);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        GestureDetector gestureDetector = this.f65361b;
        return gestureDetector != null ? gestureDetector.onTouchEvent(event) : super.onTouchEvent(event);
    }

    public void setDetector(GestureDetector detector) {
        this.f65361b = detector;
    }

    public MyTouchFrameLayout(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public MyTouchFrameLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @RequiresApi(api = 21)
    public MyTouchFrameLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
    }
}
