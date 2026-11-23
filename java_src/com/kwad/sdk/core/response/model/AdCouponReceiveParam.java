package com.kwad.sdk.core.response.model;

import android.text.TextUtils;
import com.join.mgps.dto.Constant;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.utils.ac;
import java.io.Serializable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class AdCouponReceiveParam extends com.kwad.sdk.core.response.a.a implements Serializable {
    private static final long serialVersionUID = 3401922564904240855L;
    public String ext = "";
    public int flowType;
    public String receiveFailToast;
    public String receiveToast;
    public String sign;

    @Override // com.kwad.sdk.core.response.a.a
    public void afterToJson(JSONObject jSONObject) {
        super.afterToJson(jSONObject);
        ac.putValue(jSONObject, "receiveToast", this.receiveToast);
        ac.putValue(jSONObject, Constant.MD5, this.sign);
        ac.putValue(jSONObject, "ext", this.ext);
        ac.putValue(jSONObject, "receiveFailToast", this.receiveFailToast);
        ac.putValue(jSONObject, "flowType", this.flowType);
    }

    public boolean isEmpty() {
        return TextUtils.isEmpty(this.sign) || this.flowType == 0;
    }
}
