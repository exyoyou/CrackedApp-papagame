package com.byazt.qe;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.hr.yp;
import com.byazt.it.n;
import com.byazt.nbs.da;
import com.byazt.nbs.uj;
import com.byazt.nys.PluginConstants;
import com.byazt.tjo.a;
import com.byazt.vx.eo;
import com.byazt.vx.qy;
import com.byazt.yf.m;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.sigmob.sdk.downloader.core.breakpoint.f;
import com.umeng.analytics.pro.bm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 697, 54})
public class ve implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f18982a;
    public String aw;
    public com.byazt.bg.tt bm;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f18986da;
    public int eo;
    public long gt;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public int f18988hd;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f18989i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public int f18990ic;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f18991j;
    public int lt;

    /* JADX INFO: renamed from: ma, reason: collision with root package name */
    public com.byazt.sc.tt f18994ma;
    public long my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f18995n;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile JSONObject f19000s;
    public String sl;
    public String sp;
    public int sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f19001t;
    public com.byazt.xx.tt to;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f19002u;
    public long uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f19004x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18984c = 259200000;
    public final List<Object> tt = new CopyOnWriteArrayList();
    public String yp = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f19006z = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f18993m = false;
    public int nu = 0;
    public String rh = "log-api.pangolin-sdk-toutiao.com/service/2/app_log/";
    public int rl = Integer.MAX_VALUE;
    public final List<m> qy = new CopyOnWriteArrayList();
    public Map<String, Boolean> gu = new HashMap();
    public final AtomicBoolean gr = new AtomicBoolean(false);
    public final AtomicBoolean zm = new AtomicBoolean(false);
    public int yv = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Map<String, String> f18997p = new ConcurrentHashMap();
    public Map<String, List<String>> md = new ConcurrentHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public double f18987h = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f18985d = false;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public Map<String, com.byazt.nbs.ve> f19007zb = new ConcurrentHashMap();
    public int or = 0;
    public final Map<String, List<com.byazt.nbs.ve>> cu = new ConcurrentHashMap();
    public final Map<String, uj> qp = new ConcurrentHashMap();

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public final Map<String, Integer> f18996nb = new ConcurrentHashMap();
    public final Map<String, Integer> pf = new ConcurrentHashMap();
    public int bx = 0;
    public int lr = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f18992l = 0;
    public int lo = 0;
    public int pu = 0;
    public int tk = 0;
    public int kp = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18983b = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f18998q = false;
    public boolean kk = false;
    public boolean tx = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f19003v = false;
    public long os = Long.MIN_VALUE;
    public long oz = Long.MIN_VALUE;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f18999r = Long.MIN_VALUE;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f19005y = 0;
    public final AtomicInteger iu = new AtomicInteger(0);
    public int dz = -1;

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.byazt.vq.c.c().uj();
        if (bx()) {
            Iterator<m> it2 = this.qy.iterator();
            while (it2.hasNext()) {
                it2.next().c();
            }
            this.qy.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        com.byazt.rq.c.c().put("app_simple_abtest", this.f19006z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void ir() {
        n nVarC = com.byazt.rq.c.c();
        nVarC.put("cache_refresh_interval", this.os);
        nVarC.put("splash_ad_timeout", this.oz);
        nVarC.put("non_splash_ad_timeout", this.f18999r);
        nVarC.put("app_simple_abtest", this.f19006z);
    }

    private void ma() {
        this.f18982a = "";
        this.sp = "";
        this.f19004x = "";
        this.f18989i = "";
        this.sl = "0";
        this.f19001t = "0";
        this.gt = 10000L;
        com.byazt.oi.c.c().c(this.my, this.gt);
    }

    private boolean yf() {
        Boolean bool = this.gu.get("active_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean aw() {
        return this.yv == 1;
    }

    public double bm() {
        return this.f18987h;
    }

    public boolean dz() {
        com.byazt.eu.tt.tt("TMe", "enable_bid_result_return = " + this.lo);
        com.byazt.eu.tt.tt("TMe", "enable_bid_result_return_for_ks = " + this.tk);
        return this.lo == 1 && this.tk == 1;
    }

    public Map<String, List<String>> hd() {
        return this.md;
    }

    public Map<String, String> ic() {
        return this.f18997p;
    }

    public boolean iu() {
        return this.lo == 1 && this.pu == 1;
    }

    public boolean j() {
        return this.lo == 1 && this.pu == 2;
    }

    public boolean kk() {
        return this.or == 1;
    }

    public Map<String, com.byazt.nbs.ve> kp() {
        return this.f19007zb;
    }

    public boolean l() {
        return this.f18988hd == 1;
    }

    public boolean lo() {
        return this.lt == 1;
    }

    public boolean lr() {
        return this.f18990ic == 1;
    }

    public com.byazt.xx.tt lt() {
        if (lo()) {
            return this.to;
        }
        return null;
    }

    public Map<String, Integer> os() {
        return this.f18996nb;
    }

    public Map<String, Integer> oz() {
        return this.pf;
    }

    public com.byazt.bg.tt pu() {
        return this.bm;
    }

    public String q() {
        return this.aw;
    }

    public int r() {
        return this.lr;
    }

    public int s() {
        return this.f18992l;
    }

    public boolean sv() {
        if (this.rl == Integer.MAX_VALUE) {
            this.rl = 1;
        }
        return this.rl == 1;
    }

    public int tk() {
        return this.eo;
    }

    public boolean to() {
        return this.eo == 1;
    }

    public int tx() {
        return this.f18984c;
    }

    public int v() {
        com.byazt.bg.tt ttVar = this.bm;
        if (ttVar != null) {
            return ttVar.c();
        }
        return 0;
    }

    public boolean y() {
        com.byazt.eu.tt.tt("TMe", "enable_bid_result_return = " + this.lo);
        com.byazt.eu.tt.tt("TMe", "enable_bid_result_return_for_baidu = " + this.pu);
        return iu() || j();
    }

    public boolean a() {
        return this.tx;
    }

    public boolean b() {
        return this.sv == 1;
    }

    public boolean bx() {
        if (TextUtils.isEmpty(com.byazt.bp.c.t().u())) {
            return false;
        }
        com.byazt.eu.tt.tt("TTMediationSDK_SDK_Init", "--==----- isConfigLoadAndAdnInit: " + i());
        if (com.byazt.ck.uj.c().ve() || !i()) {
            com.byazt.eu.tt.tt("TTMediationSDK_SDK_Init", "--==----- isConfigLoadAndAdnInit 2");
            return false;
        }
        com.byazt.eu.tt.tt("TTMediationSDK_SDK_Init", "--==----- isConfigLoadAndAdnInit 1");
        return true;
    }

    public void c(boolean z10) {
        this.tx = z10;
    }

    public boolean cu() {
        try {
            return Integer.valueOf(this.sl).intValue() > 1;
        } catch (Exception unused) {
        }
    }

    public boolean d() {
        if (!yf()) {
            return false;
        }
        Boolean bool = this.gu.get("type_full_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean da() {
        return this.f18983b == 1;
    }

    public boolean eo() {
        if (!yf()) {
            return false;
        }
        Boolean bool = this.gu.get("type_native_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean gr() {
        if (!yf()) {
            return false;
        }
        Boolean bool = this.gu.get("type_banner_control");
        return bool == null || !bool.booleanValue();
    }

    public long gt() {
        if (this.os == Long.MIN_VALUE) {
            this.os = com.byazt.rq.c.c().getLong("cache_refresh_interval", 12L);
        }
        return this.os * 60 * 60 * 1000;
    }

    public boolean gu() {
        if (!yf()) {
            return false;
        }
        Boolean bool = this.gu.get("ad_event_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean h() {
        if (!yf()) {
            return false;
        }
        Boolean bool = this.gu.get("type_reward_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean i() {
        return this.gr.get();
    }

    public boolean m() {
        return this.f19002u == 1;
    }

    public boolean md() {
        if (!yf()) {
            return false;
        }
        Boolean bool = this.gu.get("type_feed_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean my() {
        return this.f18993m;
    }

    public boolean n() {
        return this.kk;
    }

    public long nb() {
        return com.byazt.ck.tt.c().ve();
    }

    public String nu() {
        return this.yp;
    }

    public boolean or() {
        try {
            return Integer.valueOf(this.sl).intValue() > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean p() {
        if (!yf()) {
            return false;
        }
        Boolean bool = this.gu.get("type_splash_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean pf() {
        return (com.byazt.ck.uj.c().ve() || com.byazt.ck.ve.c().uj()) ? false : true;
    }

    public int qp() {
        return com.byazt.ck.tt.c().tt();
    }

    public long qy() {
        if (this.f18999r == Long.MIN_VALUE) {
            this.f18999r = com.byazt.rq.c.c().getLong("non_splash_ad_timeout", 0L);
        }
        return this.f18999r;
    }

    public String rh() {
        return this.f19006z;
    }

    public long rl() {
        if (this.oz == Long.MIN_VALUE) {
            this.oz = com.byazt.rq.c.c().getLong("splash_ad_timeout", 0L);
        }
        return this.oz;
    }

    public int sl() {
        return com.byazt.ck.c.c(this.iu.get());
    }

    public boolean sp() {
        return this.f19003v;
    }

    public String t() {
        return this.f19004x;
    }

    public int tt() {
        return this.kp;
    }

    public String u() {
        return this.f18989i;
    }

    public boolean uj() {
        return this.f18998q;
    }

    public boolean ve() {
        n nVarC;
        if (this.dz == -1 && (nVarC = com.byazt.rq.c.c()) != null) {
            String string = nVarC.getString("app_abtest", null);
            if (!TextUtils.isEmpty(string)) {
                this.yp = string;
                try {
                    x(new JSONObject(this.yp));
                } catch (JSONException e10) {
                    com.byazt.nr.m.c(e10);
                }
            }
        }
        return this.dz == 1;
    }

    public boolean x() {
        return this.f19005y == 1;
    }

    public String yp() {
        if (this.ve == null) {
            this.ve = com.byazt.rq.c.c().getString(f.f80400c, null);
        }
        return this.ve;
    }

    public boolean yv() {
        if (!yf()) {
            return false;
        }
        Boolean bool = this.gu.get("type_interactionfull_control");
        return bool == null || !bool.booleanValue();
    }

    public String z() {
        return this.rh;
    }

    public boolean zb() {
        return this.f18986da > 0;
    }

    public boolean zm() {
        if (!yf()) {
            return false;
        }
        Boolean bool = this.gu.get("type_interaction_control");
        return bool == null || !bool.booleanValue();
    }

    private String a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.f19007zb.put(next, com.byazt.nbs.ve.c(next, jSONObject.optJSONObject(next)));
        }
        return jSONObject.toString();
    }

    private void da(JSONObject jSONObject) {
        this.md.clear();
        if (jSONObject != null) {
            try {
                Iterator<String> itKeys = jSONObject.keys();
                if (itKeys != null) {
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                        ArrayList arrayList = new ArrayList();
                        if (jSONArrayOptJSONArray != null) {
                            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                                if (jSONArrayOptJSONArray.get(i10) != null) {
                                    arrayList.add(jSONArrayOptJSONArray.get(i10).toString());
                                }
                            }
                        }
                        if (!TextUtils.isEmpty(next) && !arrayList.isEmpty()) {
                            this.md.put(next, arrayList);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private void i(JSONObject jSONObject) {
        this.f18997p.clear();
        this.yv = 0;
        if (jSONObject == null) {
            return;
        }
        this.yv = jSONObject.optInt("if_sample", 0);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("call_stack_path");
        if (jSONObjectOptJSONObject != null) {
            try {
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                if (itKeys != null) {
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        String strOptString = jSONObjectOptJSONObject.optString(next);
                        if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(strOptString)) {
                            this.f18997p.put(next, strOptString);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private String n(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return "";
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray(next);
                if (jSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        arrayList.add(com.byazt.nbs.ve.c(next, jSONArray.optJSONObject(i10)));
                    }
                    this.cu.put(next, arrayList);
                }
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
            }
        }
        return jSONObject.toString();
    }

    private String sl(JSONObject jSONObject) {
        this.gu.clear();
        if (jSONObject == null) {
            return null;
        }
        try {
            if (jSONObject.optBoolean("ad_event_control")) {
                this.gu.put("ad_event_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_banner_control")) {
                this.gu.put("type_banner_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_interaction_control")) {
                this.gu.put("type_interaction_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_interactionfull_control")) {
                this.gu.put("type_interactionfull_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_splash_control")) {
                this.gu.put("type_splash_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_feed_control")) {
                this.gu.put("type_feed_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_reward_control")) {
                this.gu.put("type_reward_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_full_control")) {
                this.gu.put("type_full_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_native_control")) {
                this.gu.put("type_native_control", Boolean.TRUE);
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    private String sp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        this.f19002u = jSONObject.optInt("fetch_ad_type", 0);
        return jSONObject.toString();
    }

    private void t(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f18996nb.clear();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.f18996nb.put(next, Integer.valueOf(jSONObject.optInt(next)));
        }
    }

    private void u(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.pf.clear();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.pf.put(next, Integer.valueOf(jSONObject.optInt(next)));
        }
    }

    private String uj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        this.to = new com.byazt.xx.tt(jSONObject);
        return jSONObject.toString();
    }

    private void x(JSONObject jSONObject) {
        try {
            String strOptString = jSONObject.optString("app_ab_version");
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString.trim()) || TextUtils.equals(strOptString.trim(), "null")) {
                jSONObject.remove("app_ab_version");
            }
            JSONObject jSONObject2 = new JSONObject(jSONObject.optString("app_ab_params"));
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("mediation_settings");
            if (jSONObjectOptJSONObject != null) {
                this.bx = jSONObjectOptJSONObject.optInt("ad_request_optmize");
                boolean z10 = true;
                this.f18998q = jSONObjectOptJSONObject.optInt("applog_cypher") == 2;
                this.kk = jSONObjectOptJSONObject.optInt("reward_cypher") == 2;
                this.tx = jSONObjectOptJSONObject.optInt("config_cypher") == 2;
                if (jSONObjectOptJSONObject.optInt("exchange_cypher") != 2) {
                    z10 = false;
                }
                this.f19003v = z10;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("init_opt");
            if (jSONObjectOptJSONObject2 != null) {
                this.dz = jSONObjectOptJSONObject2.optInt("init_7600");
            } else {
                this.dz = 0;
            }
            JSONObject jSONObjectOptJSONObject3 = jSONObject2.optJSONObject("event_upload_settings");
            if (jSONObjectOptJSONObject3 != null) {
                this.f18983b = jSONObjectOptJSONObject3.optInt("show_upload");
            }
        } catch (Throwable unused) {
        }
    }

    public com.byazt.nbs.tt c(String str, int i10, int i11) {
        return com.byazt.ck.uj.c().c(str, i10, i11);
    }

    public com.byazt.nbs.c tt(String str) {
        return com.byazt.ck.ve.c().c(str);
    }

    private void tt(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.os = jSONObject.optLong("cache_refresh_interval", 12L);
        this.oz = jSONObject.optLong("splash_ad_timeout", 0L);
        this.f18999r = jSONObject.optLong("non_splash_ad_timeout", 0L);
    }

    public long c(int i10, String str) {
        com.byazt.nbs.tt ttVarC = c(str, i10, 101);
        return ttVarC != null ? ttVarC.ic() : BaseCloudFileManager.ACK_TIMEOUT;
    }

    public void uj(String str) {
        try {
            n nVarC = com.byazt.rq.c.c();
            if ("2".equals(str)) {
                this.gu.put("active_control", Boolean.TRUE);
                nVarC.put("all_active_control", true);
            } else {
                this.gu.put("active_control", Boolean.FALSE);
                nVarC.put("all_active_control", false);
            }
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public com.byazt.nbs.c c(String str) {
        return com.byazt.ck.ve.c().c(str);
    }

    public boolean c(String str, String str2, int i10) {
        List<da> listL;
        com.byazt.nbs.tt ttVarC = com.byazt.ck.uj.c().c(str, i10, 101);
        if (ttVarC == null || (listL = ttVarC.l()) == null) {
            return false;
        }
        for (da daVar : listL) {
            if (daVar != null && TextUtils.equals(daVar.rh(), str2)) {
                return daVar.sv();
            }
        }
        return false;
    }

    public boolean tt(String str, int i10) {
        return (com.byazt.ck.ve.c().uj() || com.byazt.ck.uj.c().ve() || com.byazt.ck.uj.c().c(str, i10, 101) == null) ? false : true;
    }

    private String tt(JSONArray jSONArray) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONArray != null) {
            ConcurrentHashMap<String, com.byazt.hr.tt> concurrentHashMap = new ConcurrentHashMap<>();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("break_request_error_code")) != null) {
                    ArrayList arrayList = new ArrayList();
                    for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                        arrayList.add(jSONArrayOptJSONArray.optString(i11));
                    }
                    com.byazt.hr.tt ttVar = new com.byazt.hr.tt();
                    ttVar.c(jSONObjectOptJSONObject.optLong("break_request_duration"));
                    ttVar.c(arrayList);
                    concurrentHashMap.put(jSONObjectOptJSONObject.optString(MediationConstant.EXTRA_ADN_NAME), ttVar);
                }
            }
            com.byazt.hr.ve.c().c(concurrentHashMap);
            return jSONArray.toString();
        }
        com.byazt.hr.ve.c().c(null);
        return null;
    }

    public List<com.byazt.nbs.ve> a(String str) {
        return this.cu.get(str);
    }

    public boolean ve(String str) {
        return com.byazt.ck.ve.c().tt(str);
    }

    private String ve(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        this.bm = new com.byazt.bg.tt(jSONObject);
        return jSONObject.toString();
    }

    public boolean c(String str, int i10) {
        com.byazt.nbs.tt ttVarC;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return com.byazt.ck.uj.c().ve() || (ttVarC = com.byazt.ck.uj.c().c(str, i10, 101)) == null || ttVarC.pf() == i10;
    }

    public void uj(int i10) {
        this.eo = i10;
    }

    private String ve(JSONArray jSONArray) {
        JSONArray jSONArrayOptJSONArray;
        JSONArray jSONArrayOptJSONArray2;
        if (jSONArray != null) {
            ConcurrentHashMap<String, List<com.byazt.hr.tt>> concurrentHashMap = new ConcurrentHashMap<>();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString(MediationConstant.EXTRA_ADN_NAME);
                    if (!TextUtils.isEmpty(strOptString) && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("break_request_error_code")) != null && (jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("rit_list")) != null) {
                        ArrayList arrayList = new ArrayList();
                        for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                            arrayList.add(jSONArrayOptJSONArray.optString(i11));
                        }
                        com.byazt.hr.tt ttVar = new com.byazt.hr.tt();
                        ttVar.c(jSONObjectOptJSONObject.optLong("break_request_duration"));
                        ttVar.c(arrayList);
                        ArrayList arrayList2 = new ArrayList();
                        for (int i12 = 0; i12 < jSONArrayOptJSONArray2.length(); i12++) {
                            arrayList2.add(jSONArrayOptJSONArray2.optString(i12));
                        }
                        ttVar.tt(arrayList2);
                        List<com.byazt.hr.tt> arrayList3 = concurrentHashMap.get(strOptString);
                        if (arrayList3 == null) {
                            arrayList3 = new ArrayList<>();
                        }
                        arrayList3.add(ttVar);
                        concurrentHashMap.put(strOptString, arrayList3);
                    }
                }
            }
            yp.c().c(concurrentHashMap);
            return jSONArray.toString();
        }
        yp.c().c(null);
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:68:0x02ea A[DONT_GENERATE, PHI: r1 r2 r3 r4
      0x02ea: PHI (r1v2 com.byazt.qe.ve) = (r1v3 com.byazt.qe.ve), (r1v77 com.byazt.qe.ve) binds: [B:82:0x031d, B:67:0x02e4] A[DONT_GENERATE, DONT_INLINE]
      0x02ea: PHI (r2v1 org.json.JSONObject) = (r2v2 org.json.JSONObject), (r2v51 org.json.JSONObject) binds: [B:82:0x031d, B:67:0x02e4] A[DONT_GENERATE, DONT_INLINE]
      0x02ea: PHI (r3v0 com.byazt.sc.tt) = (r3v1 com.byazt.sc.tt), (r3v17 com.byazt.sc.tt) binds: [B:82:0x031d, B:67:0x02e4] A[DONT_GENERATE, DONT_INLINE]
      0x02ea: PHI (r4v0 boolean) = (r4v1 boolean), (r4v11 boolean) binds: [B:82:0x031d, B:67:0x02e4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:81:0x0319 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:84:0x0320 A[DONT_GENERATE, DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x0322 A[DONT_GENERATE] */
    @Override // com.byazt.qe.c
    public void c(JSONObject jSONObject, final boolean z10, boolean z11, JSONObject jSONObject2) {
        int i10;
        boolean z12;
        com.byazt.sc.tt ttVar;
        Throwable th;
        final String strOptString;
        final JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        final String strTt;
        final String strVe;
        final String strSp;
        final String strSl;
        final JSONObject jSONObjectOptJSONObject3;
        final JSONObject jSONObjectOptJSONObject4;
        final JSONObject jSONObjectOptJSONObject5;
        final JSONObject jSONObjectOptJSONObject6;
        final String strA;
        final String strN;
        final String strC;
        final String strVe2;
        final String strUj;
        final JSONArray jSONArrayOptJSONArray;
        final String str;
        ve veVar = this;
        JSONObject jSONObject3 = jSONObject2;
        if (jSONObject == null) {
            return;
        }
        try {
            try {
                if (z11) {
                    try {
                        i10 = 3;
                        if (veVar.iu.get() < 3) {
                            veVar.f19000s = jSONObject;
                        } else if (z11) {
                            if (com.byazt.sx.ve.ve()) {
                                veVar.c(false, jSONObject3, (com.byazt.sc.tt) null);
                            }
                        } else {
                            if (!z10) {
                                com.byazt.tjo.c.c().ve();
                            }
                            veVar.c(false, jSONObject3, (com.byazt.sc.tt) null);
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        ttVar = null;
                        z12 = false;
                        try {
                            com.byazt.nr.m.c(th);
                            if (!z11) {
                                return;
                            } else {
                                return;
                            }
                        } finally {
                            if (z11) {
                                if (com.byazt.sx.ve.ve()) {
                                    veVar.c(z12, jSONObject3, ttVar);
                                }
                                com.byazt.tjo.c.c().tt();
                            }
                            if (!z10) {
                                com.byazt.tjo.c.c().ve();
                            }
                            veVar.c(z12, jSONObject3, ttVar);
                        }
                    }
                    return;
                }
                i10 = z10 ? 2 : 6;
                com.byazt.eu.n.uj(new Runnable() { // from class: com.byazt.qe.ve.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String strC2;
                        String strC3;
                        String strC4;
                        String strC5;
                        String strC6;
                        String strC7;
                        String strC8;
                        String strC9;
                        n nVarC = com.byazt.rq.c.c();
                        nVarC.put("is_trusteeship_monetize", ve.this.kp);
                        nVarC.put("share_cache_enable", ve.this.f19005y);
                        nVarC.put(f.f80400c, ve.this.ve);
                        nVarC.put("max_age", ve.this.uj);
                        nVarC.put("max_expire_time", ve.this.f18995n);
                        nVarC.put("ab_version", ve.this.f18982a);
                        nVarC.put("ab_params", ve.this.sp);
                        nVarC.put(bm.O, ve.this.f19004x);
                        nVarC.put("transparent_params", ve.this.f18989i);
                        nVarC.put("if_test", ve.this.eo);
                        nVarC.put("network_permission", ve.this.f18986da);
                        nVarC.put("ecpm_precision_level", ve.this.sl);
                        nVarC.put("fetch_primerit_level", ve.this.f19001t);
                        nVarC.put("cache_refresh_interval", ve.this.os);
                        nVarC.put("splash_ad_timeout", ve.this.oz);
                        nVarC.put("non_splash_ad_timeout", ve.this.f18999r);
                        nVarC.put("app_abtest", ve.this.yp);
                        nVarC.put("module_control", strSl);
                        nVarC.put("tt_app_log_url", ve.this.rh);
                        nVarC.put("break_request_times", ve.this.my);
                        nVarC.put("break_request_hold_time", ve.this.gt);
                        nVarC.put("ex_info", ve.this.sv);
                        nVarC.put("if_enable_label", ve.this.or);
                        nVarC.put("cpm_expire_time", ve.this.f18984c);
                        JSONObject jSONObject4 = jSONObjectOptJSONObject;
                        nVarC.put("key_supervisor_feature", jSONObject4 != null ? jSONObject4.toString() : "");
                        nVarC.put("custom_adn_sample_ratio", (float) ve.this.f18987h);
                        nVarC.put("enable_label_return", ve.this.f18990ic);
                        nVarC.put("dynamic_policy_enable", ve.this.f18988hd);
                        nVarC.put("behavior_policy_enable", ve.this.lt);
                        nVarC.put("limit_p_a", ve.this.lr);
                        nVarC.put("limit_p_r", ve.this.f18992l);
                        nVarC.put("enable_bid_result_return", ve.this.lo);
                        nVarC.put("enable_bid_result_return_for_baidu", ve.this.pu);
                        nVarC.put("enable_bid_result_return_for_ks", ve.this.tk);
                        JSONObject jSONObject5 = jSONObjectOptJSONObject3;
                        if (jSONObject5 != null) {
                            nVarC.put("call_stack", jSONObject5.toString());
                        } else {
                            nVarC.put("call_stack", "");
                        }
                        JSONObject jSONObject6 = jSONObjectOptJSONObject4;
                        if (jSONObject6 != null) {
                            nVarC.put("custom_adn_feature", jSONObject6.toString());
                        } else {
                            nVarC.put("custom_adn_feature", "");
                        }
                        JSONObject jSONObject7 = jSONObjectOptJSONObject5;
                        if (jSONObject7 != null) {
                            nVarC.put("timeout_req", jSONObject7.toString());
                        } else {
                            nVarC.put("timeout_req", "");
                        }
                        JSONObject jSONObject8 = jSONObjectOptJSONObject6;
                        if (jSONObject8 != null) {
                            nVarC.put("is_callback", jSONObject8.toString());
                        } else {
                            nVarC.put("is_callback", "");
                        }
                        String str2 = strOptString;
                        if (str2 == null || TextUtils.isEmpty(str2)) {
                            nVarC.remove("server_dist_host");
                        } else {
                            String strC10 = com.byazt.vx.c.c(strOptString, com.byazt.vx.tt.c());
                            if (strC10 != null) {
                                nVarC.put("server_dist_host", strC10);
                            }
                        }
                        String str3 = strTt;
                        if (str3 != null && (strC9 = com.byazt.vx.c.c(str3, com.byazt.vx.tt.c())) != null) {
                            nVarC.put("adn_control_conf", strC9);
                        }
                        if (TextUtils.isEmpty(strVe)) {
                            nVarC.remove("rit_adn_control_conf");
                        } else {
                            nVarC.put("rit_adn_control_conf", strVe);
                        }
                        String str4 = strSp;
                        if (str4 != null) {
                            nVarC.put("network_conf", str4);
                        }
                        if (!TextUtils.isEmpty(strA) && (strC8 = com.byazt.vx.c.c(strA, com.byazt.vx.tt.c())) != null) {
                            nVarC.put("label_outputs", strC8);
                        }
                        if (!TextUtils.isEmpty(strN) && (strC7 = com.byazt.vx.c.c(strN, com.byazt.vx.tt.c())) != null) {
                            nVarC.put("label_group_infos", strC7);
                        }
                        if (!TextUtils.isEmpty(strC) && (strC6 = com.byazt.vx.c.c(strC, com.byazt.vx.tt.c())) != null) {
                            nVarC.put("dynamic_rules", strC6);
                        }
                        if (!TextUtils.isEmpty(ve.this.aw) && (strC5 = com.byazt.vx.c.c(ve.this.aw, com.byazt.vx.tt.c())) != null) {
                            nVarC.put("ex_", strC5);
                        }
                        if (!TextUtils.isEmpty(strVe2) && (strC4 = com.byazt.vx.c.c(strVe2, com.byazt.vx.tt.c())) != null) {
                            nVarC.put("dynamic_policy", strC4);
                        }
                        if (!TextUtils.isEmpty(strUj) && (strC3 = com.byazt.vx.c.c(strUj, com.byazt.vx.tt.c())) != null) {
                            nVarC.put("behavior_policy", strC3);
                        }
                        if (!TextUtils.isEmpty(str) && (strC2 = com.byazt.vx.c.c(str, com.byazt.vx.tt.c())) != null) {
                            nVarC.put("inter_full_refresh_cfg", strC2);
                        }
                        JSONArray jSONArray = jSONArrayOptJSONArray;
                        if (jSONArray == null || jSONArray.length() <= 0) {
                            nVarC.remove("gm_req_sr");
                        } else {
                            String strC11 = com.byazt.vx.c.c(jSONArrayOptJSONArray.toString(), com.byazt.vx.tt.c());
                            if (strC11 != null) {
                                nVarC.put("gm_req_sr", strC11);
                            }
                        }
                        nVarC.put("is_config_from_assert", z10);
                        nVarC.put("has_config_in_sp", true);
                    }
                });
                if (z11) {
                    if (com.byazt.sx.ve.ve()) {
                        ttVar = null;
                        z12 = false;
                        veVar = this;
                        jSONObject3 = jSONObject2;
                    }
                    return;
                }
                if (!z10) {
                    com.byazt.tjo.c.c().ve();
                }
                c(false, jSONObject2, (com.byazt.sc.tt) null);
                return;
            } catch (Throwable th3) {
                th = th3;
                ttVar = null;
                z12 = false;
                veVar = this;
                jSONObject3 = jSONObject2;
                com.byazt.nr.m.c(th);
                if (!z11) {
                    return;
                }
            }
            com.byazt.eu.tt.tt("BehaviorPolicy", "mBehaviorPolicyConfigEnable=" + veVar.lt);
            strUj = veVar.uj(jSONObject.optJSONObject("behavior_policy"));
            JSONObject jSONObjectOptJSONObject7 = jSONObject.optJSONObject("inter_full_refresh_cfg");
            String string = jSONObjectOptJSONObject7 != null ? jSONObjectOptJSONObject7.toString() : null;
            com.byazt.cz.c.c(string);
            com.byazt.qv.uj.c(jSONObject.optJSONObject("csj_code_mapping_conf"));
            jSONArrayOptJSONArray = jSONObject.optJSONArray("gm_req_sr");
            com.byazt.qv.n.c(jSONArrayOptJSONArray);
            veVar.tt(jSONObjectOptJSONObject2);
            com.byazt.jj.c.c(false);
            str = string;
        } catch (Throwable th4) {
            th = th4;
            ttVar = null;
            z12 = false;
            com.byazt.nr.m.c(th);
            if (!z11) {
                return;
            } else {
                return;
            }
        }
        veVar.c(i10);
        JSONObject jSONObjectOptJSONObject8 = jSONObject.optJSONObject("app_abtest");
        if (jSONObjectOptJSONObject8 != null) {
            veVar.x(jSONObjectOptJSONObject8);
            veVar.yp = jSONObjectOptJSONObject8.toString();
        } else {
            veVar.yp = "";
        }
        veVar.kp = jSONObject.optInt("is_trusteeship_monetize");
        veVar.f19005y = jSONObject.optInt("share_cache_enable");
        veVar.ve = jSONObject.optString(f.f80400c);
        veVar.uj = jSONObject.optLong("max_age");
        veVar.f18995n = System.currentTimeMillis() + veVar.uj;
        veVar.f18982a = jSONObject.optString("ab_version");
        veVar.sp = jSONObject.optString("ab_params");
        veVar.f19004x = jSONObject.optString(bm.O);
        veVar.f18989i = jSONObject.optString("transparent_params");
        veVar.eo = jSONObject.optInt("if_test");
        veVar.f18986da = jSONObject.optInt("if_get_detail_return");
        veVar.sl = jSONObject.optString("ecpm_precision_level");
        veVar.f19001t = jSONObject.optString("fetch_primerit_level");
        strOptString = jSONObject.optString("url");
        veVar.nu = jSONObject.optInt("innerLog", 0);
        veVar.rh = jSONObject.optString("app_log_url", "log-api.pangolin-sdk-toutiao.com/service/2/app_log/");
        veVar.my = jSONObject.optLong("break_request_times", 0L);
        veVar.gt = jSONObject.optLong("break_request_hold_time", 10000L);
        veVar.sv = jSONObject.optInt("ex_info", 0);
        veVar.aw = jSONObject.optString("ex_");
        veVar.or = jSONObject.optInt("if_enable_label", 0);
        veVar.f18984c = jSONObject.optInt("ecpm_ttl", 259200000);
        int iOptInt = jSONObject.optInt("support_tnc", Integer.MAX_VALUE);
        veVar.rl = iOptInt;
        if (iOptInt != 0 && iOptInt != 1) {
            veVar.rl = 1;
        }
        veVar.f18987h = jSONObject.optDouble("custom_adn_sample_ratio", 0.0d);
        int iOptInt2 = jSONObject.optInt("enable_label_return", 0);
        veVar.f18990ic = iOptInt2;
        if (iOptInt2 != 0 && iOptInt2 != 1) {
            veVar.f18990ic = 0;
        }
        veVar.f18988hd = jSONObject.optInt("dynamic_policy_enable", 0);
        com.byazt.eu.tt.tt("DynamicPolicy", "mDynamicPolicyEnable=" + veVar.f18988hd);
        int i11 = veVar.f18988hd;
        if (i11 != 0 && i11 != 1) {
            veVar.f18988hd = 0;
        }
        int i12 = veVar.lr;
        int i13 = veVar.f18992l;
        JSONObject jSONObjectOptJSONObject9 = jSONObject.optJSONObject("p_c");
        if (jSONObjectOptJSONObject9 != null) {
            veVar.lr = jSONObjectOptJSONObject9.optInt("l_p_a", 0);
            veVar.f18992l = jSONObjectOptJSONObject9.optInt("l_p_r", 0);
        } else {
            veVar.lr = 0;
            veVar.f18992l = 0;
        }
        if (i12 != veVar.lr || i13 != veVar.f18992l) {
            com.byazt.px.n.c();
        }
        com.byazt.oi.c.c().c(veVar.my, veVar.gt);
        veVar.lo = jSONObject.optInt("enable_bid_result_return", 0);
        veVar.pu = jSONObject.optInt("enable_bid_result_return_for_baidu", 0);
        veVar.tk = jSONObject.optInt("enable_bid_result_return_for_ks", 0);
        jSONObjectOptJSONObject = jSONObject.optJSONObject("supervisor_feature");
        if (jSONObjectOptJSONObject != null) {
            com.byazt.vx.yp.c(true);
            com.byazt.vx.yp.c(jSONObjectOptJSONObject);
        } else {
            com.byazt.vx.yp.c(false);
        }
        jSONObjectOptJSONObject2 = jSONObject.optJSONObject("app_common_config");
        com.byazt.ck.tt.c().c(jSONObjectOptJSONObject2);
        com.byazt.ck.ve.c().c(jSONObject.optJSONObject("adn_init_conf"));
        strTt = veVar.tt(jSONObject.optJSONArray("adn_control_conf"));
        strVe = veVar.ve(jSONObject.optJSONArray("rit_adn_control_conf"));
        strSp = veVar.sp(jSONObject.optJSONObject("poor_network_config"));
        com.byazt.ck.uj.c().c(jSONObject.optJSONArray("rit_conf"), z10, z11);
        strSl = veVar.sl(jSONObject.optJSONObject("module_disable_control"));
        jSONObjectOptJSONObject3 = jSONObject.optJSONObject("call_stack_conf");
        veVar.i(jSONObjectOptJSONObject3);
        jSONObjectOptJSONObject4 = jSONObject.optJSONObject("custom_adn_feature");
        veVar.da(jSONObjectOptJSONObject4);
        jSONObjectOptJSONObject5 = jSONObject.optJSONObject("timeout_req");
        veVar.t(jSONObjectOptJSONObject5);
        jSONObjectOptJSONObject6 = jSONObject.optJSONObject("is_callback");
        veVar.u(jSONObjectOptJSONObject6);
        strA = veVar.a(jSONObject.optJSONObject("label_outputs"));
        strN = veVar.n(jSONObject.optJSONObject("label_group_infos"));
        strC = veVar.c(jSONObject.optJSONArray("dynamic_rules"));
        strVe2 = veVar.ve(jSONObject.optJSONObject("dynamic_policy"));
        veVar.lt = jSONObject.optInt("behavior_policy_enable", 0);
    }

    public uj n(String str) {
        return this.qp.get(str);
    }

    public boolean tt(int i10) {
        if (!yf()) {
            return false;
        }
        if (i10 == 1) {
            return gr();
        }
        if (i10 == 2) {
            return zm();
        }
        if (i10 == 3) {
            return p();
        }
        if (i10 == 5) {
            return md() && eo();
        }
        if (i10 == 10) {
            return yv();
        }
        if (i10 == 7) {
            return h();
        }
        if (i10 != 8) {
            return true;
        }
        return d();
    }

    public void ve(int i10) {
        this.rl = i10;
    }

    @Override // com.byazt.qe.c
    public void c(JSONObject jSONObject, JSONObject jSONObject2, boolean z10) {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_abtest");
            if (jSONObjectOptJSONObject != null) {
                this.f19006z = jSONObjectOptJSONObject.toString();
            } else {
                this.f19006z = "";
            }
            if (!z10) {
                com.byazt.eu.n.uj(new Runnable() { // from class: q1.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96460b.g();
                    }
                });
                if (z10) {
                    if (com.byazt.sx.ve.ve()) {
                        c(false, jSONObject2, (com.byazt.sc.tt) null);
                    }
                    com.byazt.tjo.c.c().tt();
                    return;
                }
                return;
            }
            if (this.iu.get() >= 3) {
                if (z10) {
                    if (com.byazt.sx.ve.ve()) {
                        c(false, jSONObject2, (com.byazt.sc.tt) null);
                    }
                    com.byazt.tjo.c.c().tt();
                    return;
                }
                return;
            }
            this.f19000s = jSONObject;
            c(3);
            com.byazt.ck.ve.c().c(jSONObject.optJSONObject("adn_init_conf"));
            com.byazt.ck.uj.c().c(jSONObject.optJSONArray("rit_conf"), false, true);
            tt(jSONObject.optJSONObject("app_common_config"));
            com.byazt.eu.n.uj(new Runnable() { // from class: q1.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96461b.ir();
                }
            });
            if (z10) {
                if (com.byazt.sx.ve.ve()) {
                    c(false, jSONObject2, (com.byazt.sc.tt) null);
                }
                com.byazt.tjo.c.c().tt();
            }
        } catch (Throwable unused) {
            if (!z10) {
            } else {
                if (com.byazt.sx.ve.ve()) {
                }
            }
        }
    }

    private String c(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            try {
                uj.c(jSONArray.optJSONObject(i10), this.qp);
            } catch (Exception e10) {
                com.byazt.eu.tt.ve(MediationConstant.TAG, "maybe some rit parse dynamic rules fail .....");
                com.byazt.nr.m.c(e10);
            }
        }
        return jSONArray.toString();
    }

    public void c(com.byazt.sc.tt ttVar) {
        this.f18994ma = ttVar;
    }

    public void c(final boolean z10, final JSONObject jSONObject, com.byazt.sc.tt ttVar) {
        if (ttVar != null) {
            this.f18994ma = ttVar;
        }
        final boolean zPf = pf();
        if (zPf) {
            a.c(jSONObject, "s-config_done");
        }
        final int iSl = sl();
        com.byazt.px.c.tt().c(com.byazt.bp.tt.getContext(), z10, zPf, jSONObject, new com.byazt.sc.tt() { // from class: com.byazt.qe.ve.2
            @Override // com.byazt.sc.tt
            public void c() {
                com.byazt.eu.tt.uj("TTMediationSDK_SDK_Init", "MSDK init finish.........hasConfig:" + zPf);
                if (zPf) {
                    ve.this.gr.set(true);
                    ve.this.f();
                    a.c(jSONObject, "s-end");
                    if (ve.this.f18994ma != null) {
                        ve.this.f18994ma.c();
                    }
                    com.byazt.eu.n.uj(new Runnable() { // from class: com.byazt.qe.ve.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!ve.this.zm.get()) {
                                ve.this.zm.set(true);
                                int iC = com.byazt.px.c.c();
                                long jElapsedRealtime = SystemClock.elapsedRealtime() - com.byazt.sx.ve.c();
                                a.c(jSONObject, "s-event_end");
                                a.c();
                                HashMap map = new HashMap();
                                map.put("config_use_type", Integer.valueOf(iSl));
                                if (ve.this.f18991j) {
                                    map.put("is_import_cfg", Boolean.valueOf(ve.this.f18991j));
                                }
                                if (com.byazt.sx.uj.c()) {
                                    com.byazt.eu.tt.c("TMe", "-----==---- 正常上报sdk_init_end");
                                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                    com.byazt.sx.uj.c(jElapsedRealtime, iC, z10 ? 1 : 0, -1L, jSONObject, map);
                                } else {
                                    com.byazt.eu.tt.c("TMe", "-----==---- 延时上报sdk_init_end");
                                    AnonymousClass2 anonymousClass3 = AnonymousClass2.this;
                                    com.byazt.sx.uj.c(jElapsedRealtime, iC, z10 ? 1 : 0, jSONObject, map);
                                }
                                com.byazt.bg.c.c();
                                com.byazt.eu.tt.c(MediationConstant.TAG, "sdk init end, duration: " + jElapsedRealtime + ", initAdnCount: " + iC + ", isFromLocalConfig: " + z10);
                            }
                            tt.c(com.byazt.bp.tt.tt()).c(new com.byazt.yf.n() { // from class: com.byazt.qe.ve.2.1.1
                                @Override // com.byazt.yf.n
                                public void c(List<String> list) {
                                    com.byazt.eu.tt.c("TMe", "初始化更新pangle配置成功");
                                }
                            });
                        }
                    });
                }
            }
        });
    }

    @Override // com.byazt.qe.c
    public void c(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.optInt("state_code") != 30004) {
            return;
        }
        n nVarC = com.byazt.rq.c.c();
        this.uj = jSONObject.optLong("max_age");
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = this.uj;
        this.f18995n = jCurrentTimeMillis + j10;
        nVarC.put("max_age", j10);
        nVarC.put("max_expire_time", this.f18995n);
    }

    public void c(int i10) {
        if (i10 == 3) {
            if (this.iu.get() == 1) {
                i10 = 5;
            } else if (this.iu.get() == 2) {
                i10 = 4;
            }
        }
        if (i10 < this.iu.get()) {
            return;
        }
        this.iu.set(i10);
    }

    @Override // com.byazt.qe.c
    public void c(boolean z10, JSONObject jSONObject) {
        JSONObject jSONObjectMd;
        try {
            n nVarC = com.byazt.rq.c.c();
            boolean z11 = nVarC.getBoolean("has_config_in_sp", false);
            if (!z11 && (jSONObjectMd = com.byazt.bp.c.t().md()) != null) {
                this.f18991j = true;
                if (jSONObjectMd.optInt("cypher", -1) == 4) {
                    String strOptString = jSONObjectMd.optString("message");
                    com.byazt.dna.n nVarA = eo.a();
                    String strDecryptWithCBC = nVarA != null ? nVarA.decryptWithCBC(strOptString) : null;
                    if (!TextUtils.isEmpty(strDecryptWithCBC)) {
                        try {
                            jSONObjectMd = new JSONObject(strDecryptWithCBC);
                        } catch (Throwable th) {
                            com.byazt.nr.m.c(th);
                            com.byazt.eu.tt.c(MediationConstant.TAG, ">>>>> setting data error: " + th.toString());
                        }
                    }
                }
                int iOptInt = jSONObjectMd.optInt("state_code");
                String strOptString2 = jSONObjectMd.optString("message");
                int[] iArr = {0};
                if (iOptInt == 20000 && !TextUtils.isEmpty(jSONObjectMd.toString())) {
                    iArr[0] = 2;
                    if (jSONObjectMd.optString(PluginConstants.KEY_APP_ID).equals(com.byazt.bp.c.t().u())) {
                        com.byazt.eu.tt.tt(MediationConstant.TAG, "本地配置解析成功");
                        c(jSONObjectMd, true, false, jSONObject);
                        if (this.f19000s != null) {
                            c(this.f19000s, jSONObject, true);
                        }
                        com.byazt.vq.c.c().n();
                        com.byazt.bp.c.t().c((JSONObject) null);
                        this.f19000s = null;
                        if (!com.byazt.ck.ve.c().uj()) {
                            c(1);
                        }
                        if (!z10) {
                            c(true, (JSONObject) null, (com.byazt.sc.tt) null);
                        }
                        if (!com.byazt.ck.uj.c().ve() || qy.c(com.byazt.bp.tt.getContext())) {
                            return;
                        }
                        com.byazt.vq.c.c().c(-2, "本地没有配置/当前网络不可用");
                        return;
                    }
                    com.byazt.eu.tt.tt(MediationConstant.TAG, "本地配置appid或appkey非法");
                } else {
                    com.byazt.eu.tt.tt(MediationConstant.TAG, " 解密错误或者解析错误：stateCode=" + iOptInt + "，msg=" + strOptString2);
                }
            }
            com.byazt.bp.c.t().c((JSONObject) null);
            this.f19000s = null;
            if (z11) {
                c(nVarC);
            } else {
                ma();
            }
            if (z10) {
                com.byazt.jj.c.c(true);
            }
            if (!com.byazt.ck.ve.c().uj()) {
                c(1);
            }
            if (!z10) {
                c(true, (JSONObject) null, (com.byazt.sc.tt) null);
            }
            if (!com.byazt.ck.uj.c().ve() || qy.c(com.byazt.bp.tt.getContext())) {
                return;
            }
            com.byazt.vq.c.c().c(-2, "本地没有配置/当前网络不可用");
        } catch (Throwable unused) {
            if (!com.byazt.ck.ve.c().uj()) {
                c(1);
            }
            if (!z10) {
                c(true, (JSONObject) null, (com.byazt.sc.tt) null);
            }
            if (!com.byazt.ck.uj.c().ve() || qy.c(com.byazt.bp.tt.getContext())) {
                return;
            }
            com.byazt.vq.c.c().c(-2, "本地没有配置/当前网络不可用");
        }
    }

    private void c(n nVar) throws JSONException {
        this.kp = nVar.getInt("is_trusteeship_monetize", 0);
        this.f19005y = nVar.getInt("share_cache_enable", 0);
        this.ve = nVar.getString(f.f80400c, null);
        this.uj = nVar.getLong("max_age", 0L);
        this.f18995n = nVar.getLong("max_expire_time", 0L);
        this.f18982a = nVar.getString("ab_version", "");
        this.sp = nVar.getString("ab_params", "");
        this.f19004x = nVar.getString(bm.O, "");
        this.f18989i = nVar.getString("transparent_params", "");
        this.eo = nVar.getInt("if_test", 0);
        this.f18986da = nVar.getInt("network_permission", 0);
        this.sl = nVar.getString("ecpm_precision_level", "0");
        this.f19001t = nVar.getString("fetch_primerit_level", "0");
        this.rh = nVar.getString("tt_app_log_url", "log-api.pangolin-sdk-toutiao.com/service/2/app_log/");
        this.my = nVar.getLong("break_request_times", 0L);
        this.gt = nVar.getLong("break_request_hold_time", 10000L);
        this.sv = nVar.getInt("ex_info", 0);
        this.or = nVar.getInt("if_enable_label", 0);
        this.f18984c = nVar.getInt("cpm_expire_time", 259200000);
        this.f18987h = nVar.getFloat("custom_adn_sample_ratio", 0.0f);
        this.f18990ic = nVar.getInt("enable_label_return", 0);
        this.f18988hd = nVar.getInt("dynamic_policy_enable", 0);
        this.lt = nVar.getInt("behavior_policy_enable", 0);
        this.lr = nVar.getInt("limit_p_a", 0);
        this.f18992l = nVar.getInt("limit_p_r", 0);
        this.lo = nVar.getInt("enable_bid_result_return", 0);
        this.pu = nVar.getInt("enable_bid_result_return_for_baidu", 0);
        this.tk = nVar.getInt("enable_bid_result_return_for_ks", 0);
        com.byazt.oi.c.c().c(this.my, this.gt);
        String string = nVar.getString("network_conf", null);
        if (!TextUtils.isEmpty(string)) {
            sp(new JSONObject(string));
        }
        String string2 = nVar.getString("adn_control_conf", null);
        if (!TextUtils.isEmpty(string2)) {
            if (!string2.startsWith("[") && !string2.startsWith("{")) {
                string2 = com.byazt.vx.c.tt(string2, com.byazt.vx.tt.c());
            }
            tt(new JSONArray(string2));
        }
        String string3 = nVar.getString("rit_adn_control_conf", null);
        if (!TextUtils.isEmpty(string3)) {
            ve(new JSONArray(string3));
        }
        String string4 = nVar.getString("module_control", null);
        if (!TextUtils.isEmpty(string4)) {
            sl(new JSONObject(string4));
        }
        boolean z10 = nVar.getBoolean("all_active_control", false);
        if (z10) {
            this.gu.put("active_control", Boolean.valueOf(z10));
        }
        String string5 = nVar.getString("call_stack", null);
        if (!TextUtils.isEmpty(string5)) {
            i(new JSONObject(string5));
        }
        String string6 = nVar.getString("custom_adn_feature", null);
        if (!TextUtils.isEmpty(string6)) {
            da(new JSONObject(string6));
        }
        String string7 = nVar.getString("timeout_req", null);
        if (!TextUtils.isEmpty(string7)) {
            t(new JSONObject(string7));
        }
        String string8 = nVar.getString("is_callback", null);
        if (!TextUtils.isEmpty(string8)) {
            u(new JSONObject(string8));
        }
        String string9 = nVar.getString("key_supervisor_feature", null);
        if (!TextUtils.isEmpty(string9)) {
            com.byazt.vx.yp.c(true);
            com.byazt.vx.yp.c(new JSONObject(string9));
        } else {
            com.byazt.vx.yp.c(false);
        }
        String string10 = nVar.getString("label_outputs", null);
        if (!TextUtils.isEmpty(string10)) {
            if (!string10.startsWith("[") && !string10.startsWith("{")) {
                string10 = com.byazt.vx.c.tt(string10, com.byazt.vx.tt.c());
            }
            if (!TextUtils.isEmpty(string10)) {
                a(new JSONObject(string10));
            }
        }
        String string11 = nVar.getString("label_group_infos", null);
        if (!TextUtils.isEmpty(string11)) {
            if (!string11.startsWith("[") && !string11.startsWith("{")) {
                string11 = com.byazt.vx.c.tt(string11, com.byazt.vx.tt.c());
            }
            if (!TextUtils.isEmpty(string11)) {
                n(new JSONObject(string11));
            }
        }
        String string12 = nVar.getString("dynamic_rules", null);
        if (!TextUtils.isEmpty(string12)) {
            if (!string12.startsWith("[") && !string12.startsWith("{")) {
                string12 = com.byazt.vx.c.tt(string12, com.byazt.vx.tt.c());
            }
            if (!TextUtils.isEmpty(string12)) {
                c(new JSONArray(string12));
            }
        }
        String string13 = nVar.getString("dynamic_policy", null);
        if (!TextUtils.isEmpty(string13)) {
            if (!string13.startsWith("[") && !string13.startsWith("{")) {
                string13 = com.byazt.vx.c.tt(string13, com.byazt.vx.tt.c());
            }
            if (!TextUtils.isEmpty(string13)) {
                ve(new JSONObject(string13));
            }
        }
        String string14 = nVar.getString("behavior_policy", null);
        if (!TextUtils.isEmpty(string14)) {
            if (!string14.startsWith("[") && !string14.startsWith("{")) {
                string14 = com.byazt.vx.c.tt(string14, com.byazt.vx.tt.c());
            }
            if (!TextUtils.isEmpty(string14)) {
                uj(new JSONObject(string14));
            }
        }
        String string15 = nVar.getString("inter_full_refresh_cfg", null);
        if (!TextUtils.isEmpty(string15)) {
            String strTt = com.byazt.vx.c.tt(string15, com.byazt.vx.tt.c());
            if (!TextUtils.isEmpty(strTt)) {
                com.byazt.cz.c.c(strTt);
            }
        }
        String string16 = nVar.getString("gm_req_sr", null);
        if (!TextUtils.isEmpty(string16)) {
            String strTt2 = com.byazt.vx.c.tt(string16, com.byazt.vx.tt.c());
            if (!TextUtils.isEmpty(strTt2)) {
                try {
                    com.byazt.qv.n.c(new JSONArray(strTt2));
                } catch (JSONException e10) {
                    com.byazt.nr.m.c(e10);
                }
            }
        }
        String string17 = nVar.getString("ex_", null);
        if (!TextUtils.isEmpty(string17) && !string17.startsWith("[") && !string17.startsWith("{")) {
            this.aw = com.byazt.vx.c.tt(string17, com.byazt.vx.tt.c());
        }
        String string18 = nVar.getString("app_simple_abtest", null);
        if (!TextUtils.isEmpty(string18)) {
            this.f19006z = string18;
        }
        if (TextUtils.isEmpty(this.yp)) {
            String string19 = nVar.getString("app_abtest", null);
            if (TextUtils.isEmpty(string19)) {
                return;
            }
            this.yp = string19;
            try {
                x(new JSONObject(this.yp));
            } catch (JSONException e11) {
                com.byazt.nr.m.c(e11);
            }
        }
    }

    @Override // com.byazt.qe.c
    public void c() {
        this.f18993m = pf();
    }

    public List<String> c(List<String> list) {
        if (list != null && list.size() > 0) {
            if (com.byazt.ck.uj.c().ve()) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                if (com.byazt.ck.uj.c().c(str, 0, 101) == null) {
                    arrayList.add(str);
                }
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
        }
        return null;
    }

    public void c(m mVar) {
        if (mVar == null) {
            return;
        }
        if (bx()) {
            mVar.c();
            return;
        }
        synchronized (this.qy) {
            if (!this.qy.contains(mVar)) {
                this.qy.add(mVar);
            }
        }
    }

    public boolean c(long j10) {
        return j10 < ((long) this.f18984c);
    }
}
