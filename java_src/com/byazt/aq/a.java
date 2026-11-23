package com.byazt.aq;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.nr.m;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.sigmob.sdk.archives.tar.e;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okio.Utf8;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1950, 34})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f11667a;
    public int aw;
    public int az;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f11668b;
    public boolean bm;
    public int bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f11669c;

    /* JADX INFO: renamed from: ca, reason: collision with root package name */
    public long f11670ca = -1;
    public JSONObject cf;
    public String cl;
    public String cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f11671d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public float f11672da;
    public String di;
    public boolean dz;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<String> f11673e;
    public int ej;
    public String eo;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11674f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11675g;
    public String gk;
    public String gr;
    public String gt;
    public String gu;
    public boolean gx;
    public int gy;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public double f11676h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public int f11677hd;
    public int hg;
    public int hj;
    public int hq;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f11678i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public double f11679ic;
    public int ij;
    public List<c> ir;
    public int is;
    public String iu;
    public String iy;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f11680j;
    public boolean jg;
    public int jt;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11681k;
    public int kk;
    public boolean kp;
    public int kz;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f11682l;
    public int lo;
    public int lr;
    public boolean lt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f11683m;

    /* JADX INFO: renamed from: ma, reason: collision with root package name */
    public int f11684ma;
    public double md;
    public boolean mm;
    public boolean mq;
    public String my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f11685n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public int f11686nb;

    /* JADX INFO: renamed from: nc, reason: collision with root package name */
    public String f11687nc;
    public String nl;
    public boolean nt;
    public String nu;
    public String nx;
    public boolean ny;
    public String or;
    public int os;
    public int oz;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f11688p;
    public boolean pe;
    public int pf;
    public boolean pl;
    public double pn;
    public String pu;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public JSONObject f11689q;
    public boolean qp;
    public String qy;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f11690r;
    public String rh;
    public String rl;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f11691s;
    public int sd;
    public double sl;
    public float sp;
    public int sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public double f11692t;
    public boolean tk;
    public boolean to;
    public float tt;
    public boolean tx;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f11693u;
    public float uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f11694v;
    public float ve;
    public String vi;
    public JSONObject vp;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f11695w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f11696x;
    public int xd;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f11697y;
    public int yf;
    public JSONObject yo;
    public String yp;
    public int yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f11698z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public String f11699zb;
    public boolean zm;

    public static a c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        aVar.tt(jSONObject.optString("adType", "embeded"));
        aVar.z(jSONObject.optString("clickArea", "creative"));
        aVar.m(jSONObject.optString("clickTigger", "click"));
        aVar.ve(jSONObject.optString("fontFamily", "PingFangSC"));
        aVar.uj(jSONObject.optString("textAlign", ScrollClickView.DIR_LEFT));
        aVar.n(jSONObject.optString(TypedValues.Custom.S_COLOR, "#999999"));
        aVar.a(jSONObject.optString("bgColor", "transparent"));
        aVar.sp(jSONObject.optString("bgImgUrl", ""));
        aVar.md(jSONObject.optString("bgImgData", ""));
        aVar.x(jSONObject.optString("borderColor", "#000000"));
        aVar.i(jSONObject.optString("borderStyle", "solid"));
        aVar.da(jSONObject.optString("heightMode", "auto"));
        aVar.sl(jSONObject.optString("widthMode", "fixed"));
        aVar.t(jSONObject.optString("interactText", ""));
        aVar.ve(jSONObject.optBoolean("isShowBgControl", false));
        aVar.u(jSONObject.optString("interactBgColor", ""));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("interactPosition");
        if (jSONObjectOptJSONObject != null) {
            aVar.sp(jSONObjectOptJSONObject.optInt("translateY", 0));
            aVar.x(jSONObjectOptJSONObject.optInt("translateX", 0));
            aVar.uj(jSONObjectOptJSONObject.optDouble("scaleX", 0.0d));
            aVar.n(jSONObjectOptJSONObject.optDouble("scaleY", 0.0d));
        }
        aVar.yp(jSONObject.optString("interactType", ""));
        aVar.n(jSONObject.optInt("interactSlideDirection", -1));
        aVar.nu(jSONObject.optString("justifyHorizontal", "space-around"));
        aVar.rh(jSONObject.optString("justifyVertical", "flex-start"));
        aVar.tt(jSONObject.optDouble("timingStart"));
        aVar.ve(jSONObject.optDouble("timingEnd"));
        aVar.uj((float) jSONObject.optDouble("width", 0.0d));
        aVar.ve((float) jSONObject.optDouble("height", 0.0d));
        aVar.c((float) jSONObject.optDouble("borderRadius", 0.0d));
        aVar.tt((float) jSONObject.optDouble("borderSize", 0.0d));
        aVar.tt(jSONObject.optBoolean("interactValidate", false));
        aVar.i((float) jSONObject.optDouble("fontSize", 0.0d));
        aVar.n((float) jSONObject.optDouble("paddingBottom", 0.0d));
        aVar.a((float) jSONObject.optDouble("paddingLeft", 0.0d));
        aVar.sp((float) jSONObject.optDouble("paddingRight", 0.0d));
        aVar.x((float) jSONObject.optDouble("paddingTop", 0.0d));
        aVar.uj(jSONObject.optBoolean("lineFeed", false));
        aVar.i(jSONObject.optInt("lineCount", 0));
        aVar.a(jSONObject.optDouble("lineHeight", 1.2d));
        aVar.yp(jSONObject.optInt("letterSpacing", 0));
        aVar.n(jSONObject.optBoolean("isDataFixed", false));
        aVar.z(jSONObject.optInt("fontWeight"));
        aVar.a(jSONObject.optBoolean("lineLimit"));
        aVar.m(jSONObject.optInt("position"));
        aVar.my(jSONObject.optString("align"));
        aVar.sp(jSONObject.optBoolean("useLeft"));
        aVar.x(jSONObject.optBoolean("useRight"));
        aVar.i(jSONObject.optBoolean("useTop"));
        aVar.da(jSONObject.optBoolean("useBottom"));
        aVar.gt(jSONObject.optString("data"));
        aVar.tt(jSONObject.optJSONObject("i18n"));
        aVar.t(jSONObject.optInt("marginLeft"));
        aVar.u(jSONObject.optInt("marginRight"));
        aVar.da(jSONObject.optInt("marginTop"));
        aVar.sl(jSONObject.optInt("marginBottom"));
        aVar.nu(jSONObject.optInt("tagMaxCount"));
        aVar.sl(jSONObject.optBoolean("allowTextFlow"));
        aVar.rh(jSONObject.optInt("textFlowType"));
        aVar.my(jSONObject.optInt("textFlowDuration"));
        aVar.gt(jSONObject.optInt(ScrollClickView.DIR_LEFT));
        aVar.rl(jSONObject.optInt(ScrollClickView.DIR_RIGHT));
        aVar.qy(jSONObject.optInt("top"));
        aVar.gu(jSONObject.optInt("bottom"));
        aVar.rl(jSONObject.optString("alignItems", "flex-start"));
        aVar.qy(jSONObject.optString(HmInputMappingContent.FIELD_DIRECTION, ""));
        aVar.c(jSONObject.optBoolean("loop", false));
        aVar.gr(jSONObject.optInt("zIndex"));
        aVar.h(jSONObject.optInt("interactVisibleTime"));
        aVar.zm(jSONObject.optInt("interactHiddenTime"));
        aVar.u(jSONObject.optBoolean("interactEnableMask"));
        aVar.yp(jSONObject.optBoolean("interactWontHide"));
        aVar.c(jSONObject.optString("bgGradient"));
        aVar.eo(jSONObject.optInt("areaType"));
        aVar.zb(jSONObject.optInt("interactSlideThreshold", 0));
        aVar.qp(jSONObject.optInt("interactBottomDistance", com.byazt.sr.uj.c() ? 0 : 120));
        aVar.rh(jSONObject.optBoolean("openPlayableLandingPage", false));
        aVar.ve(jSONObject.optJSONObject("video"));
        aVar.uj(jSONObject.optJSONObject("image"));
        aVar.or(jSONObject.optInt("borderShadowExtent"));
        aVar.z(jSONObject.optBoolean("bgGauseBlur"));
        aVar.cu(jSONObject.optInt("bgGauseBlurRadius"));
        aVar.m(jSONObject.optBoolean("showTimeProgress", false));
        aVar.nu(jSONObject.optBoolean("showPlayButton", false));
        aVar.c(jSONObject.optDouble("bgColorCg", 0.0d));
        aVar.a(jSONObject.optInt("bgMaterialCenterCalcColor", 0));
        aVar.tt(jSONObject.optInt("borderTopLeftRadius", 0));
        aVar.c(jSONObject.optInt("borderTopRightRadius", 0));
        aVar.uj(jSONObject.optInt("borderBottomLeftRadius", 0));
        aVar.ve(jSONObject.optInt("borderBottomRightRadius", 0));
        aVar.n(jSONObject.optJSONObject("interactI18n"));
        aVar.gr(jSONObject.optString("imageObjectFit"));
        aVar.zm(jSONObject.optString("interactTitle"));
        aVar.d(jSONObject.optInt("interactTextPositionTop"));
        aVar.gu(jSONObject.optString("imageLottieTosPath"));
        aVar.t(jSONObject.optBoolean("animationsLoop"));
        aVar.yv(jSONObject.optInt("lottieAppNameMaxLength"));
        aVar.md(jSONObject.optInt("lottieAdDescMaxLength"));
        aVar.p(jSONObject.optInt("lottieAdTitleMaxLength"));
        aVar.p(jSONObject.optString("imageFlipSlideType"));
        aVar.my(jSONObject.optBoolean("isClickEventIntercept"));
        if (jSONObject.has("filterColor")) {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("filterColor");
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    arrayList.add(jSONArrayOptJSONArray.optString(i10));
                }
                aVar.tt(arrayList);
            }
        }
        try {
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("animations");
            if (jSONArrayOptJSONArray2 != null) {
                ArrayList arrayList2 = new ArrayList();
                for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray2.getJSONObject(i11);
                    c cVar = new c();
                    cVar.ve(jSONObject2.optString("animationType"));
                    cVar.c(jSONObject2.optDouble("animationDuration"));
                    cVar.tt(jSONObject2.optDouble("animationScaleX"));
                    cVar.ve(jSONObject2.optDouble("animationScaleY"));
                    cVar.uj(jSONObject2.optString("animationTimeFunction"));
                    cVar.uj(jSONObject2.optDouble("animationDelay"));
                    cVar.a(jSONObject2.optInt("animationIterationCount"));
                    cVar.n(jSONObject2.optString("animationDirection"));
                    cVar.n(jSONObject2.optDouble("animationInterval"));
                    cVar.c(jSONObject2.optInt("animationBorderWidth"));
                    cVar.c(jSONObject2.optLong("key"));
                    cVar.tt(jSONObject2.optInt("animationEffectWidth"));
                    cVar.ve(jSONObject2.optInt("animationSwing", 1));
                    cVar.uj(jSONObject2.optInt("animationTranslateX"));
                    cVar.n(jSONObject2.optInt("animationTranslateY"));
                    cVar.tt(jSONObject2.optString("animationRippleBackgroundColor"));
                    cVar.c(jSONObject2.optString("animationScaleDirection"));
                    cVar.sp(jSONObject2.optInt("animationFadeStart"));
                    cVar.x(jSONObject2.optInt("animationFadeEnd"));
                    cVar.a(jSONObject2.optString("animationFillMode"));
                    cVar.i(jSONObject2.optInt("animationBounceHeight"));
                    if (aVar.my() > 0.0d) {
                        cVar.uj(cVar.yp() + aVar.my());
                    }
                    arrayList2.add(cVar);
                }
                aVar.c(arrayList2);
            }
            if (jSONObject.has("triggerSlideMinDistance")) {
                aVar.yv(jSONObject.optString("triggerSlideDirection", "0"));
                aVar.c(jSONObject.optLong("triggerSlideMinDistance", 0L));
            }
        } catch (Exception e10) {
            m.c(e10);
        }
        return aVar;
    }

    private void md(String str) {
        this.cl = str;
    }

    public JSONObject a() {
        return this.cf;
    }

    public String aw() {
        return this.cu;
    }

    public int az() {
        return this.xd;
    }

    public int b() {
        return this.lo;
    }

    public int bm() {
        return this.pf;
    }

    public String bx() {
        return this.f11699zb;
    }

    public String ca() {
        return ("flip".equals(this.gk) || "slide".equals(this.gk)) ? this.gk : "slide";
    }

    public int cf() {
        return this.f11675g;
    }

    public List<String> cl() {
        return this.f11673e;
    }

    public double cu() {
        return this.md;
    }

    public String d() {
        return this.gr;
    }

    public String da() {
        return this.nx;
    }

    public boolean di() {
        return this.mm;
    }

    public int dz() {
        return this.oz;
    }

    public int ej() {
        return this.gy;
    }

    public boolean eo() {
        return this.zm;
    }

    public int f() {
        return this.f11697y;
    }

    public String g() {
        return this.f11680j;
    }

    public boolean gk() {
        return this.pe;
    }

    public String gr() {
        return this.rh;
    }

    public double gt() {
        return this.f11692t;
    }

    public String gu() {
        return this.nu;
    }

    public int gx() {
        return this.sd;
    }

    public int gy() {
        return this.f11681k;
    }

    public String h() {
        return this.gu;
    }

    public int hd() {
        return this.f11686nb;
    }

    public String hg() {
        return this.iy;
    }

    public int hj() {
        return this.f11684ma;
    }

    public String hq() {
        return this.di;
    }

    public int i() {
        return this.ij;
    }

    public boolean ic() {
        return this.qp;
    }

    public int ij() {
        return this.hj;
    }

    public String ir() {
        return this.iu;
    }

    public boolean is() {
        return this.ny;
    }

    public int iu() {
        return this.f11694v;
    }

    public String iy() {
        return this.f11687nc;
    }

    public int j() {
        return this.os;
    }

    public JSONObject jg() {
        return this.vp;
    }

    public int jt() {
        return this.hq;
    }

    public void k() {
        c(this, this.vp);
    }

    public boolean kk() {
        return this.lt;
    }

    public boolean kp() {
        return this.f11682l;
    }

    public int kz() {
        return this.ej;
    }

    public int l() {
        return this.sv;
    }

    public int lo() {
        return this.aw;
    }

    public int lr() {
        return this.bx;
    }

    public int lt() {
        return this.f11677hd;
    }

    public float m() {
        return this.f11696x;
    }

    public int ma() {
        return this.f11690r;
    }

    public boolean mm() {
        return this.pl;
    }

    public int mq() {
        List<c> list = this.ir;
        if (list == null) {
            return 0;
        }
        for (c cVar : list) {
            if ("translate".equals(cVar.i()) && cVar.sp() < 0) {
                return -cVar.sp();
            }
        }
        return 0;
    }

    public double my() {
        return this.sl;
    }

    public int n() {
        return this.f11695w;
    }

    public String nb() {
        return this.f11671d;
    }

    public long nc() {
        return this.f11670ca;
    }

    public boolean nl() {
        return this.gx;
    }

    public int nt() {
        return this.hg;
    }

    public float nu() {
        return this.f11678i;
    }

    public boolean ny() {
        return this.jg;
    }

    public int or() {
        return this.f11688p;
    }

    public boolean os() {
        return this.kp;
    }

    public String oz() {
        return this.f11668b;
    }

    public String p() {
        return this.rl;
    }

    public String pf() {
        return this.eo;
    }

    public String pl() {
        return this.vi;
    }

    public int pn() {
        return this.f11674f;
    }

    public double pu() {
        return this.f11679ic;
    }

    public String q() {
        return this.pu;
    }

    public double qp() {
        return this.f11676h;
    }

    public String qy() {
        return this.f11683m;
    }

    public JSONObject r() {
        return this.f11689q;
    }

    public float rh() {
        return this.f11672da;
    }

    public String rl() {
        return this.f11698z;
    }

    public int s() {
        return this.kk;
    }

    public void sd() {
        c(this, this.yo);
    }

    public float sl() {
        return this.f11669c;
    }

    public int sp() {
        return this.kz;
    }

    public String sv() {
        return this.or;
    }

    public float t() {
        return this.tt;
    }

    public int tk() {
        return this.lr;
    }

    public boolean to() {
        return this.bm;
    }

    public int tt() {
        return this.az;
    }

    public boolean tx() {
        return this.to;
    }

    public boolean u() {
        return this.f11685n;
    }

    public int uj() {
        return this.jt;
    }

    public boolean v() {
        return this.tk;
    }

    public int ve() {
        return this.is;
    }

    public List<c> vi() {
        return this.ir;
    }

    public String vp() {
        return this.nl;
    }

    public boolean w() {
        return this.nt;
    }

    public double x() {
        return this.pn;
    }

    public int xd() {
        return this.yf;
    }

    public boolean y() {
        return this.tx;
    }

    public int yf() {
        return this.f11691s;
    }

    public boolean yo() {
        return this.mq;
    }

    public float yp() {
        return this.f11667a;
    }

    public String yv() {
        return this.my;
    }

    public float z() {
        return this.sp;
    }

    public int zb() {
        return this.yv;
    }

    public String zm() {
        return this.cl;
    }

    public void a(int i10) {
        this.ij = i10;
    }

    public void cu(int i10) {
        this.hq = i10;
    }

    public void d(int i10) {
        this.ej = i10;
    }

    public void da(String str) {
        this.rl = str;
    }

    public void eo(int i10) {
        this.f11675g = i10;
    }

    public void gr(int i10) {
        this.f11684ma = i10;
    }

    public void gt(String str) {
        this.f11668b = str;
    }

    public void gu(int i10) {
        this.f11697y = i10;
    }

    public void h(int i10) {
        this.f11674f = i10;
    }

    public void i(float f10) {
        this.f11672da = f10;
    }

    public void m(String str) {
        this.f11699zb = str;
    }

    public String md() {
        return this.qy;
    }

    public void my(String str) {
        this.pu = str;
    }

    public void n(int i10) {
        this.kz = i10;
    }

    public void nu(String str) {
        this.or = str;
    }

    public void or(int i10) {
        this.xd = i10;
    }

    public void p(int i10) {
        this.sd = i10;
    }

    public void qp(int i10) {
        this.gy = i10;
    }

    public void qy(int i10) {
        this.f11691s = i10;
    }

    public void rh(String str) {
        this.cu = str;
    }

    public void rl(int i10) {
        this.f11690r = i10;
    }

    public void sl(String str) {
        this.qy = str;
    }

    public void sp(float f10) {
        this.f11696x = f10;
    }

    public void t(String str) {
        this.gu = str;
    }

    public void tt(int i10) {
        this.is = i10;
    }

    public void u(String str) {
        this.gr = str;
    }

    public void uj(int i10) {
        this.f11695w = i10;
    }

    public void ve(int i10) {
        this.jt = i10;
    }

    public void x(float f10) {
        this.f11678i = f10;
    }

    public void yp(String str) {
        this.f11671d = str;
    }

    public void yv(int i10) {
        this.hg = i10;
    }

    public void z(String str) {
        this.eo = str;
    }

    public void zb(int i10) {
        this.hj = i10;
    }

    public void zm(int i10) {
        this.yf = i10;
    }

    public void a(float f10) {
        this.sp = f10;
    }

    public void da(int i10) {
        this.pf = i10;
    }

    public void gr(String str) {
        this.nl = str;
    }

    public void gt(int i10) {
        this.oz = i10;
    }

    public void gu(String str) {
        this.di = str;
    }

    public void i(String str) {
        this.gt = str;
    }

    public void m(int i10) {
        this.lo = i10;
    }

    public void md(int i10) {
        this.f11681k = i10;
    }

    public void my(int i10) {
        this.os = i10;
    }

    public void n(float f10) {
        this.f11667a = f10;
    }

    public void nu(int i10) {
        this.kk = i10;
    }

    public void p(String str) {
        this.gk = str;
    }

    public void qy(String str) {
        this.f11680j = str;
    }

    public void rh(int i10) {
        this.f11694v = i10;
    }

    public void rl(String str) {
        this.iu = str;
    }

    public void sl(int i10) {
        this.bx = i10;
    }

    public void sp(String str) {
        this.rh = str;
    }

    public void t(int i10) {
        this.sv = i10;
    }

    public void tt(float f10) {
        this.tt = f10;
    }

    public void u(int i10) {
        this.aw = i10;
    }

    public void uj(float f10) {
        this.uj = f10;
    }

    public void ve(float f10) {
        this.ve = f10;
    }

    public void x(String str) {
        this.my = str;
    }

    public void yp(int i10) {
        this.f11677hd = i10;
    }

    public void yv(String str) {
        this.f11687nc = str;
    }

    public void z(int i10) {
        this.lr = i10;
    }

    public void zm(String str) {
        this.iy = str;
    }

    public void a(String str) {
        this.nu = str;
    }

    public void da(boolean z10) {
        this.kp = z10;
    }

    public void i(int i10) {
        this.f11686nb = i10;
    }

    public void m(boolean z10) {
        this.nt = z10;
    }

    public void my(boolean z10) {
        this.pe = z10;
    }

    public void n(String str) {
        this.f11683m = str;
    }

    public void nu(boolean z10) {
        this.gx = z10;
    }

    public void rh(boolean z10) {
        this.mm = z10;
    }

    public void sl(boolean z10) {
        this.tx = z10;
    }

    public void sp(int i10) {
        this.yv = i10;
    }

    public void t(boolean z10) {
        this.jg = z10;
    }

    public void tt(boolean z10) {
        this.f11685n = z10;
    }

    public void u(boolean z10) {
        this.pl = z10;
    }

    public void uj(String str) {
        this.f11698z = str;
    }

    public void ve(double d10) {
        this.f11692t = d10;
    }

    public void x(int i10) {
        this.f11688p = i10;
    }

    public void yp(boolean z10) {
        this.mq = z10;
    }

    public void z(boolean z10) {
        this.ny = z10;
    }

    public void a(double d10) {
        this.f11679ic = d10;
    }

    public void i(boolean z10) {
        this.tk = z10;
    }

    public void n(double d10) {
        this.f11676h = d10;
    }

    public void sp(boolean z10) {
        this.lt = z10;
    }

    public void tt(double d10) {
        this.sl = d10;
    }

    public void uj(double d10) {
        this.md = d10;
    }

    public void ve(String str) {
        this.yp = str;
    }

    public void x(boolean z10) {
        this.to = z10;
    }

    public void a(boolean z10) {
        this.f11682l = z10;
    }

    public void n(boolean z10) {
        this.bm = z10;
    }

    public void tt(String str) {
        this.f11693u = str;
    }

    public void uj(boolean z10) {
        this.qp = z10;
    }

    public void ve(boolean z10) {
        this.zm = z10;
    }

    public void n(JSONObject jSONObject) {
        this.cf = jSONObject;
    }

    public void tt(JSONObject jSONObject) {
        this.f11689q = jSONObject;
    }

    public void uj(JSONObject jSONObject) {
        this.vp = jSONObject;
    }

    public void ve(JSONObject jSONObject) {
        this.yo = jSONObject;
    }

    public void tt(List<String> list) {
        this.f11673e = list;
    }

    public boolean c() {
        return this.dz;
    }

    public void c(boolean z10) {
        this.dz = z10;
    }

    public void c(int i10) {
        this.az = i10;
    }

    public void c(double d10) {
        this.pn = d10;
    }

    public void c(String str) {
        this.nx = str;
    }

    public void c(float f10) {
        this.f11669c = f10;
    }

    public void c(List<c> list) {
        this.ir = list;
    }

    public void c(long j10) {
        this.f11670ca = j10;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void c(a aVar, JSONObject jSONObject) {
        if (aVar == null || jSONObject == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            next.hashCode();
            byte b10 = -1;
            switch (next.hashCode()) {
                case -2067713583:
                    if (next.equals("isShowBgControl")) {
                        b10 = 0;
                    }
                    break;
                case -1965619659:
                    if (next.equals("clickArea")) {
                        b10 = 1;
                    }
                    break;
                case -1912831834:
                    if (next.equals("triggerSlideDirection")) {
                        b10 = 2;
                    }
                    break;
                case -1885934767:
                    if (next.equals("bgImgUrl")) {
                        b10 = 3;
                    }
                    break;
                case -1822062213:
                    if (next.equals("lineCount")) {
                        b10 = 4;
                    }
                    break;
                case -1821293778:
                    if (next.equals("openPlayableLandingPage")) {
                        b10 = 5;
                    }
                    break;
                case -1813937113:
                    if (next.equals("lineLimit")) {
                        b10 = 6;
                    }
                    break;
                case -1578250488:
                    if (next.equals("interactBgColor")) {
                        b10 = 7;
                    }
                    break;
                case -1501175880:
                    if (next.equals("paddingLeft")) {
                        b10 = 8;
                    }
                    break;
                case -1422965251:
                    if (next.equals("adType")) {
                        b10 = 9;
                    }
                    break;
                case -1383228885:
                    if (next.equals("bottom")) {
                        b10 = 10;
                    }
                    break;
                case -1224696685:
                    if (next.equals("fontFamily")) {
                        b10 = 11;
                    }
                    break;
                case -1221029593:
                    if (next.equals("height")) {
                        b10 = 12;
                    }
                    break;
                case -1065511464:
                    if (next.equals("textAlign")) {
                        b10 = 13;
                    }
                    break;
                case -1063257157:
                    if (next.equals("alignItems")) {
                        b10 = 14;
                    }
                    break;
                case -1046708884:
                    if (next.equals("interactValidate")) {
                        b10 = 15;
                    }
                    break;
                case -1044792121:
                    if (next.equals("marginTop")) {
                        b10 = 16;
                    }
                    break;
                case -1019884910:
                    if (next.equals("useBottom")) {
                        b10 = BinaryMemcacheOpcodes.SETQ;
                    }
                    break;
                case -1005195314:
                    if (next.equals("triggerSlideMinDistance")) {
                        b10 = BinaryMemcacheOpcodes.ADDQ;
                    }
                    break;
                case -962590849:
                    if (next.equals(HmInputMappingContent.FIELD_DIRECTION)) {
                        b10 = BinaryMemcacheOpcodes.REPLACEQ;
                    }
                    break;
                case -912366651:
                    if (next.equals("tagMaxCount")) {
                        b10 = BinaryMemcacheOpcodes.DELETEQ;
                    }
                    break;
                case -848877971:
                    if (next.equals("interactHiddenTime")) {
                        b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                    }
                    break;
                case -836058546:
                    if (next.equals("useTop")) {
                        b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                    }
                    break;
                case -734428249:
                    if (next.equals("fontWeight")) {
                        b10 = BinaryMemcacheOpcodes.QUITQ;
                    }
                    break;
                case -731417480:
                    if (next.equals("zIndex")) {
                        b10 = BinaryMemcacheOpcodes.FLUSHQ;
                    }
                    break;
                case -709393864:
                    if (next.equals("timingStart")) {
                        b10 = BinaryMemcacheOpcodes.APPENDQ;
                    }
                    break;
                case -515807685:
                    if (next.equals("lineHeight")) {
                        b10 = 26;
                    }
                    break;
                case -321658193:
                    if (next.equals("textFlowDuration")) {
                        b10 = 27;
                    }
                    break;
                case -295409451:
                    if (next.equals("useRight")) {
                        b10 = BinaryMemcacheOpcodes.TOUCH;
                    }
                    break;
                case -289173127:
                    if (next.equals("marginBottom")) {
                        b10 = BinaryMemcacheOpcodes.GAT;
                    }
                    break;
                case -204859874:
                    if (next.equals("bgColor")) {
                        b10 = BinaryMemcacheOpcodes.GATQ;
                    }
                    break;
                case -191748762:
                    if (next.equals("isClickEventIntercept")) {
                        b10 = 31;
                    }
                    break;
                case -148259282:
                    if (next.equals("useLeft")) {
                        b10 = 32;
                    }
                    break;
                case -51738487:
                    if (next.equals("widthMode")) {
                        b10 = BinaryMemcacheOpcodes.SASL_AUTH;
                    }
                    break;
                case 115029:
                    if (next.equals("top")) {
                        b10 = 34;
                    }
                    break;
                case 3076010:
                    if (next.equals("data")) {
                        b10 = BinaryMemcacheOpcodes.GATK;
                    }
                    break;
                case 3317767:
                    if (next.equals(ScrollClickView.DIR_LEFT)) {
                        b10 = BinaryMemcacheOpcodes.GATKQ;
                    }
                    break;
                case 3327652:
                    if (next.equals("loop")) {
                        b10 = 37;
                    }
                    break;
                case 90130308:
                    if (next.equals("paddingTop")) {
                        b10 = 38;
                    }
                    break;
                case 92903173:
                    if (next.equals("align")) {
                        b10 = 39;
                    }
                    break;
                case 94842723:
                    if (next.equals(TypedValues.Custom.S_COLOR)) {
                        b10 = 40;
                    }
                    break;
                case 108511772:
                    if (next.equals(ScrollClickView.DIR_RIGHT)) {
                        b10 = 41;
                    }
                    break;
                case 113126854:
                    if (next.equals("width")) {
                        b10 = 42;
                    }
                    break;
                case 164611121:
                    if (next.equals("timingEnd")) {
                        b10 = 43;
                    }
                    break;
                case 202355100:
                    if (next.equals("paddingBottom")) {
                        b10 = HttpConstants.COMMA;
                    }
                    break;
                case 247204452:
                    if (next.equals("allowTextFlow")) {
                        b10 = 45;
                    }
                    break;
                case 302841174:
                    if (next.equals("interactWontHide")) {
                        b10 = 46;
                    }
                    break;
                case 365601008:
                    if (next.equals("fontSize")) {
                        b10 = 47;
                    }
                    break;
                case 428975654:
                    if (next.equals("justifyVertical")) {
                        b10 = e.H;
                    }
                    break;
                case 439444041:
                    if (next.equals("interactVisibleTime")) {
                        b10 = e.I;
                    }
                    break;
                case 713848971:
                    if (next.equals("paddingRight")) {
                        b10 = e.J;
                    }
                    break;
                case 722830999:
                    if (next.equals("borderColor")) {
                        b10 = e.K;
                    }
                    break;
                case 737768677:
                    if (next.equals("borderStyle")) {
                        b10 = e.L;
                    }
                    break;
                case 747804969:
                    if (next.equals("position")) {
                        b10 = e.M;
                    }
                    break;
                case 791643104:
                    if (next.equals("isDataFixed")) {
                        b10 = e.N;
                    }
                    break;
                case 975087886:
                    if (next.equals("marginRight")) {
                        b10 = e.O;
                    }
                    break;
                case 1110826708:
                    if (next.equals("justifyHorizontal")) {
                        b10 = 56;
                    }
                    break;
                case 1122368895:
                    if (next.equals("interactPosition")) {
                        b10 = 57;
                    }
                    break;
                case 1188229042:
                    if (next.equals("lineFeed")) {
                        b10 = HttpConstants.COLON;
                    }
                    break;
                case 1332036739:
                    if (next.equals("interactText")) {
                        b10 = HttpConstants.SEMICOLON;
                    }
                    break;
                case 1332055696:
                    if (next.equals("interactType")) {
                        b10 = 60;
                    }
                    break;
                case 1349188574:
                    if (next.equals("borderRadius")) {
                        b10 = 61;
                    }
                    break;
                case 1360828714:
                    if (next.equals("clickTigger")) {
                        b10 = 62;
                    }
                    break;
                case 1490178922:
                    if (next.equals("heightMode")) {
                        b10 = Utf8.REPLACEMENT_BYTE;
                    }
                    break;
                case 1761274325:
                    if (next.equals("textFlowType")) {
                        b10 = 64;
                    }
                    break;
                case 1824903757:
                    if (next.equals("borderSize")) {
                        b10 = 65;
                    }
                    break;
                case 1970934485:
                    if (next.equals("marginLeft")) {
                        b10 = 66;
                    }
                    break;
                case 2111078717:
                    if (next.equals("letterSpacing")) {
                        b10 = 67;
                    }
                    break;
            }
            switch (b10) {
                case 0:
                    aVar.ve(jSONObject.optBoolean(next, false));
                    break;
                case 1:
                    aVar.z(jSONObject.optString(next));
                    break;
                case 2:
                    aVar.yv(jSONObject.optString(next));
                    break;
                case 3:
                    aVar.sp(jSONObject.optString(next));
                    break;
                case 4:
                    aVar.i(jSONObject.optInt(next));
                    break;
                case 5:
                    aVar.rh(jSONObject.optBoolean(next));
                    break;
                case 6:
                    aVar.a(jSONObject.optBoolean(next));
                    break;
                case 7:
                    aVar.u(jSONObject.optString(next));
                    break;
                case 8:
                    aVar.a((float) jSONObject.optDouble(next));
                    break;
                case 9:
                    aVar.tt(jSONObject.optString(next));
                    break;
                case 10:
                    aVar.gu(jSONObject.optInt(next));
                    break;
                case 11:
                    aVar.ve(jSONObject.optString(next));
                    break;
                case 12:
                    aVar.ve((float) jSONObject.optDouble(next));
                    break;
                case 13:
                    aVar.uj(jSONObject.optString(next));
                    break;
                case 14:
                    aVar.rl(jSONObject.optString(next));
                    break;
                case 15:
                    aVar.tt(jSONObject.optBoolean(next));
                    break;
                case 16:
                    aVar.da(jSONObject.optInt(next));
                    break;
                case 17:
                    aVar.da(jSONObject.optBoolean(next));
                    break;
                case 18:
                    aVar.c(jSONObject.optLong(next));
                    break;
                case 19:
                    aVar.qy(jSONObject.optString(next));
                    break;
                case 20:
                    aVar.nu(jSONObject.optInt(next));
                    break;
                case 21:
                    aVar.zm(jSONObject.optInt(next));
                    break;
                case 22:
                    aVar.i(jSONObject.optBoolean(next));
                    break;
                case 23:
                    aVar.z(jSONObject.optInt(next));
                    break;
                case 24:
                    aVar.gr(jSONObject.optInt(next));
                    break;
                case 25:
                    aVar.tt(jSONObject.optDouble(next));
                    break;
                case 26:
                    aVar.a(jSONObject.optDouble(next));
                    break;
                case 27:
                    aVar.my(jSONObject.optInt(next));
                    break;
                case 28:
                    aVar.x(jSONObject.optBoolean(next));
                    break;
                case 29:
                    aVar.sl(jSONObject.optInt(next));
                    break;
                case 30:
                    aVar.a(jSONObject.optString(next));
                    break;
                case 31:
                    aVar.yp(jSONObject.optBoolean(next));
                    break;
                case 32:
                    aVar.sp(jSONObject.optBoolean(next));
                    break;
                case 33:
                    aVar.sl(jSONObject.optString(next));
                    break;
                case 34:
                    aVar.qy(jSONObject.optInt(next));
                    break;
                case 35:
                    aVar.gt(jSONObject.optString(next));
                    break;
                case 36:
                    aVar.gt(jSONObject.optInt(next));
                    break;
                case 37:
                    aVar.c(jSONObject.optBoolean(next));
                    break;
                case 38:
                    aVar.x((float) jSONObject.optDouble(next));
                    break;
                case 39:
                    aVar.my(jSONObject.optString(next));
                    break;
                case 40:
                    aVar.n(jSONObject.optString(next));
                    break;
                case 41:
                    aVar.rl(jSONObject.optInt(next));
                    break;
                case 42:
                    aVar.uj((float) jSONObject.optDouble(next));
                    break;
                case 43:
                    aVar.ve(jSONObject.optDouble(next));
                    break;
                case 44:
                    aVar.n((float) jSONObject.optDouble(next));
                    break;
                case 45:
                    aVar.sl(jSONObject.optBoolean(next));
                    break;
                case 46:
                    aVar.yp(jSONObject.optBoolean(next));
                    break;
                case 47:
                    aVar.i((float) jSONObject.optDouble(next));
                    break;
                case 48:
                    aVar.rh(jSONObject.optString(next));
                    break;
                case 49:
                    aVar.h(jSONObject.optInt(next));
                    break;
                case 50:
                    aVar.sp((float) jSONObject.optDouble(next));
                    break;
                case 51:
                    aVar.x(jSONObject.optString(next));
                    break;
                case 52:
                    aVar.i(jSONObject.optString(next));
                    break;
                case 53:
                    aVar.m(jSONObject.optInt(next));
                    break;
                case 54:
                    aVar.n(jSONObject.optBoolean(next));
                    break;
                case 55:
                    aVar.u(jSONObject.optInt(next));
                    break;
                case 56:
                    aVar.nu(jSONObject.optString(next));
                    break;
                case 57:
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                    if (jSONObjectOptJSONObject != null) {
                        aVar.sp(jSONObjectOptJSONObject.optInt("translateY", 0));
                        aVar.x(jSONObjectOptJSONObject.optInt("translateX", 0));
                        aVar.uj(jSONObjectOptJSONObject.optDouble("scaleX", 0.0d));
                        aVar.n(jSONObjectOptJSONObject.optDouble("scaleY", 0.0d));
                    }
                    break;
                case 58:
                    aVar.uj(jSONObject.optBoolean(next));
                    break;
                case 59:
                    aVar.t(jSONObject.optString(next));
                    break;
                case 60:
                    aVar.yp(jSONObject.optString(next));
                    break;
                case 61:
                    aVar.c((float) jSONObject.optDouble(next));
                    break;
                case 62:
                    aVar.m(jSONObject.optString(next));
                    break;
                case 63:
                    aVar.da(jSONObject.optString(next));
                    break;
                case 64:
                    aVar.rh(jSONObject.optInt(next));
                    break;
                case 65:
                    aVar.tt((float) jSONObject.optDouble(next));
                    break;
                case 66:
                    aVar.t(jSONObject.optInt(next));
                    break;
                case 67:
                    aVar.yp(jSONObject.optInt(next));
                    break;
            }
        }
    }
}
