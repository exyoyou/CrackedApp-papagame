package com.byazt.vgp;

import com.byazt.omf.d;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1713, 46})
public class n implements com.byazt.zb.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f21198c;

    public n(d dVar) {
        this.f21198c = dVar;
    }

    @Override // com.byazt.zb.ve
    public void c(String str, JSONObject jSONObject) {
        d dVar = this.f21198c;
        if (dVar != null) {
            dVar.tt(str, jSONObject);
        }
    }
}
