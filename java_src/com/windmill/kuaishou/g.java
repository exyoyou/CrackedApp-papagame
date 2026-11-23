package com.windmill.kuaishou;

import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class g {

    public interface a {
        void onNativeAdFailToLoad(WMAdapterError wMAdapterError);

        void onNativeAdLoadSuccess(List<WMNativeAdData> list, String str);
    }

    public abstract void a(WMCustomNativeAdapter wMCustomNativeAdapter, String str, Map<String, Object> map, Map<String, Object> map2);

    public abstract void a(boolean z10, Map<String, Object> map);

    public abstract boolean a();

    public abstract void b();

    public abstract List<WMNativeAdData> c();

    public abstract Map<String, Object> d();
}
