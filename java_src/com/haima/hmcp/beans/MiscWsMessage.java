package com.haima.hmcp.beans;

import android.text.TextUtils;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MiscWsMessage extends BaseWsMessage<String> {
    private static final String DATA_TYPE = "type";
    private static final String TAG = "MiscWsMessage";

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.haima.hmcp.beans.BaseWsMessage
    public boolean dataIsValid() {
        boolean z10 = false;
        try {
            JSONObject jSONObject = new JSONObject((String) this.data);
            if (JsonUtil.isJsonObject((String) this.data) && jSONObject.has("type") && !TextUtils.isEmpty(jSONObject.getString("type"))) {
                z10 = true;
            }
        } catch (JSONException e10) {
            LogUtils.e(TAG, e10);
        }
        LogUtils.d(TAG, "dataIsValid = " + z10);
        return z10;
    }
}
