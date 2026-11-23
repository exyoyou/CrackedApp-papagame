package com.haima.hmcp.device.input.manager;

import android.view.KeyEvent;
import android.view.MotionEvent;
import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.device.input.interfaces.IDeviceOperateManager;
import com.haima.hmcp.device.input.listener.DeviceInputListener;
import com.haima.hmcp.device.input.parse.DeviceMappingParse;
import com.haima.hmcp.utils.HmInputDeviceManager;
import com.haima.hmcp.utils.LogUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceInputManager extends AbstractDeviceInputManager {
    private static final String TAG = "DeviceInputManager";
    private IDeviceOperateManager mDeviceOperateManager;

    public DeviceInputManager(HashMap<String, String> map, DeviceInputListener deviceInputListener) {
        this.mDeviceInputListener = deviceInputListener;
        this.mDeviceOperateManager = new DeviceOperateManager(map, deviceInputListener);
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceInput
    public int getCurrentInputMode() {
        return this.mDeviceOperateManager.getCurrentInputMode();
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceInput
    public void onDestroy() {
        IDeviceOperateManager iDeviceOperateManager = this.mDeviceOperateManager;
        if (iDeviceOperateManager != null) {
            iDeviceOperateManager.onDestroy();
        }
        this.mDeviceInputListener = null;
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (HmInputDeviceManager.isJoyStick(motionEvent) && motionEvent.getAction() == 2) {
            LogUtils.i("设备类型", "手柄摇杆");
            sendInputDevice(3, 1);
        } else if ((motionEvent.getSource() & 8194) == 8194) {
            sendInputDevice(2, 1);
        }
        if (DeviceMappingParse.getInstance().isMorePointIsRun()) {
            return false;
        }
        return this.mDeviceOperateManager.onGenericMotionEvent(motionEvent);
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        LogUtils.d(TAG, "onkeydown inputdevice：" + keyEvent.getDevice());
        return this.mDeviceOperateManager.onKeyDown(i10, keyEvent);
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        this.mDeviceOperateManager.onKeyUp(i10, keyEvent);
        return false;
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceInput
    public void setButtonMapping(ButtonMappings buttonMappings) {
        this.mDeviceOperateManager.setButtonMapping(buttonMappings);
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceInput
    public boolean setButtonMappingMode(boolean z10, int i10) {
        return this.mDeviceOperateManager.setButtonMappingMode(z10, i10);
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceInput
    public void setWebSocket(IWebSocket iWebSocket) {
        this.mDeviceOperateManager.setWebSocket(iWebSocket);
    }
}
