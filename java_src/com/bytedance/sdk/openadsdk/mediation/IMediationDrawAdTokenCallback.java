package com.bytedance.sdk.openadsdk.mediation;

/* JADX INFO: loaded from: classes9.dex */
public interface IMediationDrawAdTokenCallback {
    void onAdTokenLoaded(String str, IMediationDrawTokenInfo iMediationDrawTokenInfo);

    void onAdTokenLoadedFail(int i10, String str);
}
