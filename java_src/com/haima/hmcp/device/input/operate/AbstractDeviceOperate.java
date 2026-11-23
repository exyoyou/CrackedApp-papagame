package com.haima.hmcp.device.input.operate;

import android.view.KeyEvent;
import android.view.MotionEvent;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.device.input.interfaces.IDeviceOperate;
import com.haima.hmcp.device.input.parse.DeviceMappingParse;
import com.haima.hmcp.device.input.send.DeviceInputSend;
import com.haima.hmcp.device.input.timer.DpadTimer;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractDeviceOperate implements IDeviceOperate {
    protected DpadTimer dpadtimer;
    private final String TAG = AbstractDeviceOperate.class.getSimpleName();
    protected boolean isDelListen = true;
    protected DeviceInputSend deviceInputSend = DeviceInputSend.getInstance();
    protected DeviceMappingParse deviceMappingParse = DeviceMappingParse.getInstance();

    protected void cleanDpadTimer() {
        if (this.dpadtimer != null) {
            LogUtils.e("mTimeOutTask", "cleanTimer");
            this.dpadtimer.cancel();
            this.dpadtimer = null;
        }
    }

    protected boolean interceptKey(int i10) {
        return i10 == 4 || i10 == 3 || i10 == 82;
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public abstract boolean onKeyDown(int i10, KeyEvent keyEvent);

    @Override // com.haima.hmcp.device.input.interfaces.IDeviceOperate
    public abstract boolean onKeyUp(int i10, KeyEvent keyEvent);

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    protected boolean sendMessageToInstance(String str) {
        return this.deviceInputSend.sendData(str);
    }

    protected void startDpadTimer(int i10, PointCoord pointCoord) {
        LogUtils.e(this.TAG, "===startTimer ====");
        if (this.dpadtimer == null) {
            DpadTimer dpadTimer = new DpadTimer(80L, 20L, i10, pointCoord);
            this.dpadtimer = dpadTimer;
            dpadTimer.start();
        }
    }
}
