package com.haima.hmcp.model;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.haima.hmcp.Constants;
import com.haima.hmcp.business.DpadMouseLongStepActiveTimer;
import com.haima.hmcp.utils.LogUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class DpadMouseModel {
    public static final long DPAD_MOUSE_LONG_STEP_ACTIVE_TIME_MS_DEFAULT = 1000;
    public static final float DPAD_MOUSE_STEP_DEFAULT = 0.21f;
    private static final String TAG = "DpadMouseModel";
    private Float appDpadMouseLongStep;
    private Float appDpadMouseStep;
    private Float configDpadMouseLongStep;
    private Float configDpadMouseStep;
    private DpadMouseLongStepActiveTimer dpadMouseLongStepActiveTimer;
    private long dpadMouseLongStepActiveTime = 1000;
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    private long getDpadMouseLongStepActiveTime() {
        return this.dpadMouseLongStepActiveTime;
    }

    private Float parseDpadMouseLongStep(HashMap<String, String> map) {
        Float f10 = null;
        if (map == null || map.isEmpty()) {
            LogUtils.i(TAG, "parseDpadMouseLongStep, tips is null or empty");
            return null;
        }
        String str = map.get(Constants.X86_DPAD_MOUSE_LONG_PRESS_STEP);
        if (TextUtils.isEmpty(str)) {
            LogUtils.i(TAG, "parseDpadMouseLongStep, x86_dpad_mouse_long_press_step is null");
            return null;
        }
        try {
            Float fValueOf = Float.valueOf(Float.parseFloat(str));
            if (fValueOf.floatValue() < 0.21f || fValueOf.floatValue() > 1.0f) {
                LogUtils.i(TAG, "parseDpadMouseLongStep, step value " + fValueOf + " is invalid (step < 0.21F || step > 1.0F), set to null");
            } else {
                f10 = fValueOf;
            }
        } catch (NumberFormatException e10) {
            LogUtils.i(TAG, "parseDpadMouseLongStep, parseFloat failed, value: " + str + ", error: " + e10.getMessage());
        }
        LogUtils.i(TAG, "parseDpadMouseLongStep, return step value: " + f10);
        return f10;
    }

    private long parseDpadMouseLongStepActiveTime(HashMap<String, String> map) {
        long j10 = 1000;
        if (map == null || map.isEmpty()) {
            LogUtils.i(TAG, "parseDpadMouseLongStepActiveTime, tips is null or empty, return default: 1000");
            return 1000L;
        }
        String str = map.get(Constants.X86_DPAD_MOUSE_LONG_PRESS_ACTIVE_TIME_MS);
        if (TextUtils.isEmpty(str)) {
            LogUtils.i(TAG, "parseDpadMouseLongStepActiveTime, x86_dpad_mouse_long_press_active_time_ms is null, return default: 1000");
            return 1000L;
        }
        try {
            long j11 = Long.parseLong(str);
            if (j11 < 100) {
                LogUtils.i(TAG, "parseDpadMouseLongStepActiveTime, value " + j11 + " is invalid (< 100), return default: 1000");
            } else {
                j10 = j11;
            }
        } catch (NumberFormatException e10) {
            LogUtils.i(TAG, "parseDpadMouseLongStepActiveTime, parseLong failed, value: " + str + ", error: " + e10.getMessage() + ", return default: 1000");
        }
        LogUtils.i(TAG, "parseDpadMouseLongStepActiveTime, return activeTime: " + j10);
        return j10;
    }

    private Float parseDpadMouseShortStep(HashMap<String, String> map) {
        Float f10 = null;
        if (map == null || map.isEmpty()) {
            LogUtils.i(TAG, "parseDpadMouseShortStep, tips is null or empty");
            return null;
        }
        String str = map.get(Constants.X86_DPAD_MOUSE_SHORT_PRESS_STEP);
        if (TextUtils.isEmpty(str)) {
            LogUtils.i(TAG, "parseDpadMouseShortStep, x86_dpad_mouse_short_press_step is null");
            return null;
        }
        try {
            Float fValueOf = Float.valueOf(Float.parseFloat(str));
            if (fValueOf.floatValue() < 0.21f || fValueOf.floatValue() > 1.0f) {
                LogUtils.i(TAG, "parseDpadMouseShortStep, step value " + fValueOf + " is invalid (step < 0.21F || step > 1.0F), set to null");
            } else {
                f10 = fValueOf;
            }
        } catch (NumberFormatException e10) {
            LogUtils.i(TAG, "parseDpadMouseShortStep, parseFloat failed, value: " + str + ", error: " + e10.getMessage());
        }
        LogUtils.i(TAG, "parseDpadMouseShortStep, return step value: " + f10);
        return f10;
    }

    public void cancelDpadMouseLongStepActiveTimer() {
        if (this.dpadMouseLongStepActiveTimer != null) {
            LogUtils.d(TAG, "dpad_mouse_step-> cancel long step timer");
            this.mHandler.removeCallbacks(this.dpadMouseLongStepActiveTimer);
            this.dpadMouseLongStepActiveTimer.cancel();
            this.dpadMouseLongStepActiveTimer.setListener(null);
            this.dpadMouseLongStepActiveTimer.setEvent(null);
            this.dpadMouseLongStepActiveTimer = null;
        }
    }

    public float getDpadMouseLongStep() {
        if (this.appDpadMouseLongStep != null) {
            LogUtils.d(TAG, "dpad_mouse_step-> get app long step: " + this.appDpadMouseLongStep);
            return this.appDpadMouseLongStep.floatValue();
        }
        if (this.configDpadMouseLongStep == null) {
            LogUtils.d(TAG, "dpad_mouse_step-> get default long step: 0.21");
            return 0.21f;
        }
        LogUtils.d(TAG, "dpad_mouse_step-> get config long step: " + this.configDpadMouseLongStep);
        return this.configDpadMouseLongStep.floatValue();
    }

    public float getDpadMouseStep() {
        if (this.appDpadMouseStep != null) {
            LogUtils.d(TAG, "dpad_mouse_step-> get app step: " + this.appDpadMouseStep);
            return this.appDpadMouseStep.floatValue();
        }
        if (this.configDpadMouseStep == null) {
            LogUtils.d(TAG, "dpad_mouse_step-> get default step: 0.21");
            return 0.21f;
        }
        LogUtils.d(TAG, "dpad_mouse_step-> get config step: " + this.configDpadMouseStep);
        return this.configDpadMouseStep.floatValue();
    }

    public void parseConfig(HashMap<String, String> map) {
        this.configDpadMouseStep = parseDpadMouseShortStep(map);
        this.configDpadMouseLongStep = parseDpadMouseLongStep(map);
        this.dpadMouseLongStepActiveTime = parseDpadMouseLongStepActiveTime(map);
    }

    public void setDpadMouseMoveStep(Float f10, Float f11) {
        String str = TAG;
        LogUtils.i(str, "setDpadMouseMoveStep step = " + f10 + ", longStep = " + f11);
        if (f10 == null) {
            LogUtils.w(str, "setDpadMouseMoveStep: step is null, ignoring");
        } else if (f10.floatValue() <= 0.2f || f10.floatValue() > 1.0f) {
            LogUtils.w(str, "setDpadMouseMoveStep: step value " + f10 + " is out of valid range (0.2, 1.0], ignoring");
        } else {
            this.appDpadMouseStep = f10;
            LogUtils.i(str, "setDpadMouseMoveStep: appDpadMouseStep set to " + this.appDpadMouseStep);
        }
        if (f11 == null) {
            LogUtils.w(str, "setDpadMouseMoveStep: longStep is null, ignoring");
            return;
        }
        if (f11.floatValue() <= 0.2f || f11.floatValue() > 1.0f) {
            LogUtils.w(str, "setDpadMouseMoveStep: longStep value " + f11 + " is out of valid range (0.2, 1.0], ignoring");
            return;
        }
        this.appDpadMouseLongStep = f11;
        LogUtils.i(str, "setDpadMouseMoveStep: appDpadMouseLongStep set to " + this.appDpadMouseLongStep);
    }

    public void startDpadMouseLongStepActiveTimer(KeyEvent keyEvent, DpadMouseLongStepActiveTimer.DpadMouseLongStepActiveTimerListener dpadMouseLongStepActiveTimerListener) {
        if (this.dpadMouseLongStepActiveTimer != null) {
            return;
        }
        long dpadMouseLongStepActiveTime = getDpadMouseLongStepActiveTime();
        LogUtils.d(TAG, "dpad_mouse_step-> start long step timer, run at " + dpadMouseLongStepActiveTime + "ms after");
        DpadMouseLongStepActiveTimer dpadMouseLongStepActiveTimer = new DpadMouseLongStepActiveTimer();
        this.dpadMouseLongStepActiveTimer = dpadMouseLongStepActiveTimer;
        dpadMouseLongStepActiveTimer.setListener(dpadMouseLongStepActiveTimerListener);
        this.dpadMouseLongStepActiveTimer.setEvent(keyEvent);
        this.mHandler.postDelayed(this.dpadMouseLongStepActiveTimer, dpadMouseLongStepActiveTime);
    }
}
