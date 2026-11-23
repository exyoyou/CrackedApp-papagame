package com.byazt.kyz;

import android.content.Context;
import com.byazt.ete.ic;
import com.byazt.ete.p;
import com.byazt.ete.u;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.join.mgps.base.BaseQuickAdapter;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, BaseQuickAdapter.LOADING_VIEW, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public u f16516a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.lsp.tt f16517c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ic f16518n;
    public JSONObject tt;
    public final Context uj = gt.getContext();
    public tt ve;

    public c(ic icVar, u uVar) {
        this.f16518n = icVar;
        this.f16516a = uVar;
    }

    public void c(com.byazt.lsp.tt ttVar) {
        this.f16517c = ttVar;
    }

    public Context getContext() {
        return this.uj;
    }

    public JSONObject tt() {
        JSONObject jSONObject = new JSONObject();
        if (!p.c()) {
            return jSONObject;
        }
        try {
            com.byazt.lsp.tt ttVar = this.f16517c;
            if (ttVar != null) {
                JSONObject jSONObjectC = ttVar.c();
                this.tt = jSONObjectC;
                return jSONObjectC;
            }
        } catch (Exception e10) {
            m.tt("xeasy", e10.getMessage());
        }
        return jSONObject;
    }

    public void ve() {
        if (p.c()) {
            m.c("xeasy", "oc");
            com.byazt.lsp.tt ttVar = this.f16517c;
            if (ttVar != null) {
                ttVar.tt();
            }
        }
    }

    public void c(tt ttVar) {
        this.ve = ttVar;
    }

    public ic c() {
        return this.f16518n;
    }

    public void c(ic icVar) {
        if (this.f16517c != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("style_category", String.valueOf(p.uj(icVar)));
            } catch (JSONException e10) {
                m.c(e10);
            }
            this.f16517c.c(jSONObject);
        }
    }

    public void c(boolean z10, JSONObject jSONObject) {
        if (p.c()) {
            m.c("xeasy", "er:".concat(String.valueOf(z10)));
            com.byazt.lsp.tt ttVar = this.f16517c;
            if (ttVar != null) {
                if (z10) {
                    ttVar.tt(jSONObject);
                    return;
                }
                HashMap map = new HashMap();
                map.put("estimatedArea", this.tt);
                map.put("realArea", this.ve.getMaxRectJson());
                map.put("exceedAreaRate", Double.valueOf(this.ve.getExceedAreaRate()));
                map.put("widgetArea", this.ve.getActualRectJson());
                com.byazt.sy.ve.tt(this.f16518n, this.f16516a, false, 100, new JSONObject(map));
                this.f16517c.ve(jSONObject);
            }
        }
    }

    public void c(ic icVar, float f10, float f11, int i10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("convert", 0);
            jSONObject.put("down_x", f10);
            jSONObject.put("down_y", f11);
        } catch (Exception e10) {
            m.c("xeasy", "e:" + e10.getMessage());
        }
        com.byazt.sy.ve.tt(icVar, this.f16516a, false, jSONObject);
    }
}
