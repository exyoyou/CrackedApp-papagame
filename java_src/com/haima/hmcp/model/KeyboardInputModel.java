package com.haima.hmcp.model;

import android.os.CountDownTimer;
import android.view.KeyEvent;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.beans.PointCoord2;
import com.haima.hmcp.listeners.KeyboardDirectionTimerListener;
import com.haima.hmcp.listeners.KeyboardInputModelListener;
import com.haima.hmcp.utils.ButtonMappingUtil;
import com.haima.hmcp.utils.KeyMapUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.MotionEventUtil;
import com.haima.hmcp.utils.TrackBallUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class KeyboardInputModel implements KeyboardDirectionTimerListener {
    private static final String TAG = "KeyboardInputModel";
    private EventMappingModel eventMappingModel;
    private KeyboardDirectionTimer keyboardTimer;
    private KeyboardInputModelListener listener;
    private ArrayList<Integer> fnList = new ArrayList<>();
    private int keyboardX = 0;
    private int keyboardY = 0;
    private float fX = 0.0f;
    private float fY = 0.0f;
    private boolean wIsDefault = true;
    private boolean aIsDefault = true;
    private boolean sIsDefault = true;
    private boolean dIsDefault = true;
    private boolean mFnDown = false;

    class KeyboardDirectionTimer extends CountDownTimer {
        private PointCoord coord;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f34061i;
        private int keyboardX;
        private int keyboardY;
        private KeyboardDirectionTimerListener listener;
        private float rx;
        private float ry;

        public KeyboardDirectionTimer(long j10, long j11, PointCoord pointCoord, int i10, int i11, float f10, float f11) {
            super(j10, j11);
            this.f34061i = 0;
            this.coord = pointCoord;
            this.keyboardX = i10;
            this.keyboardY = i11;
            this.rx = f10;
            this.ry = f11;
            LogUtils.d(KeyboardInputModel.TAG, "==KeyboardDirectionTimer = " + f10 + "   " + f11);
        }

        private void updatePoint(float f10, float f11) {
            KeyboardDirectionTimerListener keyboardDirectionTimerListener = this.listener;
            if (keyboardDirectionTimerListener != null) {
                keyboardDirectionTimerListener.onUpdatePoint(f10, f11);
            }
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            onTick(0L);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            int i10 = this.keyboardX;
            if (i10 == 0 && this.keyboardY == 0) {
                return;
            }
            int i11 = this.f34061i + 1;
            this.f34061i = i11;
            if (this.rx == 0.0f && this.ry == 0.0f) {
                PointCoord pointCoord = this.coord;
                updatePoint(pointCoord.f33824x + (i10 * pointCoord.rx * ((i11 * 0.03f) + 0.05f) * i11), pointCoord.f33825y + (this.keyboardY * pointCoord.ry * ((i11 * 0.03f) + 0.05f) * i11));
            } else {
                String[] pCdistence = TrackBallUtil.getPCdistence(i10, this.keyboardY);
                float f10 = this.rx;
                float f11 = this.coord.f33824x;
                float f12 = Float.parseFloat(pCdistence[0]);
                PointCoord pointCoord2 = this.coord;
                float f13 = (f11 + (f12 * pointCoord2.rx)) - this.rx;
                int i12 = this.f34061i;
                float f14 = f10 + (f13 * ((i12 * 0.03f) + 0.05f) * i12);
                float f15 = this.ry;
                float f16 = (pointCoord2.f33825y + (Float.parseFloat(pCdistence[1]) * this.coord.ry)) - this.ry;
                int i13 = this.f34061i;
                updatePoint(f14, f15 + (f16 * ((i13 * 0.03f) + 0.05f) * i13));
            }
            sendMotionEvent(3, new FPoint(KeyboardInputModel.this.fX, KeyboardInputModel.this.fY));
        }

        protected void sendMotionEvent(int i10, FPoint fPoint) {
            KeyboardDirectionTimerListener keyboardDirectionTimerListener = this.listener;
            if (keyboardDirectionTimerListener != null) {
                keyboardDirectionTimerListener.onEvent(i10, fPoint);
            }
        }

        public void setListener(KeyboardDirectionTimerListener keyboardDirectionTimerListener) {
            this.listener = keyboardDirectionTimerListener;
        }
    }

    private boolean KeyboardEventMapIsEmpty() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel == null) {
            LogUtils.i(TAG, "KeyboardEventMapIsEmpty fail, eventMappingModel is null");
            return false;
        }
        ConcurrentHashMap<Integer, PointCoord> keyboardEventMap = eventMappingModel.getKeyboardEventMap();
        return keyboardEventMap == null || keyboardEventMap.isEmpty();
    }

    private void cacheModeMapEvent(int i10, float f10, float f11, PointCoord pointCoord) {
        KeyboardInputModelListener keyboardInputModelListener = this.listener;
        if (keyboardInputModelListener != null) {
            keyboardInputModelListener.onCacheModeMapEvent(i10, f10, f11, pointCoord);
        } else {
            LogUtils.i(TAG, "cacheModeMapEvent fail");
        }
    }

    private void cacheModeMapEvent2(int i10, float f10, float f11, int i11) {
        KeyboardInputModelListener keyboardInputModelListener = this.listener;
        if (keyboardInputModelListener != null) {
            keyboardInputModelListener.onCacheModeMapEvent2(i10, f10, f11, i11);
        } else {
            LogUtils.i(TAG, "cacheModeMapEvent2 fail");
        }
    }

    private void cleanFnModeMapEvent(int i10, boolean z10) {
        KeyboardInputModelListener keyboardInputModelListener = this.listener;
        if (keyboardInputModelListener != null) {
            keyboardInputModelListener.onCleanFnModeMapEvent(i10, z10);
        } else {
            LogUtils.i(TAG, "cleanFnModeMapEvent fail");
        }
    }

    private void clickSightBeadButton() {
        KeyboardInputModelListener keyboardInputModelListener = this.listener;
        if (keyboardInputModelListener != null) {
            keyboardInputModelListener.onSightBeadButtonClick();
        } else {
            LogUtils.i(TAG, "clickSightBeadButton fail");
        }
    }

    private FPoint convertFPoint(PointCoord pointCoord) {
        if (pointCoord == null) {
            return null;
        }
        return new FPoint(pointCoord.f33824x, pointCoord.f33825y);
    }

    private PointCoord getKeyboardDirection() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getMappingKeyboardEvent(ButtonMappingUtil.KEYBOARD_DIRECTION);
        }
        LogUtils.i(TAG, "getKeyboardDirection fail, eventMappingModel is null");
        return null;
    }

    private PointCoord getMappingKeyboardEvent(int i10) {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getMappingKeyboardEvent(i10);
        }
        LogUtils.i(TAG, "getMappingKeyboardEvent fail, eventMappingModel is null");
        return null;
    }

    private PointCoord getSightBeadCoord() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel == null) {
            LogUtils.i(TAG, "getSightBeadCoord fail, eventMappingModel is null");
            return null;
        }
        ButtonMappingUtil buttonMappingUtil = eventMappingModel.getButtonMappingUtil();
        if (buttonMappingUtil != null) {
            return buttonMappingUtil.mSightbBeadCoord;
        }
        LogUtils.i(TAG, "getSightBeadCoord fail, buttonMappingUtil is null");
        return null;
    }

    private boolean isMorePointRun() {
        KeyboardInputModelListener keyboardInputModelListener = this.listener;
        if (keyboardInputModelListener != null) {
            return keyboardInputModelListener.onMorePointRun();
        }
        LogUtils.i(TAG, "isMorePointRun fail");
        return false;
    }

    private boolean sendKeyboardEvent(int i10, PointCoord pointCoord) {
        boolean zSendMotionEvent = sendMotionEvent(i10, convertFPoint(pointCoord));
        if (zSendMotionEvent) {
            cacheModeMapEvent(i10, pointCoord.f33824x, pointCoord.f33825y, null);
        }
        return zSendMotionEvent;
    }

    private boolean sendMorePointEvent(PointCoord pointCoord, int i10) {
        KeyboardInputModelListener keyboardInputModelListener = this.listener;
        if (keyboardInputModelListener != null) {
            return keyboardInputModelListener.onSendMorePointEvent(pointCoord, i10);
        }
        LogUtils.i(TAG, "sendMorePointEvent fail");
        return false;
    }

    private boolean sendMotionEvent(int i10, FPoint fPoint) {
        String sendMotionEventContent = MotionEventUtil.getSendMotionEventContent(i10, fPoint);
        LogUtils.d(TAG, "==sendEventContent = " + sendMotionEventContent);
        KeyboardInputModelListener keyboardInputModelListener = this.listener;
        if (keyboardInputModelListener != null) {
            return keyboardInputModelListener.onEventSend(sendMotionEventContent);
        }
        return false;
    }

    private void startKeyboardDirectionTimer(PointCoord pointCoord, int i10, int i11) {
        KeyboardDirectionTimer keyboardDirectionTimer = this.keyboardTimer;
        if (keyboardDirectionTimer == null) {
            KeyboardDirectionTimer keyboardDirectionTimer2 = new KeyboardDirectionTimer(250L, 50L, pointCoord, i10, i11, this.fX, this.fY);
            this.keyboardTimer = keyboardDirectionTimer2;
            keyboardDirectionTimer2.setListener(this);
            this.keyboardTimer.start();
            return;
        }
        keyboardDirectionTimer.cancel();
        this.keyboardTimer.setListener(null);
        this.keyboardTimer = null;
        if (i10 == 0 && i11 == 0) {
            return;
        }
        KeyboardDirectionTimer keyboardDirectionTimer3 = new KeyboardDirectionTimer(250L, 50L, pointCoord, i10, i11, this.fX, this.fY);
        this.keyboardTimer = keyboardDirectionTimer3;
        keyboardDirectionTimer3.setListener(this);
        this.keyboardTimer.start();
    }

    public void clearKeyDown() {
        this.fnList.clear();
        this.mFnDown = false;
    }

    @Override // com.haima.hmcp.listeners.KeyboardDirectionTimerListener
    public void onEvent(int i10, FPoint fPoint) {
        sendMotionEvent(i10, fPoint);
    }

    @Override // com.haima.hmcp.listeners.KeyboardDirectionTimerListener
    public void onUpdatePoint(float f10, float f11) {
        this.fX = f10;
        this.fY = f11;
    }

    public boolean processKeyboard(KeyEvent keyEvent, int i10) {
        int i11;
        int i12 = 0;
        if (keyEvent.getRepeatCount() != 0 || KeyboardEventMapIsEmpty()) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        LogUtils.e("processKeyboard", keyCode + " : " + i10);
        PointCoord keyboardDirection = getKeyboardDirection();
        if (KeyMapUtil.isJoyPadKey(keyEvent.getKeyCode())) {
            if (keyboardDirection == null) {
                return false;
            }
            if (keyboardDirection.rx == 0.0f) {
                keyboardDirection.rx = Constants.KEYBOARD_RX;
            }
            if (keyboardDirection.ry == 0.0f) {
                keyboardDirection.ry = Constants.KEYBOARD_RY;
            }
            if (keyCode != 29) {
                if (keyCode != 32) {
                    if (keyCode != 47) {
                        if (keyCode == 51) {
                            if (this.wIsDefault && i10 == 2) {
                                return false;
                            }
                            this.wIsDefault = false;
                            i11 = ((i10 * 2) - 3) + 0;
                        }
                    } else {
                        if (this.sIsDefault && i10 == 2) {
                            return false;
                        }
                        i11 = (3 - (i10 * 2)) + 0;
                        this.sIsDefault = false;
                    }
                    if (this.keyboardX == 0 && this.keyboardY == 0) {
                        sendMotionEvent(1, convertFPoint(keyboardDirection));
                    }
                    int i13 = this.keyboardX + i12;
                    this.keyboardX = i13;
                    int i14 = this.keyboardY + i11;
                    this.keyboardY = i14;
                    startKeyboardDirectionTimer(keyboardDirection, i13, i14);
                    if (this.keyboardX == 0 && this.keyboardY == 0) {
                        this.fX = 0.0f;
                        this.fY = 0.0f;
                        sendMotionEvent(3, convertFPoint(keyboardDirection));
                        sendMotionEvent(2, convertFPoint(keyboardDirection));
                    }
                    return true;
                }
                if (this.dIsDefault && i10 == 2) {
                    return false;
                }
                this.dIsDefault = false;
                i12 = (3 - (i10 * 2)) + 0;
            } else {
                if (this.aIsDefault && i10 == 2) {
                    return false;
                }
                this.aIsDefault = false;
                i12 = ((i10 * 2) - 3) + 0;
            }
            i11 = 0;
            if (this.keyboardX == 0) {
                sendMotionEvent(1, convertFPoint(keyboardDirection));
            }
            int i15 = this.keyboardX + i12;
            this.keyboardX = i15;
            int i16 = this.keyboardY + i11;
            this.keyboardY = i16;
            startKeyboardDirectionTimer(keyboardDirection, i15, i16);
            if (this.keyboardX == 0) {
                this.fX = 0.0f;
                this.fY = 0.0f;
                sendMotionEvent(3, convertFPoint(keyboardDirection));
                sendMotionEvent(2, convertFPoint(keyboardDirection));
            }
            return true;
        }
        PointCoord sightBeadCoord = getSightBeadCoord();
        if (sightBeadCoord != null && keyCode == sightBeadCoord.keyCode && i10 == 1) {
            clickSightBeadButton();
            return false;
        }
        PointCoord mappingKeyboardEvent = getMappingKeyboardEvent(keyCode);
        if (mappingKeyboardEvent == null && !this.mFnDown) {
            LogUtils.d(TAG, "processKeyboard coord is null");
            return false;
        }
        if (mappingKeyboardEvent != null && mappingKeyboardEvent.isFn) {
            if (i10 == 1) {
                this.mFnDown = true;
                this.fnList.add(Integer.valueOf(keyCode));
                LogUtils.e(TAG, "onKeyDown -----------add fn " + keyCode);
            } else {
                if (this.fnList.size() > 0 && this.fnList.get(0).intValue() == keyCode) {
                    this.fnList.remove(0);
                    cleanFnModeMapEvent(keyCode, true);
                }
                if (this.fnList.isEmpty()) {
                    this.mFnDown = false;
                }
                LogUtils.e(TAG, "onKeyDown -----------remove fn " + keyCode);
            }
            return false;
        }
        String str = TAG;
        LogUtils.e(str, "onKeyDown -----------actionType " + i10 + " keyCode" + keyCode + " mFnDown" + this.mFnDown);
        if (i10 != 1) {
            LogUtils.d(str, "up action type" + i10);
            if (!this.mFnDown) {
                return sendKeyboardEvent(i10, mappingKeyboardEvent);
            }
            if (!isMorePointRun()) {
                cleanFnModeMapEvent(keyCode, false);
            }
        } else {
            if (!this.mFnDown) {
                return sendKeyboardEvent(i10, mappingKeyboardEvent);
            }
            int size = this.fnList.size();
            boolean z10 = false;
            while (size > 0) {
                int iIntValue = (this.fnList.get(size - 1).intValue() * 1000) + keyCode;
                PointCoord mappingKeyboardEvent2 = getMappingKeyboardEvent(iIntValue);
                if (mappingKeyboardEvent2 != null) {
                    List<PointCoord2> list = mappingKeyboardEvent2.pointList;
                    if (list != null && list.size() > 0 && !isMorePointRun()) {
                        sendMorePointEvent(mappingKeyboardEvent2, i10);
                    } else if (!isMorePointRun()) {
                        LogUtils.e(TAG, "onKeyDown -----------sendKeboardEvent actionType:" + i10 + " code :" + iIntValue);
                        sendKeyboardEvent(mappingKeyboardEvent2, i10, iIntValue);
                        z10 = true;
                    }
                }
                size--;
                mappingKeyboardEvent = mappingKeyboardEvent2;
            }
            if (!z10 && !isMorePointRun()) {
                return sendKeyboardEvent(i10, mappingKeyboardEvent);
            }
        }
        return false;
    }

    public void setEventMappingModel(EventMappingModel eventMappingModel) {
        this.eventMappingModel = eventMappingModel;
    }

    public void setKeyboardDirectionDefault() {
        this.wIsDefault = true;
        this.aIsDefault = true;
        this.sIsDefault = true;
        this.dIsDefault = true;
        this.keyboardX = 0;
        this.keyboardY = 0;
        this.fX = 0.0f;
        this.fY = 0.0f;
    }

    public void setListener(KeyboardInputModelListener keyboardInputModelListener) {
        this.listener = keyboardInputModelListener;
    }

    private boolean sendKeyboardEvent(PointCoord pointCoord, int i10, int i11) {
        boolean zSendMotionEvent = sendMotionEvent(i10, convertFPoint(pointCoord));
        if (zSendMotionEvent) {
            cacheModeMapEvent2(i10, pointCoord.f33824x, pointCoord.f33825y, i11);
        }
        return zSendMotionEvent;
    }
}
