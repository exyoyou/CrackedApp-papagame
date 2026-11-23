package com.windmill.sigmob;

import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public abstract class d {

    public interface a {
        void onNativeAdFailToLoad(WMAdapterError wMAdapterError);

        void onNativeAdLoadSuccess(List<WMNativeAdData> list, String str);
    }
}
