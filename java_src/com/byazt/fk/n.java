package com.byazt.fk;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public interface n {
    int getCover_height();

    String getCover_url();

    int getCover_width();

    String getEndcard();

    int getEndcardRender();

    int getExecuteCachedType();

    int getFallbackEndCardJudge();

    String getFileHash();

    float getPlay_speed_ratio();

    int getPlayableLoadingHide();

    int getPlayableLoadingShow();

    String getPlayableZipUrl();

    int getReplayTime();

    String getResolution();

    int getRewardVideoCachedType();

    long getSize();

    double getStart();

    int getVideoPreloadSize();

    double getVideo_duration();

    String getVideo_url();

    int[] getWidthAndHeight();

    boolean isCacheAllVideo();

    boolean isExecCallbackWhenFail();

    void setCover_height(int i10);

    void setCover_url(String str);

    void setCover_width(int i10);

    void setEndcard(String str);

    void setEndcardRender(int i10);

    void setExecuteCachedType(int i10);

    void setFallbackEndCardJudge(int i10);

    void setFileHash(String str);

    void setPlay_speed_ratio(float f10);

    void setPlayableLoadingHide(int i10);

    void setPlayableLoadingShow(int i10);

    void setPlayableZipUrl(String str);

    void setReplayTime(int i10);

    void setResolution(String str);

    void setRewardVideoCachedType(int i10);

    void setSize(long j10);

    void setStart(double d10);

    void setVideoPreloadSize(int i10);

    void setVideo_duration(double d10);

    void setVideo_url(String str);

    JSONObject toJsonObj();
}
