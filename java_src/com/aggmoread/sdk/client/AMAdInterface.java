package com.aggmoread.sdk.client;

/* JADX INFO: loaded from: classes7.dex */
public interface AMAdInterface {
    void destroy();

    AMAdExtras getAdExtras();

    int getEcpm();

    String getID();

    String getSource();

    void notifyBidFail(int i10, int i11, String str);

    void notifyBidSuccess(int i10);

    void setDownloadConfirmListener(AMAdDownloadConfirmListener aMAdDownloadConfirmListener);
}
