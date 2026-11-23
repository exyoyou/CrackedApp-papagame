package com.haima.hmcp.device.input.operate;

import android.view.KeyEvent;
import com.haima.hmcp.utils.KeyMapUtil;

/* JADX INFO: loaded from: classes5.dex */
public class SameKeyCodeOperate extends AbstractDeviceOperate {
    private final String TAG = SameKeyCodeOperate.class.getSimpleName();

    @Override // com.haima.hmcp.device.input.operate.AbstractDeviceOperate, com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 67) {
            this.isDelListen = false;
        }
        if (interceptKey(i10)) {
            return false;
        }
        int iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(i10);
        if (iAndroidKeyCode2PASSKey != 0) {
            this.deviceInputSend.sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
        } else {
            this.deviceInputSend.sendKeyboardEvent("1", KeyEvent.keyCodeToString(keyEvent.getKeyCode()));
        }
        return false;
    }

    @Override // com.haima.hmcp.device.input.operate.AbstractDeviceOperate, com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (i10 == 67) {
            this.isDelListen = true;
        }
        if (interceptKey(i10)) {
            return false;
        }
        int iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(i10);
        if (iAndroidKeyCode2PASSKey != 0) {
            this.deviceInputSend.sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
        } else {
            this.deviceInputSend.sendKeyboardEvent("0", KeyEvent.keyCodeToString(keyEvent.getKeyCode()));
        }
        return false;
    }
}
