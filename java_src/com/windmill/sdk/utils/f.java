package com.windmill.sdk.utils;

import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMNetworkInitListener;

/* JADX INFO: loaded from: classes8.dex */
public final class f implements WMNetworkInitListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WMNetworkInitListener f87357a;

    public f(WMNetworkInitListener listener) {
        this.f87357a = listener;
    }

    @Override // com.windmill.sdk.WMNetworkInitListener
    public void onNetworkInitBefore(int channel_id, Object initInstance) {
        WMNetworkInitListener wMNetworkInitListener = this.f87357a;
        if (wMNetworkInitListener == null) {
            return;
        }
        try {
            wMNetworkInitListener.onNetworkInitBefore(channel_id, initInstance);
        } catch (Throwable th) {
            SigmobLog.e("onNetworkInitBefore exception: " + th.getMessage());
        }
    }

    @Override // com.windmill.sdk.WMNetworkInitListener
    public void onNetworkInitFailed(int channel_id, int error_code, String error_msg) {
        WMNetworkInitListener wMNetworkInitListener = this.f87357a;
        if (wMNetworkInitListener == null) {
            return;
        }
        try {
            wMNetworkInitListener.onNetworkInitFailed(channel_id, error_code, error_msg);
        } catch (Throwable th) {
            SigmobLog.e("onNetworkInitFailed exception: " + th.getMessage());
        }
    }

    @Override // com.windmill.sdk.WMNetworkInitListener
    public void onNetworkInitSuccess(int channel_id) {
        WMNetworkInitListener wMNetworkInitListener = this.f87357a;
        if (wMNetworkInitListener == null) {
            return;
        }
        try {
            wMNetworkInitListener.onNetworkInitSuccess(channel_id);
        } catch (Throwable th) {
            SigmobLog.e("onNetworkInitSuccess exception: " + th.getMessage());
        }
    }
}
