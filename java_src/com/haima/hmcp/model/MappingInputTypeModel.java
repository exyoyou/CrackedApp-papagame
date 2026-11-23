package com.haima.hmcp.model;

import com.haima.hmcp.listeners.MappingInputTypeModelListener;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class MappingInputTypeModel {
    private static final String TAG = "MappingInputTypeModel";
    private MappingInputTypeModelListener listener;
    private int inputType = 1;
    private int mCurrentKeyboardMode = 0;

    private boolean allowSet() {
        MappingInputTypeModelListener mappingInputTypeModelListener = this.listener;
        if (mappingInputTypeModelListener != null) {
            return mappingInputTypeModelListener.isAllowSet();
        }
        LogUtils.i(TAG, "allowSet called fail");
        return false;
    }

    private void clearKeyEvent() {
        MappingInputTypeModelListener mappingInputTypeModelListener = this.listener;
        if (mappingInputTypeModelListener != null) {
            mappingInputTypeModelListener.clearKeyEvent();
        } else {
            LogUtils.i(TAG, "clearKeyEvent called fail");
        }
    }

    private boolean hasBattleMapping() {
        MappingInputTypeModelListener mappingInputTypeModelListener = this.listener;
        if (mappingInputTypeModelListener != null) {
            return mappingInputTypeModelListener.hasBattleMapping();
        }
        LogUtils.i(TAG, "hasBattleMapping called fail");
        return false;
    }

    private boolean hasCurrentButtonMapping() {
        MappingInputTypeModelListener mappingInputTypeModelListener = this.listener;
        if (mappingInputTypeModelListener != null) {
            return mappingInputTypeModelListener.hasCurrentButtonMapping();
        }
        LogUtils.i(TAG, "hasCurrentButtonMapping called fail");
        return false;
    }

    private boolean hasInputOpMapping() {
        MappingInputTypeModelListener mappingInputTypeModelListener = this.listener;
        if (mappingInputTypeModelListener != null) {
            return mappingInputTypeModelListener.hasInputOpMapping();
        }
        LogUtils.i(TAG, "hasInputOpMapping called fail");
        return false;
    }

    private boolean hasKeyboardMappingEvent() {
        MappingInputTypeModelListener mappingInputTypeModelListener = this.listener;
        if (mappingInputTypeModelListener != null) {
            return mappingInputTypeModelListener.hasKeyboardMappingEvent();
        }
        LogUtils.i(TAG, "hasKeyboardMappingEvent called fail");
        return false;
    }

    private boolean hasMappingEvent() {
        MappingInputTypeModelListener mappingInputTypeModelListener = this.listener;
        if (mappingInputTypeModelListener != null) {
            return mappingInputTypeModelListener.hasMappingEvent();
        }
        LogUtils.i(TAG, "hasEventMapping called fail");
        return false;
    }

    private boolean isBattle() {
        MappingInputTypeModelListener mappingInputTypeModelListener = this.listener;
        if (mappingInputTypeModelListener != null) {
            return mappingInputTypeModelListener.isBattle();
        }
        LogUtils.i(TAG, "isBattle called fail");
        return false;
    }

    private void setMouseShow(boolean z10) {
        MappingInputTypeModelListener mappingInputTypeModelListener = this.listener;
        if (mappingInputTypeModelListener != null) {
            mappingInputTypeModelListener.showMouse(z10);
        } else {
            LogUtils.i(TAG, "setMouseShow called fail");
        }
    }

    public int getmCurrentInputMode() {
        return this.inputType;
    }

    public int getmCurrentKeyboardMode() {
        return this.mCurrentKeyboardMode;
    }

    public boolean setButtonMappingMode(int i10) {
        if (!allowSet()) {
            return false;
        }
        String str = TAG;
        LogUtils.d(str, "set button mapping mode: " + i10);
        if (i10 == 4 && !hasCurrentButtonMapping() && !hasMappingEvent() && !hasKeyboardMappingEvent()) {
            LogUtils.i(str, "setButtonMappingMode: " + i10 + " set fail, no mapping");
            return false;
        }
        if (i10 == 5 && !hasMappingEvent()) {
            LogUtils.i(str, "setButtonMappingMode: " + i10 + " set fail, no mapping");
            return false;
        }
        if (i10 == 6) {
            if (!hasBattleMapping()) {
                LogUtils.i(str, "tv_battle->setButtonMappingMode: GAMEPAD_MODE_DPAD_BATTLE set fail, not battle key mapping");
                return false;
            }
            if (!isBattle()) {
                LogUtils.i(str, "tv_battle->setButtonMappingMode: GAMEPAD_MODE_DPAD_BATTLE set fail, not in battle");
                return false;
            }
            setmCurrentInputMode(i10);
            LogUtils.i(str, "tv_battle->setButtonMappingMode: GAMEPAD_MODE_DPAD_BATTLE set success");
        } else if (i10 != 7) {
            setmCurrentInputMode(i10);
        } else {
            if (!hasInputOpMapping()) {
                LogUtils.i(str, "HmInputOp-->setButtonMappingMode: GAMEPAD_MODE_INPUT_OP set fail, not config");
                return false;
            }
            setmCurrentInputMode(i10);
            LogUtils.i(str, "HmInputOp-->setButtonMappingMode: GAMEPAD_MODE_INPUT_OP set success");
        }
        setMouseShow(i10 == 2);
        clearKeyEvent();
        LogUtils.i("setButtonMappingMode", "set button mapping mode: " + i10 + "success");
        return true;
    }

    public void setListener(MappingInputTypeModelListener mappingInputTypeModelListener) {
        this.listener = mappingInputTypeModelListener;
    }

    public void setmCurrentInputMode(int i10) {
        this.inputType = i10;
        LogUtils.i(TAG, "tv_battle->inputType = " + i10);
    }

    public void setmCurrentKeyboardMode(int i10) {
        this.mCurrentKeyboardMode = i10;
    }
}
