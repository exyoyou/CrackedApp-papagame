package com.kwad.sdk.api.model;

import androidx.annotation.Keep;
import com.kwad.sdk.api.core.KsAdSdkApi;

/* JADX INFO: loaded from: classes2.dex */
@KsAdSdkApi
@Keep
public class KSAdRewardRetryTaskResult {
    public int conversionStatus;
    public KSAdInfoData ksAdInfoData;

    public KSAdRewardRetryTaskResult(KSAdInfoData kSAdInfoData) {
        this.conversionStatus = 0;
        this.ksAdInfoData = kSAdInfoData;
    }

    public KSAdRewardRetryTaskResult(KSAdInfoData kSAdInfoData, int i10) {
        this.ksAdInfoData = kSAdInfoData;
        this.conversionStatus = i10;
    }
}
