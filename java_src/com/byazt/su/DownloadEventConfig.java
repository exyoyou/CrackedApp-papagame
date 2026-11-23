package com.byazt.su;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public interface DownloadEventConfig {
    String getClickButtonTag();

    String getClickContinueLabel();

    String getClickInstallLabel();

    String getClickItemTag();

    String getClickLabel();

    String getClickPauseLabel();

    String getClickStartLabel();

    int getDownloadScene();

    Object getExtraEventObject();

    JSONObject getExtraJson();

    JSONObject getParamsJson();

    String getRefer();

    String getStorageDenyLabel();

    boolean isEnableClickEvent();

    boolean isEnableV3Event();

    void setDownloadScene(int i10);

    void setRefer(String str);
}
