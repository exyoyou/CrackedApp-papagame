package org.ppsspp.ppsspp;

import android.annotation.TargetApi;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.util.Iterator;

/* JADX INFO: loaded from: classes10.dex */
@TargetApi(12)
public class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f95936c = "InputDeviceState";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f95937d = 10;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InputDevice f95938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f95939b;

    public e(InputDevice inputDevice) {
        this.f95938a = inputDevice;
        Iterator<InputDevice.MotionRange> it2 = inputDevice.getMotionRanges().iterator();
        int i10 = 0;
        int i11 = 0;
        while (it2.hasNext()) {
            if ((it2.next().getSource() & 16) != 0) {
                i11++;
            }
        }
        this.f95939b = new int[i11];
        for (InputDevice.MotionRange motionRange : inputDevice.getMotionRanges()) {
            if ((motionRange.getSource() & 16) != 0) {
                this.f95939b[i10] = motionRange.getAxis();
                i10++;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Registering input device with ");
        sb2.append(i11);
        sb2.append(" axes: ");
        sb2.append(inputDevice.getName());
        b(inputDevice);
        NativeApp.sendMessage("inputDeviceConnected", inputDevice.getName());
    }

    InputDevice a() {
        return this.f95938a;
    }

    @TargetApi(19)
    void b(InputDevice inputDevice) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Vendor ID:");
        sb2.append(inputDevice.getVendorId());
        sb2.append(" productId: ");
        sb2.append(inputDevice.getProductId());
    }

    public boolean c(MotionEvent motionEvent) {
        int i10 = 0;
        if ((motionEvent.getSource() & 16) == 0) {
            return false;
        }
        NativeApp.beginJoystickEvent();
        while (true) {
            int[] iArr = this.f95939b;
            if (i10 >= iArr.length) {
                NativeApp.endJoystickEvent();
                return true;
            }
            int i11 = iArr[i10];
            NativeApp.joystickAxis(10, i11, motionEvent.getAxisValue(i11));
            i10++;
        }
    }

    public boolean d(KeyEvent keyEvent) {
        return NativeApp.keyDown(10, keyEvent.getKeyCode(), keyEvent.getRepeatCount() > 0);
    }

    public boolean e(KeyEvent keyEvent) {
        return NativeApp.keyUp(10, keyEvent.getKeyCode());
    }
}
