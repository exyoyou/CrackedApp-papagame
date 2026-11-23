package com.byazt.ouz;

import com.byazt.ete.ic;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 72})
public class da implements com.byazt.sz.qy, com.byazt.xl.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f18436a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.rbg.c f18437c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f18438n;
    public com.byazt.zb.x sp;
    public String tt;
    public String uj;
    public ic ve;

    public da(com.byazt.rbg.c cVar, String str, ic icVar, String str2) {
        this.f18437c = cVar;
        this.tt = str;
        this.uj = str2;
        this.ve = icVar;
    }

    @Override // com.byazt.xl.i
    public void a() {
        this.f18437c.c();
    }

    @Override // com.byazt.sz.qy
    public void c(boolean z10) {
    }

    @Override // com.byazt.xl.i
    public void da() {
        this.f18437c.c(true);
        this.f18437c.n();
        com.byazt.bwm.n.ve(new com.byazt.bwm.sp("native_success") { // from class: com.byazt.ouz.da.2
            @Override // java.lang.Runnable
            public void run() {
                i.c(da.this.tt, da.this.uj, da.this.ve);
                com.byazt.ddx.uj.sp(da.this.ve, da.this.tt, "dynamic_backup_render", null);
            }
        });
    }

    @Override // com.byazt.xl.i
    public void i() {
        this.f18437c.ve();
    }

    @Override // com.byazt.sz.qy
    public void n() {
    }

    @Override // com.byazt.xl.i
    public void sl() {
        this.f18437c.c(true);
        this.f18437c.u();
    }

    @Override // com.byazt.xl.i
    public void sp() {
        com.byazt.zb.x xVar = this.sp;
        if (xVar == null) {
            return;
        }
        xVar.a(yv.c(this.ve));
    }

    @Override // com.byazt.xl.i
    public void t() {
        this.f18437c.yp();
    }

    @Override // com.byazt.xl.i
    public void u() {
        this.f18437c.tt();
    }

    @Override // com.byazt.sz.qy
    public void uj() {
    }

    @Override // com.byazt.xl.i
    public void x() {
        this.f18437c.tt();
        com.byazt.zb.x xVar = this.sp;
        if (xVar == null) {
            return;
        }
        xVar.sp(yv.c(this.ve));
    }

    public void yp() {
        this.f18437c.z();
        this.f18437c.m();
    }

    @Override // com.byazt.xl.i
    public void a(int i10) {
        final String str;
        this.f18436a = System.currentTimeMillis();
        if (i10 == 3) {
            this.f18437c.ve("dynamic_render2_success");
            str = "dynamic2_render";
        } else {
            this.f18437c.ve("dynamic_render_success");
            str = "dynamic_backup_native_render";
        }
        this.f18437c.c(true);
        com.byazt.bwm.n.ve(new com.byazt.bwm.sp("dynamic_success") { // from class: com.byazt.ouz.da.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.ddx.uj.sp(da.this.ve, da.this.tt, str, null);
            }
        });
    }

    @Override // com.byazt.xl.i
    public void n(int i10) {
        if (i10 == 3) {
            this.f18437c.tt("dynamic_sub_render2_end");
        } else {
            this.f18437c.tt("dynamic_sub_render_end");
        }
    }

    @Override // com.byazt.xl.i
    public void tt(boolean z10) {
        this.f18437c.c(z10 ? 1 : 0);
    }

    @Override // com.byazt.xl.i
    public void uj(int i10) {
        if (i10 == 3) {
            this.f18437c.tt("dynamic_sub_render2_start");
        } else {
            this.f18437c.tt("dynamic_sub_render_start");
        }
    }

    @Override // com.byazt.xl.i
    public void ve(int i10) {
        if (i10 == 3) {
            this.f18437c.tt("dynamic_sub_analysis2_end");
        } else {
            this.f18437c.tt("dynamic_sub_analysis_end");
        }
    }

    @Override // com.byazt.xl.i
    public void c(int i10, String str) {
        this.f18437c.c(i10, str);
        i.c(i10, this.tt, this.uj, this.ve);
        com.byazt.zb.x xVar = this.sp;
        if (xVar == null) {
            return;
        }
        xVar.c(true, yv.c(this.ve), 105);
    }

    @Override // com.byazt.xl.i
    public void tt(int i10) {
        if (i10 == 3) {
            this.f18437c.tt("dynamic_sub_analysis2_start");
        } else {
            this.f18437c.tt("dynamic_sub_analysis_start");
        }
    }

    @Override // com.byazt.sz.qy
    public void ve() {
        this.f18437c.uj("ugen_sub_render_start");
    }

    @Override // com.byazt.sz.qy
    public void tt() {
        this.f18437c.uj("ugen_sub_analysis_end");
    }

    @Override // com.byazt.xl.i
    public void c(int i10) {
        this.f18438n = System.currentTimeMillis();
        if (i10 == 3) {
            this.f18437c.c("dynamic_render2_start");
        } else {
            this.f18437c.c("dynamic_render_start");
        }
    }

    @Override // com.byazt.xl.i
    public void c(int i10, int i11, String str, boolean z10) {
        this.f18437c.c(true);
        if (i10 == 3) {
            this.f18437c.tt(i11, "dynamic_render2_error");
        } else {
            this.f18437c.tt(i11, "dynamic_render_error");
        }
        i.c(i11, this.tt, this.uj, this.ve);
    }

    public void c(com.byazt.zb.x xVar) {
        this.sp = xVar;
    }

    @Override // com.byazt.sz.qy
    public void c() {
        this.f18437c.uj("ugen_render_start");
        this.f18437c.uj("ugen_sub_analysis_start");
    }

    @Override // com.byazt.sz.qy
    public void c(com.byazt.sz.rl rlVar) {
        if (rlVar.c() == 0) {
            this.f18437c.uj("ugen_sub_render_end");
            this.f18437c.n("ugen_render_success");
        } else {
            this.f18437c.ve(rlVar.c(), "ugen_render_error");
        }
        this.f18437c.c(true);
    }

    @Override // com.byazt.sz.qy
    public void c(JSONObject jSONObject) {
        this.f18437c.c(jSONObject);
    }
}
