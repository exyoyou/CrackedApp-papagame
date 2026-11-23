package com.kwad.components.offline.api.core.adInnerEc.pay;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface IHostPayResultListener {
    void onPayCancel();

    void onPayFailure(String str);

    void onPaySuccess();

    void onPayUnknown();
}
