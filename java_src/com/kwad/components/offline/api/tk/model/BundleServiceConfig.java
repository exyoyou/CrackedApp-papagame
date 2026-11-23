package com.kwad.components.offline.api.tk.model;

import com.alipay.sdk.authjs.a;
import com.kwad.components.offline.api.core.model.BaseOfflineCompoJsonParse;
import com.kwad.sdk.utils.ac;
import java.io.Serializable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BundleServiceConfig extends BaseOfflineCompoJsonParse<BundleServiceConfig> implements Serializable {
    public String bundleName;
    public int loadType;

    @Override // com.kwad.components.offline.api.core.model.BaseOfflineCompoJsonParse
    public void parseJson(BundleServiceConfig bundleServiceConfig, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bundleServiceConfig.bundleName = jSONObject.optString(a.f7125j);
        if (jSONObject.opt(a.f7125j) == JSONObject.NULL) {
            bundleServiceConfig.bundleName = "";
        }
        bundleServiceConfig.loadType = jSONObject.optInt("loadType");
        if (jSONObject.opt("loadType") == JSONObject.NULL) {
            bundleServiceConfig.loadType = -1;
        }
    }

    @Override // com.kwad.components.offline.api.core.model.BaseOfflineCompoJsonParse
    public JSONObject toJson(BundleServiceConfig bundleServiceConfig, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = bundleServiceConfig.bundleName;
        if (str != null && !str.equals("")) {
            ac.putValue(jSONObject, a.f7125j, bundleServiceConfig.bundleName);
        }
        int i10 = bundleServiceConfig.loadType;
        if (i10 != -1) {
            ac.putValue(jSONObject, "loadType", i10);
        }
        return jSONObject;
    }

    @Override // com.kwad.components.offline.api.core.model.BaseOfflineCompoJsonParse
    public JSONObject toJson(BundleServiceConfig bundleServiceConfig) {
        return toJson(bundleServiceConfig, (JSONObject) null);
    }
}
