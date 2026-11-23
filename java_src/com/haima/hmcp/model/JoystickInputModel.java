package com.haima.hmcp.model;

import android.text.TextUtils;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.business.GamePadManager;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.listeners.JoystickInputModelListener;
import com.haima.hmcp.utils.ButtonMappingUtil;
import com.haima.hmcp.utils.KeyMapUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.MotionEventUtil;
import com.haima.hmcp.utils.TrackBallUtil;
import com.haima.hmcp.widgets.CountDownTimer;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class JoystickInputModel {
    public static final String GAME_PAD_EVENT_ABS = "gamePadABS";
    private static final String TAG = "JoystickInputModel";
    private EventMappingModel eventMappingModel;
    private JoystickInputModelListener listener;
    private boolean mMouseMoving;
    private TrackBallTask mTrackBallTask;
    private TrackBallRMoveThread moveThread;
    public final String GAME_PAD_EVENT_TRACKBALL = "gamePadTrackBallL";
    public final String GAME_PAD_EVENT_TRACKBALR = "gamePadTrackBallR";
    private PointCoord mHatCoord = null;
    private int mAxisStatus = 0;
    private int mAxisStatusR = 0;
    private int pointCode = 0;
    private float mLastX = 0.0f;
    private float mLastY = 0.0f;
    private float mLastZ = 0.0f;
    private float mLastRZ = 0.0f;
    protected float mLastHatX = 0.0f;
    protected float mLastHatY = 0.0f;
    private boolean rightIsDown = false;
    private boolean leftIsDown = false;
    private boolean upIsDown = false;
    private boolean downIsDown = false;

    class TrackBallRMoveThread extends Thread {
        private final String TRACK_BALL_R_MOVE_THREAD_TAG = TrackBallRMoveThread.class.getSimpleName();
        private boolean isSend = true;
        private TrackBallRMoveThreadListener listener;
        private float mx;
        private float my;
        private float rz;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private float f34058x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private float f34059y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private float f34060z;

        public TrackBallRMoveThread(float f10, float f11) {
            this.mx = f10;
            this.my = f11;
            this.f34058x = f10;
            this.f34059y = f11;
        }

        private float chooseNo(float f10) {
            return Math.max(Math.min(f10, 1.0f), 0.0f);
        }

        private float getMoveSpeed() {
            TrackBallRMoveThreadListener trackBallRMoveThreadListener = this.listener;
            if (trackBallRMoveThreadListener != null) {
                return trackBallRMoveThreadListener.onMoveSpeed();
            }
            LogUtils.i(this.TRACK_BALL_R_MOVE_THREAD_TAG, "getMoveSpeed fail");
            return 0.04f;
        }

        private boolean isMorePointIsRun() {
            TrackBallRMoveThreadListener trackBallRMoveThreadListener = this.listener;
            if (trackBallRMoveThreadListener != null) {
                return trackBallRMoveThreadListener.onMorePointIsRun();
            }
            LogUtils.i(this.TRACK_BALL_R_MOVE_THREAD_TAG, "isMorePointIsRun fail");
            return false;
        }

        private void putMapModeEvent(String str, String str2) {
            TrackBallRMoveThreadListener trackBallRMoveThreadListener = this.listener;
            if (trackBallRMoveThreadListener != null) {
                trackBallRMoveThreadListener.onPutMapModeEvent(str, str2);
            } else {
                LogUtils.i(this.TRACK_BALL_R_MOVE_THREAD_TAG, "putMapModeEvent fail");
            }
        }

        private void removeMapModeEvent(String str) {
            TrackBallRMoveThreadListener trackBallRMoveThreadListener = this.listener;
            if (trackBallRMoveThreadListener != null) {
                trackBallRMoveThreadListener.onRemoveMapModeEvent(str);
            } else {
                LogUtils.i(this.TRACK_BALL_R_MOVE_THREAD_TAG, "removeMapModeEvent fail");
            }
        }

        private boolean sendMotionEvent(int i10, FPoint fPoint) {
            TrackBallRMoveThreadListener trackBallRMoveThreadListener = this.listener;
            if (trackBallRMoveThreadListener != null) {
                return trackBallRMoveThreadListener.onSendMotionEvent(i10, fPoint);
            }
            LogUtils.i(JoystickInputModel.TAG, "sendMotionEvent fail");
            return false;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            putMapModeEvent("trackBallRMove", this.f34058x + "" + this.f34059y);
            while (this.isSend && !isMorePointIsRun()) {
                this.f34058x = chooseNo(this.f34058x + (getMoveSpeed() * this.f34060z));
                float fChooseNo = chooseNo(this.f34059y + (getMoveSpeed() * this.rz));
                this.f34059y = fChooseNo;
                float f10 = this.f34058x;
                if (f10 <= 0.0f || f10 >= 1.0f || fChooseNo <= 0.0f || fChooseNo >= 1.0f) {
                    sendMotionEvent(3, new FPoint(f10, fChooseNo));
                    sendMotionEvent(2, new FPoint(this.f34058x, this.f34059y));
                    this.f34058x = this.mx;
                    this.f34059y = this.my;
                    LogUtils.e("sendMotionEvent", "x<=0||x>=1||y<=0||y>=1:" + this.f34058x + " , " + this.f34059y);
                    sendMotionEvent(1, new FPoint(this.f34058x, this.f34059y));
                    this.f34058x = chooseNo(this.f34058x + (getMoveSpeed() * this.f34060z));
                    float fChooseNo2 = chooseNo(this.f34059y + (getMoveSpeed() * this.rz));
                    this.f34059y = fChooseNo2;
                    sendMotionEvent(3, new FPoint(this.f34058x, fChooseNo2));
                } else {
                    LogUtils.e("sendMotionEvent", ":" + this.f34058x + " , " + this.f34059y);
                    sendMotionEvent(3, new FPoint(this.f34058x, this.f34059y));
                }
                try {
                    Thread.sleep(80L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
            LogUtils.e("sendMotionEvent", ":" + this.f34058x + " , " + this.f34059y);
            if (isMorePointIsRun()) {
                return;
            }
            sendMotionEvent(3, new FPoint(this.f34058x, this.f34059y));
            sendMotionEvent(2, new FPoint(this.f34058x, this.f34059y));
            removeMapModeEvent("trackBallRMove");
        }

        public void setIsSend(boolean z10) {
            this.isSend = z10;
        }

        public void setListener(TrackBallRMoveThreadListener trackBallRMoveThreadListener) {
            this.listener = trackBallRMoveThreadListener;
        }

        public void setMoveSp(ScreenOrientation screenOrientation, float f10, float f11) {
            if (screenOrientation == ScreenOrientation.PORTRAIT) {
                this.f34060z = f11;
                this.rz = -f10;
            } else {
                this.f34060z = f10;
                this.rz = f11;
            }
        }
    }

    interface TrackBallRMoveThreadListener {
        boolean onMorePointIsRun();

        float onMoveSpeed();

        void onPutMapModeEvent(String str, String str2);

        void onRemoveMapModeEvent(String str);

        boolean onSendMotionEvent(int i10, FPoint fPoint);
    }

    class TrackBallTask extends CountDownTimer {
        public TrackBallTask(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            if (JoystickInputModel.this.mAxisStatus == 2) {
                JoystickInputModel joystickInputModel = JoystickInputModel.this;
                joystickInputModel.sendMotionEvent(2, joystickInputModel.getTrackBallL());
                JoystickInputModel joystickInputModel2 = JoystickInputModel.this;
                joystickInputModel2.cacheModeMapEvent(2, 0.0f, 0.0f, joystickInputModel2.getTrackBallL());
                JoystickInputModel.this.mAxisStatus = 0;
            }
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cacheModeMapEvent(int i10, float f10, float f11, PointCoord pointCoord) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            joystickInputModelListener.onCacheModeMapEvent(i10, f10, f11, pointCoord);
        } else {
            LogUtils.i(TAG, "cacheModeMapEvent fail");
        }
    }

    private float checkRange(float f10) {
        String str = TAG;
        LogUtils.d(str, "sendGamepadKeyEvent checkRange value:" + f10);
        float fMax = Math.max(-1.0f, Math.min(1.0f, f10));
        LogUtils.d(str, "sendGamepadKeyEvent result value:" + fMax);
        return fMax;
    }

    private void gamePadModeDpadEvent(KeyEvent keyEvent, int i10) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            joystickInputModelListener.onGamePadModeDpadEvent(keyEvent, i10);
        } else {
            LogUtils.i(TAG, "mappingProcessKey fail");
        }
    }

    private int getActionType(int i10) {
        return i10 == 0 ? 1 : 2;
    }

    private float getCenteredAxis(MotionEvent motionEvent, InputDevice inputDevice, int i10, int i11) {
        return MotionEventUtil.getCenteredAxis(motionEvent, inputDevice, i10, i11);
    }

    private ButtonMappings getCurrentButtonMappings() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getCurrentButtonMapping();
        }
        LogUtils.i(TAG, "getCurrentButtonMappings fail, eventMappingModel is null");
        return null;
    }

    private String getGamePadNumInBattle(String str) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            return joystickInputModelListener.onGamePadNumInBattle(str);
        }
        LogUtils.i(TAG, "getGamePadNumInBattle fail");
        return str;
    }

    private int getInputType() {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            return joystickInputModelListener.onInputType();
        }
        LogUtils.i(TAG, "setInputMode fail");
        return 1;
    }

    private String getMappingVersion() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getMappingVersion();
        }
        LogUtils.i(TAG, "getMappingVersion fail, eventMappingModel is null");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getMoveSpeed() {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            return joystickInputModelListener.onMoveSpeed();
        }
        LogUtils.i(TAG, "getMoveSpeed fail");
        return 0.04f;
    }

    private ScreenOrientation getScreenOrientation() {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            return joystickInputModelListener.onScreenOrientation();
        }
        LogUtils.i(TAG, "getScreenOrientation fail");
        return ScreenOrientation.LANDSCAPE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointCoord getTrackBallL() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getTrackBallL();
        }
        LogUtils.i(TAG, "getTrackBallL fail, eventMappingModel is null");
        return null;
    }

    private PointCoord getTrackBallR() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getTrackBallR();
        }
        LogUtils.i(TAG, "getTrackBallR fail, eventMappingModel is null");
        return null;
    }

    private boolean getTrackBallRMove() {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            return joystickInputModelListener.onTrackBallRMove();
        }
        LogUtils.i(TAG, "getTrackBallRMove fail");
        return false;
    }

    private PointCoord getTrackBallRZ() {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            return joystickInputModelListener.onTrackBallRZ();
        }
        LogUtils.d(TAG, "getTrackBallRZ fail");
        return null;
    }

    private boolean isInputType(int i10) {
        return getInputType() == i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isMorePointIsRun() {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            return joystickInputModelListener.onMorePointIsRun();
        }
        LogUtils.i(TAG, "isMorePointIsRun fail");
        return false;
    }

    private void mappingProcessDpad(float f10, float f11) {
        int i10;
        PointCoord pointCoord;
        if (!TextUtils.isEmpty(getMappingVersion())) {
            double d10 = f10;
            if (d10 > 0.5d) {
                i10 = 994;
            } else {
                i10 = d10 < -0.5d ? 995 : 0;
            }
            double d11 = f11;
            if (d11 > 0.5d) {
                i10 = 996;
            } else if (d11 < -0.5d) {
                i10 = 997;
            }
            if (i10 == 0) {
                int i11 = this.pointCode;
                if (i11 != 0) {
                    processKey2(i11, 2);
                    this.pointCode = 0;
                    return;
                }
                return;
            }
            int i12 = this.pointCode;
            if (i12 != 0) {
                processKey2(i12, 2);
                this.pointCode = 0;
            }
            processKey2(i10, 1);
            this.pointCode = i10;
            return;
        }
        ButtonMappings currentButtonMappings = getCurrentButtonMappings();
        if (currentButtonMappings == null) {
            LogUtils.d(TAG, "mappingProcessDpad but mCurrentButtonMappings is null");
            return;
        }
        double d12 = f10;
        if (d12 > 0.5d) {
            pointCoord = currentButtonMappings.buttonRight;
        } else {
            pointCoord = d12 < -0.5d ? currentButtonMappings.buttonLeft : null;
        }
        double d13 = f11;
        if (d13 > 0.5d) {
            pointCoord = currentButtonMappings.buttonDown;
        } else if (d13 < -0.5d) {
            pointCoord = currentButtonMappings.buttonUp;
        }
        if (pointCoord == null) {
            PointCoord pointCoord2 = this.mHatCoord;
            if (pointCoord2 != null) {
                sendMotionEvent(2, pointCoord2);
                this.mHatCoord = null;
                return;
            }
            return;
        }
        PointCoord pointCoord3 = this.mHatCoord;
        if (pointCoord3 != null) {
            sendMotionEvent(2, pointCoord3);
            this.mHatCoord = null;
        }
        sendMotionEvent(1, pointCoord);
        this.mHatCoord = pointCoord;
    }

    private void mappingProcessKey(KeyEvent keyEvent, int i10) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            joystickInputModelListener.onMappingProcessKey(keyEvent, i10);
        } else {
            LogUtils.i(TAG, "mappingProcessKey fail");
        }
    }

    private void mouseInputEvent(float f10, float f11) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            joystickInputModelListener.onMouseInputEvent(f10, f11);
        } else {
            LogUtils.i(TAG, "mouseInputEvent fail");
        }
    }

    private void processDpadKey(KeyEvent keyEvent) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            joystickInputModelListener.onProcessDpadKey(keyEvent);
        } else {
            LogUtils.i(TAG, "processDpadKey fail");
        }
    }

    private boolean processKey2(int i10, int i11) {
        if (this.listener != null) {
            return this.listener.onProcessKey2(new KeyEvent(i11, i10), i11);
        }
        LogUtils.i(TAG, "processKey2 fail");
        return false;
    }

    private void processMouseMove(KeyEvent keyEvent) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            joystickInputModelListener.onProcessMouseMove(keyEvent);
        } else {
            LogUtils.i(TAG, "processMouseMove fail");
        }
    }

    private void processNoneCrossKey(float f10, float f11, String str) {
        LogUtils.d(TAG, "sendtext processNoneCrossKey2 xHat:" + f10 + " mLastHatXGamePad:" + this.mLastHatX + " yHat:" + f11 + " mLastHatYGamePad:" + this.mLastHatY);
        if (this.mLastHatX != f10) {
            String gamePadHatXEventContent = MotionEventUtil.getGamePadHatXEventContent(getGamePadNumInBattle(str), f10);
            LogUtils.d("TelevisionVideoView", "processJoystickInput sendKeyboardEvent---" + gamePadHatXEventContent);
            sendEvent(gamePadHatXEventContent);
            this.mLastHatX = f10;
        }
        if (this.mLastHatY != f11) {
            String gamePadHatXEventContent2 = MotionEventUtil.getGamePadHatXEventContent(getGamePadNumInBattle(str), f11);
            LogUtils.d("TelevisionVideoView", "processJoystickInput sendKeyboardEvent---" + gamePadHatXEventContent2);
            sendEvent(gamePadHatXEventContent2);
            this.mLastHatY = f11;
        }
    }

    private String processTrackball(InputDevice inputDevice, float f10, float f11, float f12, float f13) {
        boolean z10;
        boolean z11;
        String gamePadNum = GamePadManager.getInstance().getGamePadNum(inputDevice);
        if (this.mLastX != f10) {
            this.mLastX = f10;
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.mLastY != f12) {
            this.mLastY = f12;
            z10 = true;
        }
        if (this.mLastZ != f11) {
            this.mLastZ = f11;
            z11 = true;
        } else {
            z11 = false;
        }
        if (this.mLastRZ != f13) {
            this.mLastRZ = f13;
            z11 = true;
        }
        LogUtils.d(TAG, "sendtext processJoystickInput:" + z10 + z11);
        if (z10 || z11) {
            Locale locale = Locale.ENGLISH;
            sendEvent(String.format(locale, "gamePad%s:MOVE_EVENT:%.4f:%.4f:%.4f:%.4f", getGamePadNumInBattle(gamePadNum), Float.valueOf(f10), Float.valueOf(f12), Float.valueOf(f11), Float.valueOf(f13)));
            if (z10 && f10 == 0.0f && f12 == 0.0f) {
                removeMapModeEvent("gamePadTrackBallL");
            } else if (z10) {
                putDownEventMap("gamePadTrackBallL", String.format(locale, "gamePad%s:MOVE_EVENT:%.4f:%.4f:%.4f:%.4f", getGamePadNumInBattle(gamePadNum), Float.valueOf(0.0f), Float.valueOf(0.0f), Float.valueOf(f11), Float.valueOf(f13)));
            }
            if (z11 && f11 == 0.0f && f13 == 0.0f) {
                removeMapModeEvent("gamePadTrackBallR");
            } else if (z11) {
                putDownEventMap("gamePadTrackBallR", String.format(locale, "gamePad%s:MOVE_EVENT:%.4f:%.4f:%.4f:%.4f", getGamePadNumInBattle(gamePadNum), Float.valueOf(f10), Float.valueOf(f12), Float.valueOf(0.0f), Float.valueOf(0.0f)));
            }
        }
        return gamePadNum;
    }

    private void putDownEventMap(String str, String str2) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            joystickInputModelListener.onPutDownEventMap(str, str2);
        } else {
            LogUtils.i(TAG, "putDownEventMap fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void putMapModeEvent(String str, String str2) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            joystickInputModelListener.onPutMapModeEvent(str, str2);
        } else {
            LogUtils.i(TAG, "putMapModeEvent fail");
        }
    }

    private void removeDownEventMap(String str) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            joystickInputModelListener.onRemoveDownEventMap(str);
        } else {
            LogUtils.i(TAG, "removeDownEventMap fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeMapModeEvent(String str) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            joystickInputModelListener.onRemoveMapModeEvent(str);
        } else {
            LogUtils.i(TAG, "removeMapModeEvent fail");
        }
    }

    private boolean sendEvent(String str) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            return joystickInputModelListener.onEventSend(str);
        }
        LogUtils.i(TAG, "sendEvent fail");
        return false;
    }

    private void sendGamePadStart(InputDevice inputDevice) {
        JoystickInputModelListener joystickInputModelListener = this.listener;
        if (joystickInputModelListener != null) {
            joystickInputModelListener.onGamePadStart(inputDevice);
        } else {
            LogUtils.i(TAG, "sendGamePadStart fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendMotionEvent(int i10, PointCoord pointCoord) {
        if (pointCoord != null) {
            return sendMotionEvent(i10, new FPoint(pointCoord.f33824x, pointCoord.f33825y));
        }
        LogUtils.d(TAG, "sendMotionEvent fail, PointCoord is null");
        return false;
    }

    public void cancelTimer(CountDownTimer countDownTimer) {
        if (countDownTimer == null) {
            return;
        }
        countDownTimer.cancel();
    }

    public void processJoystickInput(MotionEvent motionEvent, int i10) {
        InputDevice device = motionEvent.getDevice();
        if (device == null) {
            return;
        }
        float centeredAxis = getCenteredAxis(motionEvent, device, 0, i10);
        float centeredAxis2 = getCenteredAxis(motionEvent, device, 15, i10);
        float centeredAxis3 = getCenteredAxis(motionEvent, device, 11, i10);
        float centeredAxis4 = getCenteredAxis(motionEvent, device, 1, i10);
        float centeredAxis5 = getCenteredAxis(motionEvent, device, 16, i10);
        float centeredAxis6 = getCenteredAxis(motionEvent, device, 14, i10);
        LogUtils.d(TAG, "sendtext processJoystickInput xHat:" + centeredAxis2 + " yHat:" + centeredAxis5);
        processJoystickInput(device, centeredAxis, centeredAxis2, centeredAxis3, centeredAxis4, centeredAxis5, centeredAxis6);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void sendGamepadKeyEvent(int i10, int i11, float f10, float f11, float f12, float f13) {
        String str = TAG;
        LogUtils.d(str, "sendGamepadKeyEvent keyCode:" + i10 + " actionType:" + i11 + " touchX_1P:" + f10 + " touchY_1P: touchX_2P:" + f12 + " touchY_2P:" + f13);
        if (i10 < 0) {
            LogUtils.d(str, "sendGamepadKeyEvent keyCode is invalid!");
        }
        if (i10 == 0) {
            processJoystickInput(GamePadManager.getInstance().getmExternalDevice(), checkRange(f12), 0.0f, checkRange(f10), checkRange(f13), 0.0f, checkRange(f11));
            return;
        }
        if (i11 != 0 && i11 != 1) {
            LogUtils.d(str, "sendGamepadKeyEvent actionType is invalid!");
            return;
        }
        if (!ButtonMappingUtil.isCrossKey(i10)) {
            int iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(i10);
            LogUtils.d(str, "sendGamepadKeyEvent keyCodeToSend:" + iAndroidKeyCode2PASSKey + " mCurrentInputMode:" + getInputType());
            if (getInputType() == 4) {
                if (KeyEvent.isGamepadButton(i10) || i10 == 23) {
                    sendGamePadStart(GamePadManager.getInstance().getmExternalDevice());
                    LogUtils.e(str, " sendGamepadKeyEvent ACTION_DOWN -----------:KeyEvent.isGamepadButton(keyCode) " + i10);
                    mappingProcessKey(new KeyEvent(i11, i10), getActionType(i11));
                    return;
                }
                return;
            }
            if (getInputType() == 2) {
                if (i10 == 96 || KeyMapUtil.isDirectionKey(i10)) {
                    LogUtils.e(str, "sendGamepadKeyEvent ACTION_DOWN -----------:KeyEvent.GAMEPAD_MODE_MOUSE(keyCode) " + i10);
                    processMouseMove(new KeyEvent(i11, i10));
                    return;
                }
                return;
            }
            if (getInputType() == 5) {
                sendGamePadStart(GamePadManager.getInstance().getmExternalDevice());
                gamePadModeDpadEvent(new KeyEvent(i11, i10), iAndroidKeyCode2PASSKey);
                return;
            } else if (iAndroidKeyCode2PASSKey != 0) {
                sendEvent(MotionEventUtil.getSendKeyboardEventContent(i11 == 0 ? "keyDown" : "keyUp", iAndroidKeyCode2PASSKey));
                return;
            } else {
                sendEvent(MotionEventUtil.getSendKeyboardEventContent(i11 == 0 ? "1" : "0", KeyEvent.keyCodeToString(i10), GamePadManager.getInstance().getGamePadNum(GamePadManager.getInstance().getmExternalDevice())));
                return;
            }
        }
        float f14 = -1.0f;
        float f15 = 1.0f;
        switch (i10) {
            case 994:
                f14 = 1.0f;
                f15 = 0.0f;
                break;
            case 995:
                f15 = 0.0f;
                break;
            case 996:
                f14 = 0.0f;
                break;
            case 997:
                f14 = 0.0f;
                f15 = -1.0f;
                break;
            default:
                f14 = 0.0f;
                f15 = 0.0f;
                break;
        }
        if (getInputType() != 4) {
            if (getInputType() != 1) {
                if (getInputType() == 5) {
                    processDpadKey(new KeyEvent(i11, i10));
                    return;
                }
                return;
            } else if (i11 == 0) {
                processNoneCrossKey(f14, f15, GamePadManager.getInstance().getGamePadNum(GamePadManager.getInstance().getmExternalDevice()));
                return;
            } else {
                processNoneCrossKey(0.0f, 0.0f, GamePadManager.getInstance().getGamePadNum(GamePadManager.getInstance().getmExternalDevice()));
                return;
            }
        }
        if (!TextUtils.isEmpty(getMappingVersion())) {
            processKey2(i10, getActionType(i11));
            return;
        }
        ButtonMappings currentButtonMappings = getCurrentButtonMappings();
        if (currentButtonMappings == null) {
            LogUtils.d(str, "mappingProcessDpad but mCurrentButtonMappings is null");
            return;
        }
        double d10 = f14;
        if (d10 > 0.5d) {
            sendMotionEvent(getActionType(i11), currentButtonMappings.buttonRight);
        } else if (d10 < -0.5d) {
            sendMotionEvent(getActionType(i11), currentButtonMappings.buttonLeft);
        }
        double d11 = f15;
        if (d11 > 0.5d) {
            sendMotionEvent(getActionType(i11), currentButtonMappings.buttonDown);
        } else if (d11 < -0.5d) {
            sendMotionEvent(getActionType(i11), currentButtonMappings.buttonUp);
        }
    }

    protected void sendTrackBallRMove(boolean z10, float f10, float f11, PointCoord pointCoord) {
        if (pointCoord == null) {
            LogUtils.i(TAG, "sendTrackBallRMove fail, trackBallR is null");
            return;
        }
        if (!z10) {
            TrackBallRMoveThread trackBallRMoveThread = this.moveThread;
            if (trackBallRMoveThread != null) {
                trackBallRMoveThread.setIsSend(false);
                this.moveThread.setListener(null);
                this.moveThread = null;
                return;
            }
            return;
        }
        TrackBallRMoveThread trackBallRMoveThread2 = this.moveThread;
        if (trackBallRMoveThread2 != null) {
            trackBallRMoveThread2.setMoveSp(getScreenOrientation(), f10, f11);
            return;
        }
        TrackBallRMoveThread trackBallRMoveThread3 = new TrackBallRMoveThread(pointCoord.f33824x, pointCoord.f33825y);
        this.moveThread = trackBallRMoveThread3;
        trackBallRMoveThread3.setListener(new TrackBallRMoveThreadListener() { // from class: com.haima.hmcp.model.JoystickInputModel.1
            @Override // com.haima.hmcp.model.JoystickInputModel.TrackBallRMoveThreadListener
            public boolean onMorePointIsRun() {
                return JoystickInputModel.this.isMorePointIsRun();
            }

            @Override // com.haima.hmcp.model.JoystickInputModel.TrackBallRMoveThreadListener
            public float onMoveSpeed() {
                return JoystickInputModel.this.getMoveSpeed();
            }

            @Override // com.haima.hmcp.model.JoystickInputModel.TrackBallRMoveThreadListener
            public void onPutMapModeEvent(String str, String str2) {
                JoystickInputModel.this.putMapModeEvent(str, str2);
            }

            @Override // com.haima.hmcp.model.JoystickInputModel.TrackBallRMoveThreadListener
            public void onRemoveMapModeEvent(String str) {
                JoystickInputModel.this.removeMapModeEvent(str);
            }

            @Override // com.haima.hmcp.model.JoystickInputModel.TrackBallRMoveThreadListener
            public boolean onSendMotionEvent(int i10, FPoint fPoint) {
                return JoystickInputModel.this.sendMotionEvent(i10, fPoint);
            }
        });
        this.moveThread.setMoveSp(getScreenOrientation(), f10, f11);
        this.moveThread.start();
    }

    public void setEventMappingModel(EventMappingModel eventMappingModel) {
        this.eventMappingModel = eventMappingModel;
    }

    public void setListener(JoystickInputModelListener joystickInputModelListener) {
        this.listener = joystickInputModelListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendMotionEvent(int i10, FPoint fPoint) {
        return sendEvent(MotionEventUtil.getSendMotionEventContent(i10, fPoint));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0265  */
    /* JADX WARN: Code duplicated, block: B:118:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:120:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:140:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x00fc  */
    private void processJoystickInput(InputDevice inputDevice, float f10, float f11, float f12, float f13, float f14, float f15) {
        boolean z10;
        boolean z11;
        int i10;
        int i11;
        String str;
        float f16 = f12;
        float f17 = f15;
        if (isInputType(2)) {
            mouseInputEvent(f10, f13);
            return;
        }
        int i12 = 1;
        if (isInputType(4)) {
            String str2 = String.format(Locale.ENGLISH, "mode map:%.4f:%.4f:%.4f:%.4f", Float.valueOf(f10), Float.valueOf(f13), Float.valueOf(f11), Float.valueOf(f14));
            String str3 = TAG;
            LogUtils.d(str3, "processJoystickInput: " + str2);
            PointCoord trackBallL = getTrackBallL();
            if (trackBallL == null) {
                str = str3;
            } else if (f10 == 0.0f && f13 == 0.0f) {
                if (this.mAxisStatus == 1) {
                    this.mAxisStatus = 2;
                    sendMotionEvent(3, trackBallL);
                    cancelTimer(this.mTrackBallTask);
                    int i13 = Constants.TRACK_BALL_TASK_TIMER;
                    str = str3;
                    TrackBallTask trackBallTask = new TrackBallTask(i13, i13);
                    this.mTrackBallTask = trackBallTask;
                    trackBallTask.start();
                } else {
                    str = str3;
                }
            } else {
                str = str3;
                int i14 = this.mAxisStatus;
                if (i14 != 1) {
                    if (i14 == 0) {
                        sendMotionEvent(1, trackBallL);
                        cacheModeMapEvent(1, 0.0f, 0.0f, trackBallL);
                    }
                    this.mAxisStatus = 1;
                } else if (i14 == 1) {
                    LogUtils.d(str, "mAxisStatus == ACTION_DOWN_TYPE: " + str2);
                    if (TrackBallUtil.distencePC(f10, f13)) {
                        sendMotionEvent(3, new FPoint(trackBallL.f33824x + (trackBallL.rx * f10), trackBallL.f33825y + (trackBallL.ry * f13)));
                    } else {
                        String[] pCdistence = TrackBallUtil.getPCdistence(f10, f13);
                        sendMotionEvent(3, new FPoint(trackBallL.f33824x + (trackBallL.rx * Float.parseFloat(pCdistence[0])), trackBallL.f33825y + (trackBallL.ry * Float.parseFloat(pCdistence[1]))));
                    }
                }
            }
            PointCoord trackBallR = getTrackBallR();
            if (trackBallR != null) {
                if (f16 == 0.0f && f17 == 0.0f) {
                    if (this.mAxisStatusR == 1) {
                        this.mAxisStatusR = 2;
                        if (getTrackBallRMove()) {
                            sendTrackBallRMove(false, f16, f17, getTrackBallR());
                        } else {
                            sendMotionEvent(3, trackBallR);
                            sendMotionEvent(2, trackBallR);
                            cacheModeMapEvent(2, 0.0f, 0.0f, trackBallR);
                        }
                    }
                } else if (this.mAxisStatusR != 1) {
                    this.mAxisStatusR = 1;
                    if (!getTrackBallRMove()) {
                        sendMotionEvent(1, trackBallR);
                        cacheModeMapEvent(1, 0.0f, 0.0f, trackBallR);
                    } else {
                        sendMotionEvent(1, trackBallR);
                        sendTrackBallRMove(true, f16, f17, getTrackBallR());
                        cacheModeMapEvent(1, 0.0f, 0.0f, trackBallR);
                    }
                } else {
                    if (trackBallR.rx == 0.0f) {
                        LogUtils.d(str, "init mTrackBallR.rx");
                        trackBallR.rx = 0.18f;
                    }
                    if (trackBallR.ry == 0.0f) {
                        LogUtils.d(str, "init mTrackBallR.ry");
                        trackBallR.ry = 0.18f;
                    }
                    if (getTrackBallRMove()) {
                        sendTrackBallRMove(true, f16, f17, getTrackBallR());
                    } else {
                        sendMotionEvent(3, new FPoint(trackBallR.f33824x + (trackBallR.rx * f16), trackBallR.f33825y + (trackBallR.ry * f17)));
                    }
                }
            }
            PointCoord trackBallRZ = getTrackBallRZ();
            if (trackBallRZ != null && trackBallRZ.keyCode != 0 && (f17 != 0.0f || f16 != 0.0f)) {
                if (!TrackBallUtil.distencePC(f16, f17)) {
                    String[] pCdistence2 = TrackBallUtil.getPCdistence(f16, f17);
                    float f18 = Float.parseFloat(pCdistence2[0]);
                    f17 = Float.parseFloat(pCdistence2[1]);
                    f16 = f18;
                }
                float f19 = trackBallRZ.oX + (f16 * 0.06f);
                trackBallRZ.f33824x = f19;
                float f20 = trackBallRZ.oY + (f17 * 0.11f);
                trackBallRZ.f33825y = f20;
                sendMotionEvent(3, new FPoint(f19, f20));
            }
            mappingProcessDpad(f11, f14);
            return;
        }
        if (!isInputType(1) && !isInputType(6)) {
            if (isInputType(5)) {
                processTrackball(inputDevice, f10, f12, f13, f15);
                if (this.mLastHatX != f11) {
                    this.mLastHatX = f11;
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (this.mLastHatY != f14) {
                    this.mLastHatY = f14;
                    z11 = true;
                }
                if (z11) {
                    LogUtils.d(TAG, " mCurrentInputMode == GAMEPAD_MODE_DPAD---" + f11 + "   " + f14);
                    double d10 = (double) f11;
                    int i15 = 994;
                    if (d10 > 0.5d) {
                        this.rightIsDown = true;
                        i10 = 0;
                    } else {
                        if (d10 < -0.5d) {
                            this.leftIsDown = true;
                            i10 = 0;
                        } else if (f11 != 0.0f) {
                            i10 = 0;
                            i15 = 0;
                        } else if (this.rightIsDown) {
                            this.rightIsDown = false;
                            i10 = 1;
                        } else if (this.leftIsDown) {
                            this.leftIsDown = false;
                            i10 = 1;
                        } else {
                            i10 = 0;
                            i15 = 0;
                        }
                        i15 = 995;
                    }
                    if (i15 != 0) {
                        processDpadKey(new KeyEvent(i10, i15));
                    }
                    double d11 = f14;
                    if (d11 <= 0.5d) {
                        if (d11 < -0.5d) {
                            this.upIsDown = true;
                            i11 = 997;
                        } else if (f14 != 0.0f) {
                            i12 = i10;
                            i11 = 0;
                        } else if (this.downIsDown) {
                            this.downIsDown = false;
                            i11 = 996;
                        } else if (this.upIsDown) {
                            this.upIsDown = false;
                            i11 = 997;
                        } else {
                            i12 = i10;
                            i11 = 0;
                        }
                        if (i11 != 0) {
                            processDpadKey(new KeyEvent(i12, i11));
                            return;
                        }
                        return;
                    }
                    this.downIsDown = true;
                    i11 = 996;
                    i12 = 0;
                    if (i11 != 0) {
                        processDpadKey(new KeyEvent(i12, i11));
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        String strProcessTrackball = processTrackball(inputDevice, f10, f12, f13, f15);
        if (this.mLastHatX != f11) {
            this.mLastHatX = f11;
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.mLastHatY != f14) {
            this.mLastHatY = f14;
            z10 = true;
        }
        if (z10) {
            Locale locale = Locale.ENGLISH;
            String str4 = String.format(locale, "gamePad%s:ABS_HAT0X:%.4f", getGamePadNumInBattle(strProcessTrackball), Float.valueOf(f11));
            String str5 = TAG;
            LogUtils.d(str5, "processJoystickInput sendKeyboardEvent---" + str4);
            sendEvent(str4);
            String str6 = String.format(locale, "gamePad%s:ABS_HAT0Y:%.4f", getGamePadNumInBattle(strProcessTrackball), Float.valueOf(f14));
            LogUtils.d(str5, "processJoystickInput sendKeyboardEvent---" + str6);
            sendEvent(str6);
            if (f14 == 0.0f && f11 == 0.0f) {
                removeDownEventMap(GAME_PAD_EVENT_ABS);
            } else {
                putDownEventMap(GAME_PAD_EVENT_ABS, "");
            }
        }
    }
}
