package com.haima.hmcp.device.input.parse;

import android.text.TextUtils;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.beans.PointCoord2;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.device.input.send.DeviceInputSend;
import com.haima.hmcp.device.input.thread.TrackBallRightMoveThread;
import com.haima.hmcp.device.input.timer.TrackBallTask;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.model.JoystickInputModel;
import com.haima.hmcp.utils.ButtonMappingUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.StringUtils;
import com.haima.hmcp.utils.TrackBallUtil;
import com.haima.hmcp.widgets.CountDownTimer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceMappingParse {
    public static final String CID_DATA = "encryption";
    public static final int GAMEPAD_MODE_DPAD = 5;
    public static final int GAMEPAD_MODE_MAP = 4;
    public static final int GAMEPAD_MODE_MOUSE = 2;
    public static final int GAMEPAD_MODE_NONE = 1;
    protected static final int INPUT_STATUS_VIRTUAL_GAMEPAD_CONNECTED = 200;
    private static final String TAG = "DeviceMappingParse";
    private static DeviceMappingParse deviceMappingParse;
    protected ButtonMappingUtil buttonMappingUtil;
    private String contents;
    public boolean currentKeyboardShow;
    protected ButtonMappings mCurrentButtonMappings;
    private TrackBallTask mTrackBallTask;
    protected String mappingVersion;
    protected TrackBallRightMoveThread moveThread;
    protected boolean nativeDpadGame;
    public final String GAME_PAD_EVENT_TRACKBALL = "gamePadTrackBallL";
    public final String GAME_PAD_EVENT_TRACKBALR = "gamePadTrackBallR";
    public final String GAME_PAD_EVENT_ABS = JoystickInputModel.GAME_PAD_EVENT_ABS;
    protected float mLastX = 0.0f;
    protected float mLastY = 0.0f;
    protected float mLastZ = 0.0f;
    protected float mLastRZ = 0.0f;
    protected float mLastHatX = 0.0f;
    protected float mLastHatY = 0.0f;
    protected ConcurrentHashMap<Integer, PointCoord> mappingEventMap = new ConcurrentHashMap<>();
    protected ArrayList<Integer> fnList = new ArrayList<>();
    protected boolean mTrackBallRightMove = false;
    protected boolean gamepadEventDetected = false;
    protected boolean mFnDown = false;
    protected PointCoord mHatCoord = null;
    public int mCurrentInputMode = 1;
    protected PointCoord mTrackBallLeft = null;
    protected PointCoord mTrackBallRight = null;
    protected PointCoord mTrackBallRightFn = new PointCoord();
    public PointCoord buttonDirection = null;
    protected float moveSpeed = 0.04f;
    protected int pointCode = 0;
    private HashMap<String, String> mMetaInfos = new HashMap<>();
    private boolean morePointIsRun = false;
    private DeviceInputSend deviceInputSend = DeviceInputSend.getInstance();

    private DeviceMappingParse() {
    }

    public static float getCenteredAxis(MotionEvent motionEvent, InputDevice inputDevice, int i10, int i11) {
        InputDevice.MotionRange motionRange = inputDevice.getMotionRange(i10, motionEvent.getSource());
        if (motionRange == null) {
            return motionEvent.getAxisValue(i10);
        }
        float flat = motionRange.getFlat();
        float axisValue = i11 < 0 ? motionEvent.getAxisValue(i10) : motionEvent.getHistoricalAxisValue(i10, i11);
        if (Math.abs(axisValue) > flat) {
            return axisValue;
        }
        return 0.0f;
    }

    public static DeviceMappingParse getInstance() {
        if (deviceMappingParse == null) {
            deviceMappingParse = new DeviceMappingParse();
        }
        return deviceMappingParse;
    }

    private PointCoord getMapPointCoord(int i10) {
        if (i10 == 96) {
            return this.mCurrentButtonMappings.buttonA;
        }
        if (i10 == 97) {
            return this.mCurrentButtonMappings.buttonB;
        }
        if (i10 == 99) {
            return this.mCurrentButtonMappings.buttonX;
        }
        if (i10 == 100) {
            return this.mCurrentButtonMappings.buttonY;
        }
        switch (i10) {
            case 102:
                return this.mCurrentButtonMappings.buttonL1;
            case 103:
                return this.mCurrentButtonMappings.buttonR1;
            case 104:
                return this.mCurrentButtonMappings.buttonL2;
            case 105:
                return this.mCurrentButtonMappings.buttonR2;
            default:
                switch (i10) {
                    case 994:
                        return this.mCurrentButtonMappings.buttonRight;
                    case 995:
                        return this.mCurrentButtonMappings.buttonLeft;
                    case 996:
                        return this.mCurrentButtonMappings.buttonDown;
                    case 997:
                        return this.mCurrentButtonMappings.buttonUp;
                    default:
                        return null;
                }
        }
    }

    private String getMetaInfoByKey(String str) {
        LogUtils.i(TAG, "==getMetaInfoByKey====" + str);
        return getMetaInfoByKey(str, "");
    }

    private void initButtonMappings(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mCurrentInputMode = 4;
        ButtonMappingUtil buttonMappingUtil = new ButtonMappingUtil();
        this.buttonMappingUtil = buttonMappingUtil;
        buttonMappingUtil.initButtonMappings(str);
        String version = this.buttonMappingUtil.getVersion();
        this.mappingVersion = version;
        if (TextUtils.isEmpty(version) && !TextUtils.isEmpty(str)) {
            setButtonMapping(this.buttonMappingUtil.getButtonMapping());
            return;
        }
        ConcurrentHashMap<Integer, PointCoord> mappingEventMap = this.buttonMappingUtil.getMappingEventMap();
        this.mappingEventMap = mappingEventMap;
        this.mTrackBallLeft = mappingEventMap.get(999);
        this.mTrackBallRight = this.mappingEventMap.get(998);
        this.buttonDirection = this.mappingEventMap.get(993);
        PointCoord pointCoord = this.mTrackBallLeft;
        if (pointCoord != null) {
            if (pointCoord.rx == 0.0f) {
                LogUtils.d(TAG, "init mTrackBallL.rx");
                this.mTrackBallLeft.rx = 0.1f;
            }
            if (this.mTrackBallLeft.ry == 0.0f) {
                LogUtils.d(TAG, "init mTrackBallL.ry");
                this.mTrackBallLeft.ry = 0.18f;
            }
        }
        PointCoord pointCoord2 = this.mTrackBallRight;
        if (pointCoord2 != null) {
            float f10 = pointCoord2.sp;
            if (f10 == 0.0f) {
                this.mTrackBallRightMove = false;
            } else {
                this.mTrackBallRightMove = true;
                this.moveSpeed = f10;
            }
        }
    }

    public boolean MappingEventMapIsEmpty() {
        ConcurrentHashMap<Integer, PointCoord> concurrentHashMap = this.mappingEventMap;
        return concurrentHashMap == null || concurrentHashMap.isEmpty();
    }

    public void cancelTimer(CountDownTimer countDownTimer) {
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    public void cleanFnModeMapEvent(int i10, boolean z10) {
        LogUtils.d(TAG, "cleanFnModeMapEvent keycode:" + i10 + " isfn" + z10);
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it2 = this.deviceInputSend.mapFnModeEventMap.keySet().iterator();
        while (it2.hasNext()) {
            int iIntValue = it2.next().intValue();
            if (i10 == (z10 ? iIntValue / 1000 : iIntValue % 1000) && !z10) {
                arrayList.add(Integer.valueOf(iIntValue));
            }
        }
        if (arrayList.size() < 1) {
            return;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            int iIntValue2 = ((Integer) it3.next()).intValue();
            this.deviceInputSend.sendMappingEvent(this.mTrackBallLeft, this.mTrackBallRight, this.mTrackBallRightFn, this.mappingEventMap.get(Integer.valueOf(iIntValue2)), 2, iIntValue2);
        }
    }

    public void clearInstance() {
        deviceMappingParse = null;
    }

    public void initMappingConfig(HashMap<String, String> map) {
        this.mMetaInfos = map;
        String metaInfoByKey = getMetaInfoByKey(Constants.BUTTON_MAP_CONTENT);
        this.contents = metaInfoByKey;
        initButtonMappings(metaInfoByKey);
    }

    public boolean isMorePointIsRun() {
        return this.morePointIsRun;
    }

    public boolean isNativeDpadGame() {
        return this.nativeDpadGame;
    }

    public void mappingProcessDpad(float f10, float f11) {
        int i10;
        PointCoord pointCoord;
        if (!TextUtils.isEmpty(this.mappingVersion)) {
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
        ButtonMappings buttonMappings = this.mCurrentButtonMappings;
        if (buttonMappings == null) {
            LogUtils.d(TAG, "mappingProcessDpad but mCurrentButtonMappings is null");
            return;
        }
        double d12 = f10;
        if (d12 > 0.5d) {
            pointCoord = buttonMappings.buttonRight;
        } else {
            pointCoord = d12 < -0.5d ? buttonMappings.buttonLeft : null;
        }
        double d13 = f11;
        if (d13 > 0.5d) {
            pointCoord = buttonMappings.buttonDown;
        } else if (d13 < -0.5d) {
            pointCoord = buttonMappings.buttonUp;
        }
        if (pointCoord == null) {
            PointCoord pointCoord2 = this.mHatCoord;
            if (pointCoord2 != null) {
                this.deviceInputSend.sendMotionEvent(2, pointCoord2);
                this.mHatCoord = null;
                return;
            }
            return;
        }
        PointCoord pointCoord3 = this.mHatCoord;
        if (pointCoord3 != null) {
            this.deviceInputSend.sendMotionEvent(2, pointCoord3);
            this.mHatCoord = null;
        }
        this.deviceInputSend.sendMotionEvent(1, pointCoord);
        this.mHatCoord = pointCoord;
    }

    public void mappingProcessKey(KeyEvent keyEvent, int i10) {
        LogUtils.e(TAG, "onKeyDown -----------:mappingProcessKey  mappingVersion" + this.mappingVersion);
        if (TextUtils.isEmpty(this.mappingVersion)) {
            processKey(keyEvent, i10);
        } else {
            processKey2(keyEvent, i10);
        }
    }

    public void processJoystickInput(MotionEvent motionEvent, int i10) {
        boolean z10;
        boolean z11;
        InputDevice device = motionEvent.getDevice();
        if (device == null) {
            return;
        }
        boolean z12 = false;
        float centeredAxis = getCenteredAxis(motionEvent, device, 0, i10);
        float centeredAxis2 = getCenteredAxis(motionEvent, device, 15, i10);
        float centeredAxis3 = getCenteredAxis(motionEvent, device, 11, i10);
        boolean z13 = true;
        float centeredAxis4 = getCenteredAxis(motionEvent, device, 1, i10);
        float centeredAxis5 = getCenteredAxis(motionEvent, device, 16, i10);
        float centeredAxis6 = getCenteredAxis(motionEvent, device, 14, i10);
        int i11 = this.mCurrentInputMode;
        if (i11 != 4) {
            if (i11 != 1 || this.deviceInputSend.getSendWebSocket() == null) {
                return;
            }
            if (this.mLastX != centeredAxis) {
                this.mLastX = centeredAxis;
                z10 = true;
            } else {
                z10 = false;
            }
            if (this.mLastY != centeredAxis4) {
                this.mLastY = centeredAxis4;
                z10 = true;
            }
            if (this.mLastZ != centeredAxis3) {
                this.mLastZ = centeredAxis3;
                z11 = true;
            } else {
                z11 = false;
            }
            if (this.mLastRZ != centeredAxis6) {
                this.mLastRZ = centeredAxis6;
                z11 = true;
            }
            if (z10 || z11) {
                this.deviceInputSend.sendGamePadMoveEvent(centeredAxis, centeredAxis4, centeredAxis3, centeredAxis6);
                if (z10 && centeredAxis == 0.0f && centeredAxis4 == 0.0f) {
                    this.deviceInputSend.downEventMap.remove("gamePadTrackBallL");
                } else if (z10) {
                    this.deviceInputSend.downEventMap.put("gamePadTrackBallL", String.format(Locale.US, "gamePad:MOVE_EVENT:%.4f:%.4f:%.4f:%.4f", Float.valueOf(0.0f), Float.valueOf(0.0f), Float.valueOf(centeredAxis3), Float.valueOf(centeredAxis6)));
                }
                if (z11 && centeredAxis3 == 0.0f && centeredAxis6 == 0.0f) {
                    this.deviceInputSend.downEventMap.remove("gamePadTrackBallR");
                } else if (z11) {
                    this.deviceInputSend.downEventMap.put("gamePadTrackBallR", String.format(Locale.US, "gamePad:MOVE_EVENT:%.4f:%.4f:%.4f:%.4f", Float.valueOf(centeredAxis), Float.valueOf(centeredAxis4), Float.valueOf(0.0f), Float.valueOf(0.0f)));
                }
            }
            if (this.mLastHatX != centeredAxis2) {
                this.mLastHatX = centeredAxis2;
                z12 = true;
            }
            if (this.mLastHatY != centeredAxis5) {
                this.mLastHatY = centeredAxis5;
            } else {
                z13 = z12;
            }
            if (z13) {
                this.deviceInputSend.sendGamePadHatEvent(centeredAxis2, centeredAxis5);
                if (centeredAxis5 == 0.0f && centeredAxis2 == 0.0f) {
                    this.deviceInputSend.downEventMap.remove(JoystickInputModel.GAME_PAD_EVENT_ABS);
                    return;
                } else {
                    this.deviceInputSend.downEventMap.put(JoystickInputModel.GAME_PAD_EVENT_ABS, "");
                    return;
                }
            }
            return;
        }
        String str = String.format(Locale.US, "mode map:%.4f:%.4f:%.4f:%.4f", Float.valueOf(centeredAxis), Float.valueOf(centeredAxis4), Float.valueOf(centeredAxis2), Float.valueOf(centeredAxis5));
        String str2 = TAG;
        LogUtils.d(str2, "processJoystickInput: " + str);
        PointCoord pointCoord = this.mTrackBallLeft;
        if (pointCoord != null) {
            if (centeredAxis == 0.0f && centeredAxis4 == 0.0f) {
                if (pointCoord.actionType == 1) {
                    pointCoord.actionType = 2;
                    this.deviceInputSend.sendMotionEvent(3, pointCoord);
                    cancelTimer(this.mTrackBallTask);
                    int i12 = Constants.TRACK_BALL_TASK_TIMER;
                    TrackBallTask trackBallTask = new TrackBallTask(i12, i12, this.mTrackBallLeft, this.mTrackBallRight);
                    this.mTrackBallTask = trackBallTask;
                    trackBallTask.start();
                }
            } else if (pointCoord.actionType != 1) {
                LogUtils.d("ButtonMapp", "mAxisStatus == ACTION_DOWN_TYPE: " + str);
                if (!TrackBallUtil.distencePC(centeredAxis, centeredAxis4)) {
                    String[] pCdistence = TrackBallUtil.getPCdistence(centeredAxis, centeredAxis4);
                    centeredAxis = Float.parseFloat(pCdistence[0]);
                    centeredAxis4 = Float.parseFloat(pCdistence[1]);
                }
                if (this.deviceInputSend.getOrientation() == ScreenOrientation.PORTRAIT) {
                    DeviceInputSend deviceInputSend = this.deviceInputSend;
                    PointCoord pointCoord2 = this.mTrackBallLeft;
                    deviceInputSend.sendMotionEvent(3, new FPoint(pointCoord2.f33824x + (pointCoord2.rx * centeredAxis4), pointCoord2.f33825y - (pointCoord2.ry * centeredAxis)));
                } else {
                    DeviceInputSend deviceInputSend2 = this.deviceInputSend;
                    PointCoord pointCoord3 = this.mTrackBallLeft;
                    deviceInputSend2.sendMotionEvent(3, new FPoint(pointCoord3.f33824x + (pointCoord3.rx * centeredAxis), pointCoord3.f33825y + (pointCoord3.ry * centeredAxis4)));
                }
            } else if (TrackBallUtil.distencePC(centeredAxis, centeredAxis4)) {
                DeviceInputSend deviceInputSend3 = this.deviceInputSend;
                PointCoord pointCoord4 = this.mTrackBallLeft;
                deviceInputSend3.sendMotionEvent(3, new FPoint(pointCoord4.f33824x + (pointCoord4.rx * centeredAxis), pointCoord4.f33825y + (pointCoord4.ry * centeredAxis4)));
            } else {
                String[] pCdistence2 = TrackBallUtil.getPCdistence(centeredAxis, centeredAxis4);
                float f10 = Float.parseFloat(pCdistence2[0]);
                float f11 = Float.parseFloat(pCdistence2[1]);
                DeviceInputSend deviceInputSend4 = this.deviceInputSend;
                PointCoord pointCoord5 = this.mTrackBallLeft;
                deviceInputSend4.sendMotionEvent(3, new FPoint(pointCoord5.f33824x + (pointCoord5.rx * f10), pointCoord5.f33825y + (pointCoord5.ry * f11)));
            }
        }
        PointCoord pointCoord6 = this.mTrackBallRight;
        if (pointCoord6 != null) {
            if (centeredAxis3 == 0.0f && centeredAxis6 == 0.0f) {
                if (pointCoord6.actionType == 1) {
                    pointCoord6.actionType = 2;
                    if (this.mTrackBallRightMove) {
                        sendTrackBallRMove(false, centeredAxis3, centeredAxis6);
                    } else {
                        this.deviceInputSend.sendMotionEvent(3, pointCoord6);
                        this.deviceInputSend.sendMotionEvent(2, this.mTrackBallRight);
                        DeviceInputSend deviceInputSend5 = this.deviceInputSend;
                        PointCoord pointCoord7 = this.mTrackBallLeft;
                        PointCoord pointCoord8 = this.mTrackBallRight;
                        deviceInputSend5.cacheModeMapEvent(pointCoord7, pointCoord8, 2, 0.0f, 0.0f, pointCoord8);
                    }
                }
            } else if (pointCoord6.actionType != 1) {
                pointCoord6.actionType = 1;
                if (this.mTrackBallRightMove) {
                    this.deviceInputSend.sendMotionEvent(1, pointCoord6);
                    sendTrackBallRMove(true, centeredAxis3, centeredAxis6);
                    DeviceInputSend deviceInputSend6 = this.deviceInputSend;
                    PointCoord pointCoord9 = this.mTrackBallLeft;
                    PointCoord pointCoord10 = this.mTrackBallRight;
                    deviceInputSend6.cacheModeMapEvent(pointCoord9, pointCoord10, 1, 0.0f, 0.0f, pointCoord10);
                } else {
                    this.deviceInputSend.sendMotionEvent(1, pointCoord6);
                    DeviceInputSend deviceInputSend7 = this.deviceInputSend;
                    PointCoord pointCoord11 = this.mTrackBallLeft;
                    PointCoord pointCoord12 = this.mTrackBallRight;
                    deviceInputSend7.cacheModeMapEvent(pointCoord11, pointCoord12, 1, 0.0f, 0.0f, pointCoord12);
                }
            } else {
                if (pointCoord6.rx == 0.0f) {
                    LogUtils.d(str2, "init mTrackBallR.rx");
                    this.mTrackBallRight.rx = 0.18f;
                }
                if (this.mTrackBallRight.ry == 0.0f) {
                    LogUtils.d(str2, "init mTrackBallR.ry");
                    this.mTrackBallRight.ry = 0.18f;
                }
                if (this.mTrackBallRightMove) {
                    sendTrackBallRMove(true, centeredAxis3, centeredAxis6);
                } else {
                    DeviceInputSend deviceInputSend8 = this.deviceInputSend;
                    PointCoord pointCoord13 = this.mTrackBallRight;
                    deviceInputSend8.sendMotionEvent(3, new FPoint(pointCoord13.f33824x + (pointCoord13.rx * centeredAxis3), pointCoord13.f33825y + (pointCoord13.ry * centeredAxis6)));
                }
            }
        }
        PointCoord pointCoord14 = this.mTrackBallRightFn;
        if (pointCoord14 != null && pointCoord14.keyCode != 0 && (centeredAxis6 != 0.0f || centeredAxis3 != 0.0f)) {
            if (!TrackBallUtil.distencePC(centeredAxis3, centeredAxis6)) {
                String[] pCdistence3 = TrackBallUtil.getPCdistence(centeredAxis3, centeredAxis6);
                centeredAxis3 = Float.parseFloat(pCdistence3[0]);
                centeredAxis6 = Float.parseFloat(pCdistence3[1]);
            }
            PointCoord pointCoord15 = this.mTrackBallRightFn;
            float f12 = pointCoord15.oX + (centeredAxis3 * 0.06f);
            pointCoord15.f33824x = f12;
            float f13 = pointCoord15.oY + (centeredAxis6 * 0.11f);
            pointCoord15.f33825y = f13;
            this.deviceInputSend.sendMotionEvent(3, new FPoint(f12, f13));
        }
        mappingProcessDpad(centeredAxis2, centeredAxis5);
    }

    public boolean processKey(KeyEvent keyEvent, int i10) {
        if (keyEvent.getRepeatCount() != 0 || this.mCurrentButtonMappings == null) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (this.mCurrentButtonMappings.buttonFn == keyCode) {
            if (i10 == 1) {
                this.mFnDown = true;
            } else {
                this.mFnDown = false;
            }
            return true;
        }
        PointCoord mapPointCoord = getMapPointCoord(keyCode);
        if (mapPointCoord == null) {
            return false;
        }
        if (this.mTrackBallRight == null) {
            if (i10 == 1) {
                PointCoord pointCoord = this.mTrackBallRightFn;
                if (pointCoord.keyCode == 0) {
                    float f10 = mapPointCoord.f33824x;
                    pointCoord.oX = f10;
                    float f11 = mapPointCoord.f33825y;
                    pointCoord.oY = f11;
                    pointCoord.f33824x = f10;
                    pointCoord.f33825y = f11;
                    pointCoord.keyCode = keyCode;
                }
            } else if (i10 == 2) {
                PointCoord pointCoord2 = this.mTrackBallRightFn;
                if (pointCoord2.keyCode == keyCode) {
                    pointCoord2.keyCode = 0;
                    this.deviceInputSend.sendMotionEvent(i10, new FPoint(pointCoord2.f33824x, pointCoord2.f33825y));
                    DeviceInputSend deviceInputSend = this.deviceInputSend;
                    PointCoord pointCoord3 = this.mTrackBallLeft;
                    PointCoord pointCoord4 = this.mTrackBallRight;
                    PointCoord pointCoord5 = this.mTrackBallRightFn;
                    deviceInputSend.cacheModeMapEvent(pointCoord3, pointCoord4, i10, pointCoord5.f33824x, pointCoord5.f33825y, null);
                    return true;
                }
            }
        }
        boolean zSendMotionEvent = this.deviceInputSend.sendMotionEvent(i10, mapPointCoord);
        if (zSendMotionEvent) {
            this.deviceInputSend.cacheModeMapEvent(this.mTrackBallLeft, this.mTrackBallRight, i10, mapPointCoord.f33824x, mapPointCoord.f33825y, null);
        }
        return zSendMotionEvent;
    }

    public boolean processKey2(KeyEvent keyEvent, int i10) {
        List<PointCoord2> list;
        if (keyEvent.getRepeatCount() == 0 && !MappingEventMapIsEmpty()) {
            int keyCode = keyEvent.getKeyCode();
            PointCoord pointCoord = this.mappingEventMap.get(Integer.valueOf(keyCode));
            if (pointCoord == null) {
                return false;
            }
            if (pointCoord.isFn) {
                if (i10 == 1) {
                    this.mFnDown = true;
                    this.fnList.add(Integer.valueOf(keyCode));
                } else {
                    if (this.fnList.size() > 0 && this.fnList.get(0).intValue() == keyCode) {
                        this.fnList.remove(0);
                        cleanFnModeMapEvent(keyCode, true);
                    }
                    if (this.fnList.isEmpty()) {
                        this.mFnDown = false;
                    }
                }
                return false;
            }
            if (i10 == 1) {
                if (this.mFnDown) {
                    boolean z10 = false;
                    for (int size = this.fnList.size(); size > 0; size--) {
                        int iIntValue = (this.fnList.get(size - 1).intValue() * 1000) + keyCode;
                        if (this.mappingEventMap.containsKey(Integer.valueOf(iIntValue))) {
                            PointCoord pointCoord2 = this.mappingEventMap.get(Integer.valueOf(iIntValue));
                            if (pointCoord2 != null && (list = pointCoord2.pointList) != null && list.size() > 0 && !this.morePointIsRun) {
                                this.deviceInputSend.sendMorePointEvent(this.mTrackBallLeft, this.mTrackBallRight, pointCoord2, i10);
                            } else if (!this.morePointIsRun) {
                                pointCoord = pointCoord2;
                                this.deviceInputSend.sendMappingEvent(this.mTrackBallLeft, this.mTrackBallRight, this.mTrackBallRightFn, pointCoord, i10, iIntValue);
                                z10 = true;
                            }
                            pointCoord = pointCoord2;
                        }
                    }
                    if (!z10 && !this.morePointIsRun) {
                        this.deviceInputSend.sendMappingEvent(this.mTrackBallLeft, this.mTrackBallRight, this.mTrackBallRightFn, pointCoord, i10, keyCode);
                    }
                } else {
                    List<PointCoord2> list2 = pointCoord.pointList;
                    if (list2 != null && list2.size() > 0 && !this.morePointIsRun) {
                        this.deviceInputSend.sendMorePointEvent(this.mTrackBallLeft, this.mTrackBallRight, pointCoord, i10);
                    } else if (!this.morePointIsRun) {
                        this.deviceInputSend.sendMappingEvent(this.mTrackBallLeft, this.mTrackBallRight, this.mTrackBallRightFn, pointCoord, i10, pointCoord.keyCode);
                    }
                }
            } else if (!this.morePointIsRun) {
                cleanFnModeMapEvent(keyCode, false);
            }
        }
        return false;
    }

    public void sendTrackBallRMove(boolean z10, float f10, float f11) {
        if (!z10) {
            TrackBallRightMoveThread trackBallRightMoveThread = this.moveThread;
            if (trackBallRightMoveThread != null) {
                trackBallRightMoveThread.setIsSend(false);
                this.moveThread = null;
                return;
            }
            return;
        }
        TrackBallRightMoveThread trackBallRightMoveThread2 = this.moveThread;
        if (trackBallRightMoveThread2 != null) {
            trackBallRightMoveThread2.setMoveSp(f10, f11);
            return;
        }
        PointCoord pointCoord = this.mTrackBallRight;
        TrackBallRightMoveThread trackBallRightMoveThread3 = new TrackBallRightMoveThread(pointCoord.f33824x, pointCoord.f33825y, this.morePointIsRun, this.moveSpeed);
        this.moveThread = trackBallRightMoveThread3;
        trackBallRightMoveThread3.setMoveSp(f10, f11);
        this.moveThread.start();
    }

    public void setButtonMapping(ButtonMappings buttonMappings) {
        if (buttonMappings != null) {
            this.mCurrentButtonMappings = buttonMappings;
            PointCoord pointCoord = buttonMappings.trackBallL;
            this.mTrackBallLeft = pointCoord;
            this.mTrackBallRight = buttonMappings.trackBallR;
            this.buttonDirection = buttonMappings.buttonDirection;
            if (pointCoord != null) {
                if (pointCoord.rx == 0.0f) {
                    LogUtils.d(TAG, "init mTrackBallL.rx");
                    this.mTrackBallLeft.rx = 0.1f;
                }
                if (this.mTrackBallLeft.ry == 0.0f) {
                    LogUtils.d(TAG, "init mTrackBallL.ry");
                    this.mTrackBallLeft.ry = 0.18f;
                }
            }
            PointCoord pointCoord2 = this.mTrackBallRight;
            if (pointCoord2 != null) {
                float f10 = pointCoord2.sp;
                if (f10 == 0.0f) {
                    this.mTrackBallRightMove = false;
                } else {
                    this.mTrackBallRightMove = true;
                    this.moveSpeed = f10;
                }
            }
        }
    }

    public void setMorePointIsRun(boolean z10) {
        this.morePointIsRun = z10;
    }

    private String getMetaInfoByKey(String str, String str2) {
        String str3 = TAG;
        LogUtils.i(str3, "==getMetaInfoByKey====key===" + str + "===value===" + str2);
        String str4 = "";
        if (this.mMetaInfos != null) {
            if (!TextUtils.isEmpty(str)) {
                str4 = this.mMetaInfos.get(str);
                if (TextUtils.isEmpty(str4) && !Constants.SPEED_TEST_URL_LARGE.equals(str)) {
                    CountlyUtil.recordErrorEvent("getMetaInfoByKey::key = " + str + "value is null");
                }
            }
        } else {
            LogUtils.e(str3, "==getMetaInfoByKey====mMetaInfos == null");
            if (!Constants.TIPS_PROMPT_NETWORK_UNAVAILABLE.equals(str)) {
                str.equals(Constants.REVOLVE_TIME);
            }
            if (!Constants.SPEED_TEST_URL_LARGE.equals(str)) {
                CountlyUtil.recordErrorEvent("getMetaInfoByKey::key = " + str + "value is null");
            }
        }
        String strReplaceString = StringUtils.replaceString(str4, str2);
        LogUtils.i(str3, "==getMetaInfoByKey====tip==value=" + strReplaceString);
        return strReplaceString;
    }

    public void processKey2(int i10, int i11) {
        processKey2(new KeyEvent(i11, i10), i11);
    }
}
