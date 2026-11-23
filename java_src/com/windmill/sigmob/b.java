package com.windmill.sigmob;

import com.windmill.sdk.base.WMAdapterError;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class b {

    public interface a {
        void adapterDidLoadBiddingPriceSuccess(String str);

        void onInterstitialAdClick();

        void onInterstitialAdClose();

        void onInterstitialAdFailToLoad(WMAdapterError wMAdapterError);

        void onInterstitialAdFailToPlaying(WMAdapterError wMAdapterError);

        void onInterstitialAdLoadSuccess();

        void onInterstitialAdStartPlaying();
    }

    public abstract void a(String str, Map<String, Object> map, Map<String, Object> map2);

    public abstract void a(HashMap<String, String> map, Map<String, Object> map2);

    public abstract void a(Map<String, Object> map);

    public abstract boolean a();

    public abstract void b();

    public abstract void b(Map<String, Object> map);

    public abstract Object c();

    public abstract Map<String, String> d();
}
