package com.haima.hmcp.widgets;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import com.haima.hmcp.beans.JoyStickMappingConfig;
import com.haima.hmcp.beans.TouchesMappingConfig;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.HmVirtualDeviceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class JoystickMappingHandler {
    private static final float JOYSTICK_RADIUS = 100.0f;
    private static final int MAX_INTERVAL_SAMPLES = 10;
    public static final float MOUSE_SCALE = 10.0f;
    private static final String TAG = "JoystickMappingHandler";
    private Runnable joyStickReleaseRunnable;
    private AbsIjkVideoView mBaseRtcVideoView;
    private boolean mIsMouse;
    private JoyStickMappingConfig mJoyStickMappingConfig;
    private TouchesMappingConfig mTouchesMappingConfig;
    private float accumulatedX = 0.0f;
    private float accumulatedY = 0.0f;
    private int lastType = 0;
    private MotionEvent lastEvent = null;
    private List<Double> mouseMoveIntervals = new ArrayList();
    private double lastMouseMoveTime = 0.0d;
    private int currentStopDetectionTime = 20;
    private HashMap<Integer, Point> fingerLastPositions = new HashMap<>();
    private List<Integer> activeNonUsePointIds = new ArrayList();
    private Handler handler = new Handler(Looper.getMainLooper());

    private static class Point {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        int f34113x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        int f34114y;

        Point(int i10, int i11) {
            this.f34113x = i10;
            this.f34114y = i11;
        }
    }

    public JoystickMappingHandler(AbsIjkVideoView absIjkVideoView, JoyStickMappingConfig joyStickMappingConfig, TouchesMappingConfig touchesMappingConfig, boolean z10) {
        this.mBaseRtcVideoView = absIjkVideoView;
        this.mJoyStickMappingConfig = joyStickMappingConfig;
        this.mTouchesMappingConfig = touchesMappingConfig;
        this.mIsMouse = z10;
    }

    private void cancelJoyStickReleaseTimer() {
        Runnable runnable = this.joyStickReleaseRunnable;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
    }

    private void checkMouseRefreshRate() {
        List<JoyStickMappingConfig.MouseRefreshRate> list;
        String str = TAG;
        LogUtils.d(str, "checkMouseRefreshRate: begin");
        JoyStickMappingConfig joyStickMappingConfig = this.mJoyStickMappingConfig;
        if (joyStickMappingConfig == null || (list = joyStickMappingConfig.MOUSE_REFRESH_RATES) == null || list.isEmpty()) {
            LogUtils.d(str, "checkMouseRefreshRate: no mouse refresh rate config");
            return;
        }
        double dCurrentTimeMillis = System.currentTimeMillis();
        double d10 = this.lastMouseMoveTime;
        double dDoubleValue = 0.0d;
        if (d10 > 0.0d) {
            double d11 = dCurrentTimeMillis - d10;
            if (this.mouseMoveIntervals.size() >= 10) {
                this.mouseMoveIntervals.remove(0);
            }
            this.mouseMoveIntervals.add(Double.valueOf(d11));
            if (this.mouseMoveIntervals.size() >= 5) {
                Iterator<Double> it2 = this.mouseMoveIntervals.iterator();
                while (it2.hasNext()) {
                    dDoubleValue += it2.next().doubleValue();
                }
                double size = dDoubleValue / ((double) this.mouseMoveIntervals.size());
                for (JoyStickMappingConfig.MouseRefreshRate mouseRefreshRate : this.mJoyStickMappingConfig.MOUSE_REFRESH_RATES) {
                    if (size <= mouseRefreshRate.interval.doubleValue()) {
                        this.currentStopDetectionTime = mouseRefreshRate.detectionTime.intValue();
                        LogUtils.d("JoystickInput", "avgInterval = " + size + " currentStopDetectionTime = " + this.currentStopDetectionTime);
                        break;
                    }
                }
            }
        }
        this.lastMouseMoveTime = dCurrentTimeMillis;
    }

    @SuppressLint({"NewApi"})
    private void handleAllNonUsePointIds(MotionEvent motionEvent) {
        int axisValue;
        int axisValue2;
        for (int i10 = 0; i10 < motionEvent.getPointerCount(); i10++) {
            int pointerId = motionEvent.getPointerId(i10);
            if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                int x10 = (int) motionEvent.getX(i10);
                int y10 = (int) motionEvent.getY(i10);
                Point point = this.fingerLastPositions.get(Integer.valueOf(pointerId));
                if (point == null) {
                    this.fingerLastPositions.put(Integer.valueOf(pointerId), new Point(x10, y10));
                    LogUtils.d(TAG, "handleAllNonUsePointIds: Initialized finger " + pointerId + " position - X:" + x10 + ", Y:" + y10);
                } else {
                    if (this.mIsMouse) {
                        axisValue = (int) motionEvent.getAxisValue(27);
                        axisValue2 = (int) motionEvent.getAxisValue(28);
                    } else {
                        axisValue = x10 - point.f34113x;
                        axisValue2 = y10 - point.f34114y;
                    }
                    LogUtils.d(TAG, "handleAllNonUsePointIds pointID:" + pointerId + " offsetX:" + axisValue + ",offsetY:" + axisValue2 + " (lastX:" + point.f34113x + ", lastY:" + point.f34114y + ")");
                    handleMouseMovement(motionEvent, (float) axisValue, (float) axisValue2, this.mIsMouse);
                    point.f34113x = x10;
                    point.f34114y = y10;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00ce  */
    private void handleMouseMovement(MotionEvent motionEvent, float f10, float f11, boolean z10) {
        int i10;
        JoyStickMappingConfig joyStickMappingConfig;
        TouchesMappingConfig touchesMappingConfig;
        checkMouseRefreshRate();
        if (z10) {
            cancelJoyStickReleaseTimer();
        }
        if (!z10 && (touchesMappingConfig = this.mTouchesMappingConfig) != null) {
            float f12 = touchesMappingConfig.sensitivity;
            if (f12 <= 0.0f) {
                f12 = 1.0f;
            }
            f10 *= f12;
            f11 *= f12;
        }
        if (z10) {
            f10 *= 10.0f;
            f11 *= 10.0f;
        }
        this.accumulatedX = Math.min(100.0f, Math.max(-100.0f, this.accumulatedX + f10));
        this.accumulatedY = Math.min(100.0f, Math.max(-100.0f, this.accumulatedY + f11));
        String str = TAG;
        LogUtils.d(str, "handleMouseMovement11: mouseX:" + f10 + ",mouseY:" + f11 + ",accumulatedX:" + this.accumulatedX + ",accumulatedY:" + this.accumulatedY);
        float f13 = this.accumulatedX;
        float f14 = this.accumulatedY;
        float fSqrt = (float) Math.sqrt((double) ((f13 * f13) + (f14 * f14)));
        if (fSqrt > 100.0f) {
            float f15 = 100.0f / fSqrt;
            this.accumulatedX *= f15;
            this.accumulatedY *= f15;
        }
        float f16 = this.accumulatedX / 100.0f;
        float f17 = this.accumulatedY / 100.0f;
        TouchesMappingConfig touchesMappingConfig2 = this.mTouchesMappingConfig;
        int iIntValue = touchesMappingConfig2 != null ? touchesMappingConfig2.touchesMapperType.intValue() : 0;
        if (!z10 || (joyStickMappingConfig = this.mJoyStickMappingConfig) == null) {
            i10 = iIntValue;
        } else if ("LEFT_STICK".equals(joyStickMappingConfig.getStickEnabled())) {
            i10 = 2;
        } else if ("RIGHT_STICK".equals(this.mJoyStickMappingConfig.getStickEnabled())) {
            i10 = 3;
        } else {
            i10 = iIntValue;
        }
        this.lastType = i10;
        this.lastEvent = motionEvent;
        LogUtils.d(str, "handleMouseMovement: stickX:" + f16 + ",stickY:" + f17 + ",type:" + i10);
        if (z10) {
            startJoyStickReleaseTimer();
            this.mBaseRtcVideoView.sendGamePadDataMappingMotion(motionEvent, f16, f17, i10, this.mIsMouse);
        } else if (motionEvent.getActionMasked() == 2) {
            this.mBaseRtcVideoView.sendGamePadDataMappingMotion(motionEvent, f16, f17, i10, this.mIsMouse);
        }
    }

    private void handleMultiTouchState(MotionEvent motionEvent, int i10, int i11) {
        if (HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(i10))) {
            return;
        }
        if (i11 != 0) {
            if (i11 != 1 && i11 != 3) {
                if (i11 != 5) {
                    if (i11 != 6) {
                        return;
                    }
                }
            }
            if (this.activeNonUsePointIds.contains(Integer.valueOf(i10))) {
                this.activeNonUsePointIds.remove(Integer.valueOf(i10));
                this.fingerLastPositions.remove(Integer.valueOf(i10));
                String str = TAG;
                LogUtils.d(str, "handleMultiTouchState: Removed pointID " + i10 + ", active count: " + this.activeNonUsePointIds.size() + ", cleaned position record");
                if (this.activeNonUsePointIds.isEmpty()) {
                    LogUtils.d(str, "handleMultiTouchState: Last non-usePointId finger released, resetting joystick");
                    resetJoyStickRockerMapping();
                    return;
                }
                return;
            }
            return;
        }
        if (this.activeNonUsePointIds.contains(Integer.valueOf(i10))) {
            return;
        }
        this.activeNonUsePointIds.add(Integer.valueOf(i10));
        LogUtils.d(TAG, "handleMultiTouchState: Added pointID " + i10 + ", active count: " + this.activeNonUsePointIds.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetJoyStickRockerMapping() {
        MotionEvent motionEvent;
        this.accumulatedX = 0.0f;
        this.accumulatedY = 0.0f;
        AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
        if (absIjkVideoView == null || (motionEvent = this.lastEvent) == null) {
            return;
        }
        absIjkVideoView.sendGamePadDataMappingMotion(motionEvent, 0.0f, 0.0f, this.lastType, this.mIsMouse);
    }

    private void startJoyStickReleaseTimer() {
        if (this.joyStickReleaseRunnable == null) {
            this.joyStickReleaseRunnable = new Runnable() { // from class: com.haima.hmcp.widgets.JoystickMappingHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    JoystickMappingHandler.this.resetJoyStickRockerMapping();
                }
            };
        }
        this.handler.postDelayed(this.joyStickReleaseRunnable, this.currentStopDetectionTime);
    }

    public void handleJoystickMapping(MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.mBaseRtcVideoView == null) {
            LogUtils.e(TAG, "handleJoystickMapping: mBaseRtcVideoView is null");
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        if ((actionMasked == 0 || actionMasked == 5) && (iFindPointerIndex = motionEvent.findPointerIndex(pointerId)) >= 0) {
            int x10 = (int) motionEvent.getX(iFindPointerIndex);
            int y10 = (int) motionEvent.getY(iFindPointerIndex);
            this.fingerLastPositions.put(Integer.valueOf(pointerId), new Point(x10, y10));
            LogUtils.d(TAG, "handleJoystickMapping: Initialized finger " + pointerId + " coordinates - X:" + x10 + ", Y:" + y10);
        }
        handleMultiTouchState(motionEvent, pointerId, actionMasked);
        handleAllNonUsePointIds(motionEvent);
    }

    public void reset() {
        this.accumulatedX = 0.0f;
        this.accumulatedY = 0.0f;
        this.lastType = 0;
        this.lastEvent = null;
        this.fingerLastPositions.clear();
        this.mouseMoveIntervals.clear();
        this.lastMouseMoveTime = 0.0d;
        this.currentStopDetectionTime = 0;
        this.activeNonUsePointIds.clear();
        cancelJoyStickReleaseTimer();
    }

    public void setBaseRtcVideoView(AbsIjkVideoView absIjkVideoView) {
        this.mBaseRtcVideoView = absIjkVideoView;
    }

    public void setJoyStickMappingConfig(JoyStickMappingConfig joyStickMappingConfig) {
        this.mJoyStickMappingConfig = joyStickMappingConfig;
    }

    public void setTouchesMappingConfig(TouchesMappingConfig touchesMappingConfig) {
        this.mTouchesMappingConfig = touchesMappingConfig;
    }
}
