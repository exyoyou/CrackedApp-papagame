package com.byazt.su;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public interface DownloadController {
    boolean enableAH();

    boolean enableAM();

    boolean enableNewActivity();

    boolean enableShowComplianceDialog();

    @Deprecated
    int getDowloadChunkCount();

    int getDownloadMode();

    Object getExtraClickOperation();

    JSONObject getExtraJson();

    Object getExtraObject();

    int getInterceptFlag();

    int getLinkMode();

    tt getMarketStatusChangeListener();

    boolean isAddToDownloadManage();

    boolean isAutoDownloadOnCardShow();

    boolean isEnableBackDialog();

    @Deprecated
    boolean isEnableMultipleDownload();

    void setDownloadMode(int i10);

    void setEnableNewActivity(boolean z10);

    void setEnableShowComplianceDialog(boolean z10);

    void setLinkMode(int i10);

    boolean shouldUseNewWebView();
}
