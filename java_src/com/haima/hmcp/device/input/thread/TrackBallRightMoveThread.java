package com.haima.hmcp.device.input.thread;

import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.device.input.send.DeviceInputSend;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class TrackBallRightMoveThread extends Thread {
    private boolean isSend = true;
    private DeviceInputSend mDeviceInputSend = DeviceInputSend.getInstance();
    private boolean morePointIsRun;
    private float moveSpeed;
    private float mx;
    private float my;
    private float rz;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f34041x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f34042y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f34043z;

    public TrackBallRightMoveThread(float f10, float f11, boolean z10, float f12) {
        this.morePointIsRun = z10;
        this.moveSpeed = f12;
        this.mx = f10;
        this.my = f11;
        this.f34041x = f10;
        this.f34042y = f11;
    }

    private float chooseNo(float f10) {
        return Math.max(Math.min(f10, 1.0f), 0.0f);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.mDeviceInputSend.getMapModeEventMap().put("trackBallRMove", this.f34041x + "" + this.f34042y);
        while (this.isSend && !this.morePointIsRun) {
            this.f34041x = chooseNo(this.f34041x + (this.moveSpeed * this.f34043z));
            float fChooseNo = chooseNo(this.f34042y + (this.moveSpeed * this.rz));
            this.f34042y = fChooseNo;
            float f10 = this.f34041x;
            if (f10 <= 0.0f || f10 >= 1.0f || fChooseNo <= 0.0f || fChooseNo >= 1.0f) {
                this.mDeviceInputSend.sendMotionEvent(3, new FPoint(f10, fChooseNo));
                this.mDeviceInputSend.sendMotionEvent(2, new FPoint(this.f34041x, this.f34042y));
                this.f34041x = this.mx;
                this.f34042y = this.my;
                LogUtils.e("sendMotionEvent", "x<=0||x>=1||y<=0||y>=1:" + this.f34041x + " , " + this.f34042y);
                this.mDeviceInputSend.sendMotionEvent(1, new FPoint(this.f34041x, this.f34042y));
                this.f34041x = chooseNo(this.f34041x + (this.moveSpeed * this.f34043z));
                this.f34042y = chooseNo(this.f34042y + (this.moveSpeed * this.rz));
            } else {
                LogUtils.e("sendMotionEvent", ":" + this.f34041x + " , " + this.f34042y);
            }
            this.mDeviceInputSend.sendMotionEvent(3, new FPoint(this.f34041x, this.f34042y));
            try {
                Thread.sleep(80L);
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }
        LogUtils.e("sendMotionEvent", ":" + this.f34041x + " , " + this.f34042y);
        if (this.morePointIsRun) {
            return;
        }
        this.mDeviceInputSend.sendMotionEvent(3, new FPoint(this.f34041x, this.f34042y));
        this.mDeviceInputSend.sendMotionEvent(2, new FPoint(this.f34041x, this.f34042y));
        this.mDeviceInputSend.getMapModeEventMap().remove("trackBallRMove");
    }

    public void setIsSend(boolean z10) {
        this.isSend = z10;
    }

    public void setMoveSp(float f10, float f11) {
        if (DeviceInputSend.getInstance().getScreenOrientation() == ScreenOrientation.PORTRAIT) {
            this.f34043z = f11;
            this.rz = -f10;
        } else {
            this.f34043z = f10;
            this.rz = f11;
        }
    }
}
