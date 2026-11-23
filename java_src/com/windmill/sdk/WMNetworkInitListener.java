package com.windmill.sdk;

/* JADX INFO: loaded from: classes8.dex */
public interface WMNetworkInitListener {
    void onNetworkInitBefore(int channel_id, Object initInstance);

    void onNetworkInitFailed(int channel_id, int error_code, String error_msg);

    void onNetworkInitSuccess(int channel_id);
}
