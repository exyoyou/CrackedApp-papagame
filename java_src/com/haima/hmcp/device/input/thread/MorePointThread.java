package com.haima.hmcp.device.input.thread;

import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.beans.PointCoord2;
import com.haima.hmcp.device.input.parse.DeviceMappingParse;
import com.haima.hmcp.device.input.send.DeviceInputSend;

/* JADX INFO: loaded from: classes5.dex */
public class MorePointThread extends Thread {
    public static final int MORE_POINT_CLICK_TYPE = 2;
    public static final int MORE_POINT_END_TYPE = 0;
    public static final int MORE_POINT_MOVEANDCLICK_TYPE = 3;
    public static final int MORE_POINT_MOVE_TYPE = 1;
    private PointCoord coord;
    private PointCoord2 hisPoint;
    private boolean isDown;
    private long clickTime = 50;
    private int moveTime = 18;
    private final DeviceInputSend deviceInputSend = DeviceInputSend.getInstance();
    private final DeviceMappingParse deviceMappingParse = DeviceMappingParse.getInstance();

    public MorePointThread(PointCoord pointCoord) {
        this.coord = pointCoord;
    }

    private void pointMove(PointCoord2 pointCoord2) throws InterruptedException {
        float f10 = pointCoord2.f33826x;
        PointCoord2 pointCoord3 = this.hisPoint;
        float f11 = f10 - pointCoord3.f33826x;
        int i10 = pointCoord3.runTime;
        float f12 = f11 / i10;
        float f13 = (pointCoord2.f33827y - pointCoord3.f33827y) / i10;
        int iMin = 0;
        while (true) {
            PointCoord2 pointCoord4 = this.hisPoint;
            if (iMin >= pointCoord4.runTime) {
                this.deviceInputSend.sendMotionEvent(3, new FPoint(pointCoord2.f33826x, pointCoord2.f33827y));
                this.deviceInputSend.getMapModeEventMap().put("morePointMove", pointCoord2.f33826x + "," + pointCoord2.f33827y);
                return;
            }
            float f14 = iMin;
            this.deviceInputSend.sendMotionEvent(3, new FPoint(pointCoord4.f33826x + (f12 * f14), pointCoord4.f33827y + (f14 * f13)));
            this.deviceInputSend.getMapModeEventMap().put("morePointMove", this.hisPoint.f33826x + "," + this.hisPoint.f33827y);
            iMin = Math.min(iMin + this.moveTime, this.hisPoint.runTime);
            Thread.sleep((long) this.moveTime);
        }
    }

    private void processMorePoint(PointCoord2 pointCoord2) throws InterruptedException {
        PointCoord2 pointCoord3 = this.hisPoint;
        int i10 = pointCoord3.keyType;
        if (i10 == 0) {
            reMovePoint();
            return;
        }
        if (i10 == 1) {
            if (pointCoord2 == null) {
                reMovePoint();
                return;
            }
            if (!this.isDown) {
                this.deviceInputSend.sendMotionEvent(1, new FPoint(pointCoord3.f33826x, pointCoord3.f33827y));
                this.deviceInputSend.getMapModeEventMap().put("morePointMove", this.hisPoint.f33826x + "," + this.hisPoint.f33827y);
                this.isDown = true;
            }
            pointMove(pointCoord2);
            return;
        }
        if (i10 == 2) {
            if (this.isDown) {
                this.deviceInputSend.sendMotionEvent(2, new FPoint(pointCoord3.f33826x, pointCoord3.f33827y));
                this.deviceInputSend.getMapModeEventMap().remove("morePointMove");
                Thread.sleep(this.clickTime);
            }
            DeviceInputSend deviceInputSend = this.deviceInputSend;
            PointCoord2 pointCoord4 = this.hisPoint;
            deviceInputSend.sendMotionEvent(1, new FPoint(pointCoord4.f33826x, pointCoord4.f33827y));
            this.deviceInputSend.getMapModeEventMap().put("morePointMove", this.hisPoint.f33826x + "," + this.hisPoint.f33827y);
            Thread.sleep(this.clickTime);
            DeviceInputSend deviceInputSend2 = this.deviceInputSend;
            PointCoord2 pointCoord5 = this.hisPoint;
            deviceInputSend2.sendMotionEvent(2, new FPoint(pointCoord5.f33826x, pointCoord5.f33827y));
            this.deviceInputSend.getMapModeEventMap().remove("morePointMove");
            this.isDown = false;
            Thread.sleep(this.hisPoint.runTime);
            return;
        }
        if (i10 != 3) {
            return;
        }
        if (pointCoord2 == null) {
            reMovePoint();
            return;
        }
        if (!this.isDown) {
            this.deviceInputSend.sendMotionEvent(1, new FPoint(pointCoord3.f33826x, pointCoord3.f33827y));
            this.deviceInputSend.getMapModeEventMap().put("morePointMove", this.hisPoint.f33826x + "," + this.hisPoint.f33827y);
            this.isDown = true;
        }
        pointMove(pointCoord2);
        this.deviceInputSend.sendMotionEvent(2, new FPoint(pointCoord2.f33826x, pointCoord2.f33827y));
        this.deviceInputSend.getMapModeEventMap().remove("morePointMove");
        Thread.sleep(this.clickTime);
        this.deviceInputSend.sendMotionEvent(1, new FPoint(pointCoord2.f33826x, pointCoord2.f33827y));
        this.deviceInputSend.getMapModeEventMap().put("morePointMove", this.hisPoint.f33826x + "," + this.hisPoint.f33827y);
        Thread.sleep(this.clickTime);
        this.deviceInputSend.sendMotionEvent(2, new FPoint(pointCoord2.f33826x, pointCoord2.f33827y));
        this.deviceInputSend.getMapModeEventMap().remove("morePointMove");
        this.isDown = false;
    }

    private void reMovePoint() {
        if (this.isDown) {
            DeviceInputSend deviceInputSend = this.deviceInputSend;
            PointCoord2 pointCoord2 = this.hisPoint;
            deviceInputSend.sendMotionEvent(2, new FPoint(pointCoord2.f33826x, pointCoord2.f33827y));
            this.deviceInputSend.getMapModeEventMap().remove("morePointMove");
        }
        this.deviceMappingParse.setMorePointIsRun(false);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        try {
            for (PointCoord2 pointCoord2 : this.coord.pointList) {
                if (pointCoord2.runTime == 0) {
                    pointCoord2.runTime = 100;
                }
                if (this.hisPoint != null) {
                    processMorePoint(pointCoord2);
                }
                this.hisPoint = pointCoord2;
            }
            processMorePoint(null);
            this.deviceMappingParse.setMorePointIsRun(false);
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }
}
