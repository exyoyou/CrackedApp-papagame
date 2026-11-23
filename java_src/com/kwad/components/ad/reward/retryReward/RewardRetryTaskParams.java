package com.kwad.components.ad.reward.retryReward;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.response.model.BaseResultData;
import com.kwad.sdk.service.ServiceProvider;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class RewardRetryTaskParams extends BaseResultData {
    private final Map<Long, a> mTaskResultMap = new HashMap();

    public static class a {
        public int conversionStatus;
        public long creativeId;
        public long llsid;

        public a(long j10, long j11, int i10) {
            this.llsid = j10;
            this.conversionStatus = i10;
            this.creativeId = j11;
        }
    }

    public Map<Long, a> getTaskResultMap() {
        return this.mTaskResultMap;
    }

    @Override // com.kwad.sdk.core.response.model.BaseResultData, com.kwad.sdk.core.b
    public void parseJson(@Nullable JSONObject jSONObject) {
        super.parseJson(jSONObject);
        if (jSONObject == null) {
            return;
        }
        try {
            String strOptString = jSONObject.optString("data");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            com.kwad.sdk.core.a.e eVar = (com.kwad.sdk.core.a.e) com.kwad.sdk.components.d.f(com.kwad.sdk.core.a.e.class);
            if (eVar != null) {
                strOptString = eVar.getResponseData(strOptString);
            }
            JSONArray jSONArrayOptJSONArray = new JSONObject(strOptString).optJSONArray("taskInfoList");
            if (jSONArrayOptJSONArray == null) {
                return;
            }
            for (int i10 = 0; jSONArrayOptJSONArray.length() > i10; i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                long jOptLong = jSONObjectOptJSONObject.optLong("llsid");
                this.mTaskResultMap.put(Long.valueOf(jOptLong), new a(jOptLong, jSONObjectOptJSONObject.optLong("creativeId"), jSONObjectOptJSONObject.optInt("conversionStatus")));
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
