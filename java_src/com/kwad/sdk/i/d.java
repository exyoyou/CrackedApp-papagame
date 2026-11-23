package com.kwad.sdk.i;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class d implements b {
    public List<e> bil;
    public long intervalTime;

    d() {
    }

    public final long RJ() {
        long j10 = this.intervalTime;
        if (j10 > 0) {
            return j10;
        }
        return 5000L;
    }

    public final void parseJson(@Nullable JSONObject jSONObject) {
        this.intervalTime = jSONObject.optInt("intervalTime", 5000);
        this.bil = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("configList");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                e eVar = new e();
                eVar.parseJson(jSONArrayOptJSONArray.optJSONObject(i10));
                this.bil.add(eVar);
            }
        }
    }

    @Override // com.kwad.sdk.i.b
    public final JSONObject toJson() {
        return null;
    }
}
