package com.kwad.components.offline.api.core.adInnerEc;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface IHostLoginStatusListener {
    void onLoginFailure(String str);

    void onLoginSuccess();

    void onLogout();
}
