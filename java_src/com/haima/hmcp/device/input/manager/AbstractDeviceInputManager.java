package com.haima.hmcp.device.input.manager;

import com.haima.hmcp.device.input.interfaces.IDeviceInput;
import com.haima.hmcp.device.input.listener.DeviceInputListener;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractDeviceInputManager implements IDeviceInput {
    public static final int INPUT_DEVICE_GAMEPAD = 3;
    public static final int INPUT_DEVICE_KEY_MOUSE = 2;
    public static final int INPUT_DEVICE_NONE = 0;
    public static final int INPUT_DEVICE_OPERATION_TYPE_BUTTON = 1;
    public static final int INPUT_DEVICE_REMOTE_CONTROL = 1;
    private static final String TAG = DeviceInputManager.class.getSimpleName();
    protected int mCurrentInputDevice = 0;
    protected DeviceInputListener mDeviceInputListener;

    protected void sendInputDevice(int i10, int i11) {
        String str = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sendInputDevice: ");
        sb2.append(i10);
        sb2.append(" mCurrentInputDevice:");
        sb2.append(this.mCurrentInputDevice);
        sb2.append(" mListener != null:");
        sb2.append(this.mDeviceInputListener != null);
        LogUtils.d(str, sb2.toString());
        DeviceInputListener deviceInputListener = this.mDeviceInputListener;
        if (deviceInputListener != null) {
            deviceInputListener.onInputDevice(i10, i11);
        }
    }
}
