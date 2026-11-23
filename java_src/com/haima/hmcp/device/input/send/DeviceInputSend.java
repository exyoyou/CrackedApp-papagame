package com.haima.hmcp.device.input.send;

import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.business.GamePadManager;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.device.input.listener.DeviceInputListener;
import com.haima.hmcp.device.input.parse.DeviceMappingParse;
import com.haima.hmcp.device.input.thread.MorePointThread;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.utils.LogUtils;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceInputSend {
    public static final String CACHE_EVENT_MORE_POINT_MOVE = "morePointMove";
    public static final String CACHE_EVENT_TRACKBALL_RIGHT_MOVE = "trackBallRMove";
    private static final String TAG = "DeviceInputSend";
    private static DeviceInputSend deviceInputSend;
    private DeviceInputListener mDeviceInputListener;
    private ScreenOrientation mOrientation;
    private IWebSocket mSendWebSocket;
    public final String CACHE_EVENT_DPAD_DIRECTION = "dpadDirection";
    public final String CACHE_EVENT_TRACKBALL_LEFT = "trackBallL";
    public final String CACHE_EVENT_TRACKBALL_RIGHT = "trackBallR";
    private int mAxisStatus = 0;
    public ConcurrentHashMap<String, String> downEventMap = new ConcurrentHashMap<>();
    public ConcurrentHashMap<String, String> mapModeEventMap = new ConcurrentHashMap<>();
    public ConcurrentHashMap<Integer, String> mapFnModeEventMap = new ConcurrentHashMap<>();

    private DeviceInputSend() {
    }

    public static DeviceInputSend getInstance() {
        if (deviceInputSend == null) {
            deviceInputSend = new DeviceInputSend();
        }
        return deviceInputSend;
    }

    private void sendStopAllGamePad() {
        GamePadManager.getInstance().sendStopAllGamePad(this.mSendWebSocket, true);
        this.mSendWebSocket = null;
    }

    public void cacheModeMapEvent(PointCoord pointCoord, PointCoord pointCoord2, int i10, float f10, float f11, PointCoord pointCoord3) {
        String str = f10 + "" + f11;
        if (i10 == 1) {
            if (pointCoord3 == null) {
                this.mapModeEventMap.put(str, String.format(Locale.US, "mouse:%d:%.4f,%.4f", 2, Float.valueOf(f10), Float.valueOf(f11)));
                return;
            }
            if (pointCoord3 == DeviceMappingParse.getInstance().buttonDirection) {
                this.mapModeEventMap.put("dpadDirection", str);
                return;
            } else if (pointCoord3 == pointCoord) {
                this.mapModeEventMap.put("trackBallL", str);
                return;
            } else {
                if (pointCoord3 == pointCoord2) {
                    this.mapModeEventMap.put("trackBallR", str);
                    return;
                }
                return;
            }
        }
        if (i10 == 2) {
            if (pointCoord3 == null) {
                this.mapModeEventMap.remove(str);
                return;
            }
            if (pointCoord3 == DeviceMappingParse.getInstance().buttonDirection) {
                this.mapModeEventMap.remove("dpadDirection");
            } else if (pointCoord3 == pointCoord) {
                this.mapModeEventMap.remove("trackBallL");
            } else if (pointCoord3 == pointCoord2) {
                this.mapModeEventMap.remove("trackBallR");
            }
        }
    }

    public void cacheModeMapEvent2(int i10, float f10, float f11, int i11) {
        if (i10 == 1) {
            this.mapFnModeEventMap.put(Integer.valueOf(i11), String.format(Locale.US, "mouse:%d:%.4f,%.4f", 2, Float.valueOf(f10), Float.valueOf(f11)));
        } else if (i10 == 2) {
            this.mapFnModeEventMap.remove(Integer.valueOf(i11));
        }
    }

    public void clearMapModeEvent(PointCoord pointCoord, PointCoord pointCoord2, String str) {
        if ("trackBallL".equals(str)) {
            sendMotionEvent(3, pointCoord);
            sendMotionEvent(2, pointCoord);
            return;
        }
        if ("trackBallR".equals(str)) {
            sendMotionEvent(3, pointCoord2);
            sendMotionEvent(2, pointCoord2);
        } else if ("trackBallRMove".equals(str)) {
            sendMotionEvent(3, pointCoord2);
            sendMotionEvent(2, pointCoord2);
        } else {
            if (!"morePointMove".equals(str)) {
                sendData(this.mapFnModeEventMap.get(str));
                return;
            }
            Locale locale = Locale.US;
            sendData(String.format(locale, "mouse:%d:%s", 3, this.mapModeEventMap.get(str)));
            sendData(String.format(locale, "mouse:%d:%s", 2, this.mapModeEventMap.get(str)));
        }
    }

    public void clearMapModeEvent2(int i10) {
        sendData(this.mapFnModeEventMap.get(Integer.valueOf(i10)));
    }

    public ConcurrentHashMap<Integer, String> getMapFnModeEventMap() {
        return this.mapFnModeEventMap;
    }

    public ConcurrentHashMap<String, String> getMapModeEventMap() {
        return this.mapModeEventMap;
    }

    public ScreenOrientation getOrientation() {
        return this.mOrientation;
    }

    public ScreenOrientation getScreenOrientation() {
        DeviceInputListener deviceInputListener = this.mDeviceInputListener;
        if (deviceInputListener == null) {
            return null;
        }
        deviceInputListener.getOrientation();
        return null;
    }

    public IWebSocket getSendWebSocket() {
        return this.mSendWebSocket;
    }

    public int getmAxisStatus() {
        return this.mAxisStatus;
    }

    public void onDestroy() {
        sendStopAllGamePad();
        this.mDeviceInputListener = null;
        deviceInputSend = null;
    }

    public boolean sendData(String str) {
        return sendData(str, false);
    }

    public void sendGamePadHatEvent(float f10, float f11) {
        Locale locale = Locale.US;
        sendData(String.format(locale, "gamePad:ABS_HAT0X:%.4f", Float.valueOf(f10)));
        sendData(String.format(locale, "gamePad:ABS_HAT0Y:%.4f", Float.valueOf(f11)));
    }

    public void sendGamePadMoveEvent(float f10, float f11, float f12, float f13) {
        sendData(String.format(Locale.US, "gamePad:MOVE_EVENT:%.4f:%.4f:%.4f:%.4f", Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(f12), Float.valueOf(f13)));
    }

    public void sendKeyboardEvent(String str, int i10) {
        String str2 = str + ":" + i10;
        LogUtils.d(TAG, "sendKeyboardEvent---" + str2);
        sendData(str2);
    }

    public boolean sendMappingEvent(PointCoord pointCoord, PointCoord pointCoord2, PointCoord pointCoord3, PointCoord pointCoord4, int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onKeyDown -----------:cleanFnModeMapEvent 0");
        sb2.append(i11);
        sb2.append(" coord: ");
        sb2.append(pointCoord4);
        sb2.append(" actionType");
        sb2.append(i10);
        sb2.append(" mTrackBallR==null：");
        sb2.append(pointCoord2 == null);
        LogUtils.e("HmcpVideoView", sb2.toString());
        if (pointCoord4 != null && pointCoord2 == null) {
            if (i10 == 1) {
                if (pointCoord3.keyCode == 0) {
                    float f10 = pointCoord4.f33824x;
                    pointCoord3.oX = f10;
                    float f11 = pointCoord4.f33825y;
                    pointCoord3.oY = f11;
                    pointCoord3.f33824x = f10;
                    pointCoord3.f33825y = f11;
                    pointCoord3.keyCode = pointCoord4.keyCode;
                }
            } else if (i10 == 2 && pointCoord3.keyCode == pointCoord4.keyCode) {
                pointCoord3.keyCode = 0;
                sendMotionEvent(i10, new FPoint(pointCoord3.f33824x, pointCoord3.f33825y));
                cacheModeMapEvent(pointCoord, pointCoord2, i10, pointCoord3.f33824x, pointCoord3.f33825y, null);
                cacheModeMapEvent2(i10, pointCoord4.f33824x, pointCoord4.f33825y, i11);
                LogUtils.d(TAG, "cacheModeMapEvent cacheModeMapEvent2");
                return true;
            }
        }
        boolean zSendMotionEvent = sendMotionEvent(i10, pointCoord4);
        if (zSendMotionEvent && pointCoord4 != null) {
            cacheModeMapEvent2(i10, pointCoord4.f33824x, pointCoord4.f33825y, i11);
            LogUtils.d(TAG, "cacheModeMapEvent2");
        }
        return zSendMotionEvent;
    }

    public void sendMorePointEvent(PointCoord pointCoord, PointCoord pointCoord2, PointCoord pointCoord3, int i10) {
        if (i10 == 1) {
            DeviceMappingParse.getInstance().setMorePointIsRun(true);
            Iterator<String> it2 = this.mapModeEventMap.keySet().iterator();
            while (it2.hasNext()) {
                clearMapModeEvent(pointCoord, pointCoord2, it2.next());
            }
            this.mapModeEventMap.clear();
            Iterator<Integer> it3 = this.mapFnModeEventMap.keySet().iterator();
            while (it3.hasNext()) {
                clearMapModeEvent2(it3.next().intValue());
            }
            this.mapFnModeEventMap.clear();
            new MorePointThread(pointCoord3).start();
        }
    }

    public void sendMotionEvent(int i10, FPoint fPoint) {
        if (fPoint.f33815x > 1.0f) {
            fPoint.f33815x = 1.0f;
        }
        if (fPoint.f33815x < 0.0f) {
            fPoint.f33815x = 0.0f;
        }
        if (fPoint.f33816y > 1.0f) {
            fPoint.f33816y = 1.0f;
        }
        if (fPoint.f33816y < 0.0f) {
            fPoint.f33816y = 0.0f;
        }
        String str = String.format(Locale.US, "mouse:%d:%.4f,%.4f", Integer.valueOf(i10), Float.valueOf(fPoint.f33815x), Float.valueOf(fPoint.f33816y));
        LogUtils.d(TAG, "==sendEventContent = " + str);
        sendData(str);
    }

    public void setDeviceInputListener(DeviceInputListener deviceInputListener) {
        this.mDeviceInputListener = deviceInputListener;
    }

    public void setOrientation(ScreenOrientation screenOrientation) {
        this.mOrientation = screenOrientation;
    }

    public void setSendWebSocket(IWebSocket iWebSocket) {
        this.mSendWebSocket = iWebSocket;
    }

    public void setmAxisStatus(int i10) {
        this.mAxisStatus = i10;
    }

    public boolean sendData(String str, boolean z10) {
        LogUtils.d(TAG, "sendData eventContent: " + str + ",isDiscardable: " + z10);
        DeviceInputListener deviceInputListener = this.mDeviceInputListener;
        if (deviceInputListener != null) {
            return deviceInputListener.onDeviceInputEvent(str, z10);
        }
        return false;
    }

    public void sendKeyboardEvent(String str, String str2) {
        String str3 = "gamePad:" + str2 + ":" + str;
        LogUtils.d("WebSocketManager", "sendKeyboardEvent---sendtoString==null:" + str3);
        sendData(str3);
        if ("1".equals(str)) {
            this.downEventMap.put(str2, "gamePad:" + str2 + ":0");
            return;
        }
        this.downEventMap.remove(str2);
    }

    public void sendKeyboardEvent(String str, String str2, String str3) {
        String str4 = String.format("gamePad%s:", str3);
        String str5 = str4 + str2 + ":" + str;
        LogUtils.d("WebSocketManager", "sendKeyboardEvent---sendtoString==null:" + str5);
        sendData(str5);
        if ("1".equals(str)) {
            this.downEventMap.put(str2, str4 + str2 + ":0");
            return;
        }
        this.downEventMap.remove(str2);
    }

    public boolean sendMotionEvent(int i10, PointCoord pointCoord) {
        if (pointCoord == null) {
            return false;
        }
        sendMotionEvent(i10, new FPoint(pointCoord.f33824x, pointCoord.f33825y));
        return true;
    }
}
