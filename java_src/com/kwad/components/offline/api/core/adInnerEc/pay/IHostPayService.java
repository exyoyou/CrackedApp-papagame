package com.kwad.components.offline.api.core.adInnerEc.pay;

import android.app.Activity;
import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface IHostPayService {
    void startMerchantPay(Activity activity, boolean z10, String str, String str2, IHostPayResultListener iHostPayResultListener);

    void startPay(Activity activity, String str, String str2, IHostPayResultListener iHostPayResultListener);

    void withDraw(Activity activity, String str, IHostWithDrawListener iHostWithDrawListener);
}
