package com.kwad.sdk.core.report;

import android.text.TextUtils;
import com.kwad.sdk.utils.ac;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends com.kwad.sdk.core.network.d {
    protected String aVj;

    public f(List<n> list) {
        this.aVj = "";
        if (list == null || list.size() <= 0) {
            return;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<n> it2 = list.iterator();
        while (it2.hasNext()) {
            ac.a(jSONArray, it2.next().buildReportData());
        }
        putBody("actionList", jSONArray);
    }

    @Override // com.kwad.sdk.core.network.d
    public final boolean enablePrivateInfoObtain() {
        return true;
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final JSONObject getBody() {
        if (encryptDisable() && !TextUtils.isEmpty(this.aVj)) {
            putBody("actionListString", this.aVj);
        }
        return super.getBody();
    }

    @Override // com.kwad.sdk.core.network.b
    public final String getBodyParamsString() {
        String bodyParamsString = super.getBodyParamsString();
        try {
            if (TextUtils.isEmpty(this.aVj)) {
                return bodyParamsString;
            }
            StringBuilder sb2 = new StringBuilder(bodyParamsString);
            sb2.insert(sb2.length() - 1, this.aVj);
            return sb2.toString();
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
            return bodyParamsString;
        }
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final String getUrl() {
        return com.kwad.sdk.i.EQ();
    }

    public f(String str) {
        this.aVj = str;
    }
}
