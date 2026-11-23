package com.windmill.adscope;

import android.content.Context;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public abstract class d {

    public interface a {
        void onADClicked(WMNativeAdData wMNativeAdData);

        void onADExposure(WMNativeAdData wMNativeAdData);

        void onNativeAdFailToLoad(WMAdapterError wMAdapterError);

        void onNativeAdLoadSuccess(List<WMNativeAdData> list, int i10);
    }

    public abstract void a(Context context, String str, Map<String, Object> map, Map<String, Object> map2);

    public abstract boolean a();

    public abstract void b();

    public abstract void c();

    public abstract List<WMNativeAdData> d();
}
