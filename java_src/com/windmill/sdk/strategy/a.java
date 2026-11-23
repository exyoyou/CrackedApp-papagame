package com.windmill.sdk.strategy;

import android.text.TextUtils;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.wire.okio.ByteString;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Set<Integer> f87082o;
    private final int A;
    private final int B;
    private final int C;
    private final boolean D;
    private String E;
    private int H;
    private String J;
    private String K;
    private String L;
    private int M;
    private int N;
    private boolean O;
    private String P;
    private long Q;
    private int S;
    private String W;
    private String X;
    private String Y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f87083a;
    private String aA;
    private String aB;
    private boolean aC;
    private String aD;
    private String aE;
    private List<String> aF;
    private Integer aG;
    private Map<String, String> aH;
    private Map<String, String> aI;
    private Map<String, String> aJ;
    private Boolean aK;
    private String aL;
    private String aM;
    private Map<String, Object> aR;
    private HashMap<String, String> aT;
    private C1081a aU;
    private String aV;
    private int aW;
    private String aX;
    private Map<String, String> aY;
    private int aZ;
    private String ae;
    private int ag;
    private boolean ah;
    private int ai;
    private WMAdapterError am;
    private Float ar;
    private WeakReference<Object> au;
    private Integer av;
    private boolean aw;
    private int ay;
    private long az;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f87088b;

    /* JADX INFO: renamed from: ba, reason: collision with root package name */
    private String f87089ba;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f87093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Boolean f87094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f87095e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f87096f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f87097g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f87098h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f87099i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f87100j;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f87106q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f87107r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f87108s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    Map<String, Object> f87109t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f87113x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final String f87114y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final String f87115z;
    private Map<String, Object> F = new HashMap();
    private Map<String, Object> G = new HashMap();
    private String I = WMConstants.TIMER_STAGE_NONE;
    private boolean R = false;
    private int T = 0;
    private int U = 0;
    private int V = 0;
    private int Z = 0;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f87084aa = 0;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private int f87085ab = 0;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private int f87086ac = 0;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private int f87087ad = 0;
    private boolean af = true;
    private boolean aj = false;
    private boolean ak = false;
    private boolean al = false;
    private boolean an = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f87101k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f87102l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f87103m = false;
    private int ao = 0;
    private int ap = 0;
    private boolean aq = false;
    private double as = 1.0d;
    private int at = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Map<String, String> f87104n = null;
    private Map<String, String> ax = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f87105p = "";
    private int aN = 1;
    private volatile boolean aO = false;
    private boolean aP = false;
    private boolean aQ = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f87110u = 0;
    private boolean aS = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f87111v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f87112w = false;

    /* JADX INFO: renamed from: bb, reason: collision with root package name */
    private double f87090bb = -1.0d;

    /* JADX INFO: renamed from: bc, reason: collision with root package name */
    private String f87091bc = "";

    /* JADX INFO: renamed from: bd, reason: collision with root package name */
    private String f87092bd = "";
    private String be = "";
    private String bf = "";
    private String bg = "";

    /* JADX INFO: renamed from: com.windmill.sdk.strategy.a$a, reason: collision with other inner class name */
    public static class C1081a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f87116a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f87117b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f87118c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f87119d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        byte[] f87120e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f87121f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        String f87122g;

        public C1081a(String win_url, String lose_url, String bid_id, String response_str, ByteString response_bytes, int error_code, String error_message) {
            this.f87117b = win_url;
            this.f87118c = lose_url;
            this.f87116a = bid_id;
            this.f87119d = response_str;
            this.f87121f = error_code;
            this.f87122g = error_message;
            if (response_bytes != null) {
                this.f87120e = response_bytes.toByteArray();
            }
        }

        public void a(int channel_id) {
            JSONArray jSONArrayOptJSONArray;
            if (channel_id == 19 || channel_id == 45) {
                try {
                    if (TextUtils.isEmpty(this.f87119d) || (jSONArrayOptJSONArray = new JSONObject(this.f87119d).optJSONArray("adBids")) == null || jSONArrayOptJSONArray.length() <= 0) {
                        return;
                    }
                    JSONObject jSONObject = (JSONObject) jSONArrayOptJSONArray.get(0);
                    this.f87117b = jSONObject.optString("winNoticeUrl");
                    this.f87118c = jSONObject.optString("lossNoticeUrl");
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public String b() {
            return this.f87118c;
        }

        public String c() {
            return this.f87119d;
        }

        public String d() {
            return this.f87116a;
        }

        public byte[] e() {
            return this.f87120e;
        }

        public void b(String lose_url) {
            this.f87118c = lose_url;
        }

        public String a() {
            return this.f87117b;
        }

        public void a(String win_url) {
            this.f87117b = win_url;
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f87082o = hashSet;
        hashSet.add(16);
        hashSet.add(46);
        hashSet.add(13);
        hashSet.add(22);
        hashSet.add(19);
        hashSet.add(45);
        hashSet.add(21);
    }

    public a(int adType, String sig_placement_id, Map<String, String> dc_options, String strategy_id, String rule_id, boolean enable_ab_test, String callback_url, int ab_flag, int experiment_id, int sub_experiment_id, int traffic_weight, String impressUrl, long timestamp, int check_mask) {
        this.f87088b = false;
        this.f87093c = false;
        this.ay = 0;
        this.az = 0L;
        this.f87113x = adType;
        this.f87114y = sig_placement_id;
        this.aY = dc_options;
        this.f87115z = strategy_id;
        this.aV = rule_id;
        this.D = enable_ab_test;
        this.aX = callback_url;
        this.A = ab_flag;
        this.B = experiment_id;
        this.C = sub_experiment_id;
        this.aZ = traffic_weight;
        this.aB = impressUrl;
        this.az = timestamp;
        this.ay = check_mask;
        this.f87093c = false;
        this.f87088b = false;
    }

    public boolean A() {
        return this.aj;
    }

    public boolean B() {
        return this.aP;
    }

    public boolean C() {
        return this.aQ;
    }

    public boolean D() {
        return this.Z == 1 && this.f87084aa == 0;
    }

    public boolean E() {
        return this.Z == 1;
    }

    public boolean F() {
        return this.Z == 1 && this.f87084aa == 1;
    }

    public boolean G() {
        return this.ah;
    }

    public Map<String, Object> H() {
        return this.aR;
    }

    public final int I() {
        Object obj;
        try {
            Map<String, Object> map = this.G;
            if (map == null || (obj = map.get("templateType")) == null) {
                return -1;
            }
            return WMBidUtil.parseInt(obj).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public Map<String, Object> J() {
        return this.f87109t;
    }

    public int K() {
        return this.f87110u;
    }

    public int L() {
        return this.ag;
    }

    public Boolean M() {
        return this.f87094d;
    }

    public String N() {
        return this.f87095e;
    }

    public String O() {
        return this.f87096f;
    }

    public int P() {
        return this.f87097g;
    }

    public String Q() {
        return this.ae;
    }

    public int R() {
        return this.f87086ac;
    }

    public int S() {
        return this.f87087ad;
    }

    public int T() {
        return this.f87085ab;
    }

    public boolean U() {
        return this.aS;
    }

    public String V() {
        return this.W;
    }

    public String W() {
        return this.X;
    }

    public String X() {
        return this.Y;
    }

    public int Y() {
        return this.Z;
    }

    public int Z() {
        return this.f87084aa;
    }

    public String a() {
        return this.I;
    }

    public String aA() {
        return this.f87092bd;
    }

    public String aB() {
        return this.be;
    }

    public boolean aC() {
        return this.R;
    }

    public String aD() {
        return this.H + ":" + this.L + ":" + this.f87107r;
    }

    public int aE() {
        return this.M;
    }

    public void aF() {
        this.Q = 0L;
    }

    public boolean aG() {
        return this.N > 0 && System.currentTimeMillis() - this.Q > ((long) this.N) * 1000;
    }

    public long aH() {
        return this.Q;
    }

    public boolean aI() {
        return this.O;
    }

    public String aJ() {
        return this.P;
    }

    public int aK() {
        return this.f87113x;
    }

    public String aL() {
        return this.f87114y;
    }

    public int aM() {
        return this.N * 1000;
    }

    public int aN() {
        return this.H;
    }

    public boolean aO() {
        Map<String, Object> map = this.F;
        if (map == null) {
            return false;
        }
        Object obj = map.get("HbReturnSwitch");
        if (obj instanceof String) {
            return "1".equals(obj);
        }
        return false;
    }

    public String aP() {
        return this.E;
    }

    public String aQ() {
        return this.f87089ba;
    }

    public Map<String, Object> aR() {
        return this.G;
    }

    public String aS() {
        Map<String, Object> map = this.G;
        if (map == null) {
            return "";
        }
        String str = (String) map.get("nativeTemplateId");
        return !TextUtils.isEmpty(str) ? str : "";
    }

    public String aT() {
        Object obj;
        Map<String, Object> map = this.G;
        return (map == null || map.size() <= 0 || (obj = this.G.get(WMConstants.SUBTYPE)) == null) ? "" : (String) obj;
    }

    public Map<String, Object> aU() {
        return this.F;
    }

    public String aV() {
        return this.J;
    }

    public String aW() {
        return this.L;
    }

    public String aX() {
        return this.K;
    }

    public String aY() {
        return this.f87115z;
    }

    public int aZ() {
        return this.A;
    }

    public HashMap<String, String> aa() {
        if (this.aT == null) {
            this.aT = new HashMap<>();
        }
        return this.aT;
    }

    public int ab() {
        return this.S;
    }

    public int ac() {
        return this.T;
    }

    public int ad() {
        return this.U;
    }

    public int ae() {
        return this.V;
    }

    public C1081a af() {
        return this.aU;
    }

    public String ag() {
        return this.aV;
    }

    public int ah() {
        return this.aW;
    }

    public String ai() {
        return this.aX;
    }

    public Map<String, String> aj() {
        return this.aY;
    }

    public int ak() {
        return this.aZ;
    }

    public String al() {
        return this.aB;
    }

    public String am() {
        return this.aA;
    }

    public long an() {
        return this.az;
    }

    public int ao() {
        return this.ay;
    }

    public String ap() {
        return this.aE;
    }

    public String aq() {
        return this.aD;
    }

    public Map<String, String> ar() {
        return this.aH;
    }

    public Map<String, String> as() {
        return this.aJ;
    }

    public Boolean at() {
        return this.aK;
    }

    public String au() {
        return this.aL;
    }

    public String av() {
        return this.aM;
    }

    public String aw() {
        return this.bg;
    }

    public String ax() {
        return this.bf;
    }

    public double ay() {
        return this.f87090bb;
    }

    public String az() {
        return this.f87091bc;
    }

    public boolean b() {
        return this.aO;
    }

    public boolean ba() {
        return this.D;
    }

    public int bb() {
        return this.B;
    }

    public int bc() {
        return this.C;
    }

    public String bd() {
        return this.f87100j;
    }

    public int c() {
        return this.aN;
    }

    public boolean d() {
        return this.af;
    }

    public boolean e() {
        return this.aC;
    }

    public String f() {
        return this.f87105p;
    }

    public Integer g() {
        return this.av;
    }

    public Map<String, String> h() {
        return this.f87104n;
    }

    public Object i() {
        WeakReference<Object> weakReference = this.au;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public Map<String, String> j() {
        return this.aI;
    }

    public int k() {
        return this.at;
    }

    public Float l() {
        return this.ar;
    }

    public double m() {
        return this.as;
    }

    public boolean n() {
        return this.aw;
    }

    public int o() {
        return this.ao;
    }

    public int p() {
        return this.ap;
    }

    public boolean q() {
        return this.aq;
    }

    public int r() {
        return this.ai;
    }

    public int s() {
        return this.f87107r;
    }

    public int t() {
        return this.f87108s;
    }

    public String toString() {
        return "{adType=" + this.f87113x + ", wm_placement_id='" + this.f87114y + "', strategy_id='" + this.f87115z + "', ab_flag=" + this.A + ", experiment_id=" + this.B + ", sub_experiment_id=" + this.C + ", enable_ab_test=" + this.D + ", name='" + this.E + "', appOptions=" + this.F + ", options=" + this.G + ", channel_id=" + this.H + ", appId='" + this.J + "', appKey='" + this.K + "', placement_id='" + this.L + "', element_id=" + this.M + ", expired_time=" + this.N + ", isExtraCloseCallBack=" + this.O + ", sig_load_id='" + this.P + "', ready_time=" + this.Q + ", isRightObject=" + this.R + ", channel_timeout=" + this.S + ", frequency_day=" + this.T + ", frequency_hour=" + this.U + ", frequency_secs=" + this.V + ", eCpm='" + this.W + "', price='" + this.Y + "', hb=" + this.Z + ", bid_type=" + this.f87084aa + ", playIndex=" + this.f87085ab + ", loadPriority=" + this.f87086ac + ", playPriority=" + this.f87087ad + ", currency='" + this.ae + "', is_custom=" + this.f87094d + ", ad_init_class='" + this.f87095e + "', ad_class='" + this.f87096f + "', isLoaded=" + this.aS + ", option=" + this.aT + ", hbResponse=" + this.aU + ", rule_id='" + this.aV + "', bid_floor=" + this.aW + '}';
    }

    public boolean u() {
        return this.an;
    }

    public boolean v() {
        return this.ak;
    }

    public boolean w() {
        return this.al;
    }

    public Map<String, String> x() {
        Map<String, String> map = this.ax;
        if (map != null) {
            map.put("saas_load_id", this.P);
        }
        return this.ax;
    }

    public List<String> y() {
        return this.aF;
    }

    public WMAdapterError z() {
        return this.am;
    }

    private void j(Map<String, String> saasOptions) {
        if (saasOptions != null) {
            saasOptions.put("saas_ad_channel_id", String.valueOf(aN()));
            saasOptions.put("saas_adtype", String.valueOf(this.f87113x));
            saasOptions.put("saas_placement_id", String.valueOf(this.f87114y));
            saasOptions.put("saas_group_id", String.valueOf(this.f87115z));
            saasOptions.put("saas_ab_test", String.valueOf(this.A));
            saasOptions.put("saas_exp_id", String.valueOf(this.B));
            saasOptions.put("saas_subexp_id", String.valueOf(this.C));
            saasOptions.put("saas_element_id", String.valueOf(this.M));
            saasOptions.put("saas_bidding_type", String.valueOf(this.f87084aa));
            saasOptions.put("saas_sub_adtype", String.valueOf(this.f87107r));
            saasOptions.put("saas_sdkversion", WMConstants.SDK_VERSION);
            saasOptions.put("saas_appversion", ClientMetadata.getInstance().getAppVersion());
            Map<String, String> mapB = d.a().b();
            if (mapB != null) {
                String str = mapB.get("channel");
                String str2 = mapB.get("sub_channel");
                saasOptions.put("saas_channel_id", str);
                saasOptions.put("saas_sub_channel_id", str2);
            }
        }
    }

    public void a(String channel_plugin_version) {
        this.I = channel_plugin_version;
    }

    public void b(boolean is_ready) {
        this.af = is_ready;
    }

    public void c(boolean isReward) {
        this.aC = isReward;
    }

    public void d(boolean ad_source_end) {
        this.aw = ad_source_end;
    }

    public void e(boolean autoCloseAfterClick) {
        this.aq = autoCloseAfterClick;
    }

    public void f(int sub_ad_type) {
        this.f87107r = sub_ad_type;
    }

    public void g(int reward_type) {
        this.f87108s = reward_type;
    }

    public void h(boolean preload) {
        this.aj = preload;
    }

    public void k(boolean weight_switch) {
        this.ah = weight_switch;
    }

    public void l(int playPriority) {
        this.f87087ad = playPriority;
    }

    public void m(int playIndex) {
        this.f87085ab = playIndex;
    }

    public void n(int hb2) {
        this.Z = hb2;
    }

    public void o(int bid_type) {
        this.f87084aa = bid_type;
    }

    public void p(int frequency_day) {
        this.T = frequency_day;
    }

    public void q(int frequency_hour) {
        this.U = frequency_hour;
    }

    public void r(int frequency_secs) {
        this.V = frequency_secs;
    }

    public void s(int bid_floor) {
        this.aW = bid_floor;
    }

    public void t(int element_id) {
        this.M = element_id;
    }

    public void u(int expired_time) {
        this.N = expired_time;
    }

    public void v(int channel_id) {
        this.H = channel_id;
        if (af() != null) {
            af().a(channel_id);
        }
    }

    public void a(boolean reportHeaderBidding) {
        this.aO = reportHeaderBidding;
    }

    public void b(String ecpm) {
        this.f87105p = ecpm;
    }

    public void c(int ratio) {
        this.ao = ratio;
    }

    public void d(int autoCloseAfterShowTimer) {
        this.ap = autoCloseAfterShowTimer;
    }

    public void e(int render_type) {
        this.ai = render_type;
    }

    public void f(boolean hasAdShow) {
        this.an = hasAdShow;
    }

    public void g(boolean preloadSuccess) {
        this.ak = preloadSuccess;
    }

    public void h(int guaranteed_ad) {
        this.f87110u = guaranteed_ad;
    }

    public void i(boolean parallelPreload) {
        this.aP = parallelPreload;
    }

    public void k(int loadPriority) {
        this.f87086ac = loadPriority;
    }

    public void l(boolean loaded) {
        this.aS = loaded;
    }

    public void m(String adId) {
        this.aM = adId;
    }

    public void n(boolean extraCloseCallBack) {
        this.O = extraCloseCallBack;
    }

    public void o(String name) {
        this.E = name;
    }

    public void p(String sign) {
        this.f87089ba = sign;
    }

    public void q(String appId) {
        this.J = appId;
    }

    public void r(String placement_id) {
        this.L = placement_id;
    }

    public void s(String appKey) {
        this.K = appKey;
    }

    public void a(int biddingTokenState) {
        this.aN = biddingTokenState;
    }

    public void b(Map<String, String> saasChannelInfo) {
        this.aI = saasChannelInfo;
    }

    public void c(Map<String, String> saasOptions) {
        if (saasOptions != null) {
            if (this.ax == null) {
                HashMap map = new HashMap(saasOptions);
                this.ax = map;
                j(map);
            }
            this.ax.putAll(saasOptions);
        }
    }

    public void d(Map<String, Object> networkOption) {
        this.aR = networkOption;
    }

    public void e(Map<String, Object> customData) {
        this.f87109t = customData;
    }

    public void f(String ecpm) {
        this.W = ecpm;
    }

    public void g(String pecpm) {
        this.X = pecpm;
    }

    public void h(String price) {
        this.Y = price;
    }

    public void i(int tag) {
        this.ag = tag;
    }

    public void k(String m10) {
        this.aD = m10;
    }

    public void l(String crid) {
        this.aL = crid;
    }

    public void m(boolean rightObject) {
        this.R = rightObject;
    }

    public void n(String sig_load_id) {
        this.P = sig_load_id;
    }

    public void a(Integer order) {
        this.av = order;
    }

    public void b(int sdk_operation_bid_type) {
        this.at = sdk_operation_bid_type;
    }

    public void d(String ad_class) {
        this.f87096f = ad_class;
    }

    public void e(String currency) {
        this.ae = currency;
    }

    public void f(Map<String, String> mtEleOptions) {
        this.aH = mtEleOptions;
    }

    public void g(Map<String, String> channelOptions) {
        this.aJ = channelOptions;
    }

    public void h(Map<String, Object> options) {
        this.G.putAll(options);
    }

    public void i(String mask) {
        this.aA = mask;
    }

    public void a(Map<String, String> custom_setting) {
        this.f87104n = custom_setting;
    }

    public void b(Integer biddingTimeout) {
        this.aG = biddingTimeout;
    }

    public void i(Map<String, Object> options) {
        this.F.putAll(options);
    }

    public void a(Object channelObject) {
        a(channelObject, false);
    }

    public void b(Boolean isSaasAdx) {
        this.aK = isSaasAdx;
    }

    public void a(Object channelObject, boolean enableSet) {
        if (!enableSet || channelObject == null) {
            return;
        }
        this.au = new WeakReference<>(channelObject);
    }

    public void c(String ad_init_class) {
        this.f87095e = ad_init_class;
    }

    public void a(Float exchange_rate) {
        this.ar = exchange_rate;
    }

    public void a(double currency_coefficient) {
        this.as = currency_coefficient;
    }

    public void a(boolean preloadFail, WMAdapterError adapterError) {
        this.al = preloadFail;
        this.am = adapterError;
    }

    public void a(Boolean is_custom) {
        this.f87094d = is_custom;
    }

    public void a(HashMap<String, String> option) {
        this.aT = option;
    }

    public void a(int channel_timeout, int time_type) {
        if (time_type == 0) {
            this.S = channel_timeout * 1000;
        } else {
            this.S = channel_timeout;
        }
    }

    public void a(C1081a hbResponse) {
        this.aU = hbResponse;
    }

    public void a(List<String> banPkgName) {
        this.aF = banPkgName;
    }

    public void a(double highestPrice, String groVersion, String groPluginVersion, String groPriceSource, String groAdRootObjectClasspath, String groPkgName) {
        this.f87090bb = highestPrice;
        this.f87091bc = groVersion;
        this.f87092bd = groPluginVersion;
        this.be = groPriceSource;
        this.bf = groAdRootObjectClasspath;
        this.bg = groPkgName;
    }

    public void j(boolean parallelType) {
        this.aQ = parallelType;
    }

    public void j(int fill_type) {
        this.f87097g = fill_type;
    }

    public void j(String bid_floor_currenc) {
        this.aE = bid_floor_currenc;
    }

    public void a(long time) {
        this.Q = time;
    }
}
