package com.join.mgps.ad;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface n {
    void onWfADClick();

    void onWfADClose();

    void onWfADClose(String gameId);

    void onWfADClose(String gameId, int howTimes, int times);

    void onWfADClose(String gameId, int howTimes, int times, Map<String, Object> extras);

    void onWfADExpose();

    void onWfADLoad(boolean showAd);

    void onWfADShow();

    void onWfError(int err, String msg);

    void onWfInitSuccess();

    void onWfReward(Map<String, Object> map);

    void onWfVideoCached();

    void onWfVideoComplete();
}
