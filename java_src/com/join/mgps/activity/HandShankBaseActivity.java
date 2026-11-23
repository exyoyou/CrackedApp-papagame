package com.join.mgps.activity;

import android.animation.ValueAnimator;
import android.bluetooth.BluetoothAdapter;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.BaseActivity;
import com.join.mgps.joystick.EaseBreathInterpolator;
import com.papa.controller.core.ControllerManager;
import com.papa.controller.core.PadKeyEvent;
import com.papa.controller.core.PadMotionEvent;
import com.papa.controller.core.PadStateEvent;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class HandShankBaseActivity extends BaseActivity implements com.papa.controller.core.c {
    com.papa.controller.core.d mControllerMonitor;
    private boolean spp4CheckInfo;

    class a implements ControllerManager.d {
        a() {
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void onControllerDeviceAdded(ControllerManager.c device) {
            HandShankBaseActivity handShankBaseActivity = HandShankBaseActivity.this;
            handShankBaseActivity.onControllerDeviceChanged(1, handShankBaseActivity.mControllerMonitor.q());
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void onControllerDeviceRemoved(ControllerManager.c device) {
            HandShankBaseActivity handShankBaseActivity = HandShankBaseActivity.this;
            handShankBaseActivity.onControllerDeviceChanged(0, handShankBaseActivity.mControllerMonitor.q());
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            Integer num = (Integer) animation.getAnimatedValue();
            HandShankBaseActivity.this.setVibrate(num.intValue(), num.intValue());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent event) {
        com.papa.controller.core.d dVar = this.mControllerMonitor;
        return super.dispatchGenericMotionEvent(event) | (dVar != null ? false | dVar.n(event) : false);
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        boolean zO = false;
        if (this.mControllerMonitor != null && event != null && event.getDevice() != null) {
            zO = false | this.mControllerMonitor.o(event);
        }
        return super.dispatchKeyEvent(event) | zO;
    }

    KeyEvent getStickLeftXEvent(float direction, int action) {
        int i10;
        if (direction < 0.0f) {
            i10 = 21;
        } else {
            i10 = direction > 0.0f ? 22 : 0;
        }
        return new KeyEvent(action, i10);
    }

    KeyEvent getStickLeftYEvent(float direction, int action) {
        int i10;
        if (direction < 0.0f) {
            i10 = 19;
        } else {
            i10 = direction > 0.0f ? 20 : 0;
        }
        return new KeyEvent(action, i10);
    }

    protected List<ControllerManager.c> getValidDevice(List<ControllerManager.c> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (!inBlackList(list.get(i10).d())) {
                    arrayList.add(list.get(i10));
                }
            }
        }
        return arrayList;
    }

    protected int getValidDeviceCount(List<ControllerManager.c> list) {
        return getValidDevice(getValidDevice(list)).size();
    }

    protected boolean inBlackList(String deviceName) {
        return com.join.mgps.joystick.map.a.b().f(deviceName);
    }

    protected boolean isBlueEnabled() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        return defaultAdapter != null && defaultAdapter.isEnabled();
    }

    public void onControllerDeviceChanged(int state, List<ControllerManager.c> controllerDevices) {
    }

    @Override // com.papa.controller.core.c
    public void onKeyDown(int keyCode, PadKeyEvent padKeyEvent) {
        onKeyEvent(keyCode, padKeyEvent);
    }

    protected boolean onKeyEvent(int keyCode, PadKeyEvent event) {
        return false;
    }

    @Override // com.papa.controller.core.c
    public void onKeyPressure(int keyCode, float pressure, PadKeyEvent padKeyEvent) {
        onKeyEvent(keyCode, padKeyEvent);
    }

    @Override // com.papa.controller.core.c
    public void onKeyUp(int keyCode, PadKeyEvent padKeyEvent) {
        onKeyEvent(keyCode, padKeyEvent);
    }

    @Override // com.papa.controller.core.c
    public void onLeftStick(float x10, float y10, PadMotionEvent padMotionEvent) {
        onStickEvent(padMotionEvent);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        startMonitor();
    }

    @Override // com.papa.controller.core.c
    public void onRightStick(float x10, float y10, PadMotionEvent padMotionEvent) {
        onStickEvent(padMotionEvent);
    }

    @Override // com.papa.controller.core.c
    public void onStateEvent(PadStateEvent padStateEvent) {
    }

    protected boolean onStickEvent(PadMotionEvent event) {
        return false;
    }

    @Override // com.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        stopMonitor();
    }

    KeyEvent padEvent2KeyEvent(PadKeyEvent event) {
        int iY = event.y();
        int iW = event.w();
        event.A();
        event.b();
        event.d();
        return new KeyEvent(iW, iY);
    }

    void setControllerDeviceListener() {
        com.papa.controller.core.d dVar = this.mControllerMonitor;
        if (dVar != null) {
            dVar.v(new a());
        }
    }

    public void setSpp4CheckInfo(boolean spp4CheckInfo) {
        this.spp4CheckInfo = spp4CheckInfo;
    }

    public void setVibrate(int intensityL, int intensityR) {
        com.papa.controller.core.d dVar = this.mControllerMonitor;
        if (dVar != null) {
            dVar.y(intensityL, intensityR);
        }
    }

    void startMonitor() {
        try {
            if (this.mControllerMonitor == null) {
                this.mControllerMonitor = new com.papa.controller.core.d(this);
            }
            com.papa.controller.core.d dVar = this.mControllerMonitor;
            if (dVar != null) {
                dVar.w(this, new Handler());
                setControllerDeviceListener();
                this.mControllerMonitor.x(this.spp4CheckInfo);
                this.mControllerMonitor.B();
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
        valueAnimatorOfInt.addUpdateListener(new b());
        valueAnimatorOfInt.start();
    }

    void stopMonitor() {
        com.papa.controller.core.d dVar = this.mControllerMonitor;
        if (dVar != null) {
            dVar.F();
        }
    }
}
