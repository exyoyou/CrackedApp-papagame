package com.kwad.sdk.i;

import androidx.annotation.NonNull;
import com.umeng.umcrash.UMCrash;
import java.util.Iterator;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class k implements b {
    public JSONObject biP = new JSONObject();
    public String actionId = UUID.randomUUID().toString();

    public k(String str, String str2, i iVar) {
        JSONObject jSONObjectRM = h.RQ().RU().RM();
        Iterator<String> itKeys = jSONObjectRM.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            c.a(jSONObjectRM, next, jSONObjectRM.opt(next));
        }
        c.putValue(this.biP, "customKey", str);
        c.putValue(this.biP, "customValue", str2);
        c.putValue(this.biP, UMCrash.SP_KEY_TIMESTAMP, iVar.biM);
        c.putValue(this.biP, "actionId", this.actionId);
    }

    @Override // com.kwad.sdk.i.b
    public final JSONObject toJson() {
        return this.biP;
    }

    @NonNull
    public final String toString() {
        return this.biP.toString();
    }
}
