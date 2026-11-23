package com.byazt.qx;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 155})
public class lr extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.sgn.sp.c f19343c;

    public lr(com.byazt.sgn.sp.c cVar) {
        this.f19343c = cVar;
    }

    public JSONObject ve() {
        return new JSONObject();
    }

    public static void c(com.byazt.pct.nu nuVar, com.byazt.sgn.sp.c cVar) {
        nuVar.c("UgenDownloadDialogInteraction", (com.byazt.pct.n<?, ?>) new lr(cVar));
    }

    @Override // com.byazt.pct.n
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        c(jSONObject);
        return ve();
    }

    private void c(JSONObject jSONObject) {
        if (jSONObject == null || this.f19343c == null) {
            return;
        }
        int iOptInt = jSONObject.optInt("InteractionType");
        if (iOptInt == 1) {
            this.f19343c.ve(null);
            return;
        }
        if (iOptInt == 2) {
            this.f19343c.c(null);
            return;
        }
        if (iOptInt == 3) {
            this.f19343c.c();
        } else if (iOptInt == 4) {
            this.f19343c.tt(null);
        } else {
            if (iOptInt != 5) {
                return;
            }
            this.f19343c.uj(null);
        }
    }
}
