package com.bytedance.android.livehostapi.platform;

/* JADX INFO: loaded from: classes9.dex */
public interface TokenRefreshCallback {
    void onFailed(Throwable th);

    void onSuccess(TokenInfo tokenInfo);
}
