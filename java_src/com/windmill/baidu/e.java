package com.windmill.baidu;

import android.content.Context;
import com.windmill.sdk.base.WMAdapterError;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class e {

    public interface a {
        void adapterDidLoadBiddingPriceSuccess(String str, String... strArr);

        void onInterstitialAdClick();

        void onInterstitialAdClose();

        void onInterstitialAdFailToLoad(WMAdapterError wMAdapterError);

        void onInterstitialAdFailToPlaying(WMAdapterError wMAdapterError);

        void onInterstitialAdLoadSuccess();

        void onInterstitialAdPlayComplete();

        void onInterstitialAdStartPlaying();
    }

    public abstract Object a();

    public abstract void a(Context context);

    public abstract void a(Context context, String str, Map<String, Object> map);

    public abstract void a(String str, LinkedHashMap<String, Object> linkedHashMap);

    public abstract void b(String str, LinkedHashMap<String, Object> linkedHashMap);

    public abstract boolean b();

    public abstract void c();

    public abstract Map<String, Object> d();
}
