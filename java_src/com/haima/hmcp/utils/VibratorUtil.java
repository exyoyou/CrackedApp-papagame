package com.haima.hmcp.utils;

import android.content.Context;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;

/* JADX INFO: loaded from: classes5.dex */
public class VibratorUtil {
    private static final String TAG = "VibratorUtil";

    private VibratorUtil() {
    }

    private static Vibrator getVibrator(Context context, int i10) {
        Vibrator vibrator = null;
        if (context == null) {
            LogUtils.e(TAG, "getVibrator context is null");
            return null;
        }
        if (Build.VERSION.SDK_INT < 31 || i10 <= 0) {
            LogUtils.d(TAG, "getVibrator : single-vibrator is ready");
            return (Vibrator) context.getSystemService("vibrator");
        }
        try {
            Class<?> cls = Class.forName("android.os.VibratorManager");
            Object objInvoke = context.getClass().getMethod("getSystemService", Class.class).invoke(context, cls);
            int[] iArr = (int[]) cls.getMethod("getVibratorIds", new Class[0]).invoke(objInvoke, new Object[0]);
            for (int i11 = 0; i11 < iArr.length; i11++) {
                if (i10 == i11) {
                    Vibrator vibrator2 = (Vibrator) cls.getMethod("getVibrator", Integer.TYPE).invoke(objInvoke, Integer.valueOf(i11));
                    try {
                        LogUtils.d(TAG, "getVibrator : dual-vibrator is ready,and id is " + i11);
                        return vibrator2;
                    } catch (Exception e10) {
                        e = e10;
                        vibrator = vibrator2;
                    }
                }
                LogUtils.e(TAG, "Failed to get dual vibrator: " + e.getMessage());
                return vibrator;
            }
            return null;
        } catch (Exception e11) {
            e = e11;
        }
    }

    public static boolean hasVibratorPermission(Context context) {
        if (context == null) {
            LogUtils.e(TAG, "hasVibratorPermission not:context is null");
            return false;
        }
        if (context.checkCallingOrSelfPermission("android.permission.VIBRATE") == 0) {
            return true;
        }
        LogUtils.e(TAG, "hasVibratorPermission not:hasPermission is false");
        return false;
    }

    public static boolean isSupportDualVibrator(Context context) {
        if (!hasVibratorPermission(context)) {
            return false;
        }
        if (context == null) {
            LogUtils.e(TAG, "isSupportDualVibrator context is null");
            return false;
        }
        if (Build.VERSION.SDK_INT < 31) {
            return false;
        }
        try {
            Class<?> cls = Class.forName("android.os.VibratorManager");
            int[] iArr = (int[]) cls.getMethod("getVibratorIds", new Class[0]).invoke(context.getClass().getMethod("getSystemService", Class.class).invoke(context, cls), new Object[0]);
            int length = iArr != null ? iArr.length : 0;
            LogUtils.e(TAG, "isSupportDualVibrator getVibratorIds length is " + length);
            return length > 1;
        } catch (Exception e10) {
            LogUtils.e(TAG, "Failed to check dual vibrator support: " + e10.getMessage());
            return false;
        }
    }

    public static boolean isSupportVibratorAbility(Context context) {
        if (!hasVibratorPermission(context)) {
            return false;
        }
        if (context == null) {
            LogUtils.e(TAG, "isSupportVibratorAbility context is null");
            return false;
        }
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        if (vibrator != null) {
            return vibrator.hasVibrator();
        }
        LogUtils.e(TAG, "isSupportVibratorAbility vibrator is null");
        return false;
    }

    public static void startVibrate(Context context, int i10, int i11) {
        startVibrate(context, i10, i11, -1);
    }

    public static void stopAllVibrators(Context context) {
        LogUtils.d(TAG, "stopAllVibrators");
        if (hasVibratorPermission(context)) {
            if (context == null) {
                LogUtils.e(TAG, "stopAllVibrators context is null");
                return;
            }
            if (Build.VERSION.SDK_INT < 31) {
                Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
                if (vibrator != null) {
                    LogUtils.d(TAG, "stopAllVibrators : single-vibrator");
                    vibrator.cancel();
                    return;
                }
                return;
            }
            try {
                Class<?> cls = Class.forName("android.os.VibratorManager");
                cls.getMethod("cancel", new Class[0]).invoke(context.getClass().getMethod("getSystemService", Class.class).invoke(context, cls), new Object[0]);
                LogUtils.d(TAG, "stopAllVibrators : dual-vibrator");
            } catch (Exception e10) {
                LogUtils.e(TAG, "Failed to stop dual vibrators: " + e10.getMessage());
            }
        }
    }

    public static void stopVibrate(Context context) {
        stopVibrate(context, -1);
    }

    public static void startVibrate(Context context, int i10, int i11, int i12) {
        Vibrator vibrator;
        LogUtils.d(TAG, "startVibrate amplitude:" + i10 + " duration:" + i11 + " vibratorId:" + i12);
        if (hasVibratorPermission(context) && (vibrator = getVibrator(context, i12)) != null) {
            if (Build.VERSION.SDK_INT < 26) {
                LogUtils.d(TAG, "startVibrate without amplitude");
                vibrator.vibrate(i11);
            } else {
                VibrationEffect vibrationEffectCreateOneShot = VibrationEffect.createOneShot(i11, i10);
                LogUtils.d(TAG, "startVibrate with amplitude");
                vibrator.vibrate(vibrationEffectCreateOneShot);
            }
        }
    }

    public static void stopVibrate(Context context, int i10) {
        Vibrator vibrator;
        LogUtils.d(TAG, "stopVibrate start, vibratorId:" + i10);
        if (hasVibratorPermission(context) && (vibrator = getVibrator(context, i10)) != null) {
            LogUtils.d(TAG, "stopVibrate end,vibratorId" + i10);
            vibrator.cancel();
        }
    }
}
