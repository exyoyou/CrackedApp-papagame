package com.byazt.cj;

import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.join.mgps.activity.posting.PostingActivity_;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.ls.tt
@com.byazt.zqa.c(c = {0, 1, 55, 133})
public class z implements com.byazt.kkb.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.byazt.ls.c(c = PostingActivity_.LABEL_EXTRA)
    public String f12510c;

    @com.byazt.ls.c(c = "log_extra")
    public String tt;

    @com.byazt.ls.c(c = "material_meta")
    public ic ve;

    @Override // com.byazt.kkb.ve
    public boolean c(Map<String, Object> map, Map<String, Object> map2, com.byazt.cq.c cVar) {
        if (!c()) {
            com.byazt.nr.m.uj("UChain_ReportEventAction", "ifHasAllRequiredParam = false");
            cVar.c(map2, (com.byazt.qb.c) null);
            return false;
        }
        JSONObject jSONObjectC = c(map);
        com.byazt.ddx.uj.tt(this.ve, nb.tt(this.ve), this.f12510c, jSONObjectC);
        cVar.c(map2);
        return true;
    }

    private JSONObject c(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            HashSet hashSet = new HashSet();
            hashSet.add(PostingActivity_.LABEL_EXTRA);
            hashSet.add(MediationConstant.EXTRA_ADID);
            hashSet.add("log_extra");
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (!hashSet.contains(entry.getKey())) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private boolean c() {
        return (TextUtils.isEmpty(this.f12510c) || TextUtils.isEmpty(this.tt) || this.ve == null) ? false : true;
    }
}
