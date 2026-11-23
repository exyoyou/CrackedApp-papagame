package com.bytedance.sdk.openadsdk.mediation;

/* JADX INFO: loaded from: classes9.dex */
public interface IMediationNativeAdTokenCallback {
    void onAdTokenLoaded(String str, IMediationNativeTokenInfo iMediationNativeTokenInfo);

    void onAdTokenLoadedFail(int i10, String str);
}
