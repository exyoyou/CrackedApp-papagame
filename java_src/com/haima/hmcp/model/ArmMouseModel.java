package com.haima.hmcp.model;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import androidx.core.view.MotionEventCompat;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import com.haima.hmcp.listeners.ArmMouseModelListener;
import com.haima.hmcp.utils.ConfigUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.MotionEventUtil;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class ArmMouseModel {
    public static final int MOUSE_OPERATION_LOCKED = 0;
    public static final int MOUSE_OPERATION_UNLOCKED = 1;
    public static final int MSG_HIDE_MOUSE = 2;
    public static final int MSG_MOVE_MOUSE = 3;
    public static final int MSG_SHOW_MOUSE = 1;
    private static final String TAG = "ArmMouseModel";
    private ArmMouseModelListener listener;
    private Context mContext;
    private float mLastMouseX;
    private float mLastMouseY;
    private TcMouseManager mMouseManager;
    private boolean mMouseMoving;
    private float mRZ;
    private float mZ;
    private Point screenDisplay;
    protected PointCoord mMouseDown = new PointCoord();
    private float mouseX = -1.0f;
    private float mouseY = -1.0f;
    private float mMouseDownRX = 0.3f;
    private float mMouseDownRY = 0.2f;
    private float edgeSpeed = 0.001f;
    private float sensitivityMouse = 0.6f;
    private float sensitivityMouseResult = 1.0f;
    protected float mMouseDownX = 0.6f;
    protected float mMouseDownY = 0.4f;
    private int mAxisStatusMouse = 0;
    private boolean isListenHover = false;
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.haima.hmcp.model.ArmMouseModel.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                ArmMouseModel.this.showMouse();
                return;
            }
            if (i10 == 2) {
                ArmMouseModel.this.hideMouse();
            } else {
                if (i10 != 3) {
                    return;
                }
                ArmMouseModel.this.moveMouse();
                sendEmptyMessageDelayed(3, 50L);
            }
        }
    };

    public ArmMouseModel(Context context) {
        this.mContext = context;
    }

    private void clickFireButton(int i10, PointCoord pointCoord) {
        String str = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("clickFireButton actionType");
        sb2.append(i10);
        sb2.append(" coord==null? ");
        sb2.append(pointCoord == null);
        LogUtils.d(str, sb2.toString());
        if (pointCoord == null) {
            return;
        }
        sendMouseMotionEvent(i10, new FPoint(pointCoord.f33824x, pointCoord.f33825y));
    }

    private Context getContext() {
        return this.mContext;
    }

    private PointCoord getFireCoord() {
        ArmMouseModelListener armMouseModelListener = this.listener;
        if (armMouseModelListener != null) {
            return armMouseModelListener.onGetFireCoord();
        }
        LogUtils.i(TAG, "getFireCoord fail");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideMouse() {
        TcMouseManager tcMouseManager = this.mMouseManager;
        if (tcMouseManager != null) {
            tcMouseManager.setShowMouse(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveMouse() {
        int iAbs = (int) (Math.abs(this.mZ) * 3.0f);
        int iAbs2 = (int) (Math.abs(this.mRZ) * 3.0f);
        float f10 = this.mZ;
        if (f10 > 0.1d) {
            this.mMouseManager.dispatchKeyCodeToMouse(22, iAbs);
        } else if (f10 < -0.1d) {
            this.mMouseManager.dispatchKeyCodeToMouse(21, iAbs);
        }
        float f11 = this.mRZ;
        if (f11 > 0.1d) {
            this.mMouseManager.dispatchKeyCodeToMouse(20, iAbs2);
        } else if (f11 < -0.1d) {
            this.mMouseManager.dispatchKeyCodeToMouse(19, iAbs2);
        }
    }

    private void sendInputDevice(int i10, int i11) {
        ArmMouseModelListener armMouseModelListener = this.listener;
        if (armMouseModelListener != null) {
            armMouseModelListener.onInputDeviceSend(i10, i11);
        } else {
            LogUtils.i(TAG, "sendInputDevice fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMouse() {
        TcMouseManager tcMouseManager = this.mMouseManager;
        if (tcMouseManager != null) {
            tcMouseManager.setShowMouse(true);
        }
    }

    private boolean withinScope(float f10, float f11) {
        PointCoord pointCoord = this.mMouseDown;
        float f12 = pointCoord.f33824x;
        float f13 = this.mMouseDownX;
        float f14 = this.mMouseDownRX;
        if (f12 > f13 - f14 && f12 < f13 + f14) {
            float f15 = pointCoord.f33825y;
            float f16 = this.mMouseDownY;
            float f17 = this.mMouseDownRY;
            if (f15 > f16 - f17 && f15 < f16 + f17) {
                return true;
            }
        }
        return false;
    }

    public void clearFPoint() {
        TcMouseManager tcMouseManager = this.mMouseManager;
        if (tcMouseManager != null) {
            tcMouseManager.clearFPoint();
        }
    }

    public void clickSightBeadButton() {
        if (this.isListenHover && this.mAxisStatusMouse == 1) {
            upAndResetMouse();
        }
        this.isListenHover = !this.isListenHover;
        sendSceneUSBMouseMessage();
        LogUtils.d(TAG, "clickSightbeadButton isListenHover " + this.isListenHover);
    }

    public int getMouseOperation() {
        return this.isListenHover ? 1 : 0;
    }

    public void hideMouseEvent() {
        this.mHandler.sendEmptyMessage(2);
    }

    public void init(ViewGroup viewGroup) {
        TcMouseManager tcMouseManager = new TcMouseManager();
        this.mMouseManager = tcMouseManager;
        tcMouseManager.init(viewGroup, 0);
        this.mMouseManager.showMouseView();
        hideMouse();
        this.screenDisplay = new Point();
        ConfigUtil.getScreenSize(getContext(), this.screenDisplay);
    }

    public boolean isListenHover() {
        return this.isListenHover;
    }

    public void onFirstFrameArrival() {
        if (this.isListenHover) {
            PointCoord pointCoord = this.mMouseDown;
            sendMouseMotionEvent(1, new FPoint(pointCoord.f33824x, pointCoord.f33825y));
            this.mAxisStatusMouse = 1;
        }
    }

    public void onStop() {
        sendSceneUSBMouseMessage();
        this.isListenHover = false;
        upAndResetMouse();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 8194) != 8194 || !this.isListenHover) {
            return false;
        }
        PointCoord fireCoord = getFireCoord();
        if (motionEvent.getButtonState() == 1 && MotionEventCompat.getActionMasked(motionEvent) == 0) {
            if (fireCoord == null || fireCoord.keyCode == -2) {
                LogUtils.d(TAG, "==sendEventContent = 鼠标左键映射开火键---down");
                sendInputDevice(2, 1);
                clickFireButton(1, fireCoord);
            } else {
                LogUtils.d(TAG, "==sendEventContent = 自定义开火键 down");
            }
            return true;
        }
        if (MotionEventCompat.getActionMasked(motionEvent) == 1) {
            if (fireCoord == null || fireCoord.keyCode == -2) {
                LogUtils.d(TAG, "==sendEventContent = 鼠标左键映射开火键----up");
                clickFireButton(2, fireCoord);
            } else {
                LogUtils.d(TAG, "==sendEventContent = 自定义开火键 up");
            }
            return true;
        }
        if (motionEvent.getAction() != 2) {
            return false;
        }
        sendInputDevice(2, 1);
        LogUtils.d(TAG, "==processMouseMove = left mouse----down move");
        processMouseMove(motionEvent, -1);
        return true;
    }

    public void processJoystickInput(float f10, float f11) {
        this.mZ = f10;
        this.mRZ = f11;
        LogUtils.d(TAG, "processJoystickInput mRZ ---" + this.mZ + ", " + this.mRZ);
        if (this.mZ == 0.0f && this.mRZ == 0.0f) {
            this.mMouseMoving = false;
            this.mHandler.removeMessages(3);
        } else {
            if (this.mMouseMoving) {
                return;
            }
            this.mMouseMoving = true;
            this.mHandler.sendEmptyMessage(3);
        }
    }

    public boolean processMouseMove(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 66 && keyCode != 96) {
            switch (keyCode) {
            }
            return true;
        }
        this.mMouseManager.onclick(null, keyEvent);
        return true;
    }

    public void resetDefaultPoint() {
        this.mMouseManager.setMousePoint(this.mouseX, this.mouseY);
    }

    public void rotateMouseView(boolean z10) {
        this.mMouseManager.getmMouseView().rotateMouseView(z10);
    }

    protected void sendMouseMotionEvent(int i10, FPoint fPoint) {
        String sendMotionEventContent = MotionEventUtil.getSendMotionEventContent(i10, fPoint);
        LogUtils.d(TAG, "==sendEventContent = " + sendMotionEventContent);
        ArmMouseModelListener armMouseModelListener = this.listener;
        if (armMouseModelListener != null) {
            armMouseModelListener.onSendMotionEventContent(i10, sendMotionEventContent);
        }
    }

    public void sendSceneUSBMouseMessage() {
        JSONObject jSONObject = new JSONObject();
        try {
            ResourceManager.getInstance();
            jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_usb_mouse_sensitivity), this.sensitivityMouse);
            ResourceManager.getInstance();
            jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_usb_mouse_operation_mode), getMouseOperation());
            ArmMouseModelListener armMouseModelListener = this.listener;
            if (armMouseModelListener != null) {
                ResourceManager.getInstance();
                armMouseModelListener.onSendSceneMessage(ResourceManager.getString(R.string.haima_hmcp_scene_usb_mouse_change), jSONObject.toString());
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public boolean setInitMousePoint(float f10, float f11) {
        if (f10 < 0.0f || f11 < 0.0f || f10 > 1.0f || f11 > 1.0f) {
            return false;
        }
        this.mouseX = f10;
        this.mouseY = f11;
        return true;
    }

    public void setListener(ArmMouseModelListener armMouseModelListener) {
        this.listener = armMouseModelListener;
    }

    public void setMouseBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            LogUtils.d("MouseBitmap", "param invalid");
            return;
        }
        TcMouseManager tcMouseManager = this.mMouseManager;
        if (tcMouseManager != null) {
            tcMouseManager.setMouseBitmap(bitmap);
        }
    }

    public void setMouseIcon(String str, int i10) {
        if (TextUtils.isEmpty(str) || !(i10 == 0 || i10 == 1)) {
            LogUtils.d("MouseIcon", "param invalid");
            return;
        }
        TcMouseManager tcMouseManager = this.mMouseManager;
        if (tcMouseManager != null) {
            tcMouseManager.setMouseIcon(str, i10);
        }
    }

    public boolean setMouseMoveStep(int i10) {
        TcMouseManager tcMouseManager = this.mMouseManager;
        if (tcMouseManager == null) {
            return false;
        }
        tcMouseManager.setMouseMoveStep(i10);
        LogUtils.d(TAG, "progress step:" + i10);
        setSensitivityMouse((float) ((((double) i10) * 1.0d) / 10.0d));
        return true;
    }

    public void setMouseOffSet(int i10, int i11) {
        TcMouseManager tcMouseManager = this.mMouseManager;
        if (tcMouseManager != null) {
            tcMouseManager.setMouseOffSet(i10, i11);
        }
    }

    public void setMouseOffSetRatio(float f10, float f11) {
        TcMouseManager tcMouseManager = this.mMouseManager;
        if (tcMouseManager != null) {
            tcMouseManager.setMouseOffSetRatio(f10, f11);
        }
    }

    public void setSensitivityMouse(float f10) {
        if (f10 < 0.0f || f10 > 1.0f) {
            return;
        }
        this.sensitivityMouse = f10;
        this.sensitivityMouseResult = (float) ((((double) f10) * 1.4d) + 0.16d);
        LogUtils.d(TAG, "sensitivityMouseResult:" + this.sensitivityMouseResult);
    }

    public void setUnlockMode() {
        this.isListenHover = false;
        upAndResetMouse();
    }

    public void showMouseEvent() {
        this.mHandler.sendEmptyMessage(1);
    }

    public void upAndResetMouse() {
        PointCoord pointCoord = this.mMouseDown;
        sendMouseMotionEvent(2, new FPoint(pointCoord.f33824x, pointCoord.f33825y));
        PointCoord pointCoord2 = this.mMouseDown;
        pointCoord2.f33824x = this.mMouseDownX;
        pointCoord2.f33825y = this.mMouseDownY;
        this.mAxisStatusMouse = 0;
    }

    public void processMouseMove(MotionEvent motionEvent, int i10) {
        float f10;
        float f11;
        InputDevice device = motionEvent.getDevice();
        if (device == null) {
            return;
        }
        if (this.mAxisStatusMouse != 1) {
            PointCoord pointCoord = this.mMouseDown;
            if (pointCoord != null) {
                sendMouseMotionEvent(1, new FPoint(pointCoord.f33824x, pointCoord.f33825y));
                this.mAxisStatusMouse = 1;
                this.mLastMouseX = motionEvent.getX();
                this.mLastMouseY = motionEvent.getY();
                return;
            }
            return;
        }
        float centeredAxis = MotionEventUtil.getCenteredAxis(motionEvent, device, 0, i10);
        float centeredAxis2 = MotionEventUtil.getCenteredAxis(motionEvent, device, 1, i10);
        String str = TAG;
        LogUtils.d(str, "processMouseMove event AXIS_X:" + centeredAxis + " AXIS_Y:" + centeredAxis2 + " last x: " + this.mLastMouseX + " last y: " + this.mLastMouseY + " mAxisStatusMouse:" + this.mAxisStatusMouse);
        float f12 = centeredAxis - this.mLastMouseX;
        float f13 = centeredAxis2 - this.mLastMouseY;
        if (f12 == 0.0f) {
            if (centeredAxis <= 1.0f) {
                LogUtils.d(str, "left----------- axisX:" + centeredAxis + " axisY:" + centeredAxis2);
                LogUtils.d(str, "left----------- speed to left:");
                f10 = -this.edgeSpeed;
            } else {
                f10 = 0.0f;
            }
            if (centeredAxis >= this.screenDisplay.x - 1) {
                LogUtils.d(str, "right----------- axisX:" + centeredAxis + " axisY:" + centeredAxis2);
                LogUtils.d(str, "right----------- speed to right:");
                f10 = this.edgeSpeed;
            }
        } else {
            f10 = 0.0f;
        }
        if (f13 == 0.0f) {
            if (centeredAxis2 <= 1.0f) {
                LogUtils.d(str, "top----------- axisX:" + centeredAxis + " axisY:" + centeredAxis2);
                LogUtils.d(str, "top----------- speed to  top:");
                f11 = -this.edgeSpeed;
            } else {
                f11 = 0.0f;
            }
            if (centeredAxis2 >= this.screenDisplay.y - 1) {
                LogUtils.d(str, "bottom----------- axisX:" + centeredAxis + " axisY:" + centeredAxis2);
                LogUtils.d(str, "bottom----------- speed to  bottom:");
                f11 = -this.edgeSpeed;
            }
        } else {
            f11 = 0.0f;
        }
        if (Math.abs(f10) <= 0.0f && Math.abs(f11) <= 0.0f) {
            if (!withinScope(centeredAxis, centeredAxis2)) {
                upAndResetMouse();
                PointCoord pointCoord2 = this.mMouseDown;
                sendMouseMotionEvent(1, new FPoint(pointCoord2.f33824x, pointCoord2.f33825y));
                this.mAxisStatusMouse = 1;
            }
            LogUtils.d(str, "processMouseMove event distance x:" + f12 + " distance y:" + f13);
            Point point = this.screenDisplay;
            float f14 = f12 / ((float) point.x);
            float f15 = this.sensitivityMouseResult;
            float f16 = f14 * f15;
            float f17 = (f13 / ((float) point.y)) * f15;
            LogUtils.d(str, "processMouseMove event format:" + String.format(Locale.ENGLISH, "mode map:%.4f:%.4f", Float.valueOf(f16), Float.valueOf(f17)));
            PointCoord pointCoord3 = this.mMouseDown;
            float f18 = pointCoord3.f33824x + f16;
            pointCoord3.f33824x = f18;
            float f19 = pointCoord3.f33825y + f17;
            pointCoord3.f33825y = f19;
            sendMouseMotionEvent(3, new FPoint(f18, f19));
            this.mLastMouseX = centeredAxis;
            this.mLastMouseY = centeredAxis2;
            return;
        }
        if (!withinScope(centeredAxis, centeredAxis2)) {
            upAndResetMouse();
            PointCoord pointCoord4 = this.mMouseDown;
            sendMouseMotionEvent(1, new FPoint(pointCoord4.f33824x, pointCoord4.f33825y));
            this.mAxisStatusMouse = 1;
        }
        LogUtils.d(str, "processMouseMove event format edge:" + String.format(Locale.ENGLISH, "mode map:%.4f:%.4f", Float.valueOf(f10), Float.valueOf(f11)));
        PointCoord pointCoord5 = this.mMouseDown;
        float f20 = pointCoord5.f33824x;
        float f21 = this.sensitivityMouseResult;
        float f22 = f20 + (f10 * f21);
        pointCoord5.f33824x = f22;
        float f23 = pointCoord5.f33825y + (f11 * f21);
        pointCoord5.f33825y = f23;
        sendMouseMotionEvent(3, new FPoint(f22, f23));
        this.mLastMouseX = centeredAxis;
        this.mLastMouseY = centeredAxis2;
    }
}
