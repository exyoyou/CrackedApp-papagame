package com.haima.hmcp.widgets;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.fastjson.parser.Feature;
import com.haima.hmcp.beans.BaseWsMessage4JsonParse;
import com.haima.hmcp.beans.VibratorMsg;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.VibratorUtil;

/* JADX INFO: loaded from: classes5.dex */
public class HmVibratorManager {
    private static final String TAG = "HmVibratorManager";
    private boolean disabled = false;
    private Context mContext;

    private HmVibratorManager(Context context) {
        this.mContext = context;
    }

    public static HmVibratorManager newInstance(Context context) {
        return new HmVibratorManager(context);
    }

    public void disabled(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("vibrator feature is ");
        sb2.append(z10 ? "disabled" : "enabled");
        LogUtils.e(TAG, sb2.toString());
        this.disabled = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void processVibratorOff(String str) {
        BaseWsMessage4JsonParse baseWsMessage4JsonParse;
        LogUtils.d(TAG, "start processVibratorOff : " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            baseWsMessage4JsonParse = (BaseWsMessage4JsonParse) com.alibaba.fastjson.a.parseObject(str, new com.alibaba.fastjson.h<BaseWsMessage4JsonParse<VibratorMsg>>() { // from class: com.haima.hmcp.widgets.HmVibratorManager.2
            }, new Feature[0]);
        } catch (Exception e10) {
            LogUtils.e(TAG, "processVibratorOff : parse json exception : " + e10);
            baseWsMessage4JsonParse = null;
        }
        if (baseWsMessage4JsonParse == null) {
            LogUtils.e(TAG, "processVibratorOff : content is empty!");
            return;
        }
        VibratorMsg vibratorMsg = (VibratorMsg) baseWsMessage4JsonParse.data;
        if (vibratorMsg == null) {
            LogUtils.e(TAG, "processVibratorOff : data is empty!");
            return;
        }
        int i10 = vibratorMsg.deviceId;
        boolean z10 = vibratorMsg.isDualVibrate;
        boolean zIsSupportDualVibrator = VibratorUtil.isSupportDualVibrator(this.mContext);
        LogUtils.d(TAG, "processVibratorOff : isDualVibrate " + z10 + " isSystemSupportDualVibrator " + zIsSupportDualVibrator);
        if (!z10) {
            VibratorUtil.stopVibrate(this.mContext);
        } else if (zIsSupportDualVibrator) {
            VibratorUtil.stopVibrate(this.mContext, i10);
        } else {
            if (i10 != 0) {
                return;
            }
            VibratorUtil.stopVibrate(this.mContext);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void processVibratorOn(String str) {
        BaseWsMessage4JsonParse baseWsMessage4JsonParse;
        LogUtils.d(TAG, "start processVibratorOn : " + str);
        if (this.disabled) {
            LogUtils.d(TAG, "processVibratorOn : feature is disabled");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            baseWsMessage4JsonParse = (BaseWsMessage4JsonParse) com.alibaba.fastjson.a.parseObject(str, new com.alibaba.fastjson.h<BaseWsMessage4JsonParse<VibratorMsg>>() { // from class: com.haima.hmcp.widgets.HmVibratorManager.1
            }, new Feature[0]);
        } catch (Exception e10) {
            LogUtils.e(TAG, "processVibratorOn : parse json exception : " + e10);
            baseWsMessage4JsonParse = null;
        }
        if (baseWsMessage4JsonParse == null) {
            LogUtils.e(TAG, "processVibratorOn : content is empty!");
            return;
        }
        VibratorMsg vibratorMsg = (VibratorMsg) baseWsMessage4JsonParse.data;
        if (vibratorMsg == null) {
            LogUtils.e(TAG, "processVibratorOn : data is empty!");
            return;
        }
        int i10 = vibratorMsg.amplitude;
        if (i10 < 0 || i10 > 255) {
            LogUtils.e(TAG, "processVibratorOn : amplitude is invalid");
            return;
        }
        int i11 = vibratorMsg.duration;
        if (i11 <= 0) {
            LogUtils.e(TAG, "processVibratorOn : duration is invalid");
            return;
        }
        int i12 = vibratorMsg.deviceId;
        boolean z10 = vibratorMsg.isDualVibrate;
        boolean zIsSupportDualVibrator = VibratorUtil.isSupportDualVibrator(this.mContext);
        LogUtils.d(TAG, "processVibratorOn : isDualVibrate " + z10 + " isSystemSupportDualVibrator " + zIsSupportDualVibrator);
        if (!z10) {
            VibratorUtil.startVibrate(this.mContext, i10, i11);
            return;
        }
        if (zIsSupportDualVibrator) {
            VibratorUtil.startVibrate(this.mContext, i10, i11, i12);
        } else if (i12 != 0) {
            LogUtils.d(TAG, "processVibratorOn : local device is dual-vibrator-unsupported,so this msg is discarded");
        } else {
            VibratorUtil.startVibrate(this.mContext, i10, i11);
        }
    }

    public void stopAllVibrators() {
        LogUtils.e(TAG, "stopAllVibrators");
        VibratorUtil.stopAllVibrators(this.mContext);
    }

    private HmVibratorManager() {
    }
}
