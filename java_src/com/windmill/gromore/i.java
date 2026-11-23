package com.windmill.gromore;

import android.content.Context;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class i {

    public interface a {
        void onNativeAdFailToLoad(WMAdapterError wMAdapterError);

        void onNativeAdLoadSuccess(List<WMNativeAdData> list, Object obj);
    }

    public abstract void a(double d10);

    public abstract void a(double d10, String str, String str2);

    public abstract void a(Context context, WMCustomNativeAdapter wMCustomNativeAdapter, String str, Map<String, Object> map);

    public abstract boolean a();

    public abstract void b();

    public abstract List<WMNativeAdData> c();
}
