package com.join.kotlin.module.hmcloud.device;

import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.papa.controller.core.ControllerManager;
import com.papa.controller.core.PadKeyEvent;
import com.papa.controller.core.PadMotionEvent;
import com.papa.controller.core.PadStateEvent;
import com.papa.controller.core.c;
import com.papa.controller.core.d;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class HMInputDeviceManager implements c {
    d mControllerMonitor;
    OnInputDeviceListener mOnInputDeviceListener;

    public interface OnInputDeviceListener {
        void onInputDeviceConnected();

        void onInputDeviceDisconnected();

        void onKeyEvent(int keyCode, PadKeyEvent padKeyEvent);

        void onStickEvent(PadMotionEvent padMotionEvent);
    }

    public boolean dispatchGenericMotionEvent(MotionEvent event) {
        d dVar = this.mControllerMonitor;
        if (dVar != null) {
            return dVar.n(event);
        }
        return false;
    }

    public boolean dispatchKeyEvent(KeyEvent event) {
        d dVar = this.mControllerMonitor;
        if (dVar != null) {
            return dVar.o(event);
        }
        return false;
    }

    public int getInputDeviceCount() {
        d dVar = this.mControllerMonitor;
        if (dVar != null) {
            return dVar.p();
        }
        return 0;
    }

    public List<ControllerManager.c> getInputDevices() {
        d dVar = this.mControllerMonitor;
        return dVar != null ? dVar.q() : new ArrayList();
    }

    void log(String... s10) {
        String str = "";
        for (String str2 : s10) {
            str = str + str2 + " ";
        }
    }

    @Override // com.papa.controller.core.c
    public void onKeyDown(int keyCode, PadKeyEvent padKeyEvent) {
        OnInputDeviceListener onInputDeviceListener = this.mOnInputDeviceListener;
        if (onInputDeviceListener != null) {
            onInputDeviceListener.onKeyEvent(keyCode, padKeyEvent);
        }
    }

    @Override // com.papa.controller.core.c
    public void onKeyPressure(int keyCode, float pressure, PadKeyEvent padKeyEvent) {
        OnInputDeviceListener onInputDeviceListener = this.mOnInputDeviceListener;
        if (onInputDeviceListener != null) {
            onInputDeviceListener.onKeyEvent(keyCode, padKeyEvent);
        }
    }

    @Override // com.papa.controller.core.c
    public void onKeyUp(int keyCode, PadKeyEvent padKeyEvent) {
        OnInputDeviceListener onInputDeviceListener = this.mOnInputDeviceListener;
        if (onInputDeviceListener != null) {
            onInputDeviceListener.onKeyEvent(keyCode, padKeyEvent);
        }
    }

    @Override // com.papa.controller.core.c
    public void onLeftStick(float x10, float y10, PadMotionEvent padMotionEvent) {
        OnInputDeviceListener onInputDeviceListener = this.mOnInputDeviceListener;
        if (onInputDeviceListener != null) {
            onInputDeviceListener.onStickEvent(padMotionEvent);
        }
    }

    @Override // com.papa.controller.core.c
    public void onRightStick(float x10, float y10, PadMotionEvent padMotionEvent) {
        OnInputDeviceListener onInputDeviceListener = this.mOnInputDeviceListener;
        if (onInputDeviceListener != null) {
            onInputDeviceListener.onStickEvent(padMotionEvent);
        }
    }

    @Override // com.papa.controller.core.c
    public void onStateEvent(PadStateEvent padStateEvent) {
        log(padStateEvent.toString());
    }

    void setControllerDeviceListener() {
        d dVar = this.mControllerMonitor;
        if (dVar != null) {
            dVar.v(new ControllerManager.d() { // from class: com.join.kotlin.module.hmcloud.device.HMInputDeviceManager.1
                @Override // com.papa.controller.core.ControllerManager.d
                public void onControllerDeviceAdded(ControllerManager.c device) {
                    int iP = HMInputDeviceManager.this.mControllerMonitor.p();
                    HMInputDeviceManager.this.log("onControllerDeviceAdded", "count=" + iP);
                    OnInputDeviceListener onInputDeviceListener = HMInputDeviceManager.this.mOnInputDeviceListener;
                    if (onInputDeviceListener != null) {
                        onInputDeviceListener.onInputDeviceConnected();
                    }
                }

                @Override // com.papa.controller.core.ControllerManager.d
                public void onControllerDeviceRemoved(ControllerManager.c device) {
                    int iP = HMInputDeviceManager.this.mControllerMonitor.p();
                    HMInputDeviceManager.this.log("onControllerDeviceRemoved", "count=" + iP);
                    OnInputDeviceListener onInputDeviceListener = HMInputDeviceManager.this.mOnInputDeviceListener;
                    if (onInputDeviceListener != null) {
                        onInputDeviceListener.onInputDeviceDisconnected();
                    }
                }
            });
        }
    }

    public void setOnInputDeviceListener(OnInputDeviceListener listener) {
        this.mOnInputDeviceListener = listener;
    }

    void setVibrate(int intensityL, int intensityR) {
        d dVar = this.mControllerMonitor;
        if (dVar != null) {
            dVar.y(intensityL, intensityR);
        }
    }

    public void startMonitor(Context context) {
        try {
            if (this.mControllerMonitor == null) {
                d dVar = new d(context);
                this.mControllerMonitor = dVar;
                dVar.w(this, new Handler());
                setControllerDeviceListener();
            }
            d dVar2 = this.mControllerMonitor;
            if (dVar2 != null) {
                dVar2.B();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void startVibrate() {
        EaseBreathInterpolator easeBreathInterpolator = new EaseBreathInterpolator();
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 255);
        valueAnimatorOfInt.setDuration(1200L);
        valueAnimatorOfInt.setInterpolator(easeBreathInterpolator);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.join.kotlin.module.hmcloud.device.HMInputDeviceManager.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                Integer num = (Integer) animation.getAnimatedValue();
                HMInputDeviceManager.this.setVibrate(num.intValue(), num.intValue());
            }
        });
        valueAnimatorOfInt.start();
    }

    public void stopMonitor() {
        d dVar = this.mControllerMonitor;
        if (dVar != null) {
            dVar.F();
        }
    }
}
