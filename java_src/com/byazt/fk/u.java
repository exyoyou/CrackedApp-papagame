package com.byazt.fk;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public interface u {
    String getCacheParentDir();

    String getCid();

    String getCodeId();

    int getConnectTimeOutMills();

    long getCurrent();

    n getCurrentVideoInfo();

    Object getExtra(String str);

    String getFileNameKey();

    int getHeight();

    String getLogExtra();

    JSONObject getPassThroughJson();

    int getPitayaCacheSize();

    int getPitayaCode();

    String getPitayaErrorMsg();

    float getPlaySpeedRatio();

    List<String> getPlayTrackUrls();

    int getPlayerType();

    int getPreloadSize();

    int getReadTimeOutMills();

    int getScene();

    int getSourceType();

    String getUrl();

    int getVideoEncodeType();

    n getVideoH264();

    n getVideoH265();

    long getVideoSize();

    int getVideoSkipResult();

    int getWidth();

    int getWriteTimeOutMills();

    boolean isAudio();

    boolean isH265();

    boolean isPreloadAll();

    boolean isQuiet();

    void putExtra(String str, Object obj);

    Object removeExtra(String str);

    void setAudio(boolean z10);

    void setCacheParentDir(String str);

    void setCid(String str);

    void setCodeId(String str);

    void setConnectTimeOutMills(int i10);

    void setCurrent(long j10);

    void setHeight(int i10);

    void setLogExtra(String str);

    void setPlayTrackUrls(List<String> list);

    void setPlayerType(int i10);

    void setQuiet(boolean z10);

    void setReadTimeOutMills(int i10);

    void setScene(int i10);

    void setSourceType(int i10);

    void setVideoEncodeType(int i10);

    void setVideoH264(n nVar);

    void setVideoH265(n nVar);

    void setVideoSkipResult(int i10);

    void setWidth(int i10);

    void setWriteTimeOutMills(int i10);
}
