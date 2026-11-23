package com.windmill.sdk.base;

import com.windmill.sdk.custom.WMAdBaseAdapter;
import com.windmill.sdk.strategy.a;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public interface WMAdConnector extends WMAdBaseConnector {
    void adapterDidAdClick(WMAdBaseAdapter adapter, a adStrategy, Map<String, String> extra);

    void adapterDidAdClickDownload(WMAdBaseAdapter adapter, a adStrategy);

    void adapterDidCloseAd(WMAdBaseAdapter adapter, a adStrategy);

    void adapterDidLoadAdReady(WMAdBaseAdapter adapter, a adStrategy);

    void adapterDidLoadAdSuccessAd(WMAdBaseAdapter adapter, a adStrategy);

    void adapterDidPlayEndAd(WMAdBaseAdapter adapter, a adStrategy);

    void adapterDidRewardAd(WMAdBaseAdapter adapter, a adStrategy, boolean isReward);

    void adapterDidShowLangPageAd(WMAdBaseAdapter adapter, a adStrategy, Map<String, String> extra);

    void adapterDidSkipAd(WMAdBaseAdapter adapter, a adStrategy);

    void adapterDidStartPlayingAd(WMAdBaseAdapter adapter, a adStrategy, Map<String, String> extra);
}
