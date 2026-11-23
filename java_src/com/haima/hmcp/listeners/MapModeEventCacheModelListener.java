package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.PointCoord;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public interface MapModeEventCacheModelListener {
    PointCoord onButtonDirection();

    FPoint onDpadPoint();

    ConcurrentHashMap<Integer, PointCoord> onGetMappingEventMap();

    void onSendEvent(String str);

    boolean onSendMappingEvent(PointCoord pointCoord, int i10, int i11);

    void onSendMotionEvent(int i10, FPoint fPoint);

    void onSendMotionEvent(int i10, PointCoord pointCoord);

    PointCoord onTrackBallL();

    PointCoord onTrackBallR();
}
