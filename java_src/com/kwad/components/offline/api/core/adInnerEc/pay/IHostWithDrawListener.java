package com.kwad.components.offline.api.core.adInnerEc.pay;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface IHostWithDrawListener {
    void onWithdrawCancel(String str);

    void onWithdrawFailure(int i10, String str);

    void onWithdrawSuccess(String str);
}
