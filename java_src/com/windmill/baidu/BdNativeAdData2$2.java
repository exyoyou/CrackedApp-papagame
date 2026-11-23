package com.windmill.baidu;

import com.baidu.mobads.sdk.api.NativeResponse;
import com.windmill.sdk.base.WMLogUtil;

/* JADX INFO: loaded from: classes8.dex */
class BdNativeAdData2$2 implements NativeResponse.AdDownloadWindowListener {
    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdDownloadWindowListener
    public void adDownloadWindowClose() {
        WMLogUtil.d(WMLogUtil.TAG, "adDownloadWindowClose");
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdDownloadWindowListener
    public void adDownloadWindowShow() {
        WMLogUtil.d(WMLogUtil.TAG, "AdDownloadWindowShow");
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdPrivacyListener
    public void onADFunctionClick() {
        WMLogUtil.d(WMLogUtil.TAG, "onADFunctionClick");
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdPrivacyListener
    public void onADPermissionClose() {
        WMLogUtil.d(WMLogUtil.TAG, "onADPermissionClose");
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdPrivacyListener
    public void onADPermissionShow() {
        WMLogUtil.d(WMLogUtil.TAG, "onADPermissionShow");
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.AdPrivacyListener
    public void onADPrivacyClick() {
        WMLogUtil.d(WMLogUtil.TAG, "onADPrivacyClick");
    }
}
