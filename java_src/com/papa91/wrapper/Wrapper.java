package com.papa91.wrapper;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.join.mgps.Util.o0;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sdk.base.module.manager.SDKManager;

/* JADX INFO: loaded from: classes2.dex */
public class Wrapper {
    public static final int SDK_INT = Integer.parseInt(Build.VERSION.SDK);

    public static final void Activity_invalidateOptionsMenu(Activity activity) {
        if (SDK_INT >= 11) {
            Wrapper11.Activity_invalidateOptionsMenu(activity);
        }
    }

    public static final void Activity_onBackPressed(Activity activity) {
        Wrapper5.Activity_onBackPressed(activity);
    }

    public static final boolean KeyEvent_isLongPress(KeyEvent keyEvent) {
        if (SDK_INT >= 5) {
            return Wrapper5.KeyEvent_isLongPress(keyEvent);
        }
        return false;
    }

    public static final void MenuItem_setShowAsAction(MenuItem menuItem, boolean z10) {
        if (SDK_INT >= 11) {
            Wrapper11.MenuItem_setShowAsAction(menuItem, z10);
        }
    }

    public static final int MotionEvent_findPointerIndex(MotionEvent motionEvent, int i10) {
        if (SDK_INT >= 5) {
            return Wrapper5.MotionEvent_findPointerIndex(motionEvent, i10);
        }
        return i10 == 0 ? 0 : -1;
    }

    public static final int MotionEvent_getPointerCount(MotionEvent motionEvent) {
        if (SDK_INT >= 5) {
            return Wrapper5.MotionEvent_getPointerCount(motionEvent);
        }
        return 1;
    }

    public static final int MotionEvent_getPointerId(MotionEvent motionEvent, int i10) {
        if (SDK_INT >= 5) {
            return Wrapper5.MotionEvent_getPointerId(motionEvent, i10);
        }
        return 0;
    }

    public static final float MotionEvent_getSize(MotionEvent motionEvent, int i10) {
        return SDK_INT >= 5 ? Wrapper5.MotionEvent_getSize(motionEvent, i10) : motionEvent.getSize();
    }

    public static final float MotionEvent_getX(MotionEvent motionEvent, int i10) {
        return SDK_INT >= 5 ? Wrapper5.MotionEvent_getX(motionEvent, i10) : motionEvent.getX();
    }

    public static final float MotionEvent_getY(MotionEvent motionEvent, int i10) {
        return SDK_INT >= 5 ? Wrapper5.MotionEvent_getY(motionEvent, i10) : motionEvent.getY();
    }

    public static void disableHomeButton(Activity activity) {
        if (SDK_INT >= 14) {
            Wrapper14.disableHomeButton(activity);
        }
    }

    public static void displayActionBar(Activity activity) {
        if (SDK_INT >= 11) {
            Wrapper11.displayActionBar(activity);
        }
    }

    public static void displayHomeAsUp(Activity activity) {
        if (SDK_INT >= 11) {
            Wrapper11.displayHomeAsUp(activity);
        }
    }

    public static boolean isBluetoothDiscoverable() {
        if (SDK_INT >= 5) {
            return Wrapper5.isBluetoothDiscoverable();
        }
        return false;
    }

    public static boolean isBluetoothEnabled() {
        if (SDK_INT >= 5) {
            return Wrapper5.isBluetoothEnabled();
        }
        return false;
    }

    public static boolean isBluetoothPresent() {
        if (SDK_INT >= 5) {
            return Wrapper5.isBluetoothPresent();
        }
        return false;
    }

    public static final boolean isHwMenuBtnAvailable(Context context) {
        int i10 = SDK_INT;
        if (i10 < 5 || (i10 >= 11 && i10 <= 13)) {
            return false;
        }
        if (i10 >= 14) {
            return Wrapper14.ViewConfiguration_hasPermanentMenuKey(ViewConfiguration.get(context));
        }
        return true;
    }

    public static final String keyCodeToString(Context context, int i10) {
        if (i10 == 0) {
            return "-";
        }
        if (i10 == 27) {
            return "CAMERA";
        }
        if (i10 == 62) {
            return "SPACE";
        }
        if (i10 == 77) {
            return "@";
        }
        if (i10 == 80) {
            return "FOCUS";
        }
        if (i10 == 82) {
            return "MENU";
        }
        if (i10 == 84) {
            return "SEARCH";
        }
        if (i10 == 102) {
            return "Left trigger";
        }
        if (i10 == 104) {
            return "Right trigger";
        }
        if (i10 == 3) {
            return "HOME";
        }
        if (i10 == 4) {
            return "BACK";
        }
        if (i10 == 5) {
            return "CALL";
        }
        if (i10 == 66) {
            return "ENTER";
        }
        if (i10 == 67) {
            return "DEL";
        }
        if (i10 == 108) {
            return "Start";
        }
        if (i10 == 109) {
            return "Select";
        }
        switch (i10) {
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
                switch (i10) {
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
                        switch (i10) {
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
                                if (SDK_INT >= 12) {
                                    return Wrapper12.keyCodeToString(i10).replaceFirst("KEYCODE_", "").replace('_', ' ');
                                }
                                return "??? (№" + String.valueOf(i10) + ')';
                        }
                }
        }
    }

    public static boolean supportsMultitouch(Context context) {
        if (SDK_INT >= 5) {
            return Wrapper5.supportsMultitouch(context);
        }
        return false;
    }
}
