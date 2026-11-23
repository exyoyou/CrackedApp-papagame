package com.papa91.wrapper;

import android.annotation.TargetApi;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(5)
class Wrapper5 {
    Wrapper5() {
    }

    public static void Activity_onBackPressed(Activity activity) {
        activity.onBackPressed();
    }

    public static boolean KeyEvent_isLongPress(KeyEvent keyEvent) {
        return keyEvent.isLongPress();
    }

    public static final int MotionEvent_findPointerIndex(MotionEvent motionEvent, int i10) {
        return motionEvent.findPointerIndex(i10);
    }

    public static final int MotionEvent_getPointerCount(MotionEvent motionEvent) {
        return motionEvent.getPointerCount();
    }

    public static final int MotionEvent_getPointerId(MotionEvent motionEvent, int i10) {
        return motionEvent.getPointerId(i10);
    }

    public static final float MotionEvent_getSize(MotionEvent motionEvent, int i10) {
        return motionEvent.getSize(i10);
    }

    public static final float MotionEvent_getX(MotionEvent motionEvent, int i10) {
        return motionEvent.getX(i10);
    }

    public static final float MotionEvent_getY(MotionEvent motionEvent, int i10) {
        return motionEvent.getY(i10);
    }

    public static final boolean isBluetoothDiscoverable() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        return defaultAdapter != null && defaultAdapter.getScanMode() == 23;
    }

    public static final boolean isBluetoothEnabled() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null) {
            return defaultAdapter.isEnabled();
        }
        return false;
    }

    public static final boolean isBluetoothPresent() {
        return BluetoothAdapter.getDefaultAdapter() != null;
    }

    public static final boolean supportsMultitouch(Context context) {
        if (Wrapper.SDK_INT < 7) {
            return true;
        }
        return context.getPackageManager().hasSystemFeature("android.hardware.touchscreen.multitouch");
    }
}
