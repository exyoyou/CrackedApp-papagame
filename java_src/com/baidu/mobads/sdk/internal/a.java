package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.sigmob.sdk.base.models.ClickCommon;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7328a = "none";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7329b = "text";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f7330c = "static_image";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f7331d = "gif";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f7332e = "rich_media";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f7333f = "html";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f7334g = "hybrid";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f7335h = "video";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f7336i = "live";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f7337j = 1750000;
    private String A;
    private String B;
    private String C;
    private String D;
    private String E;
    private String F;
    private String G;
    private int H;
    private String I;
    private int J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private String P;
    private List<String> R;
    private JSONObject S;
    private long T;
    private long U;
    private String V;
    private String W;
    private String X;
    private String Y;
    private String Z;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private String f7338aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private String f7339ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private JSONObject f7340ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private int f7341ad;
    private int ae;
    private int af;
    private List<String> ag;
    private String ai;
    private String aj;
    private JSONObject an;
    private JSONObject ao;
    private int ap;
    private String aq;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f7342k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f7343l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f7344m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f7345n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f7346o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f7347p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f7348q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f7349r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f7350s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f7352u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f7353v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f7354w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f7355x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f7356y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f7357z;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f7351t = 1;
    private String Q = "none";
    private int ah = 0;
    private int ak = 0;
    private int al = 0;
    private int am = 0;

    public static boolean a(int i10) {
        return (i10 < 28 || 31 == i10 || 32 == i10 || 38 == i10 || 39 == i10 || 40 == i10 || 42 < i10) ? false : true;
    }

    public String A() {
        return !TextUtils.isEmpty(this.f7353v) ? this.f7353v : this.f7352u;
    }

    public String B() {
        return this.f7354w;
    }

    public int C() {
        return this.ap;
    }

    public String D() {
        return this.aq;
    }

    public String E() {
        return this.f7355x;
    }

    public String F() {
        return this.D;
    }

    public String G() {
        return this.C;
    }

    public String H() {
        return this.E;
    }

    public String I() {
        return this.F;
    }

    public String J() {
        return this.G;
    }

    public long K() {
        return this.U;
    }

    public List<String> L() {
        return this.R;
    }

    public String M() {
        return this.V;
    }

    public JSONObject N() {
        return this.S;
    }

    public String O() {
        return this.Y;
    }

    public String P() {
        return this.Z;
    }

    public String Q() {
        return this.f7338aa;
    }

    public String R() {
        String str = this.f7339ab;
        return (str == null || str.length() <= 4) ? this.f7339ab : "";
    }

    public int S() {
        return this.af;
    }

    public List<String> T() {
        return this.ag;
    }

    public JSONObject U() {
        return this.f7340ac;
    }

    public int V() {
        return this.f7341ad;
    }

    public int W() {
        return this.ae;
    }

    public int X() {
        return this.ah;
    }

    public JSONObject Y() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("uniqueId", this.V);
            jSONObject.put("tit", this.f7342k);
            jSONObject.put("desc", this.f7343l);
            jSONObject.put(com.umeng.analytics.pro.f.S, this.f7356y);
            jSONObject.put("appname", this.f7348q);
            jSONObject.put("act", this.H);
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String Z() {
        return this.ai;
    }

    public String aa() {
        if (TextUtils.isEmpty(this.aj)) {
            return "";
        }
        try {
            long j10 = Long.parseLong(this.aj);
            int length = this.aj.length();
            return (j10 <= 100000 || length <= 5) ? "" : this.aj.substring(length - 4, length);
        } catch (Throwable th) {
            az.b(th);
            return "";
        }
    }

    public int ab() {
        if (this.ak > 0) {
            return this.al;
        }
        return 0;
    }

    public int ac() {
        return this.am;
    }

    public String b() {
        return this.f7343l;
    }

    public String c() {
        return this.f7344m;
    }

    public String d() {
        return this.f7345n;
    }

    public int e() {
        return this.f7346o;
    }

    public int f() {
        return this.f7347p;
    }

    public String g() {
        return this.f7348q;
    }

    public String h() {
        return this.W;
    }

    public String i() {
        return this.X;
    }

    public long j() {
        return this.f7349r;
    }

    public int k() {
        return this.f7350s;
    }

    public int l() {
        return this.f7351t;
    }

    public String m() {
        return this.f7356y;
    }

    public String n() {
        return this.f7357z;
    }

    public String o() {
        return this.A;
    }

    public String p() {
        return this.B;
    }

    public int q() {
        return this.H;
    }

    public String r() {
        return this.I;
    }

    public int s() {
        return this.J;
    }

    public int t() {
        return this.K;
    }

    public int u() {
        return this.L;
    }

    public int v() {
        return this.M;
    }

    public int w() {
        return this.N;
    }

    public int x() {
        return this.O;
    }

    public String y() {
        return this.Q;
    }

    public long z() {
        return this.T;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0145  */
    public static a a(JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        aVar.ao = jSONObject;
        aVar.S = jSONObject.optJSONObject("remoteParams");
        aVar.f7342k = jSONObject.optString("tit");
        aVar.f7343l = jSONObject.optString("desc");
        aVar.f7344m = jSONObject.optString("icon");
        aVar.f7345n = jSONObject.optString("w_picurl");
        aVar.f7346o = jSONObject.optInt(IAdInterListener.AdReqParam.WIDTH);
        aVar.f7347p = jSONObject.optInt("h");
        aVar.f7348q = jSONObject.optString("appname");
        aVar.W = jSONObject.optString("adLogo");
        aVar.X = jSONObject.optString("baiduLogo");
        aVar.f7341ad = jSONObject.optInt("region_click", 2);
        aVar.ae = jSONObject.optInt("dl_dialog", 2);
        aVar.f7339ab = jSONObject.optString(ClickCommon.CLICK_AREA_BTN);
        try {
            String strOptString = jSONObject.optString("control_flags");
            if (!TextUtils.isEmpty(strOptString)) {
                String strOptString2 = new JSONObject(strOptString).optString("innovate");
                if (!TextUtils.isEmpty(strOptString2)) {
                    JSONObject jSONObject3 = new JSONObject(strOptString2);
                    aVar.Y = jSONObject3.optString("gjico");
                    aVar.Z = jSONObject3.optString("gjtxt");
                    aVar.f7338aa = jSONObject3.optString("gjurl");
                }
            }
            String strOptString3 = jSONObject.optString("cloud_control");
            if (!TextUtils.isEmpty(strOptString3)) {
                JSONObject jSONObject4 = new JSONObject(strOptString3);
                if (jSONObject4.has("cta") && jSONObject4.optInt("cta", 1) == 0) {
                    aVar.f7339ab = "";
                }
                if (jSONObject4.has("marketing")) {
                    int iOptInt = jSONObject4.optInt("marketing", 0);
                    if (iOptInt == 1) {
                        JSONArray jSONArrayOptJSONArray = jSONObject4.optJSONArray("marketing_logo");
                        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                            int i10 = 0;
                            for (int i11 = 2; i10 < i11; i11 = 2) {
                                String strOptString4 = jSONArrayOptJSONArray.optString(i10);
                                if (!TextUtils.isEmpty(strOptString4)) {
                                    JSONObject jSONObject5 = new JSONObject(strOptString4);
                                    aVar.Y = jSONObject5.optString("gjico", aVar.Y);
                                    aVar.Z = jSONObject5.optString("gjtxt", aVar.Z);
                                    aVar.f7338aa = jSONObject5.optString("gjurl", aVar.f7338aa);
                                }
                                i10++;
                            }
                        }
                    } else if (iOptInt == 0) {
                        aVar.Y = "";
                        aVar.Z = "";
                        aVar.f7338aa = "";
                    }
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObject4.optJSONArray("btn_style");
                if (jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() <= 0) {
                    jSONObject2 = null;
                } else {
                    String strOptString5 = jSONArrayOptJSONArray2.optString(0);
                    if (TextUtils.isEmpty(strOptString5)) {
                        jSONObject2 = null;
                    } else {
                        jSONObject2 = new JSONObject(strOptString5);
                    }
                }
                if (jSONObject2 != null) {
                    aVar.af = jSONObject2.optInt("type", 0);
                    JSONArray jSONArrayOptJSONArray3 = jSONObject2.optJSONArray("colors");
                    if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() == 4) {
                        aVar.ag = new ArrayList();
                        for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
                            aVar.ag.add(jSONArrayOptJSONArray3.optString(i12));
                        }
                    }
                }
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        aVar.f7340ac = jSONObject.optJSONObject("monitors");
        aVar.f7349r = jSONObject.optLong("sz");
        aVar.f7350s = jSONObject.optInt("auto_play", 0);
        aVar.f7351t = jSONObject.optInt("auto_play_non_wifi", 1);
        aVar.f7356y = jSONObject.optString(com.umeng.analytics.pro.f.S);
        aVar.H = jSONObject.optInt("act");
        aVar.I = jSONObject.optString("apo", "");
        aVar.f7352u = jSONObject.optString("bidlayer", "");
        aVar.f7353v = jSONObject.optString("ads_bidlayer", "");
        aVar.f7354w = jSONObject.optString("enc_bid_price", "");
        aVar.f7355x = jSONObject.optString("author_display_name", "");
        aVar.J = jSONObject.optInt("container_width");
        aVar.K = jSONObject.optInt("container_height");
        aVar.L = jSONObject.optInt("size_type");
        int iOptInt2 = jSONObject.optInt("style_type");
        aVar.M = iOptInt2;
        aVar.N = a(jSONObject, iOptInt2, 29);
        aVar.f7357z = jSONObject.optString("vurl", "");
        aVar.O = jSONObject.optInt("duration", 0);
        String strOptString6 = jSONObject.optString("live_flv", "");
        aVar.A = strOptString6;
        if (TextUtils.isEmpty(strOptString6)) {
            aVar.A = jSONObject.optString("live_hls", "");
        }
        aVar.P = jSONObject.optString("type");
        aVar.B = jSONObject.optString(f7333f, null);
        aVar.D = jSONObject.optString("app_version", "");
        aVar.C = jSONObject.optString("publisher", "");
        aVar.G = jSONObject.optString("permission_link", "");
        aVar.E = jSONObject.optString("privacy_link", "");
        aVar.F = jSONObject.optString("function_link", "");
        aVar.ah = jSONObject.optInt("media_player_render", 0);
        aVar.ai = jSONObject.optString("qk", "");
        aVar.aj = jSONObject.optString("buyer", "");
        aVar.ak = jSONObject.optInt("is_ecafd_direct_ad", 0);
        aVar.al = jSONObject.optInt("ecafd_promote_bind", 0);
        aVar.am = jSONObject.optInt("ecafd_promote_order", 0);
        aVar.ap = jSONObject.optInt("act_time", 0);
        aVar.aq = jSONObject.optString("act_text", "");
        try {
            String strOptString7 = jSONObject.optString("media_key");
            if (!TextUtils.isEmpty(strOptString7)) {
                aVar.an = new JSONObject(strOptString7);
            }
        } catch (Throwable th2) {
            az.b(th2);
        }
        try {
            JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("morepics");
            if (jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray4.length() > 0) {
                aVar.R = new ArrayList();
                for (int i13 = 0; i13 < jSONArrayOptJSONArray4.length(); i13++) {
                    aVar.R.add(jSONArrayOptJSONArray4.getString(i13));
                }
            }
        } catch (Exception unused) {
        }
        if (TextUtils.isEmpty(aVar.B)) {
            String str = aVar.P;
            if (str != null) {
                if (str.equals("text")) {
                    aVar.P = "text";
                } else if (aVar.P.equals("image")) {
                    if (!TextUtils.isEmpty(aVar.f7345n)) {
                        int iLastIndexOf = aVar.f7345n.toLowerCase(Locale.getDefault()).lastIndexOf(46);
                        if ((iLastIndexOf >= 0 ? aVar.f7345n.toLowerCase(Locale.getDefault()).substring(iLastIndexOf) : "").contains(".gif")) {
                            aVar.Q = "gif";
                        } else {
                            aVar.Q = f7330c;
                        }
                    }
                } else if (aVar.P.equals(com.kuaishou.weapon.p0.t.f74898w)) {
                    aVar.Q = f7332e;
                } else if (aVar.P.equals("video")) {
                    aVar.Q = "video";
                } else if (aVar.P.equals("live")) {
                    aVar.Q = "live";
                }
            }
        } else {
            aVar.Q = f7333f;
        }
        JSONObject jSONObject6 = aVar.S;
        if (jSONObject6 != null) {
            aVar.T = jSONObject6.optLong("createTime", 0L);
            aVar.U = aVar.S.optLong("expireTime", f7337j);
            aVar.W = aVar.S.optString("adLogo", z.aO);
            aVar.X = aVar.S.optString("baiduLogo", z.aP);
            aVar.V = aVar.S.optString("uniqueId", "");
        }
        return aVar;
    }

    public String a(String str) {
        if (this.an == null) {
            return null;
        }
        JSONObject jSONObject = this.ao;
        JSONObject jSONObjectOptJSONObject = jSONObject != null ? jSONObject.optJSONObject("apo") : null;
        String strOptString = this.an.optString(str);
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        if (TextUtils.equals(strOptString, "fallback") && jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject.optString("fallback");
        }
        if (TextUtils.equals(strOptString, "page") && jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject.optString("page");
        }
        JSONObject jSONObject2 = this.ao;
        if (jSONObject2 != null) {
            return jSONObject2.optString(strOptString);
        }
        return null;
    }

    public static List<a> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                try {
                    arrayList.add(a(jSONArray.getJSONObject(i10)));
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    private static int a(JSONObject jSONObject, int i10, int i11) {
        String[] strArrSplit;
        int i12 = 0;
        if (jSONObject != null) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("st_op");
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("tp_id");
                    if (!TextUtils.isEmpty(strOptString) && strOptString.startsWith("opt_style_") && (strArrSplit = strOptString.substring(10).split("_")) != null && strArrSplit.length > 0) {
                        i12 = Integer.parseInt(strArrSplit[0]);
                    }
                }
            } catch (Throwable th) {
                bv.a().d(th.getMessage());
            }
        }
        if (a(i12)) {
            i10 = i12;
        } else if (!a(i10)) {
            i10 = i11;
        }
        if (i10 == 42) {
            return 41;
        }
        return i10;
    }

    public String a() {
        return this.f7342k;
    }
}
