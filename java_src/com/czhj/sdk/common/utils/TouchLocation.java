package com.czhj.sdk.common.utils;

import android.view.MotionEvent;
import android.view.View;
import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
public class TouchLocation implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f25700a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f25701b;

    public TouchLocation(int i10, int i11) {
        this.f25700a = i10;
        this.f25701b = i11;
    }

    public static TouchLocation getTouchLocation(View view, MotionEvent motionEvent) {
        if (view == null || motionEvent == null) {
            return null;
        }
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new TouchLocation(rawX - iArr[0], rawY - iArr[1]);
    }

    public int getX() {
        return this.f25700a;
    }

    public int getY() {
        return this.f25701b;
    }
}
