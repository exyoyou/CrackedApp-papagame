package com.haima.hmcp.model;

import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.listeners.MapModeEventCacheModelListener;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class MapModeEventCacheModel {
    public static final String CACHE_EVENT_MORE_POINT_MOVE = "morePointMove";
    public static final String CACHE_EVENT_TRACKBALL_RIGHT_MOVE = "trackBallRMove";
    private static final String TAG = "MapModeEventCacheModel";
    private MapModeEventCacheModelListener listener;
    public final String CACHE_EVENT_DPAD_DIRECTION = "dpadDirection";
    public final String CACHE_EVENT_TRACKBALL_LEFT = "trackBallL";
    public final String CACHE_EVENT_TRACKBALL_RIGHT = "trackBallR";
    private final ConcurrentHashMap<String, String> mapModeEventMap = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<Integer, String> mapFnModeEventMap = new ConcurrentHashMap<>();

    private void clearMapModeEvent2(int i10) {
        sendEvent(this.mapFnModeEventMap.get(Integer.valueOf(i10)));
    }

    private PointCoord getButtonDirection() {
        MapModeEventCacheModelListener mapModeEventCacheModelListener = this.listener;
        if (mapModeEventCacheModelListener != null) {
            return mapModeEventCacheModelListener.onButtonDirection();
        }
        LogUtils.i(TAG, "getButtonDirection fail");
        return null;
    }

    private FPoint getDpadPoint() {
        MapModeEventCacheModelListener mapModeEventCacheModelListener = this.listener;
        if (mapModeEventCacheModelListener != null) {
            return mapModeEventCacheModelListener.onDpadPoint();
        }
        LogUtils.i(TAG, "getDpadPoint fail");
        return null;
    }

    private ConcurrentHashMap<Integer, PointCoord> getMappingEventMap() {
        MapModeEventCacheModelListener mapModeEventCacheModelListener = this.listener;
        if (mapModeEventCacheModelListener != null) {
            return mapModeEventCacheModelListener.onGetMappingEventMap();
        }
        LogUtils.i(TAG, "getMappingEventMap fail");
        return null;
    }

    private PointCoord getTrackBallL() {
        MapModeEventCacheModelListener mapModeEventCacheModelListener = this.listener;
        if (mapModeEventCacheModelListener != null) {
            return mapModeEventCacheModelListener.onTrackBallL();
        }
        LogUtils.i(TAG, "getTrackBallL fail");
        return null;
    }

    private PointCoord getTrackBallR() {
        MapModeEventCacheModelListener mapModeEventCacheModelListener = this.listener;
        if (mapModeEventCacheModelListener != null) {
            return mapModeEventCacheModelListener.onTrackBallR();
        }
        LogUtils.i(TAG, "getTrackBallR fail");
        return null;
    }

    private void sendEvent(String str) {
        MapModeEventCacheModelListener mapModeEventCacheModelListener = this.listener;
        if (mapModeEventCacheModelListener != null) {
            mapModeEventCacheModelListener.onSendEvent(str);
        } else {
            LogUtils.i(TAG, "sendEvent fail(FPoint)");
        }
    }

    private void sendMappingEvent(PointCoord pointCoord, int i10) {
        MapModeEventCacheModelListener mapModeEventCacheModelListener = this.listener;
        if (mapModeEventCacheModelListener != null) {
            mapModeEventCacheModelListener.onSendMappingEvent(pointCoord, 2, i10);
        } else {
            LogUtils.i(TAG, "sendMotionEvent fail(PointCoord)");
        }
    }

    private void sendMotionEvent(int i10, FPoint fPoint) {
        MapModeEventCacheModelListener mapModeEventCacheModelListener = this.listener;
        if (mapModeEventCacheModelListener != null) {
            mapModeEventCacheModelListener.onSendMotionEvent(i10, fPoint);
        } else {
            LogUtils.i(TAG, "sendMotionEvent fail(FPoint)");
        }
    }

    public void cacheModeMapEvent(int i10, float f10, float f11, PointCoord pointCoord) {
        String str = f10 + "" + f11;
        if (i10 == 1) {
            if (pointCoord == null) {
                this.mapModeEventMap.put(str, String.format(Locale.US, "mouse:%d:%.4f,%.4f", 2, Float.valueOf(f10), Float.valueOf(f11)));
                return;
            }
            if (pointCoord == getButtonDirection()) {
                this.mapModeEventMap.put("dpadDirection", str);
                return;
            } else if (pointCoord == getTrackBallL()) {
                this.mapModeEventMap.put("trackBallL", str);
                return;
            } else {
                if (pointCoord == getTrackBallR()) {
                    this.mapModeEventMap.put("trackBallR", str);
                    return;
                }
                return;
            }
        }
        if (i10 == 2) {
            if (pointCoord == null) {
                this.mapModeEventMap.remove(str);
                return;
            }
            if (pointCoord == getButtonDirection()) {
                this.mapModeEventMap.remove("dpadDirection");
            } else if (pointCoord == getTrackBallL()) {
                this.mapModeEventMap.remove("trackBallL");
            } else if (pointCoord == getTrackBallR()) {
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

    public void cleanFnModeMapEvent(int i10, boolean z10) {
        ConcurrentHashMap<Integer, PointCoord> mappingEventMap;
        LogUtils.d(TAG, "cleanFnModeMapEvent keycode:" + i10 + " isfn" + z10);
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it2 = this.mapFnModeEventMap.keySet().iterator();
        while (it2.hasNext()) {
            int iIntValue = it2.next().intValue();
            if (i10 == (z10 ? iIntValue / 1000 : iIntValue % 1000) && !z10) {
                arrayList.add(Integer.valueOf(iIntValue));
            }
        }
        if (arrayList.size() >= 1 && (mappingEventMap = getMappingEventMap()) != null) {
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                int iIntValue2 = ((Integer) it3.next()).intValue();
                sendMappingEvent(mappingEventMap.get(Integer.valueOf(iIntValue2)), iIntValue2);
            }
        }
    }

    public void clearAllFnModeMapEvent() {
        Iterator<Integer> it2 = this.mapFnModeEventMap.keySet().iterator();
        while (it2.hasNext()) {
            clearMapModeEvent2(it2.next().intValue());
        }
        this.mapFnModeEventMap.clear();
    }

    public void clearAllMapModeEvent() {
        Iterator<String> it2 = this.mapModeEventMap.keySet().iterator();
        while (it2.hasNext()) {
            clearMapModeEvent(it2.next());
        }
        this.mapModeEventMap.clear();
    }

    public void clearMapModeEvent(String str) {
        if ("dpadDirection".equals(str)) {
            sendMotionEvent(3, getDpadPoint());
            sendMotionEvent(2, getDpadPoint());
            return;
        }
        if ("trackBallL".equals(str)) {
            sendMotionEvent(3, getTrackBallL());
            sendMotionEvent(2, getTrackBallL());
            return;
        }
        if ("trackBallR".equals(str)) {
            sendMotionEvent(3, getTrackBallR());
            sendMotionEvent(2, getTrackBallR());
        } else if ("trackBallRMove".equals(str)) {
            sendMotionEvent(3, getTrackBallR());
            sendMotionEvent(2, getTrackBallR());
        } else {
            if (!"morePointMove".equals(str)) {
                sendEvent(this.mapModeEventMap.get(str));
                return;
            }
            Locale locale = Locale.US;
            sendEvent(String.format(locale, "mouse:%d:%s", 3, this.mapModeEventMap.get(str)));
            sendEvent(String.format(locale, "mouse:%d:%s", 2, this.mapModeEventMap.get(str)));
        }
    }

    public void put(String str, String str2) {
        this.mapModeEventMap.put(str, str2);
    }

    public void remove(String str) {
        this.mapModeEventMap.remove(str);
    }

    public void setListener(MapModeEventCacheModelListener mapModeEventCacheModelListener) {
        this.listener = mapModeEventCacheModelListener;
    }

    private void sendMotionEvent(int i10, PointCoord pointCoord) {
        MapModeEventCacheModelListener mapModeEventCacheModelListener = this.listener;
        if (mapModeEventCacheModelListener != null) {
            mapModeEventCacheModelListener.onSendMotionEvent(i10, pointCoord);
        } else {
            LogUtils.i(TAG, "sendMotionEvent fail(PointCoord)");
        }
    }
}
