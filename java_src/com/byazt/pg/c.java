package com.byazt.pg;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.bwm.n;
import com.byazt.ddx.sp;
import com.byazt.ete.ic;
import com.byazt.ete.uj;
import com.byazt.ete.xd;
import com.byazt.nr.m;
import com.byazt.nr.z;
import com.byazt.omf.gt;
import com.byazt.omf.gu;
import com.byazt.yih.x;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import com.sigmob.sdk.base.common.a;
import com.tencent.cos.common.COSHttpResponseKey;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1322, 20})
public class c implements tt.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public sp f18678a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ic f18679c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.pop.ve f18680da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.xj.ve f18681i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.ua.c f18682m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f18683n;
    public com.byazt.pop.c nu = new com.byazt.pop.c() { // from class: com.byazt.pg.c.1
        @Override // com.byazt.pop.c
        public void c() {
        }

        @Override // com.byazt.pop.c
        public void tt(long j10, long j11, String str, String str2) {
        }

        @Override // com.byazt.pop.c
        public void ve(long j10, long j11, String str, String str2) {
        }

        @Override // com.byazt.pop.c
        public void c(long j10, long j11, String str, String str2) {
        }

        @Override // com.byazt.pop.c
        public void c(long j10, String str, String str2) {
        }

        @Override // com.byazt.pop.c
        public void c(String str, String str2) {
        }
    };
    public JSONObject sl;
    public Activity sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public uj f18684t;
    public tt tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f18685u;
    public String uj;
    public com.byazt.qj.c ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ViewGroup f18686x;
    public com.byazt.qzm.tt yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.vn.tt f18687z;

    public c(Activity activity, ViewGroup viewGroup, sp spVar, ic icVar, String str, int i10, com.byazt.ua.c cVar) {
        this.f18679c = icVar;
        this.sp = activity;
        this.f18678a = spVar;
        this.f18686x = viewGroup;
        this.uj = str;
        this.f18683n = i10;
        this.f18682m = cVar;
    }

    private void i() {
        com.byazt.qzm.tt ttVar = this.yp;
        if (ttVar != null) {
            ttVar.c(this.f18682m);
        }
    }

    private String sp() {
        return nb.my(this.f18679c);
    }

    private void x() {
        if (this.f18680da == null) {
            com.byazt.pop.ve veVarC = x.c(this.sp, this.f18685u, this.f18679c, this.uj);
            this.f18680da = veVarC;
            veVarC.c(com.byazt.wz.x.c(this.f18679c));
            this.f18680da.c(this.nu, false);
            this.f18680da.c(false);
        }
        this.f18680da.c(this.sp, false);
    }

    public void c(com.byazt.xj.ve<View> veVar) {
    }

    private String a() {
        JSONObject jSONObject = this.sl;
        if (jSONObject == null) {
            return sp();
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("download_buttons");
        if (jSONArrayOptJSONArray == null) {
            return sp();
        }
        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0);
        if (jSONObjectOptJSONObject == null) {
            return sp();
        }
        String strOptString = jSONObjectOptJSONObject.optString("url");
        return TextUtils.isEmpty(strOptString) ? sp() : strOptString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        ic icVar = this.f18679c;
        if (icVar == null || xd.da(icVar) != 200) {
            return;
        }
        com.byazt.xj.ve veVarUj = this.f18681i.uj("video");
        if (veVarUj instanceof com.byazt.qzm.tt) {
            com.byazt.qzm.tt ttVar = (com.byazt.qzm.tt) veVarUj;
            this.yp = ttVar;
            ttVar.n(true);
            i();
        }
        com.byazt.xj.ve veVarUj2 = this.f18681i.uj(a.f78892z);
        if (veVarUj2 instanceof com.byazt.vn.tt) {
            this.f18687z = (com.byazt.vn.tt) veVarUj2;
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.getPaint().setColor(Color.parseColor("#99333333"));
            shapeDrawable.setIntrinsicWidth(pf.ve(this.sp, 28.0f));
            shapeDrawable.setIntrinsicHeight(pf.ve(this.sp, 28.0f));
            this.f18687z.i().setBackground(shapeDrawable);
        }
        com.byazt.ua.c cVar = this.f18682m;
        if (cVar != null) {
            c(cVar.f20529x);
        } else {
            c(true);
        }
    }

    private void uj(final JSONObject jSONObject) {
        if (this.f18684t != null) {
            try {
                JSONObject jSONObject2 = new JSONObject(this.f18684t.x());
                jSONObject2.put("is_support_func_desc", "true");
                jSONObject.put("app", jSONObject2);
                ve(jSONObject);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        String strA = a();
        this.f18685u = strA;
        if (!TextUtils.isEmpty(strA)) {
            n.tt(new com.byazt.bwm.sp("tt_pl_download_check") { // from class: com.byazt.pg.c.5
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject3;
                    c cVar = c.this;
                    gu<com.byazt.ddx.c> guVarC = gt.c();
                    c cVar2 = c.this;
                    cVar.f18684t = guVarC.c(cVar2.f18679c, cVar2.f18685u);
                    try {
                        if (c.this.f18684t != null) {
                            jSONObject3 = new JSONObject(c.this.f18684t.x());
                        } else {
                            jSONObject3 = c.this.f18679c.fv() != null ? new JSONObject(c.this.f18679c.fv()) : new JSONObject();
                        }
                        jSONObject3.put("is_support_func_desc", "true");
                        jSONObject.put("app", jSONObject3);
                        jSONObject3.put(COSHttpResponseKey.DOWNLOAD_URL, c.this.f18685u);
                        c.this.ve(jSONObject);
                    } catch (Throwable unused2) {
                    }
                }
            });
            return;
        }
        com.byazt.qj.c cVar = this.ve;
        if (cVar != null) {
            cVar.c(-4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve(final JSONObject jSONObject) {
        com.byazt.ux.n.c(this.f18679c.lt(), "lp_" + this.f18679c.pu(), this.f18679c.to(), new com.byazt.ux.n.c() { // from class: com.byazt.pg.c.3
            @Override // com.byazt.ux.n.c
            public void c(JSONObject jSONObject2) {
                if (jSONObject2 == null) {
                    c.this.f18678a.c(-1, "template info load fail");
                    com.byazt.qj.c cVar = c.this.ve;
                    if (cVar != null) {
                        cVar.c(-1);
                        return;
                    }
                    return;
                }
                try {
                    jSONObject.put("creative", c.this.f18679c.yg());
                    c.this.c(jSONObject);
                    c.this.c(jSONObject2, jSONObject);
                } catch (JSONException e10) {
                    m.c(e10);
                }
            }
        });
    }

    public void c(JSONObject jSONObject) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(JSONObject jSONObject) {
        this.sl = jSONObject;
        uj(jSONObject);
    }

    private void tt(boolean z10) {
        x();
        com.byazt.pop.ve veVar = this.f18680da;
        if (veVar instanceof com.byazt.wz.sp) {
            ((com.byazt.wz.sp) veVar).x().c(z10);
        }
    }

    private void ve(boolean z10) {
        tt(false);
        uj(z10);
    }

    private void ve(ic icVar) {
        String strI;
        if (icVar == null) {
            return;
        }
        com.byazt.ete.a aVarRh = icVar.rh();
        uj ujVar = this.f18684t;
        if (ujVar != null) {
            strI = ujVar.n();
        } else {
            strI = aVarRh == null ? "" : aVarRh.i();
        }
        com.byazt.aas.n.tt(this.sp, strI, icVar.uj(), new com.byazt.aas.n.c() { // from class: com.byazt.pg.c.8
            @Override // com.byazt.aas.n.c
            public void c() {
                c.this.uj(true);
                if (c.this.sp instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) c.this.sp).t();
                }
            }

            @Override // com.byazt.aas.n.c
            public void tt() {
                if (c.this.sp instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) c.this.sp).t();
                }
            }

            @Override // com.byazt.aas.n.c
            public void ve() {
                if (c.this.sp instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) c.this.sp).t();
                }
            }
        });
    }

    private boolean tt(com.byazt.sz.m mVar) {
        if (mVar == null) {
            return false;
        }
        View viewI = mVar.c().i();
        if (!(viewI instanceof TextView)) {
            return false;
        }
        CharSequence text = ((TextView) viewI).getText();
        if (TextUtils.isEmpty(text)) {
            return false;
        }
        return text.toString().contains("下载");
    }

    public void c(com.byazt.qj.c cVar) {
        this.ve = cVar;
    }

    public void c() {
        this.tt = new tt(this.sp, this.f18678a, this.uj, this.f18683n);
        if (this.f18679c.kp() != null) {
            try {
                tt(new JSONObject(this.f18679c.kp().toString()));
                return;
            } catch (JSONException e10) {
                m.c(e10);
                return;
            }
        }
        int iPu = this.f18679c.pu();
        if (iPu != 5 && iPu != 4) {
            com.byazt.hy.tt.c(this.f18679c.lo(), new com.byazt.hy.tt.c() { // from class: com.byazt.pg.c.2
                @Override // com.byazt.hy.tt.c
                public void c(JSONObject jSONObject) {
                    c.this.tt(jSONObject);
                }

                @Override // com.byazt.hy.tt.c
                public void c(int i10, String str) {
                    c.this.f18678a.c(-3, "ad meta info load fail");
                    com.byazt.qj.c cVar = c.this.ve;
                    if (cVar != null) {
                        cVar.c(-3);
                    }
                }
            });
        } else {
            tt(new JSONObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj(boolean z10) {
        x();
        com.byazt.hkv.c cVar = new com.byazt.hkv.c(this.sp, this.f18679c, "embeded_ad_landingpage", this.f18683n);
        ((com.byazt.nat.c) cVar.c(com.byazt.nat.c.class)).ve(true);
        ((com.byazt.nat.c) cVar.c(com.byazt.nat.c.class)).c(true);
        this.f18680da.tt(z10);
        this.f18680da.c(this.f18679c, false);
        ((com.byazt.nat.c) cVar.c(com.byazt.nat.c.class)).c(this.f18680da);
        this.f18680da.c(nb.qy(this.f18679c), false);
    }

    public void ve() {
        com.byazt.pop.ve veVar = this.f18680da;
        if (veVar != null) {
            veVar.tt();
        }
        com.byazt.qzm.tt ttVar = this.yp;
        if (ttVar != null) {
            ttVar.q();
        }
    }

    private void tt(ic icVar) {
        String strFv;
        if (icVar == null) {
            return;
        }
        if (this.f18684t != null) {
            com.byazt.ete.a aVarRh = icVar.rh();
            if (aVarRh != null) {
                this.f18684t.c(aVarRh.uj());
                this.f18684t.c(aVarRh.ve());
            }
            strFv = this.f18684t.x();
        } else {
            strFv = icVar.fv();
        }
        Activity activity = this.sp;
        if (activity instanceof TTNativePageActivity) {
            ((TTNativePageActivity) activity).sl();
        }
        com.byazt.aas.n.c(this.sp, icVar.uj(), new com.byazt.aas.n.c() { // from class: com.byazt.pg.c.7
            @Override // com.byazt.aas.n.c
            public void c() {
                c.this.uj(true);
                if (c.this.sp instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) c.this.sp).t();
                }
            }

            @Override // com.byazt.aas.n.c
            public void tt() {
                if (c.this.sp instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) c.this.sp).t();
                }
            }

            @Override // com.byazt.aas.n.c
            public void ve() {
                if (c.this.sp instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) c.this.sp).t();
                }
            }
        }, strFv);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(JSONObject jSONObject, JSONObject jSONObject2) {
        this.f18678a.tt();
        this.tt.c(this);
        this.tt.c(jSONObject, jSONObject2, new com.byazt.ux.sp() { // from class: com.byazt.pg.c.4
            @Override // com.byazt.ux.sp
            public void c(int i10, String str) {
                com.byazt.qj.c cVar = c.this.ve;
                if (cVar != null) {
                    cVar.c(i10);
                }
            }

            @Override // com.byazt.ux.sp
            public void c(com.byazt.xj.ve<View> veVar) {
                c.this.f18681i = veVar;
                c.this.f18686x.addView(veVar.i(), new FrameLayout.LayoutParams(veVar.or(), veVar.cu()));
                com.byazt.qj.c cVar = c.this.ve;
                if (cVar != null) {
                    cVar.c(veVar.i());
                }
                c.this.n();
                c.this.c(veVar);
            }
        });
    }

    public void uj() {
        com.byazt.pop.ve veVar = this.f18680da;
        if (veVar != null) {
            veVar.ve();
        }
    }

    private void c(boolean z10) {
        com.byazt.qzm.tt ttVar = this.yp;
        if (ttVar != null) {
            ttVar.uj(z10);
        }
        com.byazt.vn.tt ttVar2 = this.f18687z;
        if (ttVar2 == null || ttVar2.i() == null) {
            return;
        }
        z.c((Context) this.sp, z10 ? "tt_mute" : "tt_unmute", (ImageView) this.f18687z.i(), 320);
    }

    public void tt() {
        com.byazt.qzm.tt ttVar = this.yp;
        if (ttVar != null) {
            ttVar.kk();
        }
    }

    @Override // com.byazt.pg.tt.c
    public void c(com.byazt.sz.m mVar) {
        JSONObject jSONObjectVe;
        com.byazt.qzm.tt ttVar;
        if (mVar == null || mVar.tt() != 1 || (jSONObjectVe = mVar.ve()) == null) {
            return;
        }
        String strOptString = jSONObjectVe.optString("type");
        strOptString.hashCode();
        switch (strOptString) {
            case "openAppPermission":
                c(this.f18679c);
                break;
            case "clickVideo":
                com.byazt.qzm.tt ttVar2 = this.yp;
                if (ttVar2 != null) {
                    ttVar2.oz();
                    break;
                }
                break;
            case "openAppFunctionDesc":
                ve(this.f18679c);
                break;
            case "downloadEvent":
                tt(true);
                uj(tt(mVar));
                break;
            case "downloadDirect":
                ve(tt(mVar));
                break;
            case "muteVideo":
                if (this.f18687z != null && (ttVar = this.yp) != null) {
                    c(!ttVar.x());
                    break;
                }
                break;
            case "openAppPolicy":
                tt(this.f18679c);
                break;
            case "openInfringement":
                com.byazt.aas.n.c(this.sp, this.uj, this.f18679c);
                break;
        }
    }

    private void c(ic icVar) {
        String strFv;
        if (icVar == null) {
            return;
        }
        if (this.f18684t != null) {
            com.byazt.ete.a aVarRh = icVar.rh();
            if (aVarRh != null) {
                this.f18684t.c(aVarRh.uj());
                this.f18684t.c(aVarRh.ve());
            }
            strFv = this.f18684t.x();
        } else {
            strFv = icVar.fv();
        }
        Activity activity = this.sp;
        if (activity instanceof TTNativePageActivity) {
            ((TTNativePageActivity) activity).sl();
        }
        com.byazt.aas.n.c(this.sp, icVar.uj(), strFv, new com.byazt.aas.n.c() { // from class: com.byazt.pg.c.6
            @Override // com.byazt.aas.n.c
            public void c() {
                c.this.uj(true);
                if (c.this.sp instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) c.this.sp).t();
                }
            }

            @Override // com.byazt.aas.n.c
            public void tt() {
                if (c.this.sp instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) c.this.sp).t();
                }
            }

            @Override // com.byazt.aas.n.c
            public void ve() {
                if (c.this.sp instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) c.this.sp).t();
                }
            }
        });
    }
}
