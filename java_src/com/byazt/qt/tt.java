package com.byazt.qt;

import com.byazt.bv.BaseConstants;
import com.byazt.ete.ic;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.posting.PostingActivity_;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 221, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ic f19249c;
    public String tt;
    public JSONObject uj;
    public String ve;

    public static tt c() {
        return new tt();
    }

    public tt tt(String str) {
        this.ve = str;
        return this;
    }

    public static tt c(JSONObject jSONObject) {
        String strOptString;
        String strOptString2;
        JSONObject jSONObjectOptJSONObject;
        ic icVarC = null;
        if (jSONObject == null) {
            return null;
        }
        try {
            strOptString = jSONObject.optString(TagGameListActivity_.TAG_EXTRA, null);
            try {
                strOptString2 = jSONObject.optString(PostingActivity_.LABEL_EXTRA, null);
                try {
                    jSONObjectOptJSONObject = jSONObject.optJSONObject(BaseConstants.EVENT_LABEL_EXTRA);
                    try {
                        icVarC = com.byazt.omf.c.c(jSONObject.optJSONObject("material_meta"));
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    jSONObjectOptJSONObject = null;
                }
            } catch (Exception unused3) {
                strOptString2 = null;
                jSONObjectOptJSONObject = strOptString2;
            }
        } catch (Exception unused4) {
            strOptString = null;
            strOptString2 = null;
        }
        return c().c(strOptString).tt(strOptString2).tt(jSONObjectOptJSONObject).c(icVarC);
    }

    public tt tt(JSONObject jSONObject) {
        this.uj = jSONObject;
        return this;
    }

    public JSONObject tt() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TagGameListActivity_.TAG_EXTRA, this.tt);
            jSONObject.put(PostingActivity_.LABEL_EXTRA, this.ve);
            JSONObject jSONObject2 = this.uj;
            if (jSONObject2 != null) {
                jSONObject.put(BaseConstants.EVENT_LABEL_EXTRA, jSONObject2);
            }
            ic icVar = this.f19249c;
            if (icVar != null) {
                jSONObject.put("material_meta", icVar.yg());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public tt c(ic icVar) {
        this.f19249c = icVar;
        return this;
    }

    public tt c(String str) {
        this.tt = str;
        return this;
    }
}
