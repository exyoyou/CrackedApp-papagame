package com.haima.hmcp.model;

import android.content.Context;
import android.text.TextUtils;
import com.google.protobuf.InvalidProtocolBufferException;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.proto.GSSDK;
import com.haima.hmcp.utils.HmInputDeviceManager;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.VibratorUtil;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class VibratorModel {
    private static final String TAG = "VibratorModel";
    private static final String VIBRATOR_TAG = VibratorModel.class.getSimpleName() + "_VIBRATOR";
    private final int MAX_AMPLITUDE = 255;
    private final int MIN_AMPLITUDE = 1;
    private final int DEFAULT_VIBRATOR_AMPLITUDE = 128;
    private final int MAX_X86_AMPLITUDE = 65535;
    private final float VIBRATOR_CONVERSION = 0.0038910506f;
    private final boolean PHONE_VIBRATOR_DEFAULT = false;
    private boolean phoneVibrator = false;

    private boolean isPhoneVibrator() {
        boolean zHasJoyStick = HmInputDeviceManager.hasJoyStick();
        LogUtils.i(TAG, "has joy stick: " + zHasJoyStick + ", phone vibrator: " + this.phoneVibrator);
        return !zHasJoyStick && this.phoneVibrator;
    }

    private int transAmplitude(int i10) {
        return Math.max(1, Math.min(255, (int) (i10 * 0.0038910506f)));
    }

    public void handleX86Vibrator(Context context, byte[] bArr, int i10, String str) throws InvalidProtocolBufferException {
        HmInputDeviceManager.Vendor vendor;
        if (!HmInputDeviceManager.isSystemAPISupportVibrator()) {
            LogUtils.d(VIBRATOR_TAG, "handleVibrator failed:SystemAPISupportVibrator is unsupported");
            return;
        }
        String str2 = VIBRATOR_TAG;
        LogUtils.d(str2, "handleVibrator " + Arrays.toString(bArr));
        GSSDK.XInputMSG from = GSSDK.XInputMSG.parseFrom(bArr);
        if (from == null) {
            LogUtils.e(str2, "XInputMSG is empty.");
            CountlyUtil.recordErrorEvent("XInputMSG is empty.");
            return;
        }
        LogUtils.d(str2, "XInputMSG is " + from);
        if (from.getMsgType() == 1) {
            int userIndex = from.getUserIndex();
            int vendor2 = from.getVendor();
            if (vendor2 == 1) {
                vendor = HmInputDeviceManager.Vendor.PS;
            } else {
                vendor = vendor2 == 0 ? HmInputDeviceManager.Vendor.XBOX : null;
            }
            HmInputDeviceManager.Vendor vendor3 = vendor;
            int leftMotorSpeed = from.getLeftMotorSpeed();
            int rightMotorSpeed = from.getRightMotorSpeed();
            if (leftMotorSpeed == 0 && rightMotorSpeed == 0) {
                if (context == null) {
                    LogUtils.i(str2, "x86, stop vibrator fail, Context is null");
                    return;
                } else if (isPhoneVibrator()) {
                    VibratorUtil.stopVibrate(context);
                    LogUtils.i(str2, "x86, stop phone vibrator");
                    return;
                } else {
                    HmInputDeviceManager.stopVibrator(userIndex, vendor3, context, i10, str);
                    LogUtils.i(str2, "x86, stop joy stick vibrator");
                    return;
                }
            }
            int duration = (int) (from.getDuration() * 1000.0f);
            int iTransAmplitude = (leftMotorSpeed != 0 && rightMotorSpeed == 0) ? transAmplitude(leftMotorSpeed) : transAmplitude(rightMotorSpeed);
            int i11 = iTransAmplitude;
            if (context == null) {
                LogUtils.i(TAG, "x86, vibrator fail, Context is null");
            } else if (isPhoneVibrator()) {
                VibratorUtil.startVibrate(context, i11, duration);
                LogUtils.i(TAG, "x86, phone vibrator");
            } else {
                HmInputDeviceManager.startVibrator(userIndex, vendor3, i11, duration, context, i10, str);
                LogUtils.i(TAG, "x86, joy stick vibrator");
            }
        }
    }

    public void setConfig(HashMap<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        String str = map.get(Constants.X86_PHONE_VIBRATOR_ENABLE);
        LogUtils.i(TAG, "x86_phone_vibrator_enable = " + str);
        if (TextUtils.isEmpty(str)) {
            this.phoneVibrator = false;
        } else {
            this.phoneVibrator = TextUtils.equals("1", str);
        }
    }
}
