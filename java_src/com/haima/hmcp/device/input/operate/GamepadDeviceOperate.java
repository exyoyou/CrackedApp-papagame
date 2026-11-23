package com.haima.hmcp.device.input.operate;

import android.view.KeyEvent;
import android.view.MotionEvent;
import com.haima.hmcp.Constants;
import com.haima.hmcp.business.GamePadManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class GamepadDeviceOperate extends AbstractDeviceOperate {
    private static final String TAG = "GamepadDeviceOperate";
    private boolean gamepadEventDetected;

    @Override // com.haima.hmcp.device.input.operate.AbstractDeviceOperate, com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (!this.gamepadEventDetected) {
            String str = String.format(GamePadManager.GAMEPAD_CONNECTED, "");
            this.gamepadEventDetected = this.deviceInputSend.sendData(str);
            CountlyUtil.recordEvent(Constants.COUNTYLY_GAMEPAD_STATUS, "1,msg:" + str + ",sendResult:" + this.gamepadEventDetected);
        }
        int historySize = motionEvent.getHistorySize();
        for (int i10 = 0; i10 < historySize; i10++) {
            this.deviceMappingParse.processJoystickInput(motionEvent, i10);
        }
        this.deviceMappingParse.processJoystickInput(motionEvent, -1);
        return true;
    }

    @Override // com.haima.hmcp.device.input.operate.AbstractDeviceOperate, com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        LogUtils.i(TAG, i10 + "---" + keyEvent.toString() + "---" + this.deviceMappingParse.mCurrentInputMode);
        if (this.deviceMappingParse.mCurrentInputMode == 4) {
            if (!this.gamepadEventDetected) {
                String str = String.format(GamePadManager.GAMEPAD_CONNECTED, "");
                this.gamepadEventDetected = sendMessageToInstance(str);
                CountlyUtil.recordEvent(Constants.COUNTYLY_GAMEPAD_STATUS, "1,msg:" + str + ",sendResult:" + this.gamepadEventDetected);
            }
            this.deviceMappingParse.mappingProcessKey(keyEvent, 1);
        }
        return false;
    }

    @Override // com.haima.hmcp.device.input.operate.AbstractDeviceOperate, com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        LogUtils.i(TAG, i10 + "---" + keyEvent.toString() + "---" + this.deviceMappingParse.mCurrentInputMode);
        if (this.deviceMappingParse.mCurrentInputMode == 4) {
            if (!this.gamepadEventDetected) {
                String str = String.format(GamePadManager.GAMEPAD_CONNECTED, "");
                this.gamepadEventDetected = this.deviceInputSend.sendData(str);
                CountlyUtil.recordEvent(Constants.COUNTYLY_GAMEPAD_STATUS, "0,msg:" + str + ",sendResult:" + this.gamepadEventDetected);
            }
            this.deviceMappingParse.mappingProcessKey(keyEvent, 2);
        }
        return false;
    }
}
