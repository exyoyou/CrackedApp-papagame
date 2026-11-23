package com.kwad.sdk.core.scene;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.response.a.a;
import com.kwad.sdk.utils.ad;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class URLPackage extends a implements Serializable {
    public static final String KEY_AUTHOR_ID = "authorId";
    public static final String KEY_CHANNEL_ID = "channelId";
    private static final long serialVersionUID = -7365796297335816787L;
    public String identity;
    public transient JSONObject mJsonObjectParams;
    public int page;

    public URLPackage() {
    }

    @Override // com.kwad.sdk.core.response.a.a
    public void afterParseJson(@Nullable JSONObject jSONObject) {
        super.afterParseJson(jSONObject);
        if (jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("params");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        try {
            this.mJsonObjectParams = new JSONObject(strOptString);
        } catch (JSONException e10) {
            c.printStackTrace(e10);
        }
    }

    @Override // com.kwad.sdk.core.response.a.a
    public void afterToJson(JSONObject jSONObject) {
        super.afterToJson(jSONObject);
        JSONObject jSONObject2 = this.mJsonObjectParams;
        if (jSONObject2 != null) {
            ad.putValue(jSONObject, "params", jSONObject2.toString());
        }
    }

    public void putParams(String str, long j10) {
        if (this.mJsonObjectParams == null) {
            this.mJsonObjectParams = new JSONObject();
        }
        ad.putValue(this.mJsonObjectParams, str, j10);
    }

    public URLPackage(@NonNull String str, int i10) {
        this.page = i10;
        this.identity = str;
    }

    public URLPackage(int i10) {
        this.page = i10;
        this.identity = String.valueOf(hashCode());
    }
}
