package com.byazt.bg;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1535, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f11922c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String[] f11923n;
    public final String tt;
    public final String uj;
    public final Map<String, Float> ve = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, n> f11921a = new ConcurrentHashMap();

    public uj(String str, String str2, @NonNull JSONObject jSONObject) {
        this.f11922c = str;
        this.tt = str2;
        this.uj = jSONObject.optString("symbol");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("score_fit_type");
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            this.f11923n = new String[jSONArrayOptJSONArray.length()];
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                String strOptString = jSONArrayOptJSONArray.optString(i10);
                if (!TextUtils.isEmpty(strOptString)) {
                    this.f11923n[i10] = strOptString;
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(strOptString);
                    if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("range");
                        JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject.optJSONArray(HmInputMappingContent.FIELD_VALUE);
                        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0 && jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
                            this.f11921a.put(strOptString, new n(strOptString, jSONArrayOptJSONArray2, jSONArrayOptJSONArray3));
                        }
                    }
                }
            }
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("rule_exc_mode");
        if (jSONObjectOptJSONObject2 == null || jSONObjectOptJSONObject2.length() <= 0) {
            return;
        }
        Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.ve.put(next, Float.valueOf((float) jSONObjectOptJSONObject2.optDouble(next, 0.0d)));
        }
    }

    public String c() {
        return this.f11922c;
    }

    public Map<String, n> n() {
        return this.f11921a;
    }

    public Map<String, Float> tt() {
        return this.ve;
    }

    public String uj() {
        return this.uj;
    }

    public String[] ve() {
        return this.f11923n;
    }
}
