package com.haima.hmcp.device.input.timer;

import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.device.input.send.DeviceInputSend;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.widgets.CountDownTimer;

/* JADX INFO: loaded from: classes5.dex */
public class DpadTimer extends CountDownTimer {
    private PointCoord coord;
    private final DeviceInputSend deviceInputSend;
    private FPoint dpadPoint;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f34044i;
    private int keycode;

    public DpadTimer(long j10, long j11, int i10, PointCoord pointCoord) {
        super(j10, j11);
        this.f34044i = 0;
        DeviceInputSend deviceInputSend = DeviceInputSend.getInstance();
        this.deviceInputSend = deviceInputSend;
        if (deviceInputSend.getScreenOrientation() == ScreenOrientation.PORTRAIT) {
            switch (i10) {
                case 19:
                    this.keycode = 21;
                    break;
                case 20:
                    this.keycode = 22;
                    break;
                case 21:
                    this.keycode = 20;
                    break;
                case 22:
                    this.keycode = 19;
                    break;
            }
        } else {
            this.keycode = i10;
        }
        this.coord = pointCoord;
    }

    public FPoint getDpadPoint() {
        return this.dpadPoint;
    }

    @Override // com.haima.hmcp.widgets.CountDownTimer
    public void onFinish() {
    }

    @Override // com.haima.hmcp.widgets.CountDownTimer
    public void onTick(long j10) {
        int i10 = this.f34044i + 1;
        this.f34044i = i10;
        int iMin = Math.min(i10, 4);
        this.f34044i = iMin;
        switch (this.keycode) {
            case 19:
                DeviceInputSend deviceInputSend = this.deviceInputSend;
                PointCoord pointCoord = this.coord;
                FPoint fPoint = new FPoint(pointCoord.f33824x, pointCoord.f33825y + (pointCoord.ry * iMin * (-0.25f)));
                this.dpadPoint = fPoint;
                deviceInputSend.sendMotionEvent(3, fPoint);
                break;
            case 20:
                DeviceInputSend deviceInputSend2 = this.deviceInputSend;
                PointCoord pointCoord2 = this.coord;
                FPoint fPoint2 = new FPoint(pointCoord2.f33824x, pointCoord2.f33825y + (pointCoord2.ry * iMin * 0.25f));
                this.dpadPoint = fPoint2;
                deviceInputSend2.sendMotionEvent(3, fPoint2);
                break;
            case 21:
                DeviceInputSend deviceInputSend3 = this.deviceInputSend;
                PointCoord pointCoord3 = this.coord;
                FPoint fPoint3 = new FPoint(pointCoord3.f33824x + (pointCoord3.rx * iMin * (-0.25f)), pointCoord3.f33825y);
                this.dpadPoint = fPoint3;
                deviceInputSend3.sendMotionEvent(3, fPoint3);
                break;
            case 22:
                DeviceInputSend deviceInputSend4 = this.deviceInputSend;
                PointCoord pointCoord4 = this.coord;
                FPoint fPoint4 = new FPoint(pointCoord4.f33824x + (pointCoord4.rx * iMin * 0.25f), pointCoord4.f33825y);
                this.dpadPoint = fPoint4;
                deviceInputSend4.sendMotionEvent(3, fPoint4);
                break;
        }
    }
}
