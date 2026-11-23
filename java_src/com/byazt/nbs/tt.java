package com.byazt.nbs;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.mgps.socket.entity.b;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1871, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f17117a;
    public JSONObject aw;
    public double bm;
    public com.byazt.hr.sp bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f17119c;
    public int cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public double f17120d;
    public int eo;
    public String gr;
    public String gt;
    public int gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17122h;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public int f17125ic;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f17126l;
    public int lo;
    public double lr;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f17127m;
    public boolean md;
    public String my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f17128n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public int f17129nb;
    public long nu;
    public int or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f17130p;
    public com.byazt.hr.i pf;
    public int qp;
    public int qy;
    public int rh;
    public int rl;
    public long sp;
    public int sv;
    public int tt;
    public long uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f17134x;
    public long yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f17135z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public int f17136zb;
    public int zm;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List<da> f17124i = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Map<Integer, List<da>> f17121da = new HashMap();
    public Map<Integer, List<da>> sl = new HashMap();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public List<Integer> f17132t = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public double f17133u = -1.0d;
    public double yp = -1.0d;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public int f17123hd = 1000;
    public int pu = 0;
    public int lt = 2;
    public int to = 0;
    public int tk = 0;
    public long kp = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17118b = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Map<String, Object> f17131q = new HashMap();

    public double a() {
        return this.bm;
    }

    public long aw() {
        return this.f17117a;
    }

    public int bm() {
        return this.f17136zb;
    }

    public long bx() {
        return this.uj;
    }

    public int c() {
        return this.f17118b;
    }

    public String cu() {
        return this.f17134x;
    }

    public int d() {
        return this.rh;
    }

    public int da() {
        int iMin = Math.min(this.f17123hd, 1000);
        if (iMin <= 0) {
            return 1000;
        }
        return iMin;
    }

    public String eo() {
        return this.my;
    }

    public int gr() {
        return this.gu;
    }

    public int gt() {
        return this.qp;
    }

    public long gu() {
        return this.yv;
    }

    public long h() {
        return this.nu;
    }

    public int hd() {
        return this.eo;
    }

    public int i() {
        return this.f17125ic;
    }

    public long ic() {
        return this.sp;
    }

    public List<da> l() {
        return this.f17124i;
    }

    public String lo() {
        return this.gt;
    }

    public Map<Integer, List<da>> lr() {
        return this.sl;
    }

    public int lt() {
        int i10 = this.cu;
        if (i10 <= 0) {
            return 1;
        }
        return i10;
    }

    public int m() {
        return this.pu;
    }

    public Map<Integer, List<da>> md() {
        HashMap map = new HashMap();
        Map<Integer, List<da>> map2 = this.f17121da;
        if (map2 != null) {
            for (Map.Entry<Integer, List<da>> entry : map2.entrySet()) {
                map.put(Integer.valueOf(entry.getKey().intValue()), new ArrayList(entry.getValue()));
            }
        }
        return map;
    }

    /* JADX INFO: renamed from: my, reason: merged with bridge method [inline-methods] */
    public tt clone() {
        tt ttVar = new tt();
        ttVar.f17119c = this.f17119c;
        ttVar.tt = this.tt;
        ttVar.ve = this.ve;
        ttVar.uj = this.uj;
        ttVar.f17128n = this.f17128n;
        ttVar.f17117a = this.f17117a;
        ttVar.sp = this.sp;
        ttVar.f17134x = this.f17134x;
        ttVar.nu = this.nu;
        ttVar.gu = this.gu;
        ttVar.gt = this.gt;
        ttVar.rh = this.rh;
        ttVar.my = this.my;
        ttVar.rl = this.rl;
        ttVar.qy = this.qy;
        ttVar.gr = this.gr;
        ttVar.zm = this.zm;
        ttVar.yv = this.yv;
        ttVar.f17122h = this.f17122h;
        ttVar.f17120d = this.f17120d;
        ttVar.or = this.or;
        ttVar.cu = this.cu;
        ttVar.qp = this.qp;
        ttVar.eo = this.eo;
        ttVar.f17136zb = this.f17136zb;
        ttVar.sv = this.sv;
        ttVar.bx = this.bx;
        ttVar.pf = this.pf;
        ttVar.f17129nb = this.f17129nb;
        ttVar.f17130p = this.f17130p;
        ttVar.md = this.md;
        ttVar.aw = this.aw;
        ttVar.f17133u = this.f17133u;
        ttVar.f17127m = this.f17127m;
        ttVar.f17124i = new CopyOnWriteArrayList(this.f17124i);
        ttVar.f17121da = new HashMap(this.f17121da);
        ttVar.f17135z = this.f17135z;
        ttVar.f17132t = new ArrayList(this.f17132t);
        ttVar.f17131q = new HashMap(this.f17131q);
        ttVar.sl = new HashMap(this.sl);
        ttVar.f17125ic = this.f17125ic;
        ttVar.f17123hd = this.f17123hd;
        ttVar.yp = this.yp;
        ttVar.f17126l = this.f17126l;
        ttVar.bm = this.bm;
        ttVar.lr = this.lr;
        ttVar.pu = this.pu;
        ttVar.lt = this.lt;
        ttVar.to = this.to;
        ttVar.tk = this.tk;
        ttVar.f17118b = this.f17118b;
        ttVar.kp = this.kp;
        return ttVar;
    }

    public double n() {
        return this.lr;
    }

    public String nb() {
        return this.f17119c;
    }

    public int nu() {
        int i10 = this.lt;
        if (i10 < 2) {
            return 2;
        }
        return i10;
    }

    public boolean or() {
        return this.md;
    }

    public double p() {
        return this.yp;
    }

    public int pf() {
        return this.tt;
    }

    public int pu() {
        return this.or;
    }

    public List<Integer> qp() {
        return this.f17132t;
    }

    public String qy() {
        return this.gr;
    }

    public tt rh() {
        List<String> listC = com.byazt.vx.i.c();
        tt ttVar = new tt();
        ttVar.f17119c = this.f17119c;
        com.byazt.vx.i.c(listC, "mRitId");
        ttVar.tt = this.tt;
        com.byazt.vx.i.c(listC, "mRitType");
        ttVar.ve = this.ve;
        com.byazt.vx.i.c(listC, "mLookType");
        ttVar.uj = this.uj;
        com.byazt.vx.i.c(listC, "mMinWaitTime");
        ttVar.f17128n = this.f17128n;
        com.byazt.vx.i.c(listC, "mLayerTimeOut");
        ttVar.f17117a = this.f17117a;
        com.byazt.vx.i.c(listC, "mTotalTimeOut");
        ttVar.sp = this.sp;
        com.byazt.vx.i.c(listC, "mCacheTimeOut");
        ttVar.f17134x = this.f17134x;
        com.byazt.vx.i.c(listC, "mVersion");
        ttVar.nu = this.nu;
        com.byazt.vx.i.c(listC, "mWaterFallId");
        ttVar.gu = this.gu;
        com.byazt.vx.i.c(listC, "reqType");
        ttVar.gt = this.gt;
        com.byazt.vx.i.c(listC, "mWaterfallAbTestParam");
        ttVar.rh = this.rh;
        com.byazt.vx.i.c(listC, "segmentId");
        ttVar.my = this.my;
        com.byazt.vx.i.c(listC, "segmentVersion");
        ttVar.rl = this.rl;
        com.byazt.vx.i.c(listC, "preLoadSortControl");
        ttVar.qy = this.qy;
        com.byazt.vx.i.c(listC, "preShowSortControl");
        ttVar.gr = this.gr;
        com.byazt.vx.i.c(listC, "waterfallExtra");
        ttVar.zm = this.zm;
        com.byazt.vx.i.c(listC, "mMultilevelAfterP");
        ttVar.yv = this.yv;
        com.byazt.vx.i.c(listC, "mMultilevelTimeOut");
        ttVar.f17122h = this.f17122h;
        com.byazt.vx.i.c(listC, "mRefreshTime");
        ttVar.f17120d = this.f17120d;
        com.byazt.vx.i.c(listC, "mBidFloor");
        ttVar.or = this.or;
        com.byazt.vx.i.c(listC, "mParallelType");
        ttVar.cu = this.cu;
        com.byazt.vx.i.c(listC, "mReqParallelNum");
        ttVar.qp = this.qp;
        com.byazt.vx.i.c(listC, "mAdCount");
        ttVar.eo = this.eo;
        com.byazt.vx.i.c(listC, "serverSideVerifyPreRequestTime");
        ttVar.f17136zb = this.f17136zb;
        com.byazt.vx.i.c(listC, "serverSideRewardType");
        ttVar.sv = this.sv;
        com.byazt.vx.i.c(listC, "mAdPrime");
        ttVar.lt = this.lt;
        com.byazt.vx.i.c(listC, "mRefreshNum");
        ttVar.pu = this.pu;
        com.byazt.vx.i.c(listC, "mIsRefresh");
        ttVar.bx = this.bx;
        com.byazt.vx.i.c(listC, "mIntervalFreqctlBean");
        ttVar.pf = this.pf;
        com.byazt.vx.i.c(listC, "mIntervalPacingBean");
        ttVar.f17129nb = this.f17129nb;
        com.byazt.vx.i.c(listC, "mWaterFallTimingMode");
        ttVar.f17126l = this.f17126l;
        com.byazt.vx.i.c(listC, "mReqInterval");
        ttVar.bm = this.bm;
        com.byazt.vx.i.c(listC, "mTotalTimeoutRate");
        ttVar.lr = this.lr;
        com.byazt.vx.i.c(listC, "mLayerTimeoutRate");
        ttVar.f17131q = new HashMap(this.f17131q);
        ttVar.f17125ic = this.f17125ic;
        ttVar.f17123hd = this.f17123hd;
        ttVar.yp = this.yp;
        ttVar.sl = new HashMap(this.sl);
        com.byazt.vx.i.tt(listC, "AdsenseRitConfig");
        ttVar.to = this.to;
        com.byazt.vx.i.c(listC, "mBehaviorTTL");
        ttVar.tk = this.tk;
        com.byazt.vx.i.c(listC, "mIsSamste");
        ttVar.f17118b = this.f17118b;
        com.byazt.vx.i.c(listC, "fillStrategy");
        return ttVar;
    }

    public double rl() {
        return this.f17120d;
    }

    public com.byazt.hr.sp sl() {
        return this.bx;
    }

    public long sp() {
        return this.f17126l;
    }

    public long sv() {
        return this.f17128n;
    }

    public com.byazt.hr.i t() {
        return this.pf;
    }

    public int to() {
        return this.to;
    }

    public String toString() {
        return "AdsenseRitConfig{mRitId='" + this.f17119c + "', mIsSpeed=" + yp() + ", mHasServerbidding=" + this.f17130p + ", mHasClientOrMultiLevel=" + this.md + ", mRitType=" + this.tt + ", mLookType=" + this.ve + ", mMinWaitTime=" + this.uj + ", mLayerTimeOut=" + this.f17128n + ", mTotalTimeOut=" + this.f17117a + ", mWaterFallConfigList=" + this.f17124i + ", mWaterFallConfMap=" + this.f17121da + ", mLoadSortLevelList=" + this.f17132t + ", mCurrentCommonAdMaxCpm=" + this.f17133u + ", mTotalLoadLevelCount=" + this.f17135z + ", mTotalWaterFallCount=" + this.f17127m + ", mWaterfallAbTestParam=" + this.gt + ", mServerSideVerifyPreRequestTime=" + this.eo + ", mServerSideVerifyRewardType=" + this.f17136zb + '}';
    }

    public long tt() {
        return this.kp;
    }

    public boolean u() {
        return this.f17129nb == 1;
    }

    public int uj() {
        return this.lo;
    }

    public int ve() {
        return this.tk;
    }

    public Map<String, Object> x() {
        return this.f17131q;
    }

    public boolean yp() {
        return this.or == 3;
    }

    public double yv() {
        return this.f17133u;
    }

    public boolean z() {
        return this.sv == 1;
    }

    public boolean zb() {
        return this.f17130p;
    }

    public int zm() {
        return this.f17127m;
    }

    private static Long gr(int i10) {
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3) {
                return 5000L;
            }
            if (i10 != 5) {
                return (i10 == 7 || i10 == 8) ? 600000L : 10000L;
            }
        }
        return 10000L;
    }

    private static Long gu(int i10) {
        if (i10 != 1) {
            if (i10 != 2 && i10 != 3) {
                if (i10 != 5) {
                    if (i10 != 7 && i10 != 8) {
                        return 0L;
                    }
                }
            }
            return 0L;
        }
        return 1000L;
    }

    public void a(int i10) {
        this.sv = i10;
    }

    public void c(int i10) {
        this.f17118b = i10;
    }

    public void da(int i10) {
        this.qp = i10;
    }

    public void gt(int i10) {
        this.or = i10;
    }

    public void i(int i10) {
        this.lt = i10;
    }

    public void m(int i10) {
        this.tt = i10;
    }

    public void n(int i10) {
        this.f17123hd = i10;
    }

    public void nu(int i10) {
        this.ve = i10;
    }

    public void qy(int i10) {
        this.to = i10;
    }

    public void rl(int i10) {
        this.cu = i10;
    }

    public int sl(int i10) {
        if (i() == 2) {
            int iC = com.byazt.psp.uj.c(this.f17119c, i10, x());
            if (this.f17122h != 0 && iC != 0) {
                return iC;
            }
        }
        return this.f17122h;
    }

    public void sp(int i10) {
        this.f17129nb = i10;
    }

    public void t(int i10) {
        this.f17122h = i10;
    }

    public void tt(int i10) {
        this.tk = i10;
    }

    public void u(int i10) {
        this.zm = i10;
    }

    public void uj(int i10) {
        this.f17125ic = i10;
    }

    public void ve(int i10) {
        this.lo = i10;
    }

    public void x(int i10) {
        this.pu = i10;
    }

    public void yp(int i10) {
        this.gu = i10;
    }

    public void z(int i10) {
        this.rh = i10;
    }

    public void a(long j10) {
        this.f17128n = j10;
    }

    public void c(long j10) {
        this.kp = j10;
    }

    public void n(double d10) {
        this.yp = d10;
    }

    public void sp(long j10) {
        this.f17117a = j10;
    }

    public void tt(double d10) {
        if (d10 < 0.01d || d10 > 1.0d) {
            d10 = 0.01d;
        }
        this.bm = d10;
    }

    public void uj(double d10) {
        this.f17133u = d10;
    }

    public void ve(double d10) {
        this.f17120d = d10;
    }

    public void x(long j10) {
        this.sp = j10;
    }

    public static tt sp(String str) {
        if (TextUtils.isEmpty(str)) {
            com.byazt.eu.tt.c("AdsenseRitConfig", "TMe jsonStr is null or empty");
            return null;
        }
        try {
            return c(new JSONObject(str), true);
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    public da a(String str) {
        List<da> list;
        if (!TextUtils.isEmpty(str) && (list = this.f17124i) != null && list.size() != 0) {
            for (da daVar : this.f17124i) {
                if (str.equals(daVar.rh())) {
                    return daVar;
                }
            }
        }
        return null;
    }

    public void c(double d10) {
        if (d10 < 0.1d || d10 > 1.0d) {
            d10 = 0.1d;
        }
        this.lr = d10;
    }

    public void n(long j10) {
        this.uj = j10;
    }

    public void tt(long j10) {
        if (j10 < 1000) {
            j10 = 1000;
        }
        this.f17126l = j10;
    }

    public void uj(long j10) {
        this.nu = j10;
    }

    public void ve(long j10) {
        this.yv = j10;
    }

    public void c(com.byazt.hr.sp spVar) {
        this.bx = spVar;
    }

    public void n(String str) {
        this.gt = str;
    }

    public void tt(String str) {
        this.my = str;
    }

    public void uj(String str) {
        this.f17119c = str;
    }

    public void ve(String str) {
        this.f17134x = str;
    }

    private void uj(List<da> list) {
        int iYv;
        List<da> arrayList;
        if (list == null) {
            return;
        }
        this.sl.clear();
        int i10 = -1000;
        for (int i11 = 0; i11 < list.size(); i11++) {
            da daVar = list.get(i11);
            if (daVar != null) {
                if (daVar.yv() != i10) {
                    arrayList = new ArrayList<>();
                    iYv = daVar.yv();
                } else {
                    iYv = i10;
                    arrayList = this.sl.get(Integer.valueOf(i10));
                }
                if (arrayList != null) {
                    arrayList.add(daVar);
                    this.sl.put(Integer.valueOf(iYv), arrayList);
                }
                i10 = iYv;
            }
        }
    }

    private void ve(List<da> list) {
        int iYv;
        List<da> arrayList;
        if (list == null) {
            return;
        }
        this.sl.clear();
        int i10 = -1000;
        for (int i11 = 0; i11 < list.size(); i11++) {
            da daVar = list.get(i11);
            if (daVar != null) {
                if (daVar.my() == 0) {
                    arrayList = new ArrayList<>();
                    iYv = daVar.p();
                } else if (daVar.yv() != i10) {
                    arrayList = new ArrayList<>();
                    iYv = daVar.yv();
                } else {
                    iYv = i10;
                    arrayList = this.sl.get(Integer.valueOf(i10));
                }
                if (arrayList != null) {
                    arrayList.add(daVar);
                    this.sl.put(Integer.valueOf(iYv), arrayList);
                }
                i10 = iYv;
            }
        }
    }

    public void c(com.byazt.hr.i iVar) {
        this.pf = iVar;
    }

    public void tt(boolean z10) {
        this.md = z10;
    }

    public void c(String str) {
        this.gr = str;
    }

    public void tt(List<da> list) {
        int iYv;
        List<da> arrayList;
        ve(list);
        this.f17124i = list;
        if (list == null) {
            return;
        }
        this.f17135z = 0;
        this.f17121da.clear();
        this.f17132t.clear();
        this.f17127m = this.f17124i.size();
        int i10 = -1000;
        for (int i11 = 0; i11 < this.f17124i.size(); i11++) {
            da daVar = list.get(i11);
            if (daVar != null) {
                if (daVar.my() == 0) {
                    this.f17135z++;
                    arrayList = new ArrayList<>();
                    iYv = daVar.p();
                } else if (daVar.yv() != i10) {
                    this.f17135z++;
                    arrayList = new ArrayList<>();
                    iYv = daVar.yv();
                } else {
                    iYv = i10;
                    arrayList = this.f17121da.get(Integer.valueOf(i10));
                }
                if (arrayList != null) {
                    arrayList.add(daVar);
                    this.f17121da.put(Integer.valueOf(iYv), arrayList);
                }
                i10 = iYv;
            }
        }
        this.f17132t.addAll(this.f17121da.keySet());
    }

    public void c(boolean z10) {
        this.f17130p = z10;
    }

    public void c(List<da> list) {
        int iYv;
        List<da> arrayList;
        uj(list);
        this.f17124i = list;
        if (list == null) {
            return;
        }
        this.f17135z = 0;
        this.f17121da.clear();
        this.f17132t.clear();
        this.f17127m = this.f17124i.size();
        int i10 = -1000;
        for (int i11 = 0; i11 < this.f17124i.size(); i11++) {
            da daVar = list.get(i11);
            if (daVar != null) {
                if (daVar.yv() != i10) {
                    this.f17135z++;
                    arrayList = new ArrayList<>();
                    iYv = daVar.yv();
                } else {
                    iYv = i10;
                    arrayList = this.f17121da.get(Integer.valueOf(i10));
                }
                if (arrayList != null) {
                    arrayList.add(daVar);
                    this.f17121da.put(Integer.valueOf(iYv), arrayList);
                }
                i10 = iYv;
            }
        }
        this.f17132t.addAll(this.f17121da.keySet());
    }

    public void c(JSONObject jSONObject) {
        this.aw = jSONObject;
    }

    public static tt c(JSONObject jSONObject, boolean z10) {
        String str = null;
        if (jSONObject == null) {
            return null;
        }
        tt ttVar = new tt();
        ttVar.c(jSONObject);
        ttVar.ve(jSONObject.optDouble("bid_floor", 0.0d));
        ttVar.uj(jSONObject.optString("rit_id"));
        ttVar.ve(jSONObject.optString("version"));
        ttVar.uj(jSONObject.optLong("waterfall_id", -1L));
        ttVar.m(jSONObject.optInt("rit_type"));
        ttVar.nu(jSONObject.optInt("look_type", 1));
        ttVar.n(jSONObject.optLong("time_min", gu(ttVar.pf()).longValue()));
        ttVar.a(jSONObject.optLong("layer_time_out", 2000L));
        ttVar.sp(jSONObject.optLong("total_time_out", gr(ttVar.pf()).longValue()));
        ttVar.ve(jSONObject.optLong("multilevel_time_out", 2000L));
        ttVar.x(jSONObject.optLong("cache_time_out", BaseCloudFileManager.ACK_TIMEOUT));
        int i10 = 0;
        ttVar.yp(jSONObject.optInt("req_type", 0));
        com.byazt.ix.uj.c().c(ttVar.nb(), ttVar.gr());
        ttVar.z(jSONObject.optInt("segment_id"));
        ttVar.tt(jSONObject.optString("segment_version"));
        ttVar.c(jSONObject.optString("waterfall_extra"));
        ttVar.u(jSONObject.optInt("multilevel_after_p", 1));
        ttVar.t(jSONObject.optInt("refresh_time", 0));
        ttVar.x(jSONObject.optInt("is_refresh", 0));
        ttVar.i(jSONObject.optInt("refresh_num", 2));
        ttVar.gt(jSONObject.optInt("parallel_type", 1));
        ttVar.a(jSONObject.optInt("is_adprime", 0));
        ttVar.rl(jSONObject.optInt("req_parallel_num", 1));
        ttVar.rh(jSONObject.optInt("reward_start_time", b.f73001c));
        ttVar.my(jSONObject.optInt("reward_callback_type"));
        ttVar.tt(jSONObject.optLong("req_interval", 1000L));
        ttVar.tt(jSONObject.optDouble("total_time_rate", 0.01d));
        ttVar.c(jSONObject.optDouble("layer_time_rate", 0.1d));
        ttVar.ve(jSONObject.optInt("support_render_control", 0));
        ttVar.qy(jSONObject.optInt("behavior_ttl"));
        ttVar.c(jSONObject.optLong("save_time"));
        int iOptInt = jSONObject.optInt(PointParamKey.AD_COUNT, 0);
        if (iOptInt < 0) {
            iOptInt = 0;
        } else if (iOptInt > 3) {
            iOptInt = 3;
        }
        ttVar.da(iOptInt);
        ttVar.uj(jSONObject.optInt("group_type"));
        ttVar.n(jSONObject.optInt("bidding_time_out", 1000));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("waterfall_abtest");
        if (jSONObjectOptJSONObject != null) {
            String strOptString = jSONObjectOptJSONObject.optString("waterfall_ab_version");
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString.trim()) || TextUtils.equals(strOptString.trim(), "null")) {
                jSONObjectOptJSONObject.remove("waterfall_ab_version");
            }
            ttVar.n(jSONObjectOptJSONObject.toString());
        }
        int iOptInt2 = jSONObject.optInt("waterfall_timing_mode");
        ttVar.sp(iOptInt2);
        if (ttVar.u()) {
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("waterfall_show_pacing_rule");
            if (jSONObjectOptJSONObject2 != null) {
                ttVar.c(new com.byazt.hr.i(ttVar.nb(), "", jSONObject.optString("waterfall_show_rules_version"), "", iOptInt2, jSONObjectOptJSONObject2.optString("waterfall_show_pacing"), jSONObjectOptJSONObject2.optString("waterfall_show_pacing_rule_id")));
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("waterfall_show_freqctl_rules");
            ttVar.c(new com.byazt.hr.sp(ttVar.nb(), "", jSONObject.optString("waterfall_show_rules_version"), "", iOptInt2, jSONArrayOptJSONArray == null ? HttpUrl.PATH_SEGMENT_ENCODE_SET_URI : jSONArrayOptJSONArray.toString()));
        }
        ttVar.tt(jSONObject.optInt("is_smaste", 0));
        ttVar.c(jSONObject.optInt("fill_strategy", 0));
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("adn_rit_conf");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray2 != null) {
            int i11 = 0;
            while (i11 < jSONArrayOptJSONArray2.length()) {
                try {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray2.getJSONObject(i11);
                    da daVar = new da();
                    daVar.ve(jSONObject2.optString(MediationConstant.EXTRA_ADN_NAME));
                    if (com.byazt.bp.tt.tt().ve(jSONObject2.optString(MediationConstant.EXTRA_ADN_NAME))) {
                        daVar.uj(jSONObject2.optString("custom_adn_name"));
                    } else {
                        daVar.uj(str);
                    }
                    daVar.x(ttVar.lo());
                    String strOptString2 = jSONObject2.optString("adn_slot_id");
                    daVar.n(strOptString2);
                    if (!z10 && !TextUtils.isEmpty(strOptString2) && !TextUtils.isEmpty(ttVar.nb())) {
                        com.byazt.qv.uj.tt.put(strOptString2, ttVar.nb());
                    }
                    daVar.c(jSONObject2.optInt("is_refresh", i10));
                    int iOptInt3 = jSONObject2.optInt("freqctl_timing_mode");
                    daVar.tt(iOptInt3);
                    if (daVar.uj()) {
                        try {
                            JSONObject jSONObjectOptJSONObject3 = jSONObject2.optJSONObject("show_pacing_rule");
                            if (jSONObjectOptJSONObject3 != null) {
                                daVar.c(new com.byazt.hr.i(ttVar.nb(), strOptString2, "", "", iOptInt3, jSONObjectOptJSONObject3.optString("pacing"), jSONObjectOptJSONObject3.optString("rule_id")));
                            }
                            JSONArray jSONArrayOptJSONArray3 = jSONObject2.optJSONArray("show_freqctl_rules");
                            daVar.c(new com.byazt.hr.sp(ttVar.nb(), strOptString2, "", jSONObject2.optString("show_freqctl_rules_version"), iOptInt3, jSONArrayOptJSONArray3 == null ? HttpUrl.PATH_SEGMENT_ENCODE_SET_URI : jSONArrayOptJSONArray3.toString()));
                        } catch (JSONException e10) {
                            e = e10;
                            i10 = 0;
                            m.c(e);
                            i11++;
                            str = null;
                        }
                    }
                    daVar.da(jSONObject2.optInt("req_bidding_type"));
                    daVar.sp(jSONObject2.optString("slot_cpm", "0"));
                    daVar.a(jSONObject2.optString("discount"));
                    daVar.tt(jSONObject2.optString("exchange_rate"));
                    daVar.sl(jSONObject2.optInt("load_sort"));
                    daVar.t(jSONObject2.optInt("show_sort"));
                    daVar.uj(jSONObject2.optInt("ad_expired_time", 1800000));
                    com.byazt.ix.uj.c().c(ttVar.nb(), daVar.rh(), daVar.x());
                    com.byazt.hk.c.c().c(ttVar.nb(), daVar.rh(), daVar.x());
                    daVar.x(jSONObject2.optInt("if_is_ready", 1));
                    com.byazt.ix.uj.c().tt(ttVar.nb(), daVar.rh(), daVar.t());
                    com.byazt.hk.c.c().tt(ttVar.nb(), daVar.rh(), daVar.t());
                    daVar.n(jSONObject2.optInt("if_reuse_ads", 0));
                    com.byazt.hk.c.c().ve(ttVar.nb(), daVar.rh(), daVar.i());
                    i10 = 0;
                    daVar.sp(jSONObject2.optInt("if_pre_request", 0));
                    com.byazt.hk.c.c().a(ttVar.nb(), daVar.rh(), daVar.sl());
                    daVar.i(ttVar.pf());
                    daVar.c("%1$s%2$sAdapter");
                    daVar.a(jSONObject2.optInt("origin_type"));
                    daVar.ve(jSONObject2.optInt("sub_adtype"));
                    daVar.c(tt(jSONObject2.optJSONObject("multilevel_slot_cpm")));
                    try {
                        if (daVar.my() == 1) {
                            try {
                                ttVar.tt(true);
                            } catch (JSONException e11) {
                                e = e11;
                                m.c(e);
                                i11++;
                                str = null;
                            }
                        } else {
                            if (daVar.my() == 2) {
                                try {
                                    ttVar.c(true);
                                } catch (JSONException e12) {
                                    e = e12;
                                    m.c(e);
                                    i11++;
                                    str = null;
                                }
                            } else if (daVar.my() == 3) {
                                ttVar.tt(true);
                            } else if (daVar.my() != 100) {
                                if (ttVar.yv() == -1.0d || ttVar.yv() < daVar.gr()) {
                                    ttVar.uj(daVar.gr());
                                }
                                if (ttVar.p() == -1.0d || ttVar.p() > daVar.gr()) {
                                    ttVar.n(daVar.gr());
                                }
                            }
                            daVar.da(jSONObject2.optString("customer_adapter_json"));
                            arrayList.add(daVar);
                            i11++;
                            str = null;
                        }
                        daVar.da(jSONObject2.optString("customer_adapter_json"));
                        arrayList.add(daVar);
                    } catch (JSONException e13) {
                        e = e13;
                        m.c(e);
                    }
                } catch (JSONException e14) {
                    e = e14;
                }
                i11++;
                str = null;
            }
        }
        Collections.sort(arrayList);
        if (ttVar.yp()) {
            ttVar.tt(arrayList);
        } else {
            ttVar.c(arrayList);
        }
        return ttVar;
    }

    private static Map<String, String> tt(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap map = new HashMap();
        try {
            Iterator<String> itKeys = jSONObject.keys();
            if (itKeys == null) {
                return null;
            }
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String strOptString = jSONObject.optString(next);
                if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(strOptString)) {
                    map.put(next, strOptString);
                }
            }
            if (map.size() == 0) {
                return null;
            }
            return map;
        } catch (Exception unused) {
            return null;
        }
    }

    public void my(int i10) {
        this.f17136zb = i10;
    }

    public void rh(int i10) {
        this.eo = i10;
    }
}
