package com.windmill.sigmob;

import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.windad.WindAds;
import com.windmill.sdk.custom.WMAdBaseAdapter;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class a {
    public static Map<String, Object> a(String str, WMAdBaseAdapter wMAdBaseAdapter) {
        HashMap map = new HashMap();
        if (wMAdBaseAdapter == null) {
            return map;
        }
        String loadId = wMAdBaseAdapter.getLoadId();
        if (TextUtils.isEmpty(loadId)) {
            SigmobLog.w(str + "createExtOptions: loadId is unavailable.");
        } else {
            SigmobLog.i(str + "createExtOptions: loadId = " + loadId);
            map.put("loadId", loadId);
        }
        map.put(WindAds.ADX_ID, String.valueOf(wMAdBaseAdapter.getChannelId()));
        Map<String, String> saasOptions = wMAdBaseAdapter.getSaasOptions();
        if (saasOptions == null || saasOptions.isEmpty()) {
            SigmobLog.w(str + "createExtOptions: saasOptions is unavailable.");
        } else {
            SigmobLog.i(str + "createExtOptions: saasOptions = " + saasOptions);
            map.put("saas_options", saasOptions);
        }
        return map;
    }
}
