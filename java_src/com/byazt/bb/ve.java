package com.byazt.bb;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.aas.bx;
import com.byazt.aas.nb;
import com.byazt.ddx.i;
import com.byazt.eia.sl;
import com.byazt.ete.ic;
import com.byazt.ete.nu;
import com.byazt.ete.pf;
import com.byazt.ete.qy;
import com.byazt.omf.gt;
import com.byazt.omf.or;
import com.byazt.omf.p;
import com.byazt.ukr.yp;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.mgps.activity.TagGameListActivity_;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 147, 54})
public class ve implements com.byazt.hl.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.hl.c f11887c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final sl f11888da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.zd.tt f11889i;
    public final Map<String, Object> sl;
    public com.byazt.pop.ve sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f11891t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.ny.n.c f11892u;
    public nu uj;
    public Context ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f11893x;
    public final boolean yp;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f11890n = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f11886a = false;

    public ve(com.byazt.hl.c cVar, sl slVar, String str, nu nuVar, Context context, Map<String, Object> map, boolean z10) {
        this.f11887c = cVar;
        this.f11888da = slVar;
        this.tt = str;
        this.ve = context;
        this.uj = nuVar;
        this.sl = map;
        this.yp = z10;
    }

    public void tt(boolean z10) {
        this.f11886a = z10;
    }

    public void ve(boolean z10) {
        this.f11891t = z10;
    }

    private boolean tt() {
        sl slVar = this.f11888da;
        if (!(slVar instanceof ic)) {
            return false;
        }
        String strVe = qy.ve(slVar.u(), this.f11893x);
        ic icVar = (ic) this.f11888da;
        Context context = this.ve;
        String str = this.tt;
        com.byazt.szt.c cVar = new com.byazt.szt.c(icVar, context, str, nb.uj(str), new HashMap(), null, null);
        cVar.c(strVe);
        cVar.c(this.f11889i);
        return cVar.c(new HashMap());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v36 */
    /* JADX WARN: Type inference failed for: r13v51 */
    /* JADX WARN: Type inference failed for: r13v52 */
    private boolean ve(Map<String, Object> map) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        JSONObject jSONObject = new JSONObject();
        try {
            sl slVar = this.f11888da;
            try {
                if (!(slVar instanceof com.byazt.eia.a)) {
                    jSONObject.putOpt("uchain", Boolean.TRUE);
                    jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                    jSONObject.putOpt("req_id", this.f11888da.qy());
                    boolValueOf = Boolean.valueOf(this.f11888da.s_());
                } else {
                    int iX = ((com.byazt.eia.a) slVar).x();
                    try {
                        if (iX == 4) {
                            com.byazt.hl.c cVar = this.f11887c;
                            boolean z10 = cVar != null && cVar.c(map);
                            if (z10) {
                                this.f11892u.c(true);
                            }
                            jSONObject.putOpt("uchain", Boolean.TRUE);
                            jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                            jSONObject.putOpt("req_id", this.f11888da.qy());
                            boolValueOf2 = Boolean.valueOf(this.f11888da.s_());
                            map = z10;
                        } else if (iX == 1) {
                            jSONObject.putOpt("uchain", Boolean.TRUE);
                            jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                            jSONObject.putOpt("req_id", this.f11888da.qy());
                            boolValueOf = Boolean.valueOf(this.f11888da.s_());
                        } else {
                            String strVe = ((com.byazt.eia.a) this.f11888da).ve();
                            Boolean boolC = c(map, strVe, jSONObject);
                            try {
                                if (!TextUtils.isEmpty(this.f11893x)) {
                                    jSONObject.putOpt("dpa_sub", Boolean.TRUE);
                                    jSONObject.putOpt(TagGameListActivity_.TAG_EXTRA, this.f11893x);
                                }
                                jSONObject.putOpt("convert_type", Integer.valueOf(iX));
                                jSONObject.putOpt("dpl_result", boolC);
                                jSONObject.putOpt("url", strVe);
                            } catch (Exception unused) {
                            }
                            if (boolC != null && !this.f11886a) {
                                boolean zBooleanValue = boolC.booleanValue();
                                jSONObject.putOpt("uchain", Boolean.TRUE);
                                jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                                jSONObject.putOpt("req_id", this.f11888da.qy());
                                boolValueOf2 = Boolean.valueOf(this.f11888da.s_());
                                map = zBooleanValue;
                            } else {
                                if (this.f11886a && (boolC == null || !boolC.booleanValue())) {
                                    try {
                                        jSONObject.putOpt("uchain", Boolean.TRUE);
                                        jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                                        jSONObject.putOpt("req_id", this.f11888da.qy());
                                        jSONObject.putOpt("web_meta", Boolean.valueOf(this.f11888da.s_()));
                                    } catch (Exception unused2) {
                                    }
                                    yp.c().c("open_detail_page", "native", 0, jSONObject);
                                    return false;
                                }
                                jSONObject.putOpt("uchain", Boolean.TRUE);
                                jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                                jSONObject.putOpt("req_id", this.f11888da.qy());
                                boolValueOf = Boolean.valueOf(this.f11888da.s_());
                            }
                        }
                        jSONObject.putOpt("web_meta", boolValueOf2);
                    } catch (Exception unused3) {
                    }
                    yp.c().c("open_detail_page", "native", 0, jSONObject);
                    return map;
                }
                jSONObject.putOpt("web_meta", boolValueOf);
            } catch (Exception unused4) {
            }
            yp.c().c("open_detail_page", "native", 0, jSONObject);
            return false;
        } catch (Throwable th) {
            try {
                jSONObject.putOpt("uchain", Boolean.TRUE);
                jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                jSONObject.putOpt("req_id", this.f11888da.qy());
                jSONObject.putOpt("web_meta", Boolean.valueOf(this.f11888da.s_()));
            } catch (Exception unused5) {
            }
            yp.c().c("open_detail_page", "native", 0, jSONObject);
            throw th;
        }
    }

    @Override // com.byazt.hl.c
    public boolean c(Map<String, Object> map) {
        if (this.yp) {
            boolean zVe = ve(map);
            if (!zVe) {
                this.f11892u.c(false);
            }
            return zVe;
        }
        return tt(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(final Intent intent, final boolean z10) {
        sl slVar = this.f11888da;
        if (slVar == null || this.ve == null || intent == null) {
            return;
        }
        String strVe = slVar.z() != null ? this.f11888da.z().ve() : "";
        com.byazt.aas.n.c(this.ve, this.f11888da.uj(), strVe, TextUtils.isEmpty(strVe) ? "是否立即打开应用" : "是否立即打开".concat(String.valueOf(strVe)), "立即打开", "退出", new com.byazt.aas.n.c() { // from class: com.byazt.bb.ve.3
            @Override // com.byazt.aas.n.c
            public void c() {
                HashMap map = new HashMap();
                map.put("source", "DeepLinkConverter");
                com.byazt.ddx.uj.c(ve.this.ve(), ve.this.tt, (Map<String, Object>) map, false);
                com.byazt.nr.tt.c(ve.this.ve, intent, new com.byazt.nr.tt.c() { // from class: com.byazt.bb.ve.3.1
                    @Override // com.byazt.nr.tt.c
                    public void c() {
                        com.byazt.ddx.uj.c(ve.this.ve(), ve.this.tt, (Throwable) null, false, true);
                        com.byazt.ddx.x.c().c(ve.this.ve(), ve.this.tt, false, z10, null);
                    }

                    @Override // com.byazt.nr.tt.c
                    public void c(Throwable th) {
                        com.byazt.ddx.uj.c(ve.this.ve(), ve.this.tt, th, false, false);
                    }
                }, TextUtils.equals(p.f18095x, UMModuleRegister.INNER));
            }

            @Override // com.byazt.aas.n.c
            public void tt() {
            }

            @Override // com.byazt.aas.n.c
            public void ve() {
            }
        });
    }

    public void c(com.byazt.zd.tt ttVar) {
        this.f11889i = ttVar;
    }

    public void c(boolean z10) {
        this.f11890n = z10;
    }

    public void c(com.byazt.pop.ve veVar) {
        this.sp = veVar;
    }

    public void c(String str) {
        this.f11893x = str;
    }

    public void c(com.byazt.ny.n.c cVar) {
        this.f11892u = cVar;
    }

    private nu c() {
        nu nuVar = this.uj;
        return nuVar == null ? new nu() : nuVar;
    }

    private String tt(String str) {
        sl slVar;
        pf pfVarGt;
        if (TextUtils.isEmpty(str) || (slVar = this.f11888da) == null || slVar.z_() || (pfVarGt = this.f11888da.gt()) == null) {
            return str;
        }
        try {
            String strVe = pfVarGt.ve();
            String strUj = pfVarGt.uj();
            Map<String, String> mapC = bx.c(str);
            mapC.put("live_short_touch_params", strVe);
            mapC.put("extra_pangle_scheme_params", strUj);
            String strC = bx.c(str, mapC);
            com.byazt.omf.tt.c().put("is_reward_deep_link_to_live", true);
            return strC;
        } catch (Exception unused) {
            return str;
        }
    }

    public Boolean c(Map<String, Object> map, String str, JSONObject jSONObject) {
        String strTt = tt(str);
        if (TextUtils.isEmpty(strTt)) {
            com.byazt.ppf.ve.c(this.sl, com.byazt.cr.n.uj);
            return null;
        }
        nu.c((String) null);
        Uri uri = Uri.parse(strTt);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        HashMap map2 = new HashMap();
        map2.put("source", "DeepLinkConverter");
        map2.put("scheme", nb.c(strTt));
        com.byazt.ddx.uj.c(ve(), this.tt, map2, this.f11890n);
        boolean zYv = nb.yv();
        try {
            jSONObject.putOpt("is_lp", Boolean.valueOf(this.f11890n));
            jSONObject.putOpt("can_qry_pkg", Boolean.valueOf(zYv));
        } catch (Exception unused) {
        }
        if (zYv) {
            boolean zC = nb.c(intent);
            boolean zEk = gt.tt().ek();
            try {
                jSONObject.putOpt("installed", Boolean.valueOf(zC));
                jSONObject.putOpt("ignore", Boolean.valueOf(zEk));
            } catch (Exception unused2) {
            }
            if (!zC && !zEk) {
                c(map, true, (Throwable) new RuntimeException("not installed"));
                c(1);
                return null;
            }
            return c(map, intent, true, jSONObject);
        }
        try {
            jSONObject.putOpt("installed_douyin", Boolean.valueOf(com.byazt.wu.c.c(strTt)));
            String strP = nb.p(ve());
            if (strP != null && strP.length() > 0) {
                jSONObject.putOpt("installed_other", Boolean.valueOf(nb.ve(strP)));
            }
            jSONObject.putOpt("pkg", strP);
        } catch (Throwable unused3) {
        }
        return c(map, intent, false, jSONObject);
    }

    private boolean tt(Map<String, Object> map) {
        Object objValueOf;
        JSONObject jSONObject = new JSONObject();
        try {
            Boolean boolC = c(jSONObject);
            boolean z10 = true;
            try {
                if (boolC != null && boolC.booleanValue()) {
                    try {
                        jSONObject.putOpt("dpa_sub", Boolean.TRUE);
                    } catch (Exception unused) {
                    }
                    jSONObject.putOpt("uchain", Boolean.TRUE);
                    jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                    jSONObject.putOpt("req_id", this.f11888da.qy());
                    objValueOf = Boolean.valueOf(this.f11888da.s_());
                } else {
                    nu nuVarC = c();
                    if (nuVarC == null) {
                        nuVarC = this.f11888da.yp();
                    }
                    if (nuVarC != null && !TextUtils.isEmpty(nuVarC.tt())) {
                        String strTt = nuVarC.tt();
                        Boolean boolC2 = c(map, strTt, jSONObject);
                        try {
                            jSONObject.putOpt("dpl_result", boolC2);
                            jSONObject.putOpt("url", strTt);
                        } catch (Exception unused2) {
                        }
                        if ((boolC2 == null || !boolC2.booleanValue()) && nuVarC.n() == 1) {
                            com.byazt.ddx.uj.x(ve(), this.tt, "open_fallback_url", null);
                        }
                        if (boolC2 != null && !this.f11886a) {
                            boolean zBooleanValue = boolC2.booleanValue();
                            try {
                                jSONObject.putOpt("uchain", Boolean.TRUE);
                                jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                                jSONObject.putOpt("req_id", this.f11888da.qy());
                                jSONObject.putOpt("web_meta", Boolean.valueOf(this.f11888da.s_()));
                            } catch (Exception unused3) {
                            }
                            yp.c().c("open_detail_page", "native", 0, jSONObject);
                            return zBooleanValue;
                        }
                        if (this.f11886a && (boolC2 == null || !boolC2.booleanValue())) {
                            try {
                                jSONObject.putOpt("uchain", Boolean.TRUE);
                                jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                                jSONObject.putOpt("req_id", this.f11888da.qy());
                                jSONObject.putOpt("web_meta", Boolean.valueOf(this.f11888da.s_()));
                            } catch (Exception unused4) {
                            }
                            yp.c().c("open_detail_page", "native", 0, jSONObject);
                            com.byazt.hl.c cVar = this.f11887c;
                            return cVar != null && cVar.c(map);
                        }
                        try {
                            jSONObject.putOpt("uchain", Boolean.TRUE);
                            jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                            jSONObject.putOpt("req_id", this.f11888da.qy());
                            jSONObject.putOpt("web_meta", Boolean.valueOf(this.f11888da.s_()));
                        } catch (Exception unused5) {
                        }
                        yp.c().c("open_detail_page", "native", 0, jSONObject);
                        return false;
                    }
                    try {
                        jSONObject.putOpt("dpl_null", Boolean.TRUE);
                    } catch (Exception unused6) {
                    }
                    com.byazt.hl.c cVar2 = this.f11887c;
                    z10 = cVar2 != null && cVar2.c(map);
                    jSONObject.putOpt("uchain", Boolean.TRUE);
                    jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                    jSONObject.putOpt("req_id", this.f11888da.qy());
                    objValueOf = Boolean.valueOf(this.f11888da.s_());
                }
                jSONObject.putOpt("web_meta", objValueOf);
            } catch (Exception unused7) {
            }
            yp.c().c("open_detail_page", "native", 0, jSONObject);
            return z10;
        } catch (Throwable th) {
            try {
                jSONObject.putOpt("uchain", Boolean.TRUE);
                jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f11888da.n()));
                jSONObject.putOpt("req_id", this.f11888da.qy());
                jSONObject.putOpt("web_meta", Boolean.valueOf(this.f11888da.s_()));
            } catch (Exception unused8) {
            }
            yp.c().c("open_detail_page", "native", 0, jSONObject);
            throw th;
        }
    }

    private Boolean c(JSONObject jSONObject) {
        Boolean boolValueOf;
        try {
            jSONObject.putOpt(TagGameListActivity_.TAG_EXTRA, this.f11893x);
        } catch (JSONException unused) {
        }
        if (TextUtils.isEmpty(this.f11893x) || !qy.c(this.f11888da.u(), this.f11893x)) {
            return null;
        }
        int iTt = qy.tt(this.f11888da.u(), this.f11893x);
        if (iTt != 1) {
            boolValueOf = c(new HashMap(), qy.ve(this.f11888da.u(), this.f11893x), jSONObject);
        } else {
            boolValueOf = Boolean.valueOf(tt());
        }
        try {
            jSONObject.putOpt("convert_type", Integer.valueOf(iTt));
            jSONObject.putOpt("dpl_result", boolValueOf);
        } catch (JSONException unused2) {
        }
        return boolValueOf;
    }

    private Boolean c(final Map<String, Object> map, Intent intent, final boolean z10, JSONObject jSONObject) {
        nb.ve(intent);
        final boolean zTt = com.byazt.ppf.ve.tt(map);
        c(intent, zTt);
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        com.byazt.nr.tt.c(this.ve, intent, new com.byazt.nr.tt.c() { // from class: com.byazt.bb.ve.1
            @Override // com.byazt.nr.tt.c
            public void c() {
                atomicBoolean.set(true);
                com.byazt.ddx.uj.c(ve.this.ve(), ve.this.tt, (Throwable) null, ve.this.f11890n, true);
                com.byazt.ddx.x.c().c(ve.this.ve(), ve.this.tt, ve.this.f11890n, zTt, new i.c() { // from class: com.byazt.bb.ve.1.1
                    @Override // com.byazt.ddx.i.c
                    public void c(String str) {
                    }

                    @Override // com.byazt.ddx.i.c
                    public void c(long j10) {
                        com.byazt.ppf.ve.c((Map<String, Object>) ve.this.sl, com.byazt.cr.n.f12584n);
                        if (ve.this.f11892u != null) {
                            ve.this.f11892u.c(false);
                        }
                    }

                    @Override // com.byazt.ddx.i.c
                    public void c(boolean z11) {
                        if (ve.this.f11892u != null) {
                            ve.this.f11892u.c(true);
                        }
                    }
                });
                ve.this.c(0);
            }

            @Override // com.byazt.nr.tt.c
            public void c(Throwable th) {
                atomicBoolean.set(false);
                ve.this.c((Map<String, Object>) map, z10, th);
                ve.this.c(3);
                com.byazt.ppf.ve.c((Map<String, Object>) ve.this.sl, com.byazt.cr.n.f12582a);
            }
        }, TextUtils.equals(p.f18095x, UMModuleRegister.INNER));
        return Boolean.valueOf(atomicBoolean.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ic ve() {
        return com.byazt.ppf.ve.c(this.f11888da, this.sl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10) {
        if (ve() == null || ve().xl() != 1) {
            return;
        }
        com.byazt.ddx.uj.c(ve(), this.tt, 1, 1, i10, p.x());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Map<String, Object> map, boolean z10, Throwable th) {
        if (this.f11886a && !z10) {
            com.byazt.ddx.uj.ve(ve(), this.tt, "open_fallback_download");
        }
        com.byazt.ddx.uj.c(ve(), this.tt, th, this.f11890n, false);
    }

    public void c(final Intent intent, final boolean z10) {
        final com.byazt.aas.c cVarVe;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        sl slVar = this.f11888da;
        if (slVar == null || intent == null || this.ve == null) {
            return;
        }
        nu nuVarYp = slVar.yp();
        if (nuVarYp != null && nuVarYp.ve() == 2 && !nuVarYp.c() && com.byazt.omf.tt.c().get("dpl_reject_by_dialog", false)) {
            or.c(ve(), this.tt, z10);
        } else if (this.f11888da.nu() && (cVarVe = com.byazt.omf.x.m().ve()) != null) {
            cVarVe.c(new com.byazt.aas.c.ve() { // from class: com.byazt.bb.ve.2
                @Override // com.byazt.aas.c.ve, com.byazt.aas.c.InterfaceC0252c
                public void c() {
                    if (System.currentTimeMillis() - jCurrentTimeMillis <= BaseCloudFileManager.ACK_TIMEOUT) {
                        ve.this.tt(intent, z10);
                    }
                    com.byazt.aas.c cVar = cVarVe;
                    if (cVar != null) {
                        cVar.ve();
                    }
                }
            });
        }
    }
}
