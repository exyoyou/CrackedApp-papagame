package com.join.mgps.wrapper;

import android.annotation.TargetApi;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes3.dex */
@TargetApi(5)
class e {
    e() {
    }

    public static void a(Activity a10) {
        a10.onBackPressed();
    }

    public static boolean b(KeyEvent event) {
        return event.isLongPress();
    }

    public static final int c(MotionEvent event, int pointerId) {
        return event.findPointerIndex(pointerId);
    }

    public static final int d(MotionEvent event) {
        return event.getPointerCount();
    }

    public static final int e(MotionEvent event, int pointerIndex) {
        return event.getPointerId(pointerIndex);
    }

    public static final float f(MotionEvent event, int pointerIndex) {
        return event.getSize(pointerIndex);
    }

    public static final float g(MotionEvent event, int pointerIndex) {
        return event.getX(pointerIndex);
    }

    public static final float h(MotionEvent event, int pointerIndex) {
        return event.getY(pointerIndex);
    }

    public static final boolean i() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        return defaultAdapter != null && defaultAdapter.getScanMode() == 23;
    }

    public static final boolean j() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        return defaultAdapter != null && defaultAdapter.isEnabled();
    }

    public static final boolean k() {
        return BluetoothAdapter.getDefaultAdapter() != null;
    }

    public static final boolean l(Context context) {
        if (a.f73400b < 7) {
            return true;
        }
        return context.getPackageManager().hasSystemFeature("android.hardware.touchscreen.multitouch");
    }
}
