package com.byazt.nbs;

import android.text.TextUtils;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1871, 72})
public class da implements Comparable<da> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f17096a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f17097c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f17098da;
    public com.byazt.hr.i gr;
    public Map<String, String> gt;
    public int gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17099i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f17100m;
    public x my;
    public int nu;
    public String qy;
    public int rh;
    public int rl;
    public String sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f17102t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f17103u;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f17104x;
    public int yp;
    public int yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f17105z;
    public com.byazt.hr.sp zm;
    public String uj = "1";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f17101n = "0";

    public int a() {
        return this.rl;
    }

    public String bx() {
        return this.qy;
    }

    public void c(int i10) {
        this.yv = i10;
    }

    public boolean cu() {
        return this.sp == 100;
    }

    public x d() {
        return this.my;
    }

    public int da() {
        return this.f17100m;
    }

    public Map<String, String> eo() {
        return this.gt;
    }

    public double gr() {
        try {
            return Double.valueOf(this.f17101n).doubleValue() * Double.valueOf(this.uj).doubleValue();
        } catch (Exception e10) {
            com.byazt.eu.tt.uj("WaterFallConfig", "getEcpm error " + e10.toString());
            return 0.0d;
        }
    }

    public boolean gt() {
        int i10 = this.sp;
        return i10 == 0 || i10 == 100;
    }

    public String gu() {
        return this.f17096a;
    }

    public String h() {
        return this.f17103u;
    }

    public int i() {
        return this.f17105z;
    }

    public String m() {
        return this.tt;
    }

    public String md() {
        return this.f17102t;
    }

    public int my() {
        return this.sp;
    }

    public da n() {
        ConcurrentHashMap concurrentHashMap;
        List<String> listTt = com.byazt.vx.i.tt();
        da daVar = new da();
        daVar.f17097c = this.f17097c;
        com.byazt.vx.i.c(listTt, "mAdnetworkName");
        daVar.ve = this.ve;
        com.byazt.vx.i.c(listTt, "mAdnetwokrSlotId");
        daVar.uj = this.uj;
        com.byazt.vx.i.c(listTt, "mExchangeRate");
        daVar.f17101n = this.f17101n;
        com.byazt.vx.i.c(listTt, "mEcpm");
        daVar.f17096a = this.f17096a;
        com.byazt.vx.i.c(listTt, "mDiscount");
        daVar.sp = this.sp;
        com.byazt.vx.i.c(listTt, "mAdnetworkSlotType");
        daVar.f17104x = this.f17104x;
        com.byazt.vx.i.c(listTt, "mLoadSort");
        daVar.f17099i = this.f17099i;
        com.byazt.vx.i.c(listTt, "mShowSort");
        daVar.f17098da = this.f17098da;
        com.byazt.vx.i.c(listTt, "mRitType");
        daVar.f17100m = this.f17100m;
        com.byazt.vx.i.c(listTt, "originType");
        daVar.rl = this.rl;
        com.byazt.vx.i.c(listTt, "mSubAdType");
        daVar.sl = this.sl;
        com.byazt.vx.i.c(listTt, "mLoaderAdapterName");
        daVar.f17102t = this.f17102t;
        com.byazt.vx.i.c(listTt, "mWaterfallAbTestParam");
        daVar.f17103u = this.f17103u;
        com.byazt.vx.i.c(listTt, "mServerBiddingExtra");
        daVar.yp = this.yp;
        com.byazt.vx.i.c(listTt, "adExpiredTime");
        daVar.f17105z = this.f17105z;
        com.byazt.vx.i.c(listTt, "ifReuseAds");
        daVar.nu = this.nu;
        com.byazt.vx.i.c(listTt, "ifPreRequest");
        daVar.rh = this.rh;
        com.byazt.vx.i.c(listTt, "ifIsReady");
        daVar.yv = this.yv;
        com.byazt.vx.i.c(listTt, "isRefresh");
        daVar.tt = this.tt;
        com.byazt.vx.i.c(listTt, "mCustomAdnetworkName");
        Map<String, String> map = this.gt;
        if (map == null || map.size() <= 0) {
            concurrentHashMap = null;
        } else {
            concurrentHashMap = new ConcurrentHashMap();
            concurrentHashMap.putAll(this.gt);
        }
        daVar.gt = concurrentHashMap;
        com.byazt.vx.i.c(listTt, "mMultilevelSlotCpm");
        daVar.qy = this.qy;
        com.byazt.vx.i.c(listTt, "mCustomAdapterJson");
        daVar.gu = this.gu;
        com.byazt.vx.i.c(listTt, "mAdnRitTimingMode");
        daVar.zm = this.zm;
        com.byazt.vx.i.c(listTt, "mIntervalFreqctlBean");
        daVar.gr = this.gr;
        com.byazt.vx.i.c(listTt, "mIntervalPacingBean");
        com.byazt.vx.i.tt(listTt, "WaterFallConfig");
        return daVar;
    }

    public boolean nb() {
        return zb() || or() || qp();
    }

    public String nu() {
        return TextUtils.isEmpty(this.f17097c) ? this.tt : this.f17097c;
    }

    public boolean or() {
        return this.sp == 1;
    }

    public int p() {
        return this.f17099i;
    }

    public boolean pf() {
        return this.sp == 0;
    }

    public boolean qp() {
        return this.sp == 3;
    }

    public double qy() {
        x xVar = this.my;
        if (xVar != null && !TextUtils.isEmpty(xVar.a())) {
            try {
                return Double.valueOf(this.my.a()).doubleValue();
            } catch (Exception e10) {
                com.byazt.eu.tt.uj("WaterFallConfig", "getServerBiddingLoadEcpm error " + e10.toString());
            }
        }
        return -1.0d;
    }

    public String rh() {
        return this.ve;
    }

    public double rl() {
        x xVar = this.my;
        if (xVar != null && !TextUtils.isEmpty(xVar.n())) {
            try {
                return Double.valueOf(this.my.n()).doubleValue();
            } catch (Exception e10) {
                com.byazt.eu.tt.uj("WaterFallConfig", "getServerBiddingShowEcpm error " + e10.toString());
            }
        }
        return -1.0d;
    }

    public int sl() {
        return this.nu;
    }

    public String sp() {
        return this.sl;
    }

    public boolean sv() {
        return com.byazt.bp.tt.tt().ve(this.f17097c);
    }

    public int t() {
        return this.rh;
    }

    public String toString() {
        return "WaterFallConfig{mAdnetworkName='" + this.f17097c + "', mCustomAdnetworkName='" + this.tt + "', mAdnetwokrSlotId='" + this.ve + "', mExchangeRate=" + this.uj + ", mSlotEcpm=" + this.f17101n + ", mAdnetworkSlotType=" + this.sp + ", mLoadSort=" + this.f17104x + ", mShowSort=" + this.f17099i + '}';
    }

    public com.byazt.hr.sp tt() {
        return this.zm;
    }

    public int u() {
        return this.f17098da;
    }

    public boolean uj() {
        return this.gu == 1;
    }

    public com.byazt.hr.i ve() {
        return this.gr;
    }

    public int x() {
        return this.yp;
    }

    public String yp() {
        return this.uj;
    }

    public int yv() {
        return this.f17104x;
    }

    public String z() {
        return this.f17097c;
    }

    public boolean zb() {
        return this.sp == 2;
    }

    public double zm() {
        if (TextUtils.isEmpty(this.f17096a)) {
            return gr();
        }
        try {
            double d10 = Double.parseDouble(this.f17096a);
            if (d10 > 0.0d && d10 <= 100.0d) {
                return (gr() * d10) / 100.0d;
            }
            return gr();
        } catch (Exception unused) {
            return gr();
        }
    }

    public void a(int i10) {
        this.f17100m = i10;
    }

    public int c() {
        return this.yv;
    }

    public void da(int i10) {
        this.sp = i10;
    }

    public void i(int i10) {
        this.f17098da = i10;
    }

    public void sl(int i10) {
        this.f17104x = i10;
    }

    public void sp(int i10) {
        this.nu = i10;
    }

    public void t(int i10) {
        this.f17099i = i10;
    }

    public void tt(int i10) {
        this.gu = i10;
    }

    public void uj(int i10) {
        this.yp = i10;
    }

    public void ve(int i10) {
        this.rl = i10;
    }

    public void x(int i10) {
        this.rh = i10;
    }

    public void a(String str) {
        this.f17096a = str;
    }

    public void c(com.byazt.hr.sp spVar) {
        this.zm = spVar;
    }

    public void da(String str) {
        this.qy = str;
    }

    public void i(String str) {
        this.f17103u = str;
    }

    public void sp(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "0";
        }
        this.f17101n = str;
    }

    public void tt(String str) {
        this.uj = str;
    }

    public void uj(String str) {
        this.tt = str;
    }

    public void ve(String str) {
        this.f17097c = str;
    }

    public void x(String str) {
        this.f17102t = str;
    }

    public void c(com.byazt.hr.i iVar) {
        this.gr = iVar;
    }

    public void c(String str) {
        this.sl = str;
    }

    public void c(x xVar) {
        this.my = xVar;
    }

    public void c(Map<String, String> map) {
        this.gt = map;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(da daVar) {
        if (daVar == null || this.f17104x > daVar.yv()) {
            return 1;
        }
        if (this.f17104x < daVar.yv()) {
            return -1;
        }
        if (this.f17099i > daVar.p()) {
            return 1;
        }
        return this.f17099i < daVar.p() ? -1 : 0;
    }

    public void n(int i10) {
        this.f17105z = i10;
    }

    public void n(String str) {
        this.ve = str;
    }
}
