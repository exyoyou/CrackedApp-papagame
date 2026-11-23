package com.airsaid.pickerviewlibrary.widget.wheelview;

import android.view.GestureDetector;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes7.dex */
final class b extends GestureDetector.SimpleOnGestureListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final WheelView f6288b;

    b(WheelView wheelView) {
        this.f6288b = wheelView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        this.f6288b.l(f11);
        return true;
    }
}
