package com.windmill.baidu;

import android.content.Context;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class g {

    public interface a {
        void onNativeAdFailToLoad(WMAdapterError wMAdapterError);

        void onNativeAdLoadSuccess(List<WMNativeAdData> list, String str, String... strArr);
    }

    public abstract void a(Context context, String str, Map<String, Object> map, Map<String, Object> map2);

    public abstract void a(String str, LinkedHashMap<String, Object> linkedHashMap);

    public abstract boolean a();

    public abstract void b();

    public abstract void b(String str, LinkedHashMap<String, Object> linkedHashMap);

    public abstract List<WMNativeAdData> c();

    public abstract Map<String, Object> d();
}
