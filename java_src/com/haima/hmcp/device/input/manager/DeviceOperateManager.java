package com.haima.hmcp.device.input.manager;

import android.view.KeyEvent;
import android.view.MotionEvent;
import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.device.input.interfaces.IDeviceOperate;
import com.haima.hmcp.device.input.interfaces.IDeviceOperateManager;
import com.haima.hmcp.device.input.listener.DeviceInputListener;
import com.haima.hmcp.device.input.operate.GamepadDeviceOperate;
import com.haima.hmcp.device.input.operate.SameKeyCodeOperate;
import com.haima.hmcp.device.input.parse.DeviceMappingParse;
import com.haima.hmcp.device.input.send.DeviceInputSend;
import com.haima.hmcp.utils.HmInputDeviceManager;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceOperateManager implements IDeviceOperateManager {
    public static final int ACTION_DEFAULT_TYPE = 0;
    public static final int ACTION_DOWN_TYPE = 1;
    public static final int ACTION_MOVE_TYPE = 3;
    public static final int ACTION_UP_TYPE = 2;
    public static final String CACHE_EVENT_TRACKBALL_RIGHT_MOVE = "trackBallRMove";
    public static final String KEYBOARD_DOWN = "keyDown";
    public static final String KEYBOARD_DOWN_FLAG = "1";
    public static final String KEYBOARD_UP = "keyUp";
    public static final String KEYBOARD_UP_FLAG = "0";
    public static final int OPERATE_KEY_DOWN = 1;
    public static final int OPERATE_KEY_UP = 2;
    private static final String TAG = "DeviceOperateManager";
    private DeviceInputSend deviceInputSend;
    private final DeviceMappingParse deviceMappingParse;
    private IDeviceOperate gamepadDeviceOperate;
    private IDeviceOperate sameKeyCodeOperate;

    public DeviceOperateManager(HashMap<String, String> map, DeviceInputListener deviceInputListener) {
        DeviceMappingParse deviceMappingParse = DeviceMappingParse.getInstance();
        this.deviceMappingParse = deviceMappingParse;
        deviceMappingParse.initMappingConfig(map);
        DeviceInputSend deviceInputSend = DeviceInputSend.getInstance();
        this.deviceInputSend = deviceInputSend;
        deviceInputSend.setDeviceInputListener(deviceInputListener);
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceInput
    public int getCurrentInputMode() {
        return this.deviceMappingParse.mCurrentInputMode;
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceInput
    public void onDestroy() {
        this.deviceInputSend.onDestroy();
        this.deviceMappingParse.clearInstance();
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (!HmInputDeviceManager.isJoyStick(motionEvent) || motionEvent.getAction() != 2) {
            return false;
        }
        if (this.gamepadDeviceOperate == null) {
            this.gamepadDeviceOperate = new GamepadDeviceOperate();
        }
        this.gamepadDeviceOperate.onGenericMotionEvent(motionEvent);
        return true;
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (KeyEvent.isGamepadButton(i10) && this.deviceMappingParse.mCurrentInputMode == 4) {
            if (this.gamepadDeviceOperate == null) {
                this.gamepadDeviceOperate = new GamepadDeviceOperate();
            }
            this.gamepadDeviceOperate.onKeyDown(i10, keyEvent);
            return false;
        }
        if (this.deviceMappingParse.mCurrentInputMode == 4) {
            return false;
        }
        if (this.sameKeyCodeOperate == null) {
            this.sameKeyCodeOperate = new SameKeyCodeOperate();
        }
        this.sameKeyCodeOperate.onKeyDown(i10, keyEvent);
        return false;
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (KeyEvent.isGamepadButton(i10) && this.deviceMappingParse.mCurrentInputMode == 4) {
            if (this.gamepadDeviceOperate == null) {
                this.gamepadDeviceOperate = new GamepadDeviceOperate();
            }
            this.gamepadDeviceOperate.onKeyUp(i10, keyEvent);
            return false;
        }
        if (this.deviceMappingParse.mCurrentInputMode == 4) {
            return false;
        }
        if (this.sameKeyCodeOperate == null) {
            this.sameKeyCodeOperate = new SameKeyCodeOperate();
        }
        this.sameKeyCodeOperate.onKeyUp(i10, keyEvent);
        return false;
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceInput
    public void setButtonMapping(ButtonMappings buttonMappings) {
        this.deviceMappingParse.setButtonMapping(buttonMappings);
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceInput
    public boolean setButtonMappingMode(boolean z10, int i10) {
        if (!z10 && DeviceMappingParse.getInstance().isMorePointIsRun()) {
            return false;
        }
        this.deviceMappingParse.mCurrentInputMode = i10;
        return true;
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceInput
    public void setWebSocket(IWebSocket iWebSocket) {
        this.deviceInputSend.setSendWebSocket(iWebSocket);
    }
}
