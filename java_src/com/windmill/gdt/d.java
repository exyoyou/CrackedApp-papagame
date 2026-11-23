package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class d {

    public interface a {
        void onADClicked(WMNativeAdData wMNativeAdData);

        void onADExposure(WMNativeAdData wMNativeAdData);

        void onNativeAdFailToLoad(WMAdapterError wMAdapterError);

        void onNativeAdLoadSuccess(List<WMNativeAdData> list, int i10);

        void onRenderFail(WMNativeAdData wMNativeAdData, WMAdapterError wMAdapterError);
    }

    public abstract void a(Activity activity);

    public abstract void a(Context context, String str, Map<String, Object> map, Map<String, Object> map2);

    public abstract boolean a();

    public abstract void b();

    public abstract List<WMNativeAdData> c();

    public abstract Map<String, Object> d();
}
