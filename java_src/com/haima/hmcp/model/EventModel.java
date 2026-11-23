package com.haima.hmcp.model;

import android.text.TextUtils;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.beans.PointCoord2;
import com.haima.hmcp.business.GamePadManager;
import com.haima.hmcp.business.SwitchControllerManager;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.listeners.DpadInputModelListener;
import com.haima.hmcp.listeners.EventModelListener;
import com.haima.hmcp.listeners.JoystickInputModelListener;
import com.haima.hmcp.listeners.KeyboardInputModelListener;
import com.haima.hmcp.listeners.MapModeEventCacheModelListener;
import com.haima.hmcp.utils.ButtonMappingUtil;
import com.haima.hmcp.utils.HmInputDeviceManager;
import com.haima.hmcp.utils.InputDeviceUtil;
import com.haima.hmcp.utils.KeyMapUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.MotionEventUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class EventModel {
    public static final int KEYBOARDPAD_MODE_INPUT = 1;
    public static final int KEYBOARDPAD_MODE_MAP = 0;
    private static final String TAG = "EventModel";
    private DpadInputModel dpadInputModel;
    private EventMappingModel eventMappingModel;
    private JoystickInputModel joystickInputModel;
    private KeyboardInputModel keyboardInputModel;
    private EventModelListener listener;
    private MapModeEventCacheModel mapModeEventCacheModel;
    private PointCoord mTrackBallRZ = new PointCoord();
    private ArrayList<Integer> fnList = new ArrayList<>();
    private boolean morePointIsRun = false;
    private boolean mFnDown = false;
    private boolean ltDown = false;
    private boolean rtDown = false;
    private boolean ltKeyDownHandled = false;
    private boolean rtKeyDownHandled = false;
    private boolean ltMotionHandled = false;
    private boolean rtMotionHandled = false;

    class MorePointThread extends Thread {
        private PointCoord coord;
        private PointCoord2 hisPoint;
        private boolean isDown;
        private MapModeEventCacheModel mapModeEventCacheModel;
        private long clickTime = 50;
        private int moveTime = 18;

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
                    EventModel.this.sendMotionEvent(3, new FPoint(pointCoord2.f33826x, pointCoord2.f33827y));
                    put("morePointMove", pointCoord2.f33826x + "," + pointCoord2.f33827y);
                    return;
                }
                float f14 = iMin;
                EventModel.this.sendMotionEvent(3, new FPoint(pointCoord4.f33826x + (f12 * f14), pointCoord4.f33827y + (f14 * f13)));
                put("morePointMove", this.hisPoint.f33826x + "," + this.hisPoint.f33827y);
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
                    EventModel.this.sendMotionEvent(1, new FPoint(pointCoord3.f33826x, pointCoord3.f33827y));
                    put("morePointMove", this.hisPoint.f33826x + "," + this.hisPoint.f33827y);
                    this.isDown = true;
                }
                pointMove(pointCoord2);
                return;
            }
            if (i10 == 2) {
                if (this.isDown) {
                    EventModel.this.sendMotionEvent(2, new FPoint(pointCoord3.f33826x, pointCoord3.f33827y));
                    remove("morePointMove");
                    Thread.sleep(this.clickTime);
                }
                EventModel eventModel = EventModel.this;
                PointCoord2 pointCoord4 = this.hisPoint;
                eventModel.sendMotionEvent(1, new FPoint(pointCoord4.f33826x, pointCoord4.f33827y));
                put("morePointMove", this.hisPoint.f33826x + "," + this.hisPoint.f33827y);
                Thread.sleep(this.clickTime);
                EventModel eventModel2 = EventModel.this;
                PointCoord2 pointCoord5 = this.hisPoint;
                eventModel2.sendMotionEvent(2, new FPoint(pointCoord5.f33826x, pointCoord5.f33827y));
                remove("morePointMove");
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
                EventModel.this.sendMotionEvent(1, new FPoint(pointCoord3.f33826x, pointCoord3.f33827y));
                put("morePointMove", this.hisPoint.f33826x + "," + this.hisPoint.f33827y);
                this.isDown = true;
            }
            pointMove(pointCoord2);
            EventModel.this.sendMotionEvent(2, new FPoint(pointCoord2.f33826x, pointCoord2.f33827y));
            remove("morePointMove");
            Thread.sleep(this.clickTime);
            EventModel.this.sendMotionEvent(1, new FPoint(pointCoord2.f33826x, pointCoord2.f33827y));
            put("morePointMove", this.hisPoint.f33826x + "," + this.hisPoint.f33827y);
            Thread.sleep(this.clickTime);
            EventModel.this.sendMotionEvent(2, new FPoint(pointCoord2.f33826x, pointCoord2.f33827y));
            remove("morePointMove");
            this.isDown = false;
        }

        private void put(String str, String str2) {
            MapModeEventCacheModel mapModeEventCacheModel = this.mapModeEventCacheModel;
            if (mapModeEventCacheModel == null) {
                return;
            }
            mapModeEventCacheModel.put(str, str2);
        }

        private void reMovePoint() {
            if (this.isDown) {
                EventModel eventModel = EventModel.this;
                PointCoord2 pointCoord2 = this.hisPoint;
                eventModel.sendMotionEvent(2, new FPoint(pointCoord2.f33826x, pointCoord2.f33827y));
                remove("morePointMove");
            }
            EventModel.this.setMorePointIsRun(false);
        }

        private void remove(String str) {
            MapModeEventCacheModel mapModeEventCacheModel = this.mapModeEventCacheModel;
            if (mapModeEventCacheModel == null) {
                return;
            }
            mapModeEventCacheModel.remove(str);
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
                EventModel.this.setMorePointIsRun(false);
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }

        public void setMapModeEventCacheModel(MapModeEventCacheModel mapModeEventCacheModel) {
            this.mapModeEventCacheModel = mapModeEventCacheModel;
        }
    }

    public EventModel() {
        DpadInputModel dpadInputModel = new DpadInputModel();
        this.dpadInputModel = dpadInputModel;
        dpadInputModel.setListener(new DpadInputModelListener() { // from class: com.haima.hmcp.model.EventModel.1
            @Override // com.haima.hmcp.listeners.DpadInputModelListener
            public void onCacheModeMapEvent(int i10, float f10, float f11, PointCoord pointCoord) {
                EventModel.this.mapModeEventCacheModel.cacheModeMapEvent(i10, f10, f11, pointCoord);
            }

            @Override // com.haima.hmcp.listeners.DpadInputModelListener
            public boolean onIsNativeDpadGame() {
                return EventModel.this.isNativeDpadGame();
            }

            @Override // com.haima.hmcp.listeners.DpadInputModelListener
            public PointCoord onMapPointCoord(int i10) {
                return EventModel.this.getMapPointCoord(i10);
            }

            @Override // com.haima.hmcp.listeners.DpadInputModelListener
            public PointCoord onMappingEvent(int i10) {
                return EventModel.this.getMappingEvent(i10);
            }

            @Override // com.haima.hmcp.listeners.DpadInputModelListener
            public String onMappingVersion() {
                return EventModel.this.getMappingVersion();
            }

            @Override // com.haima.hmcp.listeners.DpadInputModelListener
            public ScreenOrientation onScreenOrientation() {
                return EventModel.this.getScreenOrientation();
            }

            @Override // com.haima.hmcp.listeners.DpadInputModelListener
            public void onSendKeyboardEvent(String str, int i10) {
                EventModel.this.sendKeyboardEvent(str, i10);
            }

            @Override // com.haima.hmcp.listeners.DpadInputModelListener
            public void onSendMotionEvent(int i10, FPoint fPoint) {
                EventModel.this.sendMotionEvent(i10, fPoint);
            }

            @Override // com.haima.hmcp.listeners.DpadInputModelListener
            public void onSendKeyboardEvent(String str, String str2) {
                EventModel.this.sendKeyboardEvent(str, str2);
            }
        });
        MapModeEventCacheModel mapModeEventCacheModel = new MapModeEventCacheModel();
        this.mapModeEventCacheModel = mapModeEventCacheModel;
        mapModeEventCacheModel.setListener(new MapModeEventCacheModelListener() { // from class: com.haima.hmcp.model.EventModel.2
            @Override // com.haima.hmcp.listeners.MapModeEventCacheModelListener
            public PointCoord onButtonDirection() {
                return EventModel.this.getButtonDirection();
            }

            @Override // com.haima.hmcp.listeners.MapModeEventCacheModelListener
            public FPoint onDpadPoint() {
                return EventModel.this.getDpadPoint();
            }

            @Override // com.haima.hmcp.listeners.MapModeEventCacheModelListener
            public ConcurrentHashMap<Integer, PointCoord> onGetMappingEventMap() {
                return EventModel.this.eventMappingModel.getMappingEventMap();
            }

            @Override // com.haima.hmcp.listeners.MapModeEventCacheModelListener
            public void onSendEvent(String str) {
                EventModel.this.sendEvent(str);
            }

            @Override // com.haima.hmcp.listeners.MapModeEventCacheModelListener
            public boolean onSendMappingEvent(PointCoord pointCoord, int i10, int i11) {
                return EventModel.this.sendMappingEvent(pointCoord, i10, i11);
            }

            @Override // com.haima.hmcp.listeners.MapModeEventCacheModelListener
            public void onSendMotionEvent(int i10, PointCoord pointCoord) {
                EventModel.this.sendMotionEvent(i10, pointCoord);
            }

            @Override // com.haima.hmcp.listeners.MapModeEventCacheModelListener
            public PointCoord onTrackBallL() {
                return EventModel.this.getTrackBallL();
            }

            @Override // com.haima.hmcp.listeners.MapModeEventCacheModelListener
            public PointCoord onTrackBallR() {
                return EventModel.this.getTrackBallR();
            }

            @Override // com.haima.hmcp.listeners.MapModeEventCacheModelListener
            public void onSendMotionEvent(int i10, FPoint fPoint) {
                EventModel.this.sendMotionEvent(i10, fPoint);
            }
        });
        KeyboardInputModel keyboardInputModel = new KeyboardInputModel();
        this.keyboardInputModel = keyboardInputModel;
        keyboardInputModel.setListener(new KeyboardInputModelListener() { // from class: com.haima.hmcp.model.EventModel.3
            @Override // com.haima.hmcp.listeners.KeyboardInputModelListener
            public void onCacheModeMapEvent(int i10, float f10, float f11, PointCoord pointCoord) {
                EventModel.this.cacheModeMapEvent(i10, f10, f11, pointCoord);
            }

            @Override // com.haima.hmcp.listeners.KeyboardInputModelListener
            public void onCacheModeMapEvent2(int i10, float f10, float f11, int i11) {
                EventModel.this.cacheModeMapEvent2(i10, f10, f11, i11);
            }

            @Override // com.haima.hmcp.listeners.KeyboardInputModelListener
            public void onCleanFnModeMapEvent(int i10, boolean z10) {
                EventModel.this.mapModeEventCacheModel.clearAllFnModeMapEvent();
            }

            @Override // com.haima.hmcp.listeners.KeyboardInputModelListener
            public boolean onEventSend(String str) {
                return EventModel.this.sendEvent(str);
            }

            @Override // com.haima.hmcp.listeners.KeyboardInputModelListener
            public boolean onMorePointRun() {
                return EventModel.this.morePointIsRun;
            }

            @Override // com.haima.hmcp.listeners.KeyboardInputModelListener
            public boolean onSendMorePointEvent(PointCoord pointCoord, int i10) {
                return EventModel.this.sendMorePointEvent(pointCoord, i10);
            }

            @Override // com.haima.hmcp.listeners.KeyboardInputModelListener
            public void onSightBeadButtonClick() {
                EventModel.this.clickSightBeadButton();
            }
        });
        JoystickInputModel joystickInputModel = new JoystickInputModel();
        this.joystickInputModel = joystickInputModel;
        joystickInputModel.setListener(new JoystickInputModelListener() { // from class: com.haima.hmcp.model.EventModel.4
            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public void onCacheModeMapEvent(int i10, float f10, float f11, PointCoord pointCoord) {
                EventModel.this.mapModeEventCacheModel.cacheModeMapEvent(i10, f10, f11, pointCoord);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public boolean onEventSend(String str) {
                return EventModel.this.sendEvent(str);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public void onGamePadModeDpadEvent(KeyEvent keyEvent, int i10) {
                EventModel.this.gamePadModeDpadEvent(keyEvent, i10);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public String onGamePadNumInBattle(String str) {
                return EventModel.this.getGamePadNumInBattle(str);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public void onGamePadStart(InputDevice inputDevice) {
                EventModel.this.sendGamePadStart(inputDevice);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public int onInputType() {
                return EventModel.this.getInputType();
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public void onMappingProcessKey(KeyEvent keyEvent, int i10) {
                EventModel.this.mappingProcessKey(keyEvent, i10);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public boolean onMorePointIsRun() {
                return EventModel.this.morePointIsRun;
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public void onMouseInputEvent(float f10, float f11) {
                EventModel.this.mouseInputEvent(f10, f11);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public float onMoveSpeed() {
                return EventModel.this.eventMappingModel.getMoveSpeed();
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public void onProcessDpadKey(KeyEvent keyEvent) {
                EventModel.this.dpadInputModel.processDpadKey(keyEvent);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public boolean onProcessKey2(KeyEvent keyEvent, int i10) {
                return EventModel.this.processKey2(keyEvent, i10);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public void onProcessMouseMove(KeyEvent keyEvent) {
                EventModel.this.processMouseMove(keyEvent);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public void onPutDownEventMap(String str, String str2) {
                EventModel.this.putDownEventMap(str, str2);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public void onPutMapModeEvent(String str, String str2) {
                EventModel.this.mapModeEventCacheModel.put(str, str2);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public void onRemoveDownEventMap(String str) {
                EventModel.this.removeDownEventMap(str);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public void onRemoveMapModeEvent(String str) {
                EventModel.this.mapModeEventCacheModel.remove(str);
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public ScreenOrientation onScreenOrientation() {
                return EventModel.this.getScreenOrientation();
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public boolean onTrackBallRMove() {
                return EventModel.this.eventMappingModel.getTrackBallRMove();
            }

            @Override // com.haima.hmcp.listeners.JoystickInputModelListener
            public PointCoord onTrackBallRZ() {
                return EventModel.this.mTrackBallRZ;
            }
        });
        resetTriggerKeyHandledState();
    }

    private boolean armMouseHandleTouchEvent(MotionEvent motionEvent) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            return eventModelListener.onArmMouseHandleTouchEvent(motionEvent);
        }
        LogUtils.i(TAG, "armMouseHandleTouchEvent fail");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cacheModeMapEvent2(int i10, float f10, float f11, int i11) {
        this.mapModeEventCacheModel.cacheModeMapEvent2(i10, f10, f11, i11);
    }

    private void clearAllFnModeMapEvent() {
        this.mapModeEventCacheModel.clearAllFnModeMapEvent();
    }

    private void clearAllMapModeEvent() {
        this.mapModeEventCacheModel.clearAllMapModeEvent();
    }

    private void clearDpadMapDownEvent() {
        this.dpadInputModel.clearDpadMapDownEvent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clickSightBeadButton() {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            eventModelListener.onSightBeadButtonClick();
        } else {
            LogUtils.i(TAG, "clickSightBeadButton fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gamePadModeDpadEvent(KeyEvent keyEvent, int i10) {
        if (isKeyboardPadModeMap()) {
            processDpadKey(keyEvent);
        } else if (isKeyboardPadModeInput()) {
            clearDpadMapDownEvent();
            if (i10 != 0) {
                sendKeyboardEvent("keyDown", i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointCoord getButtonDirection() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getButtonDirection();
        }
        LogUtils.i(TAG, "getButtonDirection fail, eventMappingModel is null");
        return null;
    }

    private ButtonMappings getCurrentButtonMappings() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getCurrentButtonMapping();
        }
        LogUtils.i(TAG, "getCurrentButtonMappings fail, eventMappingModel is null");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FPoint getDpadPoint() {
        DpadInputModel dpadInputModel = this.dpadInputModel;
        if (dpadInputModel != null) {
            return dpadInputModel.getDpadPoint();
        }
        LogUtils.i(TAG, "getDpadPoint fail");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getGamePadNumInBattle(String str) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            return eventModelListener.onGamePadNumInBattle(str);
        }
        LogUtils.i(TAG, "getGamePadNumInBattle fail");
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getInputType() {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            return eventModelListener.onInputType();
        }
        LogUtils.i(TAG, "setInputMode fail");
        return 1;
    }

    private int getKeyboardMode() {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            return eventModelListener.onKeyboardMode();
        }
        LogUtils.i(TAG, "getKeyboardMode fail");
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointCoord getMapPointCoord(int i10) {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getCurrentButtonMappingsPointCoord(i10);
        }
        LogUtils.i(TAG, "getMapPointCoord fail, eventMappingModel is null");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointCoord getMappingEvent(int i10) {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getMappingEvent(i10);
        }
        LogUtils.i(TAG, "getMappingEvent fail, eventMappingModel is null");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getMappingVersion() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getMappingVersion();
        }
        LogUtils.i(TAG, "getMappingVersion fail, eventMappingModel is null");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ScreenOrientation getScreenOrientation() {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            return eventModelListener.onScreenOrientation();
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

    /* JADX INFO: Access modifiers changed from: private */
    public PointCoord getTrackBallR() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getTrackBallR();
        }
        LogUtils.i(TAG, "getTrackBallR fail, eventMappingModel is null");
        return null;
    }

    private void handleJoyStickTrigger(MotionEvent motionEvent) {
        InputDevice device;
        InputDevice.MotionRange motionRange;
        InputDevice.MotionRange motionRange2;
        String str = TAG;
        LogUtils.i(str, "motion event handle trigger event");
        if (motionEvent == null || (device = motionEvent.getDevice()) == null) {
            return;
        }
        if (device.getMotionRange(17) != null) {
            motionRange = device.getMotionRange(17);
            motionRange2 = device.getMotionRange(18);
        } else if (device.getMotionRange(23) != null) {
            motionRange = device.getMotionRange(23);
            motionRange2 = device.getMotionRange(22);
        } else {
            motionRange = null;
            motionRange2 = null;
        }
        String gamePadNum = GamePadManager.getInstance().getGamePadNum(motionEvent.getDevice());
        if (motionRange == null || motionRange2 == null) {
            return;
        }
        float axisValue = motionEvent.getAxisValue(motionRange.getAxis());
        float axisValue2 = motionEvent.getAxisValue(motionRange2.getAxis());
        LogUtils.d(str, "ltAxis = " + axisValue + ", rtAxis = " + axisValue2);
        if (axisValue > 0.0f) {
            if (this.ltDown || this.ltKeyDownHandled) {
                LogUtils.d(str, "LT motion event skipped, ltDown: " + this.ltDown + ", ltKeyDownHandled: " + this.ltKeyDownHandled);
            } else {
                this.ltDown = true;
                this.ltMotionHandled = true;
                LogUtils.d(str, "LT is down (motion event), ltKeyDownHandled: " + this.ltKeyDownHandled);
                sendKeyboardEvent("1", "KEYCODE_BUTTON_L2", gamePadNum);
            }
        } else if (this.ltDown && this.ltMotionHandled) {
            this.ltDown = false;
            this.ltMotionHandled = false;
            LogUtils.d(str, "LT is up (motion event), complete click cycle, reset state");
            sendKeyboardEvent("0", "KEYCODE_BUTTON_L2", gamePadNum);
        }
        if (axisValue2 <= 0.0f) {
            if (this.rtDown && this.rtMotionHandled) {
                this.rtDown = false;
                this.rtMotionHandled = false;
                LogUtils.d(str, "RT is up (motion event), complete click cycle, reset state");
                sendKeyboardEvent("0", "KEYCODE_BUTTON_R2", gamePadNum);
                return;
            }
            return;
        }
        if (this.rtDown || this.rtKeyDownHandled) {
            LogUtils.d(str, "RT motion event skipped, rtDown: " + this.rtDown + ", rtKeyDownHandled: " + this.rtKeyDownHandled);
            return;
        }
        this.rtDown = true;
        this.rtMotionHandled = true;
        LogUtils.d(str, "RT is down (motion event), rtKeyDownHandled: " + this.rtKeyDownHandled);
        sendKeyboardEvent("1", "KEYCODE_BUTTON_R2", gamePadNum);
    }

    private boolean hasKeyboardMappingEvent() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        return (eventMappingModel == null || eventMappingModel.getKeyboardEventMap() == null || this.eventMappingModel.getKeyboardEventMap().isEmpty()) ? false : true;
    }

    private boolean hasMappingEvent() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        return (eventMappingModel == null || eventMappingModel.getMappingEventMap() == null || this.eventMappingModel.getMappingEventMap().isEmpty()) ? false : true;
    }

    private boolean hasSightBeadCoord() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel == null) {
            LogUtils.i(TAG, "hasSightBeadCoord fail, eventMappingModel is null");
            return false;
        }
        if (eventMappingModel.getButtonMappingUtil() != null) {
            return this.eventMappingModel.getButtonMappingUtil().mSightbBeadCoord != null;
        }
        LogUtils.i(TAG, "hasSightBeadCoord fail, ButtonMappingUtil is null");
        return false;
    }

    private boolean interceptKey(int i10) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            return eventModelListener.isInterceptKey(i10);
        }
        LogUtils.i(TAG, "interceptKey fail");
        return false;
    }

    private boolean isBattleHandleEvent(int i10, KeyEvent keyEvent) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            return eventModelListener.onBattleHandleEvent(i10, keyEvent);
        }
        LogUtils.i(TAG, "isBattleHandleEvent fail");
        return false;
    }

    private boolean isKeyboardPadModeInput() {
        return getKeyboardMode() == 1;
    }

    private boolean isKeyboardPadModeMap() {
        return getKeyboardMode() == 0;
    }

    private boolean isListenHover() {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            return eventModelListener.onListenHover();
        }
        LogUtils.i(TAG, "isListenHover fail");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNativeDpadGame() {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            return eventModelListener.onNativeDpadGame();
        }
        LogUtils.i(TAG, "isNativeDpadGame fail");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mappingProcessKey(KeyEvent keyEvent, int i10) {
        LogUtils.e(TAG, "onKeyDown -----------:mappingProcessKey  mappingVersion" + getMappingVersion());
        if (TextUtils.isEmpty(getMappingVersion())) {
            processKey(keyEvent, i10);
        } else {
            processKey2(keyEvent, i10);
        }
    }

    private void mouseBackEvent() {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            eventModelListener.onMouseBackEvent();
        } else {
            LogUtils.i(TAG, "mouseBackEvent fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mouseInputEvent(float f10, float f11) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            eventModelListener.onMouseInputEvent(f10, f11);
        } else {
            LogUtils.i(TAG, "mouseInputEvent fail");
        }
    }

    private void processDpadKey(KeyEvent keyEvent) {
        this.dpadInputModel.processDpadKey(keyEvent);
    }

    private void processJoystickInput(MotionEvent motionEvent, int i10) {
        this.joystickInputModel.processJoystickInput(motionEvent, i10);
    }

    private boolean processKey(KeyEvent keyEvent, int i10) {
        ButtonMappings currentButtonMappings = getCurrentButtonMappings();
        if (keyEvent.getRepeatCount() != 0 || currentButtonMappings == null) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (currentButtonMappings.buttonFn == keyCode) {
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
        if (getTrackBallR() == null) {
            if (i10 == 1) {
                PointCoord pointCoord = this.mTrackBallRZ;
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
                PointCoord pointCoord2 = this.mTrackBallRZ;
                if (pointCoord2.keyCode == keyCode) {
                    pointCoord2.keyCode = 0;
                    sendMotionEvent(i10, new FPoint(pointCoord2.f33824x, pointCoord2.f33825y));
                    PointCoord pointCoord3 = this.mTrackBallRZ;
                    cacheModeMapEvent(i10, pointCoord3.f33824x, pointCoord3.f33825y, null);
                    return true;
                }
            }
        }
        boolean zSendMotionEvent = sendMotionEvent(i10, mapPointCoord);
        if (zSendMotionEvent) {
            this.mapModeEventCacheModel.cacheModeMapEvent(i10, mapPointCoord.f33824x, mapPointCoord.f33825y, null);
        }
        return zSendMotionEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean processKey2(KeyEvent keyEvent, int i10) {
        List<PointCoord2> list;
        if (keyEvent.getRepeatCount() != 0 || !hasMappingEvent()) {
            LogUtils.i(TAG, "processKey2 return, not mapping");
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        PointCoord mappingEvent = getMappingEvent(keyCode);
        if (mappingEvent == null) {
            LogUtils.i(TAG, "processKey2 return, coord is null, keyCode is not mapping");
            return false;
        }
        if (mappingEvent.isFn) {
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
                int size = this.fnList.size();
                boolean z10 = false;
                while (size > 0) {
                    int iIntValue = (this.fnList.get(size - 1).intValue() * 1000) + keyCode;
                    PointCoord mappingEvent2 = getMappingEvent(iIntValue);
                    if (mappingEvent2 != null && (list = mappingEvent2.pointList) != null && list.size() > 0 && !this.morePointIsRun) {
                        sendMorePointEvent(mappingEvent2, i10);
                    } else if (!this.morePointIsRun) {
                        sendMappingEvent(mappingEvent2, i10, iIntValue);
                        z10 = true;
                    }
                    size--;
                    mappingEvent = mappingEvent2;
                }
                if (!z10 && !this.morePointIsRun) {
                    sendMappingEvent(mappingEvent, i10, keyCode);
                }
            } else {
                List<PointCoord2> list2 = mappingEvent.pointList;
                if (list2 != null && list2.size() > 0 && !this.morePointIsRun) {
                    sendMorePointEvent(mappingEvent, i10);
                } else if (!this.morePointIsRun) {
                    sendMappingEvent(mappingEvent, i10, mappingEvent.keyCode);
                }
            }
        } else if (!this.morePointIsRun) {
            cleanFnModeMapEvent(keyCode, false);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processMouseMove(KeyEvent keyEvent) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            eventModelListener.onProcessMouseMove(keyEvent);
        } else {
            LogUtils.i(TAG, "processMouseMove(KeyEvent) fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void putDownEventMap(String str, String str2) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            eventModelListener.onPutDownEventMap(str, str2);
        } else {
            LogUtils.i(TAG, "putDownEventMap fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeDownEventMap(String str) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            eventModelListener.onRemoveDownEventMap(str);
        } else {
            LogUtils.i(TAG, "removeDownEventMap fail");
        }
    }

    private void resetTriggerKeyHandledState() {
        LogUtils.d(TAG, "resetTriggerKeyHandledState: reset all LT/RT key states");
        this.ltKeyDownHandled = false;
        this.rtKeyDownHandled = false;
        this.ltMotionHandled = false;
        this.rtMotionHandled = false;
        this.ltDown = false;
        this.rtDown = false;
    }

    private void sendDpadKey(int i10, int i11, String str) {
        this.dpadInputModel.sendDpadKey(i10, i11, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendEvent(String str) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            return eventModelListener.onEventSend(str);
        }
        LogUtils.i(TAG, "sendEvent fail");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendGamePadStart(InputDevice inputDevice) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            eventModelListener.onGamePadStart(inputDevice);
        } else {
            LogUtils.i(TAG, "sendGamePadStart fail");
        }
    }

    private void sendInputDevice(int i10, int i11) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            eventModelListener.onInputDeviceSend(i10, i11);
        } else {
            LogUtils.i(TAG, "sendInputDevice fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendKeyboardEvent(String str, int i10) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            eventModelListener.onKeyboardEvent(str, i10);
        } else {
            LogUtils.i(TAG, "sendKeyboardEvent fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendMappingEvent(PointCoord pointCoord, int i10, int i11) {
        String str = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onKeyDown -----------:cleanFnModeMapEvent 0");
        sb2.append(i11);
        sb2.append(" coord: ");
        sb2.append(pointCoord);
        sb2.append(" actionType");
        sb2.append(i10);
        sb2.append(" mTrackBallR==null：");
        sb2.append(getTrackBallR() == null);
        LogUtils.e(str, sb2.toString());
        if (pointCoord != null && getTrackBallR() == null) {
            if (i10 == 1) {
                PointCoord pointCoord2 = this.mTrackBallRZ;
                if (pointCoord2.keyCode == 0) {
                    float f10 = pointCoord.f33824x;
                    pointCoord2.oX = f10;
                    float f11 = pointCoord.f33825y;
                    pointCoord2.oY = f11;
                    pointCoord2.f33824x = f10;
                    pointCoord2.f33825y = f11;
                    pointCoord2.keyCode = pointCoord.keyCode;
                }
            } else if (i10 == 2) {
                PointCoord pointCoord3 = this.mTrackBallRZ;
                if (pointCoord3.keyCode == pointCoord.keyCode) {
                    pointCoord3.keyCode = 0;
                    sendMotionEvent(i10, new FPoint(pointCoord3.f33824x, pointCoord3.f33825y));
                    MapModeEventCacheModel mapModeEventCacheModel = this.mapModeEventCacheModel;
                    PointCoord pointCoord4 = this.mTrackBallRZ;
                    mapModeEventCacheModel.cacheModeMapEvent(i10, pointCoord4.f33824x, pointCoord4.f33825y, null);
                    cacheModeMapEvent2(i10, pointCoord.f33824x, pointCoord.f33825y, i11);
                    LogUtils.d(str, "cacheModeMapEvent cacheModeMapEvent2");
                    return true;
                }
            }
        }
        boolean zSendMotionEvent = sendMotionEvent(i10, pointCoord);
        if (zSendMotionEvent && pointCoord != null) {
            cacheModeMapEvent2(i10, pointCoord.f33824x, pointCoord.f33825y, i11);
            LogUtils.d(str, "cacheModeMapEvent2");
        }
        return zSendMotionEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendMorePointEvent(PointCoord pointCoord, int i10) {
        if (i10 != 1) {
            return false;
        }
        setMorePointIsRun(true);
        clearAllMapModeEvent();
        clearAllFnModeMapEvent();
        MorePointThread morePointThread = new MorePointThread(pointCoord);
        morePointThread.setMapModeEventCacheModel(this.mapModeEventCacheModel);
        morePointThread.start();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendMotionEvent(int i10, PointCoord pointCoord) {
        if (pointCoord != null) {
            return sendMotionEvent(i10, new FPoint(pointCoord.f33824x, pointCoord.f33825y));
        }
        LogUtils.d(TAG, "sendMotionEvent fail, PointCoord is null");
        return false;
    }

    public void cacheModeMapEvent(int i10, float f10, float f11, PointCoord pointCoord) {
        this.mapModeEventCacheModel.cacheModeMapEvent(i10, f10, f11, pointCoord);
    }

    public void cleanFnModeMapEvent(int i10, boolean z10) {
        this.mapModeEventCacheModel.cleanFnModeMapEvent(i10, z10);
    }

    public void clearKeyDown() {
        this.mapModeEventCacheModel.clearAllMapModeEvent();
        this.mapModeEventCacheModel.clearAllFnModeMapEvent();
        this.keyboardInputModel.clearKeyDown();
        resetTriggerKeyHandledState();
    }

    public boolean isMorePointIsRun() {
        return this.morePointIsRun;
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        String str = TAG;
        LogUtils.d(str, " onGenericMotionEvent event#" + motionEvent);
        SwitchControllerManager.getInstance().reportGamePadDeviceInfo(motionEvent);
        if ((motionEvent.getSource() & 8194) == 8194) {
            sendInputDevice(2, 1);
        }
        int i10 = 0;
        if (this.morePointIsRun) {
            return false;
        }
        if (motionEvent.getAction() == 7 && isListenHover()) {
            LogUtils.d(str, "=============onGenericMotionEvent--------processMouseMove");
            int historySize = motionEvent.getHistorySize();
            while (i10 < historySize) {
                processMouseMove(motionEvent, i10);
                i10++;
            }
            processMouseMove(motionEvent, -1);
            return true;
        }
        if (!HmInputDeviceManager.isJoyStick(motionEvent) || motionEvent.getAction() != 2) {
            return false;
        }
        sendGamePadStart(motionEvent.getDevice());
        sendInputDevice(3, 1);
        int historySize2 = motionEvent.getHistorySize();
        while (i10 < historySize2) {
            processJoystickInput(motionEvent, i10);
            i10++;
        }
        processJoystickInput(motionEvent, -1);
        if (1 == getInputType()) {
            handleJoyStickTrigger(motionEvent);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0288  */
    /* JADX WARN: Code duplicated, block: B:103:0x028e  */
    /* JADX WARN: Code duplicated, block: B:106:0x029b  */
    /* JADX WARN: Code duplicated, block: B:107:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:109:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:111:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:112:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:114:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:116:0x02bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:119:0x02c7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:120:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:121:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:122:0x02e6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:123:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:125:0x02ee A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:126:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:127:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:132:0x0314 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:133:0x0316  */
    /* JADX WARN: Code duplicated, block: B:135:0x031a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:58:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:60:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:61:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:72:0x0216  */
    /* JADX WARN: Code duplicated, block: B:74:0x021c  */
    /* JADX WARN: Code duplicated, block: B:76:0x0222  */
    /* JADX WARN: Code duplicated, block: B:77:0x0229  */
    /* JADX WARN: Code duplicated, block: B:79:0x022f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:81:0x0236  */
    /* JADX WARN: Code duplicated, block: B:82:0x023b  */
    /* JADX WARN: Code duplicated, block: B:84:0x0241  */
    /* JADX WARN: Code duplicated, block: B:86:0x0247  */
    /* JADX WARN: Code duplicated, block: B:91:0x026a  */
    /* JADX WARN: Code duplicated, block: B:99:0x0281  */
    /* JADX WARN: Instruction removed from duplicated block: B:60:0x01d3, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:86:0x0247, please report this as an issue */
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        int iAndroidKeyCode2PASSKey;
        String str = TAG;
        LogUtils.d(str, "onKeyDown -----------: " + i10 + ", " + keyEvent.getKeyCode() + "\n event: " + keyEvent.getKeyCharacterMap() + "\n characters: " + keyEvent.getCharacters() + "\n unicode: " + keyEvent.getUnicodeChar() + "\n source: " + keyEvent.getSource() + "\n string: " + keyEvent.toString() + "\n scan: " + keyEvent.getScanCode() + "\n number: " + keyEvent.getNumber());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onKeyDown -----------: ");
        sb2.append(i10);
        sb2.append(" mCurrentInputMode, ");
        sb2.append(getInputType());
        LogUtils.d(str, sb2.toString());
        if (7 == getInputType()) {
            return false;
        }
        if (i10 != 4) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("onkeydown inputdevice1 ");
            sb3.append(keyEvent.getDevice());
            sb3.append(" name:");
            sb3.append(keyEvent.getDevice() != null ? keyEvent.getDevice().getName() : "");
            LogUtils.d(str, sb3.toString());
            LogUtils.d(str, "onkeydown inputdevice2 " + keyEvent.getSource());
            if (KeyEvent.isGamepadButton(i10)) {
                sendInputDevice(3, 1);
            } else if (InputDeviceUtil.isRemoteControlDevice(i10, keyEvent)) {
                sendInputDevice(1, 1);
            } else if (InputDeviceUtil.isMouseOrKeyboardDevice(i10, keyEvent)) {
                sendInputDevice(2, 1);
            } else {
                sendInputDevice(9, 1);
            }
        } else if (HmInputDeviceManager.isJoyStick(keyEvent)) {
            sendInputDevice(3, 1);
        } else if ((keyEvent.getSource() & 8194) == 8194) {
            sendInputDevice(2, 1);
        } else {
            sendInputDevice(1, 1);
        }
        if (i10 != 4) {
            if (i10 == 111) {
                return false;
            }
            switch (i10) {
            }
            iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(i10);
            LogUtils.d(str, "keyCodeToSend:" + iAndroidKeyCode2PASSKey + " mCurrentInputMode: " + getInputType());
            if (getInputType() == 4) {
                if (KeyEvent.isGamepadButton(i10)) {
                    sendGamePadStart(keyEvent.getDevice());
                    LogUtils.e(str, "onKeyDown -----------:KeyEvent.isGamepadButton(keyCode) " + i10);
                    mappingProcessKey(keyEvent, 1);
                } else if (!KeyMapUtil.isDpadNumKey(keyEvent) || i10 == 23) {
                    if (!KeyMapUtil.isKeyboardEvent(keyEvent)) {
                        mappingProcessKey(keyEvent, 1);
                    } else if (getKeyboardMode() == 0) {
                        this.keyboardInputModel.processKeyboard(keyEvent, 1);
                    } else if (getKeyboardMode() == 1 && iAndroidKeyCode2PASSKey != 0) {
                        sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
                    }
                } else if (getKeyboardMode() == 0) {
                    this.keyboardInputModel.processKeyboard(keyEvent, 1);
                } else if (getKeyboardMode() == 1 && iAndroidKeyCode2PASSKey != 0) {
                    sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
                }
            } else if (getInputType() == 2) {
                if (KeyEvent.isGamepadButton(i10)) {
                    LogUtils.e(str, "onKeyDown -----------:KeyEvent.GAMEPAD_MODE_MOUSE(keyCode) " + i10);
                    if (i10 == 96 && keyEvent.getRepeatCount() == 0) {
                        processMouseMove(keyEvent);
                    }
                } else if (KeyMapUtil.isDirectionKey(i10) && ((i10 != 23 && i10 != 66) || keyEvent.getRepeatCount() == 0)) {
                    processMouseMove(keyEvent);
                }
            } else if (getInputType() == 5) {
                if (KeyEvent.isGamepadButton(i10)) {
                    sendGamePadStart(keyEvent.getDevice());
                }
                if (isKeyboardPadModeMap()) {
                    processDpadKey(keyEvent);
                } else if (isKeyboardPadModeInput()) {
                    clearDpadMapDownEvent();
                    if (iAndroidKeyCode2PASSKey != 0) {
                        sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
                    }
                }
            } else if (getInputType() == 6) {
                if (!isBattleHandleEvent(i10, keyEvent)) {
                    if (iAndroidKeyCode2PASSKey != 0) {
                        sendKeyboardEvent("1", KeyEvent.keyCodeToString(keyEvent.getKeyCode()), GamePadManager.getInstance().getGamePadNum(keyEvent.getDevice()));
                    } else {
                        if (interceptKey(i10)) {
                            return false;
                        }
                        sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
                    }
                }
            } else if (iAndroidKeyCode2PASSKey != 0) {
                if (interceptKey(i10)) {
                    return false;
                }
                sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
            } else if (i10 == 104 && i10 != 105) {
                sendKeyboardEvent("1", KeyEvent.keyCodeToString(keyEvent.getKeyCode()), GamePadManager.getInstance().getGamePadNum(keyEvent.getDevice()));
            } else if ((i10 == 104 || this.ltMotionHandled) && (i10 != 105 || this.rtMotionHandled)) {
                LogUtils.i(str, "key event LT/RT already handled by motion event, skip key event");
            } else {
                LogUtils.i(str, "key event handle trigger event down");
                sendKeyboardEvent("1", KeyEvent.keyCodeToString(keyEvent.getKeyCode()), GamePadManager.getInstance().getGamePadNum(keyEvent.getDevice()));
                if (i10 == 104) {
                    this.ltKeyDownHandled = true;
                    LogUtils.d(str, "LT key down handled by onKeyDown");
                } else {
                    this.rtKeyDownHandled = true;
                    LogUtils.d(str, "RT key down handled by onKeyDown");
                }
            }
            return false;
        }
        if ((keyEvent.getSource() & 8194) == 8194) {
            PointCoord mappingEvent = getMappingEvent(991);
            if (isNativeDpadGame() && mappingEvent != null) {
                sendDpadKey(mappingEvent.toKeyCode, 0, KeyEvent.keyCodeToString(23));
                LogUtils.d(str, "hmcprequest ==sendEventContent = 鼠标右键映射---down " + mappingEvent.toKeyCode);
                return true;
            }
        }
        if ((keyEvent.getSource() & 8194) == 8194) {
            if (!hasSightBeadCoord()) {
                clickSightBeadButton();
            }
            mouseBackEvent();
            return true;
        }
        if (getInputType() == 4 && keyEvent.getRepeatCount() <= 0 && KeyMapUtil.isDirectionKey(i10)) {
            this.dpadInputModel.processDpadInput(i10, 1, getButtonDirection(), getDpadPoint());
        }
        iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(i10);
        LogUtils.d(str, "keyCodeToSend:" + iAndroidKeyCode2PASSKey + " mCurrentInputMode: " + getInputType());
        if (getInputType() == 4) {
            if (KeyEvent.isGamepadButton(i10)) {
                sendGamePadStart(keyEvent.getDevice());
                LogUtils.e(str, "onKeyDown -----------:KeyEvent.isGamepadButton(keyCode) " + i10);
                mappingProcessKey(keyEvent, 1);
            } else if (KeyMapUtil.isDpadNumKey(keyEvent)) {
                if (!KeyMapUtil.isKeyboardEvent(keyEvent)) {
                    mappingProcessKey(keyEvent, 1);
                } else if (getKeyboardMode() == 0) {
                    this.keyboardInputModel.processKeyboard(keyEvent, 1);
                } else if (getKeyboardMode() == 1) {
                    sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
                }
            } else if (!KeyMapUtil.isKeyboardEvent(keyEvent)) {
                mappingProcessKey(keyEvent, 1);
            } else if (getKeyboardMode() == 0) {
                this.keyboardInputModel.processKeyboard(keyEvent, 1);
            } else if (getKeyboardMode() == 1) {
                sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
            }
        } else if (getInputType() == 2) {
            if (KeyEvent.isGamepadButton(i10)) {
                LogUtils.e(str, "onKeyDown -----------:KeyEvent.GAMEPAD_MODE_MOUSE(keyCode) " + i10);
                if (i10 == 96) {
                    processMouseMove(keyEvent);
                }
            } else if (KeyMapUtil.isDirectionKey(i10)) {
                processMouseMove(keyEvent);
            }
        } else if (getInputType() == 5) {
            if (KeyEvent.isGamepadButton(i10)) {
                sendGamePadStart(keyEvent.getDevice());
            }
            if (isKeyboardPadModeMap()) {
                processDpadKey(keyEvent);
            } else if (isKeyboardPadModeInput()) {
                clearDpadMapDownEvent();
                if (iAndroidKeyCode2PASSKey != 0) {
                    sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
                }
            }
        } else if (getInputType() == 6) {
            if (!isBattleHandleEvent(i10, keyEvent)) {
                if (iAndroidKeyCode2PASSKey != 0) {
                    sendKeyboardEvent("1", KeyEvent.keyCodeToString(keyEvent.getKeyCode()), GamePadManager.getInstance().getGamePadNum(keyEvent.getDevice()));
                } else {
                    if (interceptKey(i10)) {
                        return false;
                    }
                    sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
                }
            }
        } else if (iAndroidKeyCode2PASSKey != 0) {
            if (interceptKey(i10)) {
                return false;
            }
            sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
        } else if (i10 == 104) {
            if (i10 == 104) {
                LogUtils.i(str, "key event LT/RT already handled by motion event, skip key event");
            } else {
                LogUtils.i(str, "key event LT/RT already handled by motion event, skip key event");
            }
        } else if (i10 == 104) {
            LogUtils.i(str, "key event LT/RT already handled by motion event, skip key event");
        } else {
            LogUtils.i(str, "key event LT/RT already handled by motion event, skip key event");
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0085  */
    /* JADX WARN: Code duplicated, block: B:26:0x008b  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:42:0x00df  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ec A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:47:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:52:0x0104  */
    /* JADX WARN: Code duplicated, block: B:54:0x011c  */
    /* JADX WARN: Code duplicated, block: B:55:0x0121  */
    /* JADX WARN: Code duplicated, block: B:57:0x0127  */
    /* JADX WARN: Code duplicated, block: B:58:0x012c  */
    /* JADX WARN: Code duplicated, block: B:60:0x0133  */
    /* JADX WARN: Code duplicated, block: B:62:0x0139  */
    /* JADX WARN: Code duplicated, block: B:65:0x0146  */
    /* JADX WARN: Code duplicated, block: B:66:0x014b  */
    /* JADX WARN: Code duplicated, block: B:68:0x0151  */
    /* JADX WARN: Code duplicated, block: B:70:0x0156  */
    /* JADX WARN: Code duplicated, block: B:71:0x015b  */
    /* JADX WARN: Code duplicated, block: B:73:0x0164  */
    /* JADX WARN: Code duplicated, block: B:75:0x016a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x016c  */
    /* JADX WARN: Code duplicated, block: B:78:0x0172 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x0173  */
    /* JADX WARN: Code duplicated, block: B:80:0x0178  */
    /* JADX WARN: Code duplicated, block: B:81:0x0191 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x0193  */
    /* JADX WARN: Code duplicated, block: B:84:0x0199 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:85:0x019a  */
    /* JADX WARN: Code duplicated, block: B:86:0x019e  */
    /* JADX WARN: Code duplicated, block: B:91:0x01bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:94:0x01c5 A[ADDED_TO_REGION] */
    /* JADX WARN: Instruction removed from duplicated block: B:26:0x008b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:52:0x0104, please report this as an issue */
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        int iAndroidKeyCode2PASSKey;
        String str = TAG;
        LogUtils.d(str, "onKeyUp -----------: " + i10);
        if (7 == getInputType()) {
            return false;
        }
        if (i10 != 4) {
            if (i10 == 111) {
                return false;
            }
            switch (i10) {
            }
            iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(i10);
            if (getInputType() == 4) {
                if (KeyEvent.isGamepadButton(i10)) {
                    sendGamePadStart(keyEvent.getDevice());
                    LogUtils.e(str, "onKeyup -----------:KeyEvent.isGamepadButton(keyCode) " + i10);
                    mappingProcessKey(keyEvent, 2);
                } else if (!KeyMapUtil.isDpadNumKey(keyEvent) || i10 == 23) {
                    LogUtils.e(str, "onKeyup  isNumKey(keyCode) -----------: mCurrentInputMode == GAMEPAD_MODE_MAP");
                    if (!KeyMapUtil.isKeyboardEvent(keyEvent)) {
                        mappingProcessKey(keyEvent, 2);
                    } else if (isKeyboardPadModeMap()) {
                        this.keyboardInputModel.processKeyboard(keyEvent, 2);
                    } else if (isKeyboardPadModeInput() && iAndroidKeyCode2PASSKey != 0) {
                        sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
                    }
                } else if (isKeyboardPadModeMap()) {
                    this.keyboardInputModel.processKeyboard(keyEvent, 2);
                } else if (isKeyboardPadModeInput() && iAndroidKeyCode2PASSKey != 0) {
                    sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
                }
            } else if (getInputType() == 2) {
                if (KeyEvent.isGamepadButton(i10)) {
                    LogUtils.e(str, "onKeyup -----------:KeyEvent.GAMEPAD_MODE_MOUSE(keyCode) " + i10);
                    if (i10 == 96) {
                        processMouseMove(keyEvent);
                    }
                } else if (KeyMapUtil.isDirectionKey(i10)) {
                    processMouseMove(keyEvent);
                }
            } else if (getInputType() == 5) {
                if (KeyEvent.isGamepadButton(i10)) {
                    sendGamePadStart(keyEvent.getDevice());
                }
                if (isKeyboardPadModeMap()) {
                    processDpadKey(keyEvent);
                } else if (isKeyboardPadModeInput()) {
                    clearDpadMapDownEvent();
                    if (iAndroidKeyCode2PASSKey != 0) {
                        sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
                    }
                }
            } else if (getInputType() == 6) {
                if (!isBattleHandleEvent(i10, keyEvent)) {
                    if (iAndroidKeyCode2PASSKey != 0) {
                        sendKeyboardEvent("0", KeyEvent.keyCodeToString(keyEvent.getKeyCode()), GamePadManager.getInstance().getGamePadNum(keyEvent.getDevice()));
                    } else {
                        if (interceptKey(i10)) {
                            return false;
                        }
                        sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
                    }
                }
            } else if (iAndroidKeyCode2PASSKey != 0) {
                if (interceptKey(i10)) {
                    return false;
                }
                sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
            } else if (i10 == 104 && i10 != 105) {
                sendKeyboardEvent("0", KeyEvent.keyCodeToString(keyEvent.getKeyCode()), GamePadManager.getInstance().getGamePadNum(keyEvent.getDevice()));
            } else if ((i10 == 104 || !this.ltKeyDownHandled) && !(i10 == 105 && this.rtKeyDownHandled)) {
                LogUtils.i(str, "key event LT/RT not handled by key down, skip key up");
            } else {
                LogUtils.i(str, "key event handle trigger event up");
                sendKeyboardEvent("0", KeyEvent.keyCodeToString(keyEvent.getKeyCode()), GamePadManager.getInstance().getGamePadNum(keyEvent.getDevice()));
                if (i10 == 104) {
                    this.ltKeyDownHandled = false;
                    LogUtils.d(str, "LT key up handled by onKeyUp, complete click cycle, reset state");
                } else {
                    this.rtKeyDownHandled = false;
                    LogUtils.d(str, "RT key up handled by onKeyUp, complete click cycle, reset state");
                }
            }
            return false;
        }
        if ((keyEvent.getSource() & 8194) == 8194) {
            PointCoord mappingEvent = getMappingEvent(991);
            if (isNativeDpadGame() && mappingEvent != null) {
                sendDpadKey(mappingEvent.toKeyCode, 1, KeyEvent.keyCodeToString(23));
                LogUtils.d(str, "hmcprequest ==sendEventContent = 鼠标右键映射---up " + mappingEvent.toKeyCode);
                return true;
            }
        }
        if (getInputType() == 4) {
            this.dpadInputModel.processDpadInput(i10, 2, getButtonDirection(), getDpadPoint());
        }
        iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(i10);
        if (getInputType() == 4) {
            if (KeyEvent.isGamepadButton(i10)) {
                sendGamePadStart(keyEvent.getDevice());
                LogUtils.e(str, "onKeyup -----------:KeyEvent.isGamepadButton(keyCode) " + i10);
                mappingProcessKey(keyEvent, 2);
            } else if (KeyMapUtil.isDpadNumKey(keyEvent)) {
                LogUtils.e(str, "onKeyup  isNumKey(keyCode) -----------: mCurrentInputMode == GAMEPAD_MODE_MAP");
                if (!KeyMapUtil.isKeyboardEvent(keyEvent)) {
                    mappingProcessKey(keyEvent, 2);
                } else if (isKeyboardPadModeMap()) {
                    this.keyboardInputModel.processKeyboard(keyEvent, 2);
                } else if (isKeyboardPadModeInput()) {
                    sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
                }
            } else {
                LogUtils.e(str, "onKeyup  isNumKey(keyCode) -----------: mCurrentInputMode == GAMEPAD_MODE_MAP");
                if (!KeyMapUtil.isKeyboardEvent(keyEvent)) {
                    mappingProcessKey(keyEvent, 2);
                } else if (isKeyboardPadModeMap()) {
                    this.keyboardInputModel.processKeyboard(keyEvent, 2);
                } else if (isKeyboardPadModeInput()) {
                    sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
                }
            }
        } else if (getInputType() == 2) {
            if (KeyEvent.isGamepadButton(i10)) {
                LogUtils.e(str, "onKeyup -----------:KeyEvent.GAMEPAD_MODE_MOUSE(keyCode) " + i10);
                if (i10 == 96) {
                    processMouseMove(keyEvent);
                }
            } else if (KeyMapUtil.isDirectionKey(i10)) {
                processMouseMove(keyEvent);
            }
        } else if (getInputType() == 5) {
            if (KeyEvent.isGamepadButton(i10)) {
                sendGamePadStart(keyEvent.getDevice());
            }
            if (isKeyboardPadModeMap()) {
                processDpadKey(keyEvent);
            } else if (isKeyboardPadModeInput()) {
                clearDpadMapDownEvent();
                if (iAndroidKeyCode2PASSKey != 0) {
                    sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
                }
            }
        } else if (getInputType() == 6) {
            if (!isBattleHandleEvent(i10, keyEvent)) {
                if (iAndroidKeyCode2PASSKey != 0) {
                    sendKeyboardEvent("0", KeyEvent.keyCodeToString(keyEvent.getKeyCode()), GamePadManager.getInstance().getGamePadNum(keyEvent.getDevice()));
                } else {
                    if (interceptKey(i10)) {
                        return false;
                    }
                    sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
                }
            }
        } else if (iAndroidKeyCode2PASSKey != 0) {
            if (interceptKey(i10)) {
                return false;
            }
            sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
        } else if (i10 == 104) {
            if (i10 == 104) {
                LogUtils.i(str, "key event LT/RT not handled by key down, skip key up");
            } else {
                LogUtils.i(str, "key event LT/RT not handled by key down, skip key up");
            }
        } else if (i10 == 104) {
            LogUtils.i(str, "key event LT/RT not handled by key down, skip key up");
        } else {
            LogUtils.i(str, "key event LT/RT not handled by key down, skip key up");
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        PointCoord mappingEvent = getMappingEvent(ButtonMappingUtil.BUTTON_MOUSE_PRIMARY);
        if ((motionEvent.getSource() & 8194) != 8194 || !isNativeDpadGame() || mappingEvent == null) {
            return armMouseHandleTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() == 0) {
            sendDpadKey(mappingEvent.toKeyCode, 0, KeyEvent.keyCodeToString(23));
            LogUtils.d(TAG, "hmcprequest ==sendEventContent = 鼠标左键映射---down " + mappingEvent.toKeyCode);
        } else if (motionEvent.getAction() == 1) {
            sendDpadKey(mappingEvent.toKeyCode, 1, KeyEvent.keyCodeToString(23));
            LogUtils.d(TAG, "hmcprequest ==sendEventContent = 鼠标左键映射---up " + mappingEvent.toKeyCode);
        }
        return true;
    }

    public void sendGamepadKeyEvent(int i10, int i11, float f10, float f11, float f12, float f13) {
        this.joystickInputModel.sendGamepadKeyEvent(i10, i11, f10, f11, f12, f13);
    }

    public void setEventMappingModel(EventMappingModel eventMappingModel) {
        this.eventMappingModel = eventMappingModel;
        this.keyboardInputModel.setEventMappingModel(eventMappingModel);
        this.joystickInputModel.setEventMappingModel(eventMappingModel);
    }

    public void setKeyboardDirectionDefault() {
        this.keyboardInputModel.setKeyboardDirectionDefault();
    }

    public void setListener(EventModelListener eventModelListener) {
        this.listener = eventModelListener;
    }

    public void setMorePointIsRun(boolean z10) {
        this.morePointIsRun = z10;
    }

    private void processMouseMove(MotionEvent motionEvent, int i10) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            eventModelListener.onProcessMouseMove(motionEvent, i10);
        } else {
            LogUtils.i(TAG, "processMouseMove(KeyEvent, historyPos) fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendKeyboardEvent(String str, String str2) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            eventModelListener.onKeyboardEvent(str, str2);
        } else {
            LogUtils.i(TAG, "sendKeyboardEvent fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendMotionEvent(int i10, FPoint fPoint) {
        return sendEvent(MotionEventUtil.getSendMotionEventContent(i10, fPoint));
    }

    private void sendKeyboardEvent(String str, String str2, String str3) {
        EventModelListener eventModelListener = this.listener;
        if (eventModelListener != null) {
            eventModelListener.onKeyboardEvent(str, str2, str3);
        } else {
            LogUtils.i(TAG, "sendKeyboardEvent fail");
        }
    }
}
