package org.ppsspp.ppsspp;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.bda.controller.Controller;
import com.bda.controller.KeyEvent;
import com.bda.controller.StateEvent;

/* JADX INFO: loaded from: classes10.dex */
public class NativeGLView extends GLSurfaceView implements SensorEventListener, com.bda.controller.b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static String f95858n = "NativeGLView";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f95859o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f95860p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f95861q = 2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f95862r = 3;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f95863s = 4;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f95864t = 5;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f95865u = 6;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f95866v = 7;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f95867w = 8;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final float f95868x = 15.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SensorManager f95869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Sensor f95870c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Controller f95871d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f95872e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    NativeActivity f95873f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f95874g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f95875h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f95876i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f95877j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f95878k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private GestureDetector f95879l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    a f95880m;

    interface a {
        void getMode(int i10);
    }

    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            super.onLongPress(motionEvent);
            if (NativeGLView.this.f95874g == 7 || NativeGLView.this.f95874g == 8) {
                return;
            }
            NativeGLView.this.f95874g = 6;
            NativeGLView nativeGLView = NativeGLView.this;
            a aVar = nativeGLView.f95880m;
            if (aVar != null) {
                aVar.getMode(nativeGLView.f95874g);
            }
        }
    }

    public NativeGLView(NativeActivity nativeActivity) {
        super(nativeActivity);
        this.f95871d = null;
        this.f95872e = false;
        this.f95873f = nativeActivity;
        SensorManager sensorManager = (SensorManager) nativeActivity.getSystemService("sensor");
        this.f95869b = sensorManager;
        this.f95870c = sensorManager.getDefaultSensor(1);
        Controller controller = Controller.getInstance(nativeActivity);
        this.f95871d = controller;
        try {
            g.a(controller, nativeActivity);
            this.f95871d.setListener(this, new Handler());
        } catch (Exception unused) {
        }
        e();
    }

    private void c(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() >= 2) {
            float x10 = motionEvent.getX(0) - motionEvent.getX(1);
            float y10 = motionEvent.getY(0) - motionEvent.getY(1);
            float fSqrt = (float) Math.sqrt((x10 * x10) + (y10 * y10));
            if (this.f95878k != 0.0f) {
                if (System.currentTimeMillis() - this.f95877j <= 50 || Math.abs(fSqrt - this.f95878k) <= 15.0f) {
                    return;
                }
                if (fSqrt / this.f95878k > 1.0f) {
                    this.f95874g = 7;
                } else {
                    this.f95874g = 8;
                }
                this.f95877j = System.currentTimeMillis();
                this.f95875h = motionEvent.getX();
                this.f95876i = motionEvent.getY();
                this.f95878k = fSqrt;
                return;
            }
            this.f95878k = fSqrt;
        }
        float fAbs = Math.abs(motionEvent.getX() - this.f95875h);
        float fAbs2 = Math.abs(motionEvent.getY() - motionEvent.getY());
        if (System.currentTimeMillis() - this.f95877j > 1500 && Math.abs(fAbs) < 15.0f && Math.abs(fAbs2) < 15.0f) {
            this.f95874g = 6;
            return;
        }
        if (System.currentTimeMillis() - this.f95877j > 50) {
            float x11 = motionEvent.getX() - this.f95875h;
            float y11 = motionEvent.getY() - this.f95876i;
            if (Math.abs(x11) > Math.abs(y11)) {
                if (x11 > 0.0f) {
                    this.f95874g = 3;
                } else {
                    this.f95874g = 2;
                }
            } else if (y11 > 0.0f) {
                this.f95874g = 5;
            } else {
                this.f95874g = 4;
            }
            this.f95877j = System.currentTimeMillis();
            this.f95875h = motionEvent.getX();
            this.f95876i = motionEvent.getY();
        }
    }

    @TargetApi(14)
    private int d(MotionEvent motionEvent, int i10) {
        return motionEvent.getToolType(i10);
    }

    private void e() {
        this.f95879l = new GestureDetector(getContext(), new b());
    }

    public void f() {
        Controller controller = this.f95871d;
        if (controller != null) {
            controller.exit();
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002d  */
    /* JADX WARN: Code duplicated, block: B:21:0x0033  */
    public boolean g(MotionEvent motionEvent) {
        a aVar;
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f95879l.onTouchEvent(motionEvent);
            this.f95874g = 1;
            this.f95875h = motionEvent.getRawX();
            this.f95876i = motionEvent.getRawY();
            this.f95877j = System.currentTimeMillis();
            this.f95878k = 0.0f;
            a aVar2 = this.f95880m;
            if (aVar2 != null) {
                aVar2.getMode(this.f95874g);
            }
        } else if (action == 1) {
            this.f95874g = 0;
            aVar = this.f95880m;
            if (aVar != null) {
                aVar.getMode(0);
            }
        } else if (action == 2) {
            c(motionEvent);
            a aVar3 = this.f95880m;
            if (aVar3 != null) {
                aVar3.getMode(this.f95874g);
            }
        } else if (action == 3) {
            this.f95874g = 0;
            a aVar4 = this.f95880m;
            if (aVar4 != null) {
                aVar4.getMode(0);
            }
        } else if (action == 6) {
            this.f95874g = 0;
            aVar = this.f95880m;
            if (aVar != null) {
                aVar.getMode(0);
            }
        }
        return true;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override // com.bda.controller.b
    public void onKeyEvent(KeyEvent keyEvent) {
        if (!this.f95872e) {
            switch (keyEvent.w()) {
            }
            return;
        }
        int iF = keyEvent.f();
        if (iF == 0) {
            NativeApp.keyDown(10, keyEvent.w(), false);
        } else {
            if (iF != 1) {
                return;
            }
            NativeApp.keyUp(10, keyEvent.w());
        }
    }

    @Override // com.bda.controller.b
    public void onMotionEvent(com.bda.controller.MotionEvent motionEvent) {
        NativeApp.joystickAxis(10, 0, motionEvent.m(0));
        NativeApp.joystickAxis(10, 1, motionEvent.m(1));
        NativeApp.joystickAxis(10, 11, motionEvent.m(11));
        NativeApp.joystickAxis(10, 14, motionEvent.m(14));
        NativeApp.joystickAxis(10, 17, motionEvent.m(17));
        NativeApp.joystickAxis(10, 18, motionEvent.m(18));
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        super.onPause();
        this.f95869b.unregisterListener(this);
        Controller controller = this.f95871d;
        if (controller != null) {
            controller.onPause();
        }
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.f95869b.registerListener(this, this.f95870c, 1);
        Controller controller = this.f95871d;
        if (controller != null) {
            controller.onResume();
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() != 1) {
            return;
        }
        float[] fArr = sensorEvent.values;
        NativeApp.accelerometer(fArr[0], fArr[1], fArr[2]);
    }

    @Override // com.bda.controller.b
    public void onStateEvent(StateEvent stateEvent) {
        int iW = stateEvent.w();
        if (iW != 1) {
            if (iW != 2) {
                return;
            }
            stateEvent.f();
            return;
        }
        int iF = stateEvent.f();
        if (iF == 0) {
            NativeApp.sendMessage("moga", "");
            return;
        }
        if (iF != 1) {
            return;
        }
        if (this.f95871d.getState(4) == 0) {
            NativeApp.sendMessage("moga", "Moga");
        } else {
            this.f95872e = true;
            NativeApp.sendMessage("moga", "MogaPro");
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0022  */
    /* JADX WARN: Code duplicated, block: B:17:0x0024  */
    /* JADX WARN: Code duplicated, block: B:20:0x002c  */
    /* JADX WARN: Code duplicated, block: B:22:0x0032  */
    /* JADX WARN: Code duplicated, block: B:23:0x0034  */
    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i10 = 0;
        while (true) {
            int i11 = 1;
            if (i10 >= motionEvent.getPointerCount()) {
                return true;
            }
            int pointerId = motionEvent.getPointerId(i10);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (motionEvent.getActionIndex() == i10) {
                    i11 = 2;
                } else {
                    i11 = 0;
                }
            } else if (actionMasked == 1) {
                if (actionMasked != 3 || motionEvent.getActionIndex() == i10) {
                    i11 = 4;
                } else {
                    i11 = 0;
                }
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    if (actionMasked != 3) {
                    }
                    i11 = 4;
                } else {
                    if (actionMasked != 5) {
                        if (actionMasked == 6) {
                            if (actionMasked != 3) {
                            }
                            i11 = 4;
                        }
                    } else if (motionEvent.getActionIndex() == i10) {
                        i11 = 2;
                    }
                    i11 = 0;
                }
            }
            if (i11 != 0) {
                NativeApp.touch(motionEvent.getX(i10), motionEvent.getY(i10), i11 | (d(motionEvent, i10) << 10), pointerId);
            }
            i10++;
        }
    }

    public void setListener(a aVar) {
        this.f95880m = aVar;
    }
}
