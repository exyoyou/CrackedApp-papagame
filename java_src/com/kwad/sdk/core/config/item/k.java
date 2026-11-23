package com.kwad.sdk.core.config.item;

import android.content.SharedPreferences;
import cn.fly.tools.utils.DH;
import com.ksad.json.annotation.KsJson;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class k extends b<a> {

    @KsJson
    public static class a extends com.kwad.sdk.core.response.a.a {
        public int aRb = DH.GPI_STRATEGY_VALIDITY_3_MINUTE;
        public int aRc = 90000;
    }

    public k(String str) {
        super(str, new a());
    }

    @Override // com.kwad.sdk.core.config.item.b
    public final void a(SharedPreferences sharedPreferences) {
        JSONObject jSONObject;
        a value = getValue();
        if (value == null) {
            value = new a();
        }
        try {
            jSONObject = new JSONObject(sharedPreferences.getString(getKey(), ""));
        } catch (JSONException e10) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
            jSONObject = null;
        }
        if (jSONObject != null) {
            value.parseJson(jSONObject);
        }
        setValue(value);
    }

    @Override // com.kwad.sdk.core.config.item.b
    public final void b(SharedPreferences.Editor editor) {
        if (getValue() == null || getValue().toJson() == null) {
            editor.putString(getKey(), "");
        } else {
            editor.putString(getKey(), getValue().toJson().toString());
        }
    }

    @Override // com.kwad.sdk.core.config.item.b
    public final void l(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject(getKey())) == null) {
            setValue(Lc());
            return;
        }
        a aVar = new a();
        aVar.parseJson(jSONObjectOptJSONObject);
        setValue(aVar);
    }
}
