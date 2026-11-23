package com.join.mgps.wrapper;

import android.annotation.TargetApi;
import android.hardware.usb.UsbDevice;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes3.dex */
@TargetApi(12)
public class c {
    public static int a(UsbDevice usbDevice) {
        return usbDevice.getProductId();
    }

    public static int b(UsbDevice usbDevice) {
        return usbDevice.getVendorId();
    }

    static String c(int keyCode) {
        return KeyEvent.keyCodeToString(keyCode);
    }
}
