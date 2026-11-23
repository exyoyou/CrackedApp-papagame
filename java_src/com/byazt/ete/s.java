package com.byazt.ete;

import android.graphics.Color;
import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 958})
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13862a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13863c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13867n;
    public tt sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public tt f13868t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f13869u;
    public int uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f13870x;
    public c yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f13871z;
    public boolean ve = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f13865i = "#008DEA";

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f13864da = "点击查看";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f13866m = 0.0f;
    public int nu = 0;
    public int rh = 0;
    public int my = 55;
    public int gt = 0;
    public float rl = 0.0f;
    public int qy = 100;
    public int gu = 0;
    public int gr = 0;
    public int zm = 0;

    @com.byazt.zqa.c(c = {0, 1, 8, 2495})
    public class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13872c;
        public int tt;
        public int uj;
        public int ve;

        public c(JSONObject jSONObject, int i10) {
            this.f13872c = 30;
            this.tt = 30;
            this.ve = 150;
            this.uj = 40;
            if (jSONObject == null) {
                if (i10 == 2) {
                    this.ve = 40;
                    this.uj = 20;
                    return;
                }
                return;
            }
            int iOptInt = jSONObject.optInt("left_margin", 30);
            this.f13872c = iOptInt;
            if (iOptInt < 0 || iOptInt > s.this.p()) {
                this.f13872c = 30;
            }
            int iOptInt2 = jSONObject.optInt("right_margin", 30);
            this.tt = iOptInt2;
            if (iOptInt2 < 0 || iOptInt2 > s.this.p()) {
                this.tt = 30;
            }
            if (i10 == 2) {
                int iOptInt3 = jSONObject.optInt("top_margin", 40);
                this.ve = iOptInt3;
                if (iOptInt3 < 0 || iOptInt3 > s.this.yv()) {
                    this.ve = 40;
                }
                int iOptInt4 = jSONObject.optInt("bottom_margin", 20);
                this.uj = iOptInt4;
                if (iOptInt4 < 0 || iOptInt4 > s.this.yv()) {
                    this.uj = 20;
                    return;
                }
                return;
            }
            int iOptInt5 = jSONObject.optInt("top_margin", 150);
            this.ve = iOptInt5;
            if (iOptInt5 < 0 || iOptInt5 > s.this.yv()) {
                this.ve = 150;
            }
            int iOptInt6 = jSONObject.optInt("bottom_margin", 40);
            this.uj = iOptInt6;
            if (iOptInt6 < 0 || iOptInt6 > s.this.yv()) {
                this.uj = 40;
            }
        }

        public int c() {
            return this.f13872c;
        }

        public JSONObject n() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("left_margin", 30);
                jSONObject.put("right_margin", 30);
                jSONObject.put("top_margin", 150);
                jSONObject.put("bottom_margin", 40);
            } catch (Exception unused) {
            }
            return jSONObject;
        }

        public int tt() {
            return this.tt;
        }

        public int uj() {
            return this.uj;
        }

        public int ve() {
            return this.ve;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 8, 2207})
    public class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13874c;

        public tt(JSONObject jSONObject, int i10) {
            this.f13874c = 14;
            if (jSONObject == null) {
                return;
            }
            this.f13874c = jSONObject.optInt("font_size", i10);
        }

        public JSONObject c() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("font_size", this.f13874c);
            } catch (Exception unused) {
            }
            return jSONObject;
        }

        public int tt() {
            return this.f13874c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int p() {
        return com.byazt.aas.pf.uj(com.byazt.omf.gt.getContext(), com.byazt.aas.pf.uj(com.byazt.omf.gt.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int yv() {
        return com.byazt.aas.pf.uj(com.byazt.omf.gt.getContext(), com.byazt.aas.pf.n(com.byazt.omf.gt.getContext()));
    }

    public int a() {
        return this.sp;
    }

    public String da() {
        return this.f13865i;
    }

    public int gr() {
        return this.zm;
    }

    public int gt() {
        return this.gt;
    }

    public int gu() {
        return this.gr;
    }

    public int i() {
        if (this.uj == 4 && !com.byazt.omf.x.m().c(com.byazt.omf.gt.getContext())) {
            this.uj = 0;
        } else if (this.uj == 7 && !com.byazt.omf.x.m().tt(com.byazt.omf.gt.getContext())) {
            this.uj = 0;
        }
        return this.uj;
    }

    public float m() {
        return this.f13866m;
    }

    public int my() {
        return this.my;
    }

    public int n() {
        return this.f13862a;
    }

    public int nu() {
        return this.nu;
    }

    public int qy() {
        return this.gu;
    }

    public int rh() {
        return this.rh;
    }

    public int rl() {
        return this.qy;
    }

    public String sl() {
        return this.f13864da;
    }

    public int sp() {
        return this.f13870x;
    }

    public tt t() {
        return this.sl;
    }

    public tt u() {
        return this.f13868t;
    }

    public int uj() {
        return this.f13867n;
    }

    public boolean ve() {
        return this.ve;
    }

    public int x() {
        return this.f13871z;
    }

    public c yp() {
        return this.yp;
    }

    public int z() {
        return this.f13869u;
    }

    public float zm() {
        return this.rl;
    }

    public void a(int i10) {
        this.f13871z = i10;
    }

    public int c() {
        return this.f13863c;
    }

    public void da(int i10) {
        this.rh = i10;
    }

    public void m(int i10) {
        this.zm = i10;
    }

    public void n(int i10) {
        this.f13870x = i10;
    }

    public void sl(int i10) {
        this.my = i10;
    }

    public void sp(int i10) {
        this.uj = i10;
    }

    public void t(int i10) {
        this.gt = i10;
    }

    public String tt() {
        if (this.uj == 4 && !com.byazt.omf.x.m().c(com.byazt.omf.gt.getContext())) {
            this.tt = "点击跳转至详情页或第三方应用";
        } else if (this.uj == 7 && !com.byazt.omf.x.m().tt(com.byazt.omf.gt.getContext())) {
            this.tt = "点击跳转至详情页或第三方应用";
        }
        return this.tt;
    }

    public void u(int i10) {
        this.qy = i10;
    }

    public void uj(int i10) {
        this.sp = i10;
    }

    public void ve(int i10) {
        this.f13862a = i10;
    }

    public void x(int i10) {
        if (i10 <= 0 || i10 >= yv()) {
            this.f13869u = 5;
        } else {
            this.f13869u = i10;
        }
    }

    public void yp(int i10) {
        this.gu = i10;
    }

    public void z(int i10) {
        this.gr = i10;
    }

    public void c(int i10) {
        this.f13863c = i10;
    }

    public void ve(String str) {
        if (TextUtils.isEmpty(str)) {
            int i10 = this.uj;
            if (i10 == 7) {
                this.f13864da = "扭动手机";
                return;
            } else if (i10 == 5) {
                this.f13864da = "向上滑动";
                return;
            } else {
                if (i10 == 4) {
                    this.f13864da = "摇一摇";
                    return;
                }
                return;
            }
        }
        this.f13864da = str;
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            this.ve = true;
            int i10 = this.uj;
            if (i10 == 3) {
                this.tt = "跳转至详情页或第三方应用";
                return;
            }
            if (i10 == 4) {
                this.tt = "前往详情页或第三方应用";
                return;
            } else if (i10 != 5 && i10 != 7) {
                this.tt = "点击跳转至详情页或第三方应用";
                return;
            } else {
                this.tt = "前往详情页或第三方应用";
                return;
            }
        }
        this.tt = str;
    }

    public void i(int i10) {
        this.nu = i10;
    }

    public void tt(int i10) {
        this.f13867n = i10;
    }

    public void tt(String str) {
        try {
            Color.parseColor(str);
            this.f13865i = str;
        } catch (Throwable unused) {
            this.f13865i = "#008DEA";
        }
    }

    public void tt(JSONObject jSONObject) {
        this.f13868t = new tt(jSONObject, 20);
    }

    public void c(JSONObject jSONObject) {
        this.sl = new tt(jSONObject, 14);
    }

    public void tt(float f10) {
        this.rl = f10;
    }

    public void c(JSONObject jSONObject, int i10) {
        this.yp = new c(jSONObject, i10);
    }

    public void c(float f10) {
        this.f13866m = f10;
    }
}
