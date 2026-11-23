package com.byazt.bp;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.nr.sp;
import com.byazt.psp.n;
import com.byazt.vif.uj;
import com.byazt.vx.gu;
import com.byazt.vx.my;
import com.byazt.yf.a;
import com.byazt.yf.yp;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 896, 20})
public class c {
    public static final c aw = new c();
    public final Map<String, Integer> bx;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f12007d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f12008da;
    public com.byazt.ko.c eo;
    public boolean gr;
    public List<String> gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f12009h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public yp f12010hd;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f12011i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public int[] f12012ic;
    public boolean md;
    public a my;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public Object f12015nb;
    public PluginValueSet or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f12016p;
    public long pf;
    public com.byazt.xf.ve qp;
    public Map<String, String> sl;
    public final Map<String, Float> sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f12017t;
    public String[] tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f12018u;
    public String uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f12019x;
    public boolean yv;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public boolean f12021zb;
    public JSONObject zm;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12006c = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f12014n = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f12005a = false;
    public boolean sp = false;
    public Set<String> yp = new HashSet();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Map<String, Map<String, String>> f12020z = new HashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Map<String, Map<String, String>> f12013m = new HashMap();
    public boolean nu = false;
    public final Map<String, Object> rh = new my();
    public long gt = -1;
    public Map<String, Object> rl = new ConcurrentHashMap();
    public Map<String, Object> qy = new ConcurrentHashMap();
    public int cu = -1;

    private c() {
        HashMap map = new HashMap();
        this.bx = map;
        this.sv = new ConcurrentHashMap();
        if (tt.tt().l()) {
            map.put(MediationConstant.KEY_USE_POLICY_AD_GAP, 1);
            map.put(MediationConstant.KEY_USE_POLICY_AD_LOAD, 1);
            map.put(MediationConstant.KEY_USE_POLICY_SECTION_ID, 1);
            map.put(MediationConstant.KEY_USE_POLICY_PAGE_ID, 1);
            map.put("custom", 1);
        }
    }

    public static c t() {
        return aw;
    }

    public String a() {
        return this.f12007d;
    }

    public void c(boolean z10) {
        this.nu = z10;
    }

    public PluginValueSet cu() {
        PluginValueSet pluginValueSet = this.or;
        return pluginValueSet != null ? pluginValueSet : com.byazt.rl.c.c().tt();
    }

    public String d() {
        return this.f12016p;
    }

