package com.byazt.qi;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 527, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f19169c;

    public static void c(Context context) {
        if (f19169c || context == null) {
            return;
        }
        tt(context);
        ve(context);
        uj(context);
        n(context);
        f19169c = true;
    }

    private static void n(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        a.c(1009, new Object[]{Integer.valueOf(telephonyManager != null ? telephonyManager.getSimState() : -1)});
    }

    private static void tt(Context context) {
        boolean booleanExtra;
        double intExtra = -0.1d;
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver != null) {
                booleanExtra = intentRegisterReceiver.getBooleanExtra("present", false);
                try {
                    intExtra = ((double) intentRegisterReceiver.getIntExtra("temperature", -1)) / 10.0d;
                } catch (Throwable unused) {
                }
            } else {
                booleanExtra = true;
            }
        } catch (Throwable unused2) {
        }
        a.c(1006, new Object[]{Boolean.valueOf(booleanExtra), Double.valueOf(intExtra)});
    }

    private static void uj(Context context) {
        int i10;
        Configuration configuration = context.getResources().getConfiguration();
        a.c(1008, new Object[]{Boolean.valueOf(configuration == null || !((i10 = configuration.touchscreen) == 1 || i10 == 0))});
    }

    private static void ve(Context context) {
        int i10;
        int i11;
        CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
        if (cameraManager != null) {
            try {
                i10 = 0;
                i11 = 0;
                for (String str : cameraManager.getCameraIdList()) {
                    int iIntValue = ((Integer) cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.LENS_FACING)).intValue();
                    if (iIntValue == 0) {
                        i10++;
                    } else if (iIntValue == 1) {
                        i11++;
                    }
                }
            } catch (Throwable unused) {
                i10 = -1;
                i11 = -1;
            }
        } else {
            i10 = -2;
            i11 = -2;
        }
        a.c(1007, new Object[]{Integer.valueOf(Build.VERSION.SDK_INT), Integer.valueOf(i10), Integer.valueOf(i11)});
    }
}
