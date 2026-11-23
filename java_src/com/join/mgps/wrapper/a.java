package com.join.mgps.wrapper;

import android.annotation.TargetApi;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.os.Build;
import android.os.Environment;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.join.mgps.Util.o0;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sdk.base.module.manager.SDKManager;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f73399a = Build.VERSION.SDK_INT;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f73400b = Integer.parseInt(Build.VERSION.SDK);

    /* JADX INFO: renamed from: com.join.mgps.wrapper.a$a, reason: collision with other inner class name */
    public static class C0756a {
        public static boolean a() {
            return a.f73399a >= 11 && b();
        }

        public static boolean b() {
            return BluetoothAdapter.getDefaultAdapter() != null;
        }
    }

    public static class b {
        public static String a(UsbDevice usbDevice) {
            return d(usbDevice) + c(usbDevice);
        }

        public static String b(UsbDevice usbDevice) {
            return "OTG手柄";
        }

        @TargetApi(12)
        public static String c(UsbDevice usbDevice) {
            if (a.f73399a < 12) {
                return "0x0000";
            }
            return "0x" + Integer.toHexString(c.a(usbDevice));
        }

        @TargetApi(12)
        public static String d(UsbDevice usbDevice) {
            if (a.f73399a < 12) {
                return "0x0000";
            }
            return "0x" + Integer.toHexString(c.b(usbDevice));
        }

        public static boolean e() {
            return a.f73399a >= 12;
        }
    }

    public static final void a(Activity activity) {
        if (f73400b >= 11) {
            com.join.mgps.wrapper.b.a(activity);
        }
    }

    public static final void b(Activity a10) {
        e.a(a10);
    }

    public static final boolean c(KeyEvent event) {
        if (f73400b >= 5) {
            return e.b(event);
        }
        return false;
    }

    public static final void d(MenuItem item, boolean show) {
        if (f73400b >= 11) {
            com.join.mgps.wrapper.b.b(item, show);
        }
    }

    public static final int e(MotionEvent event, int pointerId) {
        if (f73400b >= 5) {
            return e.c(event, pointerId);
        }
        return pointerId == 0 ? 0 : -1;
    }

    public static final int f(MotionEvent event) {
        if (f73400b >= 5) {
            return e.d(event);
        }
        return 1;
    }

    public static final int g(MotionEvent event, int pointerIndex) {
        if (f73400b >= 5) {
            return e.e(event, pointerIndex);
        }
        return 0;
    }

    public static final float h(MotionEvent event, int pointerIndex) {
        return f73400b >= 5 ? e.f(event, pointerIndex) : event.getSize();
    }

    public static final float i(MotionEvent event, int pointerIndex) {
        return f73400b >= 5 ? e.g(event, pointerIndex) : event.getX();
    }

    public static final float j(MotionEvent event, int pointerIndex) {
        return f73400b >= 5 ? e.h(event, pointerIndex) : event.getY();
    }

    public static void k(Activity a10) {
        if (f73400b >= 14) {
            d.b(a10);
        }
    }

    public static void l(Activity a10) {
        if (f73400b >= 11) {
            com.join.mgps.wrapper.b.d(a10);
        }
    }

    public static void m(Activity a10) {
        if (f73400b >= 11) {
            com.join.mgps.wrapper.b.e(a10);
        }
    }

    public static final File n() {
        return new File(f73400b >= 8 ? f.a() : new File(Environment.getExternalStorageDirectory(), "pictures"), "screenshots");
    }

    public static boolean o() {
        if (f73400b >= 5) {
            return e.i();
        }
        return false;
    }

    public static boolean p() {
        if (f73400b >= 5) {
            return e.j();
        }
        return false;
    }

    public static boolean q() {
        if (f73400b >= 5) {
            return e.k();
        }
        return false;
    }

    public static final boolean r(Context ctx) {
        int i10 = f73400b;
        if (i10 < 5 || (i10 >= 11 && i10 <= 13)) {
            return false;
        }
        if (i10 >= 14) {
            return d.a(ViewConfiguration.get(ctx));
        }
        return true;
    }

    public static final String s(Context ctx, int keyCode) {
        if (keyCode == 0) {
            return "-";
        }
        if (keyCode == 27) {
            return "CAMERA";
        }
        if (keyCode == 62) {
            return "SPACE";
        }
        if (keyCode == 77) {
            return "@";
        }
        if (keyCode == 80) {
            return "FOCUS";
        }
        if (keyCode == 82) {
            return "MENU";
        }
        if (keyCode == 84) {
            return "SEARCH";
        }
        if (keyCode == 102) {
            return "Left trigger";
        }
        if (keyCode == 104) {
            return "Right trigger";
        }
        if (keyCode == 3) {
            return "HOME";
        }
        if (keyCode == 4) {
            return "BACK";
        }
        if (keyCode == 5) {
            return "CALL";
        }
        if (keyCode == 66) {
            return "ENTER";
        }
        if (keyCode == 67) {
            return "DEL";
        }
        if (keyCode == 108) {
            return "Start";
        }
        if (keyCode == 109) {
            return "Select";
        }
        switch (keyCode) {
            case 7:
                return "0";
            case 8:
                return "1";
            case 9:
                return "2";
            case 10:
                return "3";
            case 11:
                return "4";
            case 12:
                return "5";
            case 13:
                return "6";
            case 14:
                return "7";
            case 15:
                return GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD;
            case 16:
                return "9";
            default:
                switch (keyCode) {
                    case 19:
                        return "DPAD Up";
                    case 20:
                        return "DPAD Down";
                    case 21:
                        return "DPAD Left";
                    case 22:
                        return "DPAD Right";
                    case 23:
                        return "DPAD Center";
                    case 24:
                        return "Volume UP";
                    case 25:
                        return "Volume DOWN";
                    default:
                        switch (keyCode) {
                            case 29:
                                return "A";
                            case 30:
                                return SDKManager.ALGO_B_AES_SHA256_RSA;
                            case 31:
                                return SDKManager.ALGO_C_RFU;
                            case 32:
                                return SDKManager.ALGO_D_RFU;
                            case 33:
                                return SDKManager.ALGO_E_SM4_SM3_SM2;
                            case 34:
                                return "F";
                            case 35:
                                return "G";
                            case 36:
                                return "H";
                            case 37:
                                return "I";
                            case 38:
                                return "J";
                            case 39:
                                return "K";
                            case 40:
                                return "L";
                            case 41:
                                return "M";
                            case 42:
                                return "N";
                            case 43:
                                return "O";
                            case 44:
                                return "P";
                            case 45:
                                return "Q";
                            case 46:
                                return "R";
                            case 47:
                                return "S";
                            case 48:
                                return "T";
                            case 49:
                                return "U";
                            case 50:
                                return "V";
                            case 51:
                                return "W";
                            case 52:
                                return "X";
                            case 53:
                                return "Y";
                            case 54:
                                return "Z";
                            case 55:
                                return ",";
                            case 56:
                                return o0.f49827a;
                            case 57:
                                return "ALT (left)";
                            case 58:
                                return "ALT (right)";
                            case 59:
                                return "SHIFT (left)";
                            case 60:
                                return "SHIFT (right)";
                            default:
                                if (f73400b >= 12) {
                                    return c.c(keyCode).replaceFirst("KEYCODE_", "").replace('_', ' ');
                                }
                                return "??? (№" + String.valueOf(keyCode) + ')';
                        }
                }
        }
    }

    public static boolean t(Context context) {
        if (f73400b >= 5) {
            return e.l(context);
        }
        return false;
    }
}
