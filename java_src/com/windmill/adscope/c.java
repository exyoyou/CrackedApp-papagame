package com.windmill.adscope;

import android.app.Activity;
import android.content.Context;
import com.windmill.sdk.base.WMAdapterError;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public abstract class c {

    public interface a {
        void onInterstitialAdClick();

        void onInterstitialAdClose();

        void onInterstitialAdFailToLoad(WMAdapterError wMAdapterError);

        void onInterstitialAdFailToPlaying(WMAdapterError wMAdapterError);

        void onInterstitialAdLoadSuccess(int i10);

        void onInterstitialAdStartPlaying();
    }

    public abstract void a(Activity activity);

    public abstract void a(Context context, String str, Map<String, Object> map);

    public abstract boolean a();

    public abstract void b();
}
