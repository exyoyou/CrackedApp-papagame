package com.haima.hmcp.utils;

import android.text.TextUtils;
import android.view.InputDevice;
import android.view.MotionEvent;
import com.haima.hmcp.beans.FPoint;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class MotionEventUtil {
    private static final String TAG = "MotionEventUtil";

    public static float getCenteredAxis(MotionEvent motionEvent, InputDevice inputDevice, int i10, int i11) {
        InputDevice.MotionRange motionRange = inputDevice.getMotionRange(i10, motionEvent.getSource());
        if (motionRange == null) {
            return motionEvent.getAxisValue(i10);
        }
        float flat = motionRange.getFlat();
        float axisValue = i11 < 0 ? motionEvent.getAxisValue(i10) : motionEvent.getHistoricalAxisValue(i10, i11);
        if (Math.abs(axisValue) > flat) {
            return axisValue;
        }
        return 0.0f;
    }

    public static String getGamePadContent(String str) {
        if (str == null) {
            return "gamePad:";
        }
        String str2 = String.format("gamePad%s:", str);
        LogUtils.d(TAG, "getGamePad = " + str2);
        return str2;
    }

    public static String getGamePadHatXEventContent(float f10) {
        return String.format(Locale.ENGLISH, "gamePad:ABS_HAT0X:%.4f", Float.valueOf(f10));
    }

    public static String getGamePadHatYEventContent(float f10) {
        return String.format(Locale.ENGLISH, "gamePad:ABS_HAT0Y:%.4f", Float.valueOf(f10));
    }

    public static String getSendKeyboardEventContent(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str2 = str + ":" + i10;
        LogUtils.d(TAG, "getSendKeyboardEvent = " + str2);
        return str2;
    }

    public static String getSendMotionEventContent(int i10, FPoint fPoint) {
        if (fPoint == null) {
            return "";
        }
        if (fPoint.f33815x > 1.0f) {
            fPoint.f33815x = 1.0f;
        }
        if (fPoint.f33815x < 0.0f) {
            fPoint.f33815x = 0.0f;
        }
        if (fPoint.f33816y > 1.0f) {
            fPoint.f33816y = 1.0f;
        }
        if (fPoint.f33816y < 0.0f) {
            fPoint.f33816y = 0.0f;
        }
        String str = String.format(Locale.US, "mouse:%d:%.4f,%.4f", Integer.valueOf(i10), Float.valueOf(fPoint.f33815x), Float.valueOf(fPoint.f33816y));
        LogUtils.d(TAG, "getSendMotionEventContent = " + str);
        return str;
    }

    public static String getGamePadHatXEventContent(String str, float f10) {
        return String.format(Locale.ENGLISH, "gamePad%s:ABS_HAT0X:%.4f", str, Float.valueOf(f10));
    }

    public static String getGamePadHatYEventContent(String str, float f10) {
        return String.format(Locale.ENGLISH, "gamePad%s:ABS_HAT0Y:%.4f", str, Float.valueOf(f10));
    }

    public static String getSendKeyboardEventContent(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        }
        String str3 = "gamePad:" + str2 + ":" + str;
        LogUtils.d(TAG, "getSendKeyboardEvent = " + str3);
        return str3;
    }

    public static String getSendKeyboardEventContent(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        }
        String str4 = getGamePadContent(str3) + str2 + ":" + str;
        LogUtils.d(TAG, "getSendKeyboardEvent = " + str4);
        return str4;
    }
}