    public boolean da() {
        try {
            return "com.msdk.qa.monkey".equals(tt.getContext().getPackageName()) && "5001121".equals(this.ve);
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean eo() {
        return this.md;
    }

    public Map<String, Object> gr() {
        return this.rl;
    }

    public String gt() {
        if (!TextUtils.isEmpty(this.f12018u)) {
            return this.f12018u;
        }
        com.byazt.it.ve veVarC = uj.c(null, "gm_tt_ad_mediation_sdk_sp");
        String string = veVarC.getString("any_door_id", "");
        this.f12018u = string;
        if (!TextUtils.isEmpty(string)) {
            return this.f12018u;
        }
        String strValueOf = String.valueOf(System.currentTimeMillis());
        veVarC.put("any_door_id", strValueOf);
        this.f12018u = strValueOf;
        return strValueOf;
    }

    public void gu() {
        this.f12010hd = yp.c(t().tt());
    }

    public boolean h() {
        return this.yv;
    }

    public boolean i() {
        Context context = tt.getContext();
        return context != null && "com.bytedance.mediation_demo_csj".equals(context.getPackageName()) && sl();
    }

    public String m() {
        return this.f12008da;
    }

    public JSONObject md() {
        return this.zm;
    }

    public String my() {
        return this.uj;
    }

    public long n() {
        return this.pf;
    }

    public Object nb() {
        return this.f12015nb;
    }

    public Map<String, String> nu() {
        return this.sl;
    }

    public Map<String, Object> or() {
        this.rh.put(MediationConstant.KEY_GM_USB, n.n());
        return this.rh;
    }

    public boolean p() {
        return this.gr;
    }

    public com.byazt.ko.c qp() {
        return this.eo;
    }

    public yp qy() {
        if (this.f12010hd == null) {
            this.f12010hd = yp.c(t().tt());
        }
        return this.f12010hd;
    }

    public String rh() {
        return this.f12019x;
    }

    public a rl() {
        return this.my;
    }

    public boolean sl() {
        String path = sp.uj(tt.getContext(), false, null).getPath();
        if (this.cu < 0) {
            if (new File(path + "/e2e.text").exists()) {
                this.cu = 1;
            } else {
                this.cu = 0;
            }
        }
        return this.cu > 0;
    }

    public boolean sp() {
        return this.f12011i;
    }

    public com.byazt.xf.ve tt() {
        if (this.qp == null) {
            com.byazt.yxi.uj ujVarC = com.byazt.yxi.uj.c();
            com.byazt.px.n.c(ujVarC);
            this.qp = com.byazt.xf.ve.c(ujVarC.tt());
        }
        return this.qp;
    }

    public String u() {
        return this.ve;
    }

    public Map<String, Integer> uj() {
        return this.bx;
    }

    public long ve() {
        long j10 = this.gt;
        if (j10 != -1) {
            return j10;
        }
        long jTt = com.byazt.ii.c.c().tt();
        this.gt = jTt;
        return jTt;
    }

    public String x() {
        Context context = tt.getContext();
        if (context == null) {
            return null;
        }
        if ((!"com.union_test.toutiao".equals(context.getPackageName()) || !"5001121".equals(this.ve)) && (!"com.bytedance.mediation_demo".equals(context.getPackageName()) || !"5001121".equals(this.ve))) {
            return null;
        }
        try {
            return uj.c(null, "gm_tt_mediation_ppe_info").getString("tt_ppe_content", "");
        } catch (Exception unused) {
            return null;
        }
    }

    public boolean yp() {
        return this.f12021zb;
    }

    public List<String> yv() {
        return this.gu;
    }

    public boolean z() {
        return this.sp;
    }

    public boolean zb() {
        return this.f12009h;
    }

    public Map<String, Object> zm() {
        return this.qy;
    }

    public void a(boolean z10) {
        this.f12005a = z10;
    }

    public boolean c() {
        return this.nu;
    }

    public void da(boolean z10) {
        this.f12009h = z10;
    }

    public void n(String str) {
        this.f12008da = str;
    }

    public void sp(String str) {
        this.f12017t = str;
    }

    public void uj(boolean z10) {
        this.sp = z10;
    }

    private static void i(String str) {
        gu.c(str, "appid不能为空");
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            str = c(tt.getContext());
        }
        this.uj = str;
    }

    public void c(String str, float f10) {
        this.sv.put(str, Float.valueOf(f10));
    }

    public void n(boolean z10) {
        this.f12014n = z10;
    }

    public void sp(boolean z10) {
        this.gr = z10;
    }

    public void uj(String str) {
        this.f12019x = str;
    }

    public void ve(String str) {
        i(str);
        this.ve = str;
    }

    public float c(String str) {
        return this.sv.get(str).floatValue();
    }

    public void i(boolean z10) {
        this.md = z10;
    }

    public void c(long j10) {
        com.byazt.ii.c.c().c(j10);
    }

    public void ve(boolean z10) {
        this.f12021zb = z10;
    }

    public void x(boolean z10) {
        this.yv = z10;
    }

    public void c(Map<String, String> map) {
        this.sl = map;
    }

    public void tt(long j10) {
        this.pf = j10;
    }

    public void ve(Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        this.qy.putAll(map);
    }

    public void x(String str) {
        this.f12016p = str;
    }

    public void c(int... iArr) {
        this.f12012ic = iArr;
    }

    public void tt(String str) {
        this.f12007d = str;
    }

    public static String c(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getApplicationInfo().packageName, 0);
            return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "");
        } catch (Throwable th) {
            m.c(th);
            return "";
        }
    }

    public void tt(boolean z10) {
        this.f12011i = z10;
    }

    public void tt(Map<String, Object> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        this.rl.putAll(map);
    }

    public void c(int i10) {
        this.f12006c = i10;
    }

    public void c(String[] strArr) {
        this.tt = strArr;
    }

    public void c(a aVar, boolean z10) {
        boolean zEquals;
        if (!z10) {
            a aVar2 = this.my;
            if (aVar2 == null && aVar == null) {
                zEquals = true;
            } else {
                zEquals = (aVar2 == null || aVar == null) ? false : aVar2.equals(aVar);
            }
            this.my = aVar;
            if (zEquals) {
                return;
            }
            com.byazt.qe.tt.c(tt.tt()).c().c(3, (JSONObject) null);
            return;
        }
        this.my = aVar;
    }

    public void c(List<String> list) {
        this.gu = list;
    }

    public void c(JSONObject jSONObject) {
        this.zm = jSONObject;
    }

    public void c(PluginValueSet pluginValueSet) {
        this.or = pluginValueSet;
    }

    public void c(com.byazt.ko.c cVar) {
        this.eo = cVar;
    }

    public void c(Object obj) {
        this.f12015nb = obj;
    }
}
