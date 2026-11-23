package com.kwad.sdk.contentalliance.a.a;

import androidx.annotation.NonNull;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.utils.o;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public long adStyle;
    public long clickTime;
    public int contentType;
    public long photoId;

    public a() {
        this.clickTime = -1L;
    }

    @NonNull
    public static a cm(@NonNull AdTemplate adTemplate) {
        return new a(adTemplate, o.fs(adTemplate));
    }

    public final String IF() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("contentType", this.contentType);
            jSONObject.put("adStyle", this.adStyle);
        } catch (JSONException e10) {
            c.printStackTrace(e10);
        }
        return jSONObject.toString();
    }

    public a(@NonNull AdTemplate adTemplate, long j10) {
        this.clickTime = -1L;
        this.photoId = e.eU(adTemplate);
        this.clickTime = j10;
        this.adStyle = e.eJ(adTemplate);
        this.contentType = e.eK(adTemplate);
    }
}
