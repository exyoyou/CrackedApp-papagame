package com.haima.hmcp.device.input.timer;

import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.device.input.send.DeviceInputSend;
import com.haima.hmcp.widgets.CountDownTimer;

/* JADX INFO: loaded from: classes5.dex */
public class TrackBallTask extends CountDownTimer {
    private final DeviceInputSend deviceInputSend;
    private PointCoord mTrackBallLeft;
    private PointCoord mTrackBallRight;

    public TrackBallTask(long j10, long j11, PointCoord pointCoord, PointCoord pointCoord2) {
        super(j10, j11);
        this.deviceInputSend = DeviceInputSend.getInstance();
        this.mTrackBallLeft = pointCoord;
        this.mTrackBallRight = pointCoord2;
    }

    @Override // com.haima.hmcp.widgets.CountDownTimer
    public void onFinish() {
        if (this.deviceInputSend.getmAxisStatus() == 2) {
            this.deviceInputSend.sendMotionEvent(2, this.mTrackBallLeft);
            DeviceInputSend deviceInputSend = this.deviceInputSend;
            PointCoord pointCoord = this.mTrackBallLeft;
            deviceInputSend.cacheModeMapEvent(pointCoord, this.mTrackBallRight, 2, 0.0f, 0.0f, pointCoord);
            this.mTrackBallLeft.actionType = 0;
        }
    }

    @Override // com.haima.hmcp.widgets.CountDownTimer
    public void onTick(long j10) {
    }
}
