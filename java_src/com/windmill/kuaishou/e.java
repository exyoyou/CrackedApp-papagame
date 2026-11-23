package com.windmill.kuaishou;

import android.app.Activity;
import com.windmill.sdk.base.WMAdapterError;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class e {

    public interface a {
        void adapterDidLoadBiddingPriceSuccess(String str);

        void onInterstitialAdClick();

        void onInterstitialAdClose();

        void onInterstitialAdFailToLoad(WMAdapterError wMAdapterError);

        void onInterstitialAdFailToPlaying(WMAdapterError wMAdapterError);

        void onInterstitialAdLoadSuccess(Object obj);

        void onInterstitialAdPlayEnd();

        void onInterstitialAdPreLoadSuccess();

        void onInterstitialAdStartPlaying();
    }

    public abstract Object a();

    public abstract void a(Activity activity, Map<String, Object> map);

    public abstract void a(String str);

    public abstract void a(boolean z10, Map<String, Object> map);

    public abstract boolean b();

    public abstract void c();
}
