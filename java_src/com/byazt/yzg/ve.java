package com.byazt.yzg;

import android.content.Context;
import android.view.View;
import com.byazt.ete.gt;
import com.byazt.ete.ic;
import com.byazt.ete.zb;
import com.byazt.nr.m;
import com.byazt.ux.sp;
import com.byazt.wz.x;
import com.byazt.xs.da;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.haima.hmcp.proto.GSSDK;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_SELECT_VALUE, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ic f22499c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.av.c f22501n;
    public Context tt;
    public c ve;
    public boolean uj = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f22498a = false;
    public int sp = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f22502x = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f22500i = -1;

    public ve(Context context, ic icVar) {
        this.tt = context;
        this.f22499c = icVar;
    }

    public boolean uj(boolean z10) {
        c cVar = this.ve;
        if (cVar == null) {
            return true;
        }
        cVar.tt(z10 || this.f22502x);
        c cVar2 = this.ve;
        if (cVar2 instanceof tt) {
            tt ttVar = (tt) cVar2;
            ttVar.ve(this.f22498a);
            ttVar.c(this.sp);
        }
        int i10 = this.f22500i;
        if (i10 == 1) {
            this.ve.uj = 4;
            return true;
        }
        if (i10 == 0) {
            return false;
        }
        return this.ve.c();
    }

    public void tt(boolean z10) {
        this.f22498a = z10;
    }

    public void ve(boolean z10) {
        this.f22502x = z10;
    }

    public void tt(int i10) {
        this.f22500i = i10;
    }

    public String ve(long j10) {
        return j10 <= 0 ? "-" : String.format("%.1fMB", Double.valueOf((j10 / 1024.0d) / 1024.0d));
    }

    private void tt(final String str) {
        if (gt.z(this.f22499c) != 4) {
            return;
        }
        TTDelegateActivity.c(new sp() { // from class: com.byazt.yzg.ve.2
            @Override // com.byazt.ux.sp
            public void c(int i10, String str2) {
                ve.this.c(str, 1, str2);
                TTDelegateActivity.c((sp) null);
            }

            @Override // com.byazt.ux.sp
            public void c(com.byazt.xj.ve<View> veVar) {
                ve.this.c(str, 0, "");
                TTDelegateActivity.c((sp) null);
            }
        });
    }

    private sp ve(final String str) {
        return new sp() { // from class: com.byazt.yzg.ve.3
            @Override // com.byazt.ux.sp
            public void c(int i10, String str2) {
                ve veVar = ve.this;
                veVar.c(veVar.f22499c, str, 6, i10, str2);
                TTDelegateActivity.c((sp) null);
            }

            @Override // com.byazt.ux.sp
            public void c(com.byazt.xj.ve<View> veVar) {
                ve veVar2 = ve.this;
                veVar2.c(veVar2.f22499c, str, 5, 0, "");
                TTDelegateActivity.c((sp) null);
            }
        };
    }

    public void c(c cVar) {
        c(cVar, this.f22499c);
    }

    public void c(c cVar, com.byazt.eia.sp spVar) {
        this.ve = cVar;
        if (cVar == null) {
            return;
        }
        cVar.c(this.tt);
        cVar.c(spVar);
        cVar.c(this.uj);
    }

    public String tt(long j10) {
        if (j10 >= 100000000) {
            return String.format("%d亿+", Long.valueOf(Math.round(j10 / 1.0E8d)));
        }
        if (j10 >= 10000) {
            return String.format("%d万+", Long.valueOf(Math.round(j10 / 10000.0d)));
        }
        return j10 > 0 ? String.valueOf(j10) : "-";
    }

    private String uj(String str) {
        com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
        if (veVarC == null) {
            return null;
        }
        return veVarC.get(str, "");
    }

    public void c(boolean z10) {
        this.uj = z10;
    }

    private com.byazt.aas.n.c tt(final String str, final com.byazt.av.tt ttVar) {
        return new com.byazt.aas.n.c() { // from class: com.byazt.yzg.ve.4
            @Override // com.byazt.aas.n.c
            public void c() {
                com.byazt.av.tt ttVar2 = ttVar;
                if (ttVar2 != null) {
                    ttVar2.c();
                }
                if (ve.this.f22501n != null) {
                    ve.this.f22501n.ve();
                    ve.this.f22501n.tt();
                }
                a.tt = true;
                com.byazt.ddx.uj.tt(ve.this.f22499c, str, "pop_up_download", ve.this.c());
            }

            @Override // com.byazt.aas.n.c
            public void tt() {
            }

            @Override // com.byazt.aas.n.c
            public void ve() {
                com.byazt.ddx.uj.tt(ve.this.f22499c, str, "pop_up_cancel", ve.this.c());
                if (ve.this.f22501n != null) {
                    ve.this.f22501n.tt();
                }
            }
        };
    }

    public void c(com.byazt.av.c cVar) {
        this.f22501n = cVar;
    }

    public void c(int i10) {
        this.sp = i10;
    }

    public void c(String str, com.byazt.av.tt ttVar) {
        if (this.f22499c == null) {
            return;
        }
        c((com.byazt.ete.uj) null, str, ttVar);
    }

    public void c(com.byazt.ete.uj ujVar, final String str, final String str2, final com.byazt.av.tt ttVar) {
        ic icVar = this.f22499c;
        if (icVar == null) {
            return;
        }
        if (ujVar == null && icVar.st() == 2 && !(this.ve instanceof n)) {
            com.byazt.bwm.n.tt(new com.byazt.bwm.sp("tt_download_check") { // from class: com.byazt.yzg.ve.1
                @Override // java.lang.Runnable
                public void run() {
                    ve.this.c(com.byazt.omf.gt.c().c(ve.this.f22499c, str2), str, ttVar);
                }
            });
        } else {
            c(ujVar, str, ttVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.ete.uj ujVar, String str, com.byazt.av.tt ttVar) {
        String strFv;
        String strVe;
        String strC;
        com.byazt.aas.n.c cVarTt = tt(str, ttVar);
        try {
            if (ujVar != null) {
                com.byazt.ete.a aVarRh = this.f22499c.rh();
                if (aVarRh != null) {
                    ujVar.c(aVarRh.uj());
                    ujVar.c(aVarRh.ve());
                }
                strFv = ujVar.x();
                strVe = ujVar.c();
                strC = ujVar.uj();
            } else {
                strFv = this.f22499c.fv();
                strVe = x.ve(this.f22499c);
                zb zbVarTe = this.f22499c.te();
                strC = zbVarTe != null ? zbVarTe.c() : "";
            }
            if (da.i(this.f22499c)) {
                if (!da.c(this.tt, this.f22499c, strVe)) {
                    ic icVar = this.f22499c;
                    c(icVar, str, da.tt(this.tt, icVar, strVe), 0, "");
                }
            } else {
                com.byazt.ddx.uj.tt(this.f22499c, str, "pop_up", c());
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("dialog_title", strVe);
            jSONObject.put("dialog_icon_url", strC);
            jSONObject.put("dialog_app_description", this.f22499c.op());
            String strC2 = c(strFv);
            tt(str);
            com.byazt.av.c cVar = this.f22501n;
            if (cVar != null) {
                cVar.c();
            }
            if (da.c(this.tt, this.f22499c, strVe)) {
                c(str, cVarTt, strC2, strC, jSONObject);
            } else {
                com.byazt.aas.n.c(this.tt, this.f22499c.uj(), strC2, jSONObject.toString(), cVarTt, this.f22499c);
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    private String c(String str) {
        int iZ = gt.z(this.f22499c);
        try {
            if (iZ != 4) {
                if (iZ != 3) {
                    return str;
                }
                JSONObject jSONObject = new JSONObject(str);
                jSONObject.put("hand_icon_url", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/ugeno-source/download_hand_tap.json");
                return jSONObject.toString();
            }
            JSONObject jSONObject2 = new JSONObject(str);
            jSONObject2.put("ugen_url", gt.nu(this.f22499c));
            jSONObject2.put("ugen_md5", gt.rh(this.f22499c));
            jSONObject2.put("download_num", tt(this.f22499c.ru()));
            com.byazt.ete.n nVarZ = this.f22499c.z();
            if (nVarZ == null) {
                return jSONObject2.toString();
            }
            jSONObject2.put("app_size", ve(nVarZ.sp()));
            jSONObject2.put("comment_num", c(nVarZ.a()));
            return jSONObject2.toString();
        } catch (JSONException unused) {
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, int i10, String str2) {
        JSONObject jSONObjectC = c();
        try {
            jSONObjectC.put("ugen_dl_render_fail_msg", str2);
            jSONObjectC.put("ugen_dl_render_fail", i10);
        } catch (Exception unused) {
        }
        com.byazt.ddx.uj.tt(this.f22499c, str, "pop_up", jSONObjectC);
    }

    public String c(long j10) {
        if (j10 >= 100000000) {
            return String.format("%d亿+", Long.valueOf(j10 / 100000000));
        }
        if (j10 >= 10000) {
            return String.format("%d万+", Long.valueOf(j10 / 10000));
        }
        return j10 > 0 ? String.valueOf(j10) : "-";
    }

    private void c(String str, com.byazt.aas.n.c cVar, String str2, String str3, JSONObject jSONObject) throws JSONException {
        jSONObject.put("is_easy_dl_dialog_pop_up_style", true);
        com.byazt.aas.n.c(this.tt, this.f22499c.uj(), da.c(this.tt, str2, this.f22499c, str3), jSONObject.toString(), cVar, ve(str), this.f22499c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(ic icVar, String str, int i10, int i11, String str2) {
        JSONObject jSONObjectC = c();
        if (6 == i10) {
            try {
                jSONObjectC.put("easy_dl_render_fail_code", i11);
                if (icVar != null) {
                    String strVe = icVar.po().ve();
                    jSONObjectC.put("easy_dl_render_fail_msg", str2);
                    jSONObjectC.put("easy_dl_render_fail_dsl", uj(strVe));
                }
            } catch (Exception unused) {
            }
        }
        jSONObjectC.put("show_easy_dl_dialog_code", i10);
        com.byazt.ddx.uj.tt(this.f22499c, str, "pop_up", jSONObjectC);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            c cVar = this.ve;
            jSONObject.put("download_type", cVar != null ? cVar.tt() : -2);
        } catch (Exception e10) {
            m.c(e10);
        }
        return jSONObject;
    }
}
