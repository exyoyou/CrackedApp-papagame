package com.byazt.ete;

import android.text.TextUtils;
import com.byazt.nys.PluginConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.haima.hmcp.Constants;
import com.join.mgps.activity.QuarkInstallAppActivity_;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.kwad.components.offline.api.IOfflineCompo;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.kwad.sdk.api.model.AdnName;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, MediaPlayer.MEDIA_PLAYER_OPTION_OUTLET_CREATE_TIME})
public class ic implements com.byazt.eia.da, com.byazt.eia.i, com.byazt.eia.sl, com.byazt.eia.sp, com.byazt.eia.x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13716a;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    public sv f13717ab;
    public long an;
    public String az;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Map<String, Object> f13718b;
    public int bj;
    public int bp;
    public int br;
    public String bw;
    public boolean bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public hq f13719c;

    /* JADX INFO: renamed from: ca, reason: collision with root package name */
    public l f13720ca;
    public String cf;
    public String cg;
    public lr ck;
    public to cl;
    public int cu;
    public int cx;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public JSONObject f13721d;
    public q dh;
    public int dn;
    public int dr;
    public hd ef;
    public String ej;
    public boolean em;
    public z en;
    public String eo;
    public md ey;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public JSONObject f13724f;
    public int fe;
    public r fk;
    public String fq;
    public p fr;
    public a ft;
    public int fv;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public JSONObject f13726g;
    public int ge;
    public pf gk;
    public String gl;
    public n gr;
    public String gt;
    public int gx;
    public int gy;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f13727h;

    /* JADX INFO: renamed from: hc, reason: collision with root package name */
    public yp f13728hc;
    public String hg;
    public int hj;
    public oz hs;
    public boolean hz;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f13730i;

    /* JADX INFO: renamed from: if, reason: not valid java name */
    public com.byazt.seg.c f0if;
    public String ij;
    public JSONObject il;
    public long is;
    public int iw;
    public lo ix;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f13733j;

    /* JADX INFO: renamed from: jc, reason: collision with root package name */
    public kk f13734jc;
    public JSONObject jf;
    public int jl;
    public int jm;
    public String jt;
    public boolean jy;

    /* JADX INFO: renamed from: ka, reason: collision with root package name */
    public JSONObject f13736ka;
    public lt kk;
    public volatile String kn;
    public gt kp;
    public boolean ku;
    public String kz;

    /* JADX INFO: renamed from: la, reason: collision with root package name */
    public volatile String f13738la;
    public h ls;
    public my lz;
    public String md;
    public String mf;
    public s mm;
    public boolean mq;
    public long my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13742n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public xd f13743nb;
    public pu ne;
    public String nl;
    public boolean nq;
    public iu nx;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f13745o;
    public int op;
    public j oq;
    public long or;
    public int ox;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f13746p;

    /* JADX INFO: renamed from: pa, reason: collision with root package name */
    public String f13747pa;

    /* JADX INFO: renamed from: pb, reason: collision with root package name */
    public String f13748pb;
    public int pf;
    public int ph;
    public int pl;
    public int pr;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public kp f13749q;
    public int qp;
    public rh qt;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public com.byazt.dj.tt f13750r;

    /* JADX INFO: renamed from: ra, reason: collision with root package name */
    public String f13751ra;
    public String rh;
    public cu ri;
    public String rl;
    public yv rp;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f13753s;
    public volatile JSONObject sf;
    public String sl;
    public tx sp;
    public int st;
    public boolean sv;
    public boolean sy;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public JSONObject f13754t;
    public qp te;
    public sl tj;
    public boolean tk;
    public int tp;
    public qy ts;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public JSONObject f13755u;
    public com.byazt.vo.tt uj;
    public String ul;
    public String up;
    public String uv;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public bx f13756v;
    public String ve;
    public String vi;
    public int vl;
    public long vp;
    public JSONObject vr;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f13757w;
    public or wq;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public zb f13758x;
    public boolean xg;
    public com.byazt.lo.c xl;
    public int xr;
    public zm xv;
    public JSONObject xw;
    public int xx;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f13759y;
    public JSONObject ym;
    public String ys;
    public int yt;
    public nu yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f13760z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public long f13761zb;
    public rl zm;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f13722da = -1;
    public List<zb> yp = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List<String> f13739m = new ArrayList();
    public List<String> nu = new ArrayList();
    public String qy = "0";
    public String gu = "0";
    public int aw = 100;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public long f13731ic = -1;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public long f13729hd = -1;
    public long bm = -1;
    public int lr = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13737l = 1;
    public long lo = System.currentTimeMillis();
    public String pu = UUID.randomUUID().toString();
    public int lt = 1;
    public String to = "";
    public boolean tx = false;
    public int os = IOfflineCompo.Priority.HIGHEST;
    public int oz = 0;
    public int iu = 1;
    public int dz = 0;

    /* JADX INFO: renamed from: ma, reason: collision with root package name */
    public int f13740ma = 0;
    public int yf = 0;
    public int ir = 1;
    public int xd = 0;
    public int hq = 0;
    public int ny = 0;
    public int nt = 0;
    public int pn = 1;
    public boolean yo = false;
    public int di = 1;
    public float jg = 100.0f;
    public int sd = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13735k = 2;
    public int iy = 0;

    /* JADX INFO: renamed from: nc, reason: collision with root package name */
    public int f13744nc = 100;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13723e = 2;
    public int pe = 2;
    public float ly = 0.07f;
    public float px = 0.0f;

    /* JADX INFO: renamed from: ru, reason: collision with root package name */
    public long f13752ru = 0;
    public boolean nm = true;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public int f13732id = -1;
    public int tu = 0;

    /* JADX INFO: renamed from: fb, reason: collision with root package name */
    public int f13725fb = 0;
    public long mk = 0;
    public int by = 0;
    public List<eo> cs = new ArrayList();
    public int po = -1;

    /* JADX INFO: renamed from: mc, reason: collision with root package name */
    public int f13741mc = 1;
    public int qe = -1001;
    public int yg = 0;

    private float hm() {
        s sVar = this.mm;
        if (sVar == null) {
            return 5.0f;
        }
        return sVar.z();
    }

    private int vz() {
        return this.aw;
    }

    @Override // com.byazt.eia.da
    public hq A_() {
        return this.f13719c;
    }

    @Override // com.byazt.eia.sp
    public boolean B_() {
        return this.sy;
    }

    @Override // com.byazt.eia.i
    public q C_() {
        return this.dh;
    }

    @Override // com.byazt.eia.i
    public kk D_() {
        return this.f13734jc;
    }

    public void a(int i10) {
        if (this.xx == 0) {
            this.xx = i10;
        }
    }

    public int ab() {
        int i10 = this.lr;
        if (i10 != -1) {
            return i10;
        }
        if (com.byazt.aas.nb.sl(this) == 7) {
            return 0;
        }
        return (com.byazt.aas.nb.sl(this) == 8 && fr() == 100.0f) ? 0 : 1;
    }

    public String an() {
        return this.md;
    }

    public String aw() {
        return this.f13748pb;
    }

    public int az() {
        return this.f13753s;
    }

    public long b() {
        return this.vp;
    }

    public s.c bj() {
        s sVar = this.mm;
        if (sVar != null) {
            return sVar.yp();
        }
        return null;
    }

    public boolean bm() {
        return this.nq;
    }

    public hd bn() {
        if (this.ef == null) {
            this.ef = new hd(this);
        }
        return this.ef;
    }

    public int bp() {
        iu iuVar = this.nx;
        if (iuVar == null) {
            return 2;
        }
        return iuVar.c();
    }

    public int br() {
        return this.bj;
    }

    public boolean bw() {
        return this.tk;
    }

    public int bx() {
        return this.ox;
    }

    public int by() {
        if (this.di != 2) {
            this.di = 1;
        }
        return this.di;
    }

    public boolean bz() {
        return this.tx;
    }

    public String c() {
        return this.kn;
    }

    public String ca() {
        s sVar = this.mm;
        return sVar == null ? "#008DEA" : sVar.da();
    }

    public int cf() {
        if (fr() != 100.0f || pu.c(this) == 2) {
            return 0;
        }
        return this.oz;
    }

    public iu cg() {
        return this.nx;
    }

    public int cj() {
        return this.tu;
    }

    public String ck() {
        return this.gl;
    }

    public String cl() {
        s sVar = this.mm;
        return sVar == null ? "点击查看" : sVar.sl();
    }

    public int cs() {
        return this.f13744nc;
    }

    public int cu() {
        return this.ge;
    }

    public JSONObject cx() {
        return this.il;
    }

    public JSONObject cy() {
        return this.jf;
    }

    public boolean d() {
        return this.jy && pf();
    }

    public void da(int i10) {
        this.xr = i10;
    }

    public boolean dh() {
        return this.f13737l == 1;
    }

    public String di() {
        s sVar = this.mm;
        return sVar == null ? "" : sVar.tt();
    }

    public String dn() {
        if (!TextUtils.isEmpty(this.hg)) {
            this.hg = this.hg.trim();
        }
        return this.hg;
    }

    public cu dp() {
        return this.ri;
    }

    public int dr() {
        iu iuVar = this.nx;
        if (iuVar == null) {
            return 30;
        }
        return iuVar.ve();
    }

    public long dz() {
        return this.is;
    }

    public int e() {
        return this.ph;
    }

    public l ef() {
        return this.f13720ca;
    }

    public int ej() {
        return this.pn;
    }

    public j ek() {
        return this.oq;
    }

    public String em() {
        return this.ej;
    }

    public int en() {
        return this.pr;
    }

    public int eo() {
        return this.xx;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ic icVar = (ic) obj;
            if (this.qy.equals(icVar.qy) && this.f13727h.equals(icVar.f13727h)) {
                return true;
            }
        }
        return false;
    }

    public long ey() {
        return this.f13752ru;
    }

    public int f() {
        return this.f13723e;
    }

    public qp fb() {
        return this.te;
    }

    public boolean fe() {
        if (wq() != null) {
            return wq().a();
        }
        return false;
    }

    public int fk() {
        r rVar = this.fk;
        if (rVar == null) {
            return 90;
        }
        return rVar.ve();
    }

    public int fq() {
        return this.lt;
    }

    public float fr() {
        if (this.jg <= 0.0f) {
            this.jg = 100.0f;
        }
        return (this.jg * 1000.0f) / 1000.0f;
    }

    public JSONObject ft() {
        return this.f13755u;
    }

    public String fv() {
        return this.f13747pa;
    }

    public int g() {
        return this.nt;
    }

    public int ge() {
        return this.iw;
    }

    public int gk() {
        s sVar = this.mm;
        if (sVar == null) {
            return 0;
        }
        return sVar.x();
    }

    public List<String> gl() {
        return this.nu;
    }

    public void gr(int i10) {
        this.f13759y = i10;
    }

    public void gt(int i10) {
        this.f13740ma = i10;
    }

    public void gu(int i10) {
        this.f13753s = i10;
    }

    public lo gx() {
        return this.ix;
    }

    public pu gy() {
        return this.ne;
    }

    public int h() {
        return this.yg;
    }

    public int hashCode() {
        return (this.qy.hashCode() * 31) + this.f13727h.hashCode();
    }

    public int hc() {
        return this.pf;
    }

    public boolean hd() {
        return this.em;
    }

    public int hg() {
        s sVar = this.mm;
        if (sVar == null) {
            return 50;
        }
        return sVar.uj();
    }

    public int hj() {
        return this.ny;
    }

    public String hl() {
        return this.cg;
    }

    public or hq() {
        return this.wq;
    }

    public boolean hs() {
        boolean z10 = ix() != null && ix().c();
        if (z10 && ne() == 4) {
            return lz() >= 0;
        }
        return z10;
    }

    public int hz() {
        return this.sd;
    }

    public rh ic() {
        return this.qt;
    }

    public int id() {
        return this.f13746p;
    }

    /* JADX INFO: renamed from: if, reason: not valid java name */
    public int m17if() {
        return this.cx;
    }

    public com.byazt.dj.tt ij() {
        return this.f13750r;
    }

    public int il() {
        return this.gx;
    }

    public int ir() {
        return this.qp;
    }

    public int is() {
        return this.f13759y;
    }

    public boolean iu() {
        return this.f13757w;
    }

    public s.tt iw() {
        s sVar = this.mm;
        if (sVar != null) {
            return sVar.u();
        }
        return null;
    }

    public tx ix() {
        return this.sp;
    }

    public int iy() {
        s sVar = this.mm;
        if (sVar == null) {
            return 56;
        }
        return sVar.sp();
    }

    public String j() {
        return this.az;
    }

    public to jc() {
        return this.cl;
    }

    public int jf() {
        return this.xd;
    }

    public boolean jg() {
        s sVar = this.mm;
        return sVar == null || sVar.ve();
    }

    public String jl() {
        return TextUtils.isEmpty(this.ve) ? com.byazt.vxy.c.ve() : this.ve;
    }

    public JSONObject jm() {
        return this.f13724f;
    }

    public bx js() {
        return this.f13756v;
    }

    public int jt() {
        return this.os;
    }

    public float jy() {
        float f10 = this.px;
        if (f10 < 0.0f || f10 > 50.0f) {
            this.px = 0.0f;
        }
        return this.px;
    }

    public int k() {
        s sVar = this.mm;
        if (sVar == null) {
            return 82;
        }
        return sVar.a();
    }

    public int ka() {
        return my.da(this);
    }

    public long kk() {
        return this.an;
    }

    public yv kn() {
        return this.rp;
    }

    public JSONObject kp() {
        return this.sf;
    }

    public int ku() {
        return this.pl;
    }

    public int kz() {
        return this.f13732id;
    }

    public String l() {
        return this.fq;
    }

    public JSONObject la() {
        return this.xw;
    }

    public String lo() {
        return this.ul;
    }

    public boolean lr() {
        return this.ku;
    }

    public String ls() {
        return this.tt;
    }

    public String lt() {
        return this.ys;
    }

    public JSONObject lv() {
        return this.ym;
    }

    public String lw() {
        return hashCode() + qy() + kk();
    }

    public boolean lx() {
        return this.yo;
    }

    public int ly() {
        r rVar = this.fk;
        if (rVar == null) {
            return 0;
        }
        return rVar.c();
    }

    public int lz() {
        if (ix() != null) {
            return ix().tt();
        }
        return -1;
    }

    public void m(int i10) {
        this.dz = i10;
    }

    public int ma() {
        return this.op;
    }

    public int mc() {
        JSONObject jSONObject = this.f13754t;
        if (jSONObject != null) {
            return jSONObject.optInt("easy_playable_skip_duration", 0);
        }
        return 0;
    }

    public int md() {
        return this.dn;
    }

    public s mf() {
        return this.mm;
    }

    public String mk() {
        return this.nl;
    }

    public int mm() {
        return this.yt;
    }

    public sl mn() {
        return this.tj;
    }

    public int mq() {
        return this.iu;
    }

    public int mu() {
        return this.qe;
    }

    public void my(int i10) {
        this.f13732id = i10;
    }

    public void n(int i10) {
        this.fe = i10;
    }

    public int nb() {
        return this.br;
    }

    public int nc() {
        s sVar = this.mm;
        if (sVar == null) {
            return 0;
        }
        return sVar.i();
    }

    public int ne() {
        return this.f13716a;
    }

    public int nl() {
        return this.hj;
    }

    public rl nm() {
        return this.zm;
    }

    public boolean nq() {
        return ku() != 1;
    }

    public boolean nt() {
        return this.dz == 1;
    }

    public void nu(int i10) {
        this.yt = i10;
    }

    public s.tt nx() {
        s sVar = this.mm;
        if (sVar != null) {
            return sVar.t();
        }
        return null;
    }

    public int ny() {
        return this.dz;
    }

    public xd o() {
        return this.f13743nb;
    }

    public String op() {
        return this.gt;
    }

    public int oq() {
        return this.f13737l;
    }

    public boolean or() {
        return zb() == 1;
    }

    public com.byazt.lo.c os() {
        return this.xl;
    }

    public boolean ox() {
        int iNu = com.byazt.aas.nb.nu(this);
        return iNu == 3 || iNu == 6;
    }

    public String oz() {
        return this.vi;
    }

    public int p() {
        return this.po;
    }

    public List<zb> pa() {
        return this.yp;
    }

    public int pb() {
        return this.gy;
    }

    public int pe() {
        return this.dr;
    }

    public boolean pf() {
        return nb() == 1;
    }

    public int ph() {
        iu iuVar = this.nx;
        if (iuVar == null) {
            return 16;
        }
        return iuVar.tt();
    }

    public int pl() {
        s sVar = this.mm;
        if (sVar == null) {
            return 1;
        }
        return sVar.c();
    }

    public my pn() {
        return this.lz;
    }

    public zm po() {
        return this.xv;
    }

    public List<String> pr() {
        return this.f13739m;
    }

    public int pu() {
        return this.xr;
    }

    public int px() {
        r rVar = this.fk;
        if (rVar == null) {
            return 90;
        }
        return rVar.tt();
    }

    public String q() {
        return this.kz;
    }

    @Override // com.byazt.eia.i
    public JSONObject q_() {
        if (this.f13721d == null) {
            try {
                if (!TextUtils.isEmpty(this.f13727h)) {
                    this.f13721d = new JSONObject(this.f13727h);
                }
            } catch (JSONException unused) {
            }
        }
        return this.f13721d;
    }

    public float qe() {
        float f10 = this.ly;
        if (f10 < 0.07f || f10 > 0.175f) {
            this.ly = 0.07f;
        }
        return this.ly;
    }

    public z qi() {
        return this.en;
    }

    public boolean qp() {
        return this.ge == 1;
    }

    public boolean qt() {
        if (com.byazt.ex.c.c(this)) {
            return true;
        }
        if (this.yp.isEmpty()) {
            return false;
        }
        if (this.f13746p == 4 && this.yp.size() < 3) {
            return false;
        }
        Iterator<zb> it2 = this.yp.iterator();
        while (it2.hasNext()) {
            if (!it2.next().n()) {
                return false;
            }
        }
        return true;
    }

    public void qy(int i10) {
        this.oz = i10;
    }

    public boolean r() {
        return this.mq;
    }

    public long ra() {
        return this.bm;
    }

    public void rh(int i10) {
        this.yf = i10;
    }

    public int ri() {
        return this.f13722da;
    }

    public void rl(int i10) {
        this.iu = i10;
    }

    public int rm() {
        return this.f13741mc;
    }

    public boolean rp() {
        return (TextUtils.isEmpty(com.byazt.aas.nb.u(this)) || TextUtils.isEmpty(this.to) || com.byazt.aas.nb.u(this).contains(this.to)) ? false : true;
    }

    public long ru() {
        return this.my;
    }

    public String s() {
        return this.cf;
    }

    @Override // com.byazt.eia.sl
    public boolean s_() {
        return this.hz;
    }

    public int sd() {
        s sVar = this.mm;
        return sVar == null ? Constants.START_STREAMING_REQUEST : sVar.n();
    }

    public String sf() {
        return this.pu;
    }

    public void sl(int i10) {
        this.vl = i10;
    }

    @Override // com.byazt.eia.x
    public int sp() {
        return this.jl;
    }

    public int st() {
        return this.tp;
    }

    public boolean sv() {
        return bx() == 1;
    }

    public String sy() {
        try {
            return q_().optString("convert_id", null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public void t(String str) {
        this.az = str;
    }

    @Override // com.byazt.eia.i
    public String t_() {
        return this.bw;
    }

    public zb te() {
        return this.f13758x;
    }

    public String tj() {
        return this.rl;
    }

    public boolean tk() {
        return this.xg;
    }

    public String to() {
        return this.up;
    }

    public String tp() {
        return this.f13760z;
    }

    public JSONObject ts() {
        return this.f13754t;
    }

    public eo tt(String str) {
        List<eo> list = this.cs;
        if (list != null && !list.isEmpty()) {
            for (int i10 = 0; i10 < this.cs.size(); i10++) {
                eo eoVar = this.cs.get(i10);
                if (eoVar != null) {
                    String strC = eoVar.c();
                    if (!TextUtils.isEmpty(strC) && strC.equals(str)) {
                        return eoVar;
                    }
                }
            }
        }
        return null;
    }

    public long tu() {
        return this.f13729hd;
    }

    public int tw() {
        if (this.f13742n == 4 && TextUtils.isEmpty(this.f13733j)) {
            return this.bp;
        }
        return 0;
    }

    public int tx() {
        if (my.uj(this)) {
            return 0;
        }
        return this.vl;
    }

    public void u(String str) {
        this.ij = str;
    }

    @Override // com.byazt.eia.sp
    public gt u_() {
        return this.kp;
    }

    public void uj(int i10) {
        this.jl = i10;
    }

    public long ul() {
        return this.or;
    }

    public boolean up() {
        return this.sv;
    }

    public JSONObject ur() {
        return this.f13736ka;
    }

    public long uv() {
        return this.f13761zb;
    }

    public com.byazt.seg.c v() {
        return this.f0if;
    }

    @Override // com.byazt.eia.x
    public String v_() {
        return this.rh;
    }

    public void ve(int i10) {
        this.yg = i10;
    }

    public int vi() {
        return this.f13740ma;
    }

    public r vl() {
        return this.fk;
    }

    public int vp() {
        return this.yf;
    }

    public int vr() {
        return this.hq;
    }

    public p vt() {
        return this.fr;
    }

    public int w() {
        return this.ir;
    }

    @Override // com.byazt.eia.da
    public String w_() {
        return this.f13727h;
    }

    public boolean wj() {
        return this.nm;
    }

    public int wn() {
        return this.f13735k;
    }

    public String wo() {
        return this.f13751ra;
    }

    public com.byazt.vo.tt wq() {
        com.byazt.tl.tt.c();
        return this.uj;
    }

    public lr wy() {
        return this.ck;
    }

    @Override // com.byazt.eia.sp
    public boolean x_() {
        return jf() == 1;
    }

    public kp xd() {
        return this.f13749q;
    }

    public long xg() {
        return this.lo;
    }

    public int xl() {
        return this.fv;
    }

    public lt xo() {
        return this.kk;
    }

    public int xr() {
        return this.cu;
    }

    public String xv() {
        return this.to;
    }

    public long xw() {
        return this.f13731ic;
    }

    public int xx() {
        return this.iy;
    }

    public String y() {
        return this.jt;
    }

    @Override // com.byazt.eia.i
    public boolean y_() {
        return jc() != null;
    }

    public int yf() {
        return this.pe;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:103:0x04b3 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:105:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:108:0x04d2 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x04db  */
    /* JADX WARN: Code duplicated, block: B:113:0x0508  */
    /* JADX WARN: Code duplicated, block: B:114:0x050a A[Catch: Exception -> 0x0899, TryCatch #12 {Exception -> 0x0899, blocks: (B:51:0x02f9, B:54:0x0308, B:57:0x0315, B:60:0x0322, B:63:0x032f, B:66:0x033c, B:69:0x0349, B:72:0x0356, B:75:0x0363, B:78:0x0370, B:81:0x037d, B:84:0x038a, B:87:0x0397, B:90:0x03a4, B:93:0x0418, B:96:0x0425, B:101:0x04a8, B:106:0x04bd, B:111:0x04dc, B:115:0x050e, B:119:0x051d, B:130:0x0591, B:133:0x05ec, B:136:0x0627, B:139:0x066a, B:142:0x06f3, B:145:0x071e, B:148:0x072d, B:118:0x0519, B:114:0x050a), top: B:311:0x02f9 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0517  */
    /* JADX WARN: Code duplicated, block: B:118:0x0519 A[Catch: Exception -> 0x0899, TryCatch #12 {Exception -> 0x0899, blocks: (B:51:0x02f9, B:54:0x0308, B:57:0x0315, B:60:0x0322, B:63:0x032f, B:66:0x033c, B:69:0x0349, B:72:0x0356, B:75:0x0363, B:78:0x0370, B:81:0x037d, B:84:0x038a, B:87:0x0397, B:90:0x03a4, B:93:0x0418, B:96:0x0425, B:101:0x04a8, B:106:0x04bd, B:111:0x04dc, B:115:0x050e, B:119:0x051d, B:130:0x0591, B:133:0x05ec, B:136:0x0627, B:139:0x066a, B:142:0x06f3, B:145:0x071e, B:148:0x072d, B:118:0x0519, B:114:0x050a), top: B:311:0x02f9 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x0559 A[Catch: Exception -> 0x02f4, TRY_ENTER, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x0578 A[Catch: Exception -> 0x02f4, LOOP:5: B:126:0x0572->B:128:0x0578, LOOP_END, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x05c0 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x05f2 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x0661 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x0147 A[Catch: Exception -> 0x013b, TRY_ENTER, TRY_LEAVE, TryCatch #23 {Exception -> 0x013b, blocks: (B:5:0x0111, B:7:0x011b, B:13:0x0147, B:16:0x0152, B:19:0x015d, B:22:0x016c, B:23:0x0175, B:25:0x017b, B:26:0x01b2, B:29:0x01bd, B:30:0x01c6, B:32:0x01cc, B:33:0x01d6, B:36:0x01e1, B:37:0x01ea, B:39:0x01f0, B:40:0x01fa), top: B:333:0x0111 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0682 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:144:0x06f9 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:147:0x0724 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:151:0x0748  */
    /* JADX WARN: Code duplicated, block: B:152:0x074a  */
    /* JADX WARN: Code duplicated, block: B:155:0x0841 A[Catch: Exception -> 0x089a, TryCatch #11 {Exception -> 0x089a, blocks: (B:153:0x074b, B:155:0x0841, B:156:0x084a, B:158:0x084e, B:159:0x0853, B:161:0x0859, B:162:0x0880, B:164:0x088f), top: B:309:0x074b }] */
    /* JADX WARN: Code duplicated, block: B:158:0x084e A[Catch: Exception -> 0x089a, TryCatch #11 {Exception -> 0x089a, blocks: (B:153:0x074b, B:155:0x0841, B:156:0x084a, B:158:0x084e, B:159:0x0853, B:161:0x0859, B:162:0x0880, B:164:0x088f), top: B:309:0x074b }] */
    /* JADX WARN: Code duplicated, block: B:161:0x0859 A[Catch: Exception -> 0x089a, TryCatch #11 {Exception -> 0x089a, blocks: (B:153:0x074b, B:155:0x0841, B:156:0x084a, B:158:0x084e, B:159:0x0853, B:161:0x0859, B:162:0x0880, B:164:0x088f), top: B:309:0x074b }] */
    /* JADX WARN: Code duplicated, block: B:164:0x088f A[Catch: Exception -> 0x089a, TRY_LEAVE, TryCatch #11 {Exception -> 0x089a, blocks: (B:153:0x074b, B:155:0x0841, B:156:0x084a, B:158:0x084e, B:159:0x0853, B:161:0x0859, B:162:0x0880, B:164:0x088f), top: B:309:0x074b }] */
    /* JADX WARN: Code duplicated, block: B:16:0x0152 A[Catch: Exception -> 0x013b, TRY_ENTER, TRY_LEAVE, TryCatch #23 {Exception -> 0x013b, blocks: (B:5:0x0111, B:7:0x011b, B:13:0x0147, B:16:0x0152, B:19:0x015d, B:22:0x016c, B:23:0x0175, B:25:0x017b, B:26:0x01b2, B:29:0x01bd, B:30:0x01c6, B:32:0x01cc, B:33:0x01d6, B:36:0x01e1, B:37:0x01ea, B:39:0x01f0, B:40:0x01fa), top: B:333:0x0111 }] */
    /* JADX WARN: Code duplicated, block: B:171:0x08a1  */
    /* JADX WARN: Code duplicated, block: B:174:0x08b0  */
    /* JADX WARN: Code duplicated, block: B:175:0x08b1  */
    /* JADX WARN: Code duplicated, block: B:186:0x08f2  */
    /* JADX WARN: Code duplicated, block: B:189:0x08fb  */
    /* JADX WARN: Code duplicated, block: B:19:0x015d A[Catch: Exception -> 0x013b, TRY_ENTER, TRY_LEAVE, TryCatch #23 {Exception -> 0x013b, blocks: (B:5:0x0111, B:7:0x011b, B:13:0x0147, B:16:0x0152, B:19:0x015d, B:22:0x016c, B:23:0x0175, B:25:0x017b, B:26:0x01b2, B:29:0x01bd, B:30:0x01c6, B:32:0x01cc, B:33:0x01d6, B:36:0x01e1, B:37:0x01ea, B:39:0x01f0, B:40:0x01fa), top: B:333:0x0111 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x016c A[Catch: Exception -> 0x013b, TRY_ENTER, TryCatch #23 {Exception -> 0x013b, blocks: (B:5:0x0111, B:7:0x011b, B:13:0x0147, B:16:0x0152, B:19:0x015d, B:22:0x016c, B:23:0x0175, B:25:0x017b, B:26:0x01b2, B:29:0x01bd, B:30:0x01c6, B:32:0x01cc, B:33:0x01d6, B:36:0x01e1, B:37:0x01ea, B:39:0x01f0, B:40:0x01fa), top: B:333:0x0111 }] */
    /* JADX WARN: Code duplicated, block: B:236:0x0a31 A[Catch: JSONException -> 0x0a40, TRY_LEAVE, TryCatch #6 {JSONException -> 0x0a40, blocks: (B:234:0x0a1e, B:236:0x0a31), top: B:299:0x0a1e }] */
    /* JADX WARN: Code duplicated, block: B:246:0x0a68 A[Catch: all -> 0x0a6b, TRY_LEAVE, TryCatch #3 {all -> 0x0a6b, blocks: (B:244:0x0a64, B:246:0x0a68), top: B:293:0x0a64 }] */
    /* JADX WARN: Code duplicated, block: B:249:0x0a6f A[Catch: all -> 0x0a73, TRY_LEAVE, TryCatch #7 {all -> 0x0a73, blocks: (B:247:0x0a6b, B:249:0x0a6f), top: B:301:0x0a6b }] */
    /* JADX WARN: Code duplicated, block: B:256:0x0a93 A[Catch: JSONException -> 0x0b37, TryCatch #9 {JSONException -> 0x0b37, blocks: (B:254:0x0a7a, B:256:0x0a93, B:257:0x0a97, B:259:0x0a9d, B:261:0x0aa5, B:264:0x0aca, B:266:0x0ad5, B:267:0x0ad9, B:269:0x0adf, B:271:0x0ae7, B:272:0x0b14), top: B:305:0x0a7a }] */
    /* JADX WARN: Code duplicated, block: B:259:0x0a9d A[Catch: JSONException -> 0x0b37, TryCatch #9 {JSONException -> 0x0b37, blocks: (B:254:0x0a7a, B:256:0x0a93, B:257:0x0a97, B:259:0x0a9d, B:261:0x0aa5, B:264:0x0aca, B:266:0x0ad5, B:267:0x0ad9, B:269:0x0adf, B:271:0x0ae7, B:272:0x0b14), top: B:305:0x0a7a }] */
    /* JADX WARN: Code duplicated, block: B:25:0x017b A[Catch: Exception -> 0x013b, LOOP:0: B:23:0x0175->B:25:0x017b, LOOP_END, TryCatch #23 {Exception -> 0x013b, blocks: (B:5:0x0111, B:7:0x011b, B:13:0x0147, B:16:0x0152, B:19:0x015d, B:22:0x016c, B:23:0x0175, B:25:0x017b, B:26:0x01b2, B:29:0x01bd, B:30:0x01c6, B:32:0x01cc, B:33:0x01d6, B:36:0x01e1, B:37:0x01ea, B:39:0x01f0, B:40:0x01fa), top: B:333:0x0111 }] */
    /* JADX WARN: Code duplicated, block: B:261:0x0aa5 A[Catch: JSONException -> 0x0b37, TryCatch #9 {JSONException -> 0x0b37, blocks: (B:254:0x0a7a, B:256:0x0a93, B:257:0x0a97, B:259:0x0a9d, B:261:0x0aa5, B:264:0x0aca, B:266:0x0ad5, B:267:0x0ad9, B:269:0x0adf, B:271:0x0ae7, B:272:0x0b14), top: B:305:0x0a7a }] */
    /* JADX WARN: Code duplicated, block: B:262:0x0ac5  */
    /* JADX WARN: Code duplicated, block: B:266:0x0ad5 A[Catch: JSONException -> 0x0b37, TryCatch #9 {JSONException -> 0x0b37, blocks: (B:254:0x0a7a, B:256:0x0a93, B:257:0x0a97, B:259:0x0a9d, B:261:0x0aa5, B:264:0x0aca, B:266:0x0ad5, B:267:0x0ad9, B:269:0x0adf, B:271:0x0ae7, B:272:0x0b14), top: B:305:0x0a7a }] */
    /* JADX WARN: Code duplicated, block: B:269:0x0adf A[Catch: JSONException -> 0x0b37, TryCatch #9 {JSONException -> 0x0b37, blocks: (B:254:0x0a7a, B:256:0x0a93, B:257:0x0a97, B:259:0x0a9d, B:261:0x0aa5, B:264:0x0aca, B:266:0x0ad5, B:267:0x0ad9, B:269:0x0adf, B:271:0x0ae7, B:272:0x0b14), top: B:305:0x0a7a }] */
    /* JADX WARN: Code duplicated, block: B:287:0x09e7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:291:0x09be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:297:0x02ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x01bd A[Catch: Exception -> 0x013b, TRY_ENTER, TryCatch #23 {Exception -> 0x013b, blocks: (B:5:0x0111, B:7:0x011b, B:13:0x0147, B:16:0x0152, B:19:0x015d, B:22:0x016c, B:23:0x0175, B:25:0x017b, B:26:0x01b2, B:29:0x01bd, B:30:0x01c6, B:32:0x01cc, B:33:0x01d6, B:36:0x01e1, B:37:0x01ea, B:39:0x01f0, B:40:0x01fa), top: B:333:0x0111 }] */
    /* JADX WARN: Code duplicated, block: B:305:0x0a7a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:307:0x09ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:315:0x09f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:317:0x099b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:327:0x094c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x01cc A[Catch: Exception -> 0x013b, LOOP:1: B:30:0x01c6->B:32:0x01cc, LOOP_END, TryCatch #23 {Exception -> 0x013b, blocks: (B:5:0x0111, B:7:0x011b, B:13:0x0147, B:16:0x0152, B:19:0x015d, B:22:0x016c, B:23:0x0175, B:25:0x017b, B:26:0x01b2, B:29:0x01bd, B:30:0x01c6, B:32:0x01cc, B:33:0x01d6, B:36:0x01e1, B:37:0x01ea, B:39:0x01f0, B:40:0x01fa), top: B:333:0x0111 }] */
    /* JADX WARN: Code duplicated, block: B:335:0x09cf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:337:0x0904 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:346:0x0ae7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:348:0x0ad9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x01e1 A[Catch: Exception -> 0x013b, TRY_ENTER, TryCatch #23 {Exception -> 0x013b, blocks: (B:5:0x0111, B:7:0x011b, B:13:0x0147, B:16:0x0152, B:19:0x015d, B:22:0x016c, B:23:0x0175, B:25:0x017b, B:26:0x01b2, B:29:0x01bd, B:30:0x01c6, B:32:0x01cc, B:33:0x01d6, B:36:0x01e1, B:37:0x01ea, B:39:0x01f0, B:40:0x01fa), top: B:333:0x0111 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x01f0 A[Catch: Exception -> 0x013b, LOOP:2: B:37:0x01ea->B:39:0x01f0, LOOP_END, TryCatch #23 {Exception -> 0x013b, blocks: (B:5:0x0111, B:7:0x011b, B:13:0x0147, B:16:0x0152, B:19:0x015d, B:22:0x016c, B:23:0x0175, B:25:0x017b, B:26:0x01b2, B:29:0x01bd, B:30:0x01c6, B:32:0x01cc, B:33:0x01d6, B:36:0x01e1, B:37:0x01ea, B:39:0x01f0, B:40:0x01fa), top: B:333:0x0111 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:53:0x02ff A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x030e A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x031b A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0328 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0335 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0342 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x034f A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x035c A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0369 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0376 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0383 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0390 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x039d A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0411 A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x041e A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x049e A[Catch: Exception -> 0x02f4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x02f4, blocks: (B:46:0x02d3, B:53:0x02ff, B:56:0x030e, B:59:0x031b, B:62:0x0328, B:65:0x0335, B:68:0x0342, B:71:0x034f, B:74:0x035c, B:77:0x0369, B:80:0x0376, B:83:0x0383, B:86:0x0390, B:89:0x039d, B:92:0x0411, B:95:0x041e, B:98:0x049e, B:103:0x04b3, B:108:0x04d2, B:121:0x0559, B:123:0x0568, B:125:0x056e, B:126:0x0572, B:128:0x0578, B:129:0x058c, B:132:0x05c0, B:135:0x05f2, B:138:0x0661, B:141:0x0682, B:144:0x06f9, B:147:0x0724), top: B:295:0x02d3 }] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public JSONObject yg() {
        String str;
        int i10;
        cu cuVarDp;
        qy qyVarU;
        pf pfVarGt;
        z zVarQi;
        yp ypVarMy;
        sv svVarSl;
        q qVarC_;
        kk kkVarD_;
        Object objCx;
        j jVarEk;
        rh rhVarIc;
        JSONArray jSONArray;
        List<zb> listC;
        JSONArray jSONArray2;
        List<com.byazt.jzl.uj> listTt;
        String str2;
        or orVar;
        h hVar;
        String strWo;
        Object objJm;
        Object objYm;
        com.byazt.dj.tt ttVarIj;
        List<zb> listPa;
        List<String> listPr;
        List<String> listGl;
        n nVarZ;
        rl rlVarNm;
        JSONObject jSONObjectC;
        JSONObject jSONObjectC2;
        JSONObject jSONObjectN;
        iu iuVar;
        int iUj;
        iu iuVar2;
        int iN;
        com.byazt.seg.c cVarV;
        com.byazt.lo.c cVarOs;
        a aVarRh;
        zm zmVarPo;
        int i11;
        hq hqVar;
        Object obj;
        sl slVarMn;
        JSONObject jSONObject;
        Set<Map.Entry<String, Object>> setEntrySet;
        JSONArray jSONArray3;
        Iterator<String> it2;
        JSONArray jSONArray4;
        Iterator<String> it3;
        JSONArray jSONArray5;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("s_sig_ts", ck());
            jSONObject2.put("ad_rec_stamp", ey());
            jSONObject2.put("interaction_type", i());
            jSONObject2.put(PointCategory.TARGET_URL, x());
            jSONObject2.put("use_sdk_player", hj());
            jSONObject2.put("use_media_video_player", g());
            jSONObject2.put("landing_scroll_percentage", ri());
            jSONObject2.put("gecko_id", ve());
            jSONObject2.put("extension", ts());
            jSONObject2.put("overlay", ft());
            jSONObject2.put(MediationConstant.EXTRA_ADID, uj());
            jSONObject2.put("source", an());
            jSONObject2.put("package_name", ls());
            jSONObject2.put("screenshot", ys());
            jSONObject2.put("play_bar_style", cf());
            jSONObject2.put("play_bar_show_time", jt());
            jSONObject2.put("if_block_lp", ny());
            jSONObject2.put("cache_sort", w());
            jSONObject2.put("if_sp_cache", nl());
            jSONObject2.put("splash_timeout_stage", ej());
            jSONObject2.put(PointParamKey.IS_CACHE, up());
            jSONObject2.put("cache_type", vz());
            com.byazt.dbo.ve.c(this, jSONObject2, true);
            jSONObject2.putOpt("applist_info", ur());
            jSONObject2.put("meta_hashcode", eo());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("cta", f());
            jSONObject3.put(AdnName.OTHER, yf());
            jSONObject2.put("set_click_type", jSONObject3);
            zb zbVarTe = te();
            if (zbVarTe != null) {
                try {
                    if (!TextUtils.isEmpty(zbVarTe.c())) {
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put("url", zbVarTe.c());
                        jSONObject4.put("height", zbVarTe.ve());
                        jSONObject4.put("width", zbVarTe.tt());
                        jSONObject2.put("icon", jSONObject4);
                    }
                    objJm = jm();
                    if (objJm != null) {
                        jSONObject2.put("session_params", objJm);
                    }
                    objYm = ym();
                    if (objYm != null) {
                        jSONObject2.put("cache_control", objYm);
                    }
                    ttVarIj = ij();
                    if (ttVarIj != null) {
                        jSONObject2.put("adslot", com.byazt.aas.md.c(ttVarIj));
                    }
                    listPa = pa();
                    if (listPa != null) {
                        jSONArray5 = new JSONArray();
                        for (zb zbVar : listPa) {
                            JSONObject jSONObject5 = new JSONObject();
                            jSONObject5.put("url", zbVar.c());
                            jSONObject5.put("height", zbVar.ve());
                            jSONObject5.put("width", zbVar.tt());
                            jSONObject5.put("image_preview", zbVar.a());
                            jSONObject5.put("image_key", zbVar.sp());
                            jSONArray5.put(jSONObject5);
                        }
                        jSONObject2.put("image", jSONArray5);
                    }
                    listPr = pr();
                    if (listPr != null) {
                        jSONArray4 = new JSONArray();
                        it3 = listPr.iterator();
                        while (it3.hasNext()) {
                            jSONArray4.put(it3.next());
                        }
                        jSONObject2.put("show_url", jSONArray4);
                    }
                    listGl = gl();
                    if (listGl != null) {
                        jSONArray3 = new JSONArray();
                        it2 = listGl.iterator();
                        while (it2.hasNext()) {
                            jSONArray3.put(it2.next());
                        }
                        jSONObject2.put("click_url", jSONArray3);
                    }
                    jSONObject2.put("phone_num", tp());
                    jSONObject2.put("title", v_());
                    jSONObject2.put("download_num", ru());
                    jSONObject2.put(com.xinzhu.overmind.client.hook.proxies.context.providers.b.f89370k, op());
                    jSONObject2.put("ext", w_());
                    jSONObject2.put("req_id", qy());
                    jSONObject2.put("image_mode", id());
                    jSONObject2.put("intercept_flag", az());
                    jSONObject2.put("web_inspector", is());
                    jSONObject2.put("button_text", tj());
                    jSONObject2.put("ad_logo", mq());
                    jSONObject2.put("video_adaptation", vi());
                    jSONObject2.put("feed_video_opentype", vp());
                    jSONObject2.put("feed_reward_type", kz());
                    jSONObject2.put("orientation", by());
                    jSONObject2.put("aspect_ratio", fr());
                    jSONObject2.put("aspect_margin", qe());
                    jSONObject2.put("corner_radius", jy());
                    nVarZ = z();
                    if (nVarZ != null) {
                        try {
                            JSONObject jSONObject6 = new JSONObject();
                            jSONObject6.put("app_name", nVarZ.ve());
                            jSONObject6.put("package_name", nVarZ.uj());
                            jSONObject6.put(COSHttpResponseKey.DOWNLOAD_URL, nVarZ.tt());
                            jSONObject6.put("score", nVarZ.n());
                            str = "height";
                            try {
                                jSONObject6.put("comment_num", nVarZ.a());
                                jSONObject6.put("quick_app_url", nVarZ.c());
                                jSONObject6.put("app_size", nVarZ.sp());
                                jSONObject2.put("app", jSONObject6);
                            } catch (Exception unused) {
                                i10 = 1;
                            }
                        } catch (Exception unused2) {
                            str = "height";
                            i10 = 1;
                        }
                    } else {
                        str = "height";
                    }
                    try {
                        rlVarNm = nm();
                        if (rlVarNm != null) {
                            jSONObject2.put("download_sdk_conf", rlVarNm.ve());
                        }
                        if (xd() != null) {
                            xd().tt(jSONObject2);
                        }
                        if (xo() != null) {
                            xo().c(jSONObject2);
                        }
                        if (yp() != null) {
                            yp().c(jSONObject2);
                        }
                        if (wq() != null) {
                            wq().c(jSONObject2);
                        }
                        if (gy() != null) {
                            gy().tt(jSONObject2);
                        }
                        if (gx() != null) {
                            gx().c(jSONObject2);
                        }
                        if (pn() != null) {
                            pn().c(jSONObject2);
                        }
                        if (ef() != null) {
                            ef().c(jSONObject2);
                        }
                        if (yo() != null) {
                            yo().c(jSONObject2);
                        }
                        if (fb() != null) {
                            fb().c(jSONObject2);
                        }
                        if (jc() != null) {
                            jc().c(jSONObject2);
                        }
                        if (hq() != null) {
                            hq().tt(jSONObject2);
                        }
                        jSONObject2.put("count_down", xr());
                        jSONObject2.put("expiration_time", uv());
                        jSONObject2.put("client_expiration_time", uv());
                        jSONObject2.put("_child_metas", hl());
                        jSONObject2.put("_meta_life_record", bn().c());
                        jSONObject2.put("src_req_id", xv());
                        jSONObject2.put("player_type", xx());
                        jSONObject2.put("video_encode_type", hc());
                        jSONObject2.put("feed_video_finish_type", ir());
                        jSONObject2.put("video_voice_control", ab());
                        jSONObject2.put("if_show_win", oq());
                        if (o() != null) {
                            o().c(jSONObject2);
                        }
                        if (u_() != null) {
                            u_().c(jSONObject2);
                        }
                        jSONObject2.put("if_both_open", jf());
                        jSONObject2.put("if_double_deeplink", vr());
                        JSONObject jSONObject7 = new JSONObject();
                        jSONObject7.put("splash_clickarea", pl());
                        jSONObject7.put("splash_clicktext", di());
                        jSONObject7.put("area_height", hg());
                        jSONObject7.put("area_width", sd());
                        jSONObject7.put("area_blank_height", k());
                        jSONObject7.put("half_blank_height", iy());
                        jSONObject7.put("splash_style_id", nc());
                        jSONObject7.put("btn_background_dest_color", ca());
                        jSONObject7.put("top_splash_clicktext", cl());
                        jSONObject7.put("splash_load_time_optimization", gk());
                        if (nx() != null) {
                            jSONObjectC = nx().c();
                        } else {
                            jSONObjectC = null;
                        }
                        jSONObject7.put("text_config", jSONObjectC);
                        if (iw() != null) {
                            jSONObjectC2 = iw().c();
                        } else {
                            jSONObjectC2 = null;
                        }
                        jSONObject7.put("top_text_config", jSONObjectC2);
                        jSONObject7.put("sliding_distance", hm());
                        if (bj() != null) {
                            jSONObjectN = bj().n();
                        } else {
                            jSONObjectN = null;
                        }
                        jSONObject7.put("slide_area", jSONObjectN);
                        jSONObject2.put("splash_control", jSONObject7);
                        JSONObject jSONObject8 = new JSONObject();
                        jSONObject8.put("position", bp());
                        jSONObject8.put("left_or_right_margin", ph());
                        jSONObject8.put("top_or_bottom_margin", dr());
                        iuVar = this.nx;
                        if (iuVar == null) {
                            iUj = 1;
                        } else {
                            iUj = iuVar.uj();
                        }
                        jSONObject8.put("skip_style", iUj);
                        iuVar2 = this.nx;
                        if (iuVar2 == null) {
                            iN = 0;
                        } else {
                            iN = iuVar2.n();
                        }
                        jSONObject8.put("hide_native_skip_logo", iN);
                        jSONObject2.put("skip_control", jSONObject8);
                        JSONObject jSONObject9 = new JSONObject();
                        jSONObject9.put("show_type", ly());
                        jSONObject9.put("blank", px());
                        jSONObject9.put("half_blank", fk());
                        jSONObject2.put("splash_compliance_bar", jSONObject9);
                        jSONObject2.put("fix_click_sequence", h());
                        if (yt() != null) {
                            jSONObject = new JSONObject();
                            setEntrySet = yt().entrySet();
                            if (setEntrySet != null && !setEntrySet.isEmpty()) {
                                for (Map.Entry<String, Object> entry : setEntrySet) {
                                    jSONObject.put(entry.getKey(), entry.getValue());
                                }
                            }
                            jSONObject2.put("media_ext", jSONObject);
                        }
                        jSONObject2.put("isDirectDownload", hd());
                        jSONObject2.put("page_render_type", tx());
                        jSONObject2.put("promotion_type", ma());
                        jSONObject2.put("if_lpua_package", this.jm);
                        jSONObject2.put("click_freq", this.f13725fb);
                        cVarV = v();
                        if (cVarV != null) {
                            JSONObject jSONObject10 = new JSONObject();
                            jSONObject10.put("id", cVarV.c());
                            jSONObject10.put(TKDownloadReason.KSAD_TK_MD5, cVarV.tt());
                            jSONObject10.put("url", cVarV.ve());
                            jSONObject10.put("scene", cVarV.uj());
                            jSONObject2.put("ugeno", jSONObject10);
                        }
                        cVarOs = os();
                        if (cVarOs != null) {
                            JSONObject jSONObject11 = new JSONObject();
                            jSONObject11.put("product_infos", cVarOs.c());
                            jSONObject11.put(PayCenterOrderRequest.PAY_TYPE_COUPON, cVarOs.tt());
                            jSONObject11.put("render_config", cVarOs.ve());
                            jSONObject11.put("live_room_data", cVarOs.uj());
                            jSONObject11.putOpt("ec_mall_conf", cVarOs.n());
                            jSONObject2.put("dylite_info", jSONObject11);
                        }
                        jSONObject2.put("native_lp_data", lo());
                        jSONObject2.put("native_lp_tpl_id", pu());
                        jSONObject2.put("native_lp_ugen_url", lt());
                        jSONObject2.put("native_lp_ugen_md5", to());
                        jSONObject2.put(COSHttpResponseKey.DOWNLOAD_URL, l());
                        jSONObject2.put("native_lp_is_preload", tk());
                        if (tk()) {
                            jSONObject2.put("native_lp_content", kp());
                        }
                        jSONObject2.put("market_url", gr());
                        jSONObject2.put("close_on_dislike", lx());
                        aVarRh = rh();
                        if (aVarRh != null) {
                            JSONObject jSONObject12 = new JSONObject();
                            jSONObject12.put("developer_name", aVarRh.sp());
                            jSONObject12.put("app_version", aVarRh.n());
                            jSONObject12.put("permissions", aVarRh.t());
                            jSONObject12.put("privacy_policy_url", aVarRh.x());
                            jSONObject12.put("package_name", aVarRh.u());
                            jSONObject12.put("app_name", aVarRh.yp());
                            jSONObject12.put("score", aVarRh.ve());
                            jSONObject12.put("creative_tags", aVarRh.uj());
                            jSONObject12.put("permissions_url", aVarRh.tt());
                            jSONObject12.put("desc_url", aVarRh.i());
                            jSONObject12.put("reg_number", aVarRh.da());
                            jSONObject12.put("reg_url", aVarRh.sl());
                            jSONObject2.put("app_manage", jSONObject12);
                        }
                        zmVarPo = po();
                        if (zmVarPo != null) {
                            JSONObject jSONObject13 = new JSONObject();
                            jSONObject13.put("ugen_dialog_url", zmVarPo.tt());
                            jSONObject13.put("ugen_dialog_md5", zmVarPo.ve());
                            jSONObject13.put("dialog_style", zmVarPo.c());
                            jSONObject2.put("easy_dl_dialog", jSONObject13);
                        }
                        if (la() != null) {
                            jSONObject2.put("easy_pl_material", la());
                        }
                        jSONObject2.put("micro_app_type", p());
                        jSONObject2.put("app_manage_type", st());
                        i10 = 1;
                        if (en() == 1) {
                            i11 = 1;
                        } else {
                            i11 = 0;
                        }
                        try {
                            jSONObject2.put("lp_down_rule", i11);
                            jSONObject2.put("auction_price", em());
                            jSONObject2.put("price", j());
                            jSONObject2.put("ad_info", mk());
                            jSONObject2.put("adx_name", dn());
                            jSONObject2.put("no_default_ttdsp_price", ku());
                            jSONObject2.put("endcard_close_time", hz());
                            jSONObject2.put("proportion_watching", cs());
                            jSONObject2.put("video_skip_result", wn());
                            jSONObject2.put("shake_value", ge());
                            jSONObject2.put("deep_shake_value", tw());
                            jSONObject2.put("rotation_angle", br());
                            jSONObject2.put("calculation_method", e());
                            jSONObject2.put("calculation_method_twist", pe());
                            jSONObject2.put("show_poll_time", m17if());
                            jSONObject2.put("dynamic_join_type", il());
                            jSONObject2.put("dynamic_join_duration", pb());
                            jSONObject2.put("is_web_meta", s_());
                            jSONObject2.put("union_session_key", rl());
                            jSONObject2.put("cache_ext", q());
                            jSONObject2.put("cache_time", b());
                            jSONObject2.put("req_id", oz());
                            jSONObject2.put(PointParamKey.IS_CACHE, r());
                            jSONObject2.put("log_ext", s());
                            jSONObject2.put("material_key", y());
                            jSONObject2.put("need_get_materials", iu());
                            jSONObject2.put("s_send_ts", dz());
                            jSONObject2.put("parse_material_ts", kk());
                            hqVar = this.f13719c;
                            if (hqVar != null) {
                                jSONObject2.put("wc_miniapp_info", hqVar.i());
                            }
                            obj = this.ve;
                            if (obj != null) {
                                jSONObject2.put(PluginConstants.KEY_APP_ID, obj);
                            }
                            slVarMn = mn();
                            if (slVarMn != null) {
                                JSONObject jSONObject14 = new JSONObject();
                                jSONObject14.put("click_trigger_type", slVarMn.c());
                                jSONObject14.put("shake_start_time", slVarMn.tt());
                                jSONObject14.put("shake_end_time", slVarMn.ve());
                                jSONObject2.put("click_trigger_config", jSONObject14);
                            }
                            jSONObject2.put("web_monitor_rate", md());
                            if (ix() != null) {
                                ix().c(jSONObject2);
                            }
                        } catch (Exception unused3) {
                        }
                    } catch (Exception unused4) {
                        i10 = 1;
                        if (js() != null) {
                            js().c(jSONObject2);
                        }
                        if (!bz()) {
                            i10 = 0;
                        }
                        jSONObject2.put("is_ec_mall", i10);
                        jSONObject2.put("live_room_id", da());
                        jSONObject2.put("ad_type", xl());
                        jSONObject2.put("live_interaction_type", n());
                        jSONObject2.put("ec_schema", t_());
                        jSONObject2.put("ecom_live_params", t());
                        cuVarDp = dp();
                        if (cuVarDp != null) {
                            cuVarDp.c(jSONObject2);
                        }
                        qyVarU = u();
                        if (qyVarU != null) {
                            qyVarU.c(jSONObject2);
                        }
                        pfVarGt = gt();
                        if (pfVarGt != null) {
                            try {
                                JSONObject jSONObject15 = new JSONObject();
                                jSONObject15.put("reward_live_deep_link_user_id", pfVarGt.c());
                                jSONObject15.put("reward_live_deep_link_request_id", pfVarGt.a());
                                jSONObject15.put("reward_live_deep_link_room_id", pfVarGt.tt());
                                jSONObject15.put("reward_live_last_time", pfVarGt.n());
                                jSONObject15.put("reawrd_live_short_touch_params", pfVarGt.ve());
                                jSONObject15.put("reawrd_live_extra_pangle_scheme_params", pfVarGt.uj());
                                jSONObject2.put("reward_live_deep_link_params", jSONObject15);
                            } catch (Exception unused5) {
                            }
                        }
                        zVarQi = qi();
                        if (zVarQi != null) {
                            try {
                                JSONObject jSONObject16 = new JSONObject();
                                jSONObject16.put("style_type", zVarQi.c());
                                jSONObject16.put("image_url", zVarQi.tt());
                                jSONObject16.put("position", zVarQi.ve());
                                jSONObject16.put("image_height", zVarQi.uj());
                                jSONObject16.put("image_scale_rate", zVarQi.a());
                                jSONObject16.put("image_gif_url", zVarQi.n());
                                jSONObject16.put("image_gif_aspect_ratio", zVarQi.sp());
                                jSONObject2.put("dynamic_join_coupon_style", jSONObject16);
                            } catch (Exception unused6) {
                            }
                        }
                        ypVarMy = my();
                        if (ypVarMy != null) {
                            try {
                                jSONObject2.put(PayCenterOrderRequest.PAY_TYPE_COUPON, ypVarMy.c());
                            } catch (JSONException e10) {
                                com.byazt.nr.m.c(e10);
                            }
                        }
                        svVarSl = sl();
                        if (svVarSl != null) {
                            try {
                                jSONObject2.put("live_info", svVarSl.c());
                            } catch (JSONException unused7) {
                            }
                        }
                        qVarC_ = C_();
                        if (qVarC_ != null) {
                            try {
                                jSONObject2.put("saas_info", qVarC_.c());
                            } catch (JSONException unused8) {
                            }
                        }
                        kkVarD_ = D_();
                        if (kkVarD_ != null) {
                            try {
                                jSONObject2.put("saas_on_click_material", kkVarD_.c());
                            } catch (JSONException unused9) {
                            }
                        }
                        jSONObject2.put("live_sdk_status_while_first_click", this.qe);
                        objCx = cx();
                        if (objCx != null) {
                            try {
                                jSONObject2.put(com.umeng.analytics.pro.f.K, objCx);
                            } catch (Exception unused10) {
                            }
                        }
                        jVarEk = ek();
                        if (jVarEk != null) {
                            try {
                                JSONObject jSONObject17 = new JSONObject();
                                jSONObject17.put("video_adapter_type", jVarEk.c());
                                jSONObject17.put("video_mute_type", jVarEk.tt());
                                jSONObject2.put("video_config", jSONObject17);
                            } catch (Exception unused11) {
                            }
                        }
                        jSONObject2.put("not_valid_download_url", B_());
                        jSONObject2.put("dynamic_configs", m());
                        strWo = wo();
                        if (!TextUtils.isEmpty(strWo)) {
                            jSONObject2.put("gnd_prefetch_cache_key", strWo);
                            jSONObject2.put("gnd_prefetch_timing", cj());
                        }
                        jSONObject2.put("twist_config", lv());
                        jSONObject2.put("shake_interact_conf", cy());
                        jSONObject2.put("twist_interact_conf", yx());
                        hVar = this.ls;
                        if (hVar != null) {
                            hVar.tt(jSONObject2);
                        }
                        orVar = this.wq;
                        if (orVar != null) {
                            orVar.tt(jSONObject2);
                        }
                        rhVarIc = ic();
                        if (rhVarIc != null) {
                            try {
                                JSONObject jSONObject18 = new JSONObject();
                                jSONObject18.put("lottie_tmp_url", rhVarIc.ve());
                                jSONArray = new JSONArray();
                                listC = rhVarIc.c();
                                if (listC != null) {
                                    for (zb zbVar2 : listC) {
                                        if (zbVar2 != null) {
                                            JSONObject jSONObject19 = new JSONObject();
                                            jSONObject19.put("width", zbVar2.tt());
                                            str2 = str;
                                            jSONObject19.put(str2, zbVar2.ve());
                                            jSONObject19.put("url", zbVar2.c());
                                            jSONArray.put(jSONObject19);
                                        } else {
                                            str2 = str;
                                        }
                                        str = str2;
                                    }
                                }
                                jSONArray2 = new JSONArray();
                                listTt = rhVarIc.tt();
                                if (listTt != null) {
                                    for (com.byazt.jzl.uj ujVar : listTt) {
                                        if (ujVar != null) {
                                            JSONObject jSONObject20 = new JSONObject();
                                            jSONObject20.put("file_hash", ujVar.getFileHash());
                                            jSONObject20.put(com.umeng.analytics.pro.bm.f84423z, ujVar.getResolution());
                                            jSONObject20.put("video_duration", ujVar.getVideo_duration());
                                            jSONObject20.put("video_url", ujVar.getVideo_url());
                                            jSONArray2.put(jSONObject20);
                                        }
                                    }
                                }
                                JSONObject jSONObject21 = new JSONObject();
                                jSONObject21.put("bg_anim_img_android", jSONArray);
                                jSONObject21.put("bg_videos", jSONArray2);
                                JSONObject jSONObject22 = new JSONObject();
                                jSONObject22.put("sdk_template_info", jSONObject18);
                                jSONObject22.put("aigc", jSONObject21);
                                jSONObject2.put("sdk_derive_info", jSONObject22);
                            } catch (JSONException unused12) {
                            }
                        }
                        jSONObject2.put("disable_video_join", zb());
                        jSONObject2.put("disable_top_bar", nb());
                        jSONObject2.put("disable_rtn_button", bx());
                        jSONObject2.put("disable_safe_area", d());
                        jSONObject2.put("disable_slide_return", cu());
                        jSONObject2.put("_ad_index", fq());
                        jSONObject2.put("is_height_resize", rm());
                        return jSONObject2;
                    }
                } catch (Exception unused13) {
                    str = "height";
                    i10 = 1;
                    if (js() != null) {
                        js().c(jSONObject2);
                    }
                    if (!bz()) {
                        i10 = 0;
                    }
                    jSONObject2.put("is_ec_mall", i10);
                    jSONObject2.put("live_room_id", da());
                    jSONObject2.put("ad_type", xl());
                    jSONObject2.put("live_interaction_type", n());
                    jSONObject2.put("ec_schema", t_());
                    jSONObject2.put("ecom_live_params", t());
                    cuVarDp = dp();
                    if (cuVarDp != null) {
                        cuVarDp.c(jSONObject2);
                    }
                    qyVarU = u();
                    if (qyVarU != null) {
                        qyVarU.c(jSONObject2);
                    }
                    pfVarGt = gt();
                    if (pfVarGt != null) {
                        JSONObject jSONObject110 = new JSONObject();
                        jSONObject110.put("reward_live_deep_link_user_id", pfVarGt.c());
                        jSONObject110.put("reward_live_deep_link_request_id", pfVarGt.a());
                        jSONObject110.put("reward_live_deep_link_room_id", pfVarGt.tt());
                        jSONObject110.put("reward_live_last_time", pfVarGt.n());
                        jSONObject110.put("reawrd_live_short_touch_params", pfVarGt.ve());
                        jSONObject110.put("reawrd_live_extra_pangle_scheme_params", pfVarGt.uj());
                        jSONObject2.put("reward_live_deep_link_params", jSONObject110);
                    }
                    zVarQi = qi();
                    if (zVarQi != null) {
                        JSONObject jSONObject111 = new JSONObject();
                        jSONObject111.put("style_type", zVarQi.c());
                        jSONObject111.put("image_url", zVarQi.tt());
                        jSONObject111.put("position", zVarQi.ve());
                        jSONObject111.put("image_height", zVarQi.uj());
                        jSONObject111.put("image_scale_rate", zVarQi.a());
                        jSONObject111.put("image_gif_url", zVarQi.n());
                        jSONObject111.put("image_gif_aspect_ratio", zVarQi.sp());
                        jSONObject2.put("dynamic_join_coupon_style", jSONObject111);
                    }
                    ypVarMy = my();
                    if (ypVarMy != null) {
                        jSONObject2.put(PayCenterOrderRequest.PAY_TYPE_COUPON, ypVarMy.c());
                    }
                    svVarSl = sl();
                    if (svVarSl != null) {
                        jSONObject2.put("live_info", svVarSl.c());
                    }
                    qVarC_ = C_();
                    if (qVarC_ != null) {
                        jSONObject2.put("saas_info", qVarC_.c());
                    }
                    kkVarD_ = D_();
                    if (kkVarD_ != null) {
                        jSONObject2.put("saas_on_click_material", kkVarD_.c());
                    }
                    jSONObject2.put("live_sdk_status_while_first_click", this.qe);
                    objCx = cx();
                    if (objCx != null) {
                        jSONObject2.put(com.umeng.analytics.pro.f.K, objCx);
                    }
                    jVarEk = ek();
                    if (jVarEk != null) {
                        JSONObject jSONObject112 = new JSONObject();
                        jSONObject112.put("video_adapter_type", jVarEk.c());
                        jSONObject112.put("video_mute_type", jVarEk.tt());
                        jSONObject2.put("video_config", jSONObject112);
                    }
                    jSONObject2.put("not_valid_download_url", B_());
                    jSONObject2.put("dynamic_configs", m());
                    strWo = wo();
                    if (!TextUtils.isEmpty(strWo)) {
                        jSONObject2.put("gnd_prefetch_cache_key", strWo);
                        jSONObject2.put("gnd_prefetch_timing", cj());
                    }
                    jSONObject2.put("twist_config", lv());
                    jSONObject2.put("shake_interact_conf", cy());
                    jSONObject2.put("twist_interact_conf", yx());
                    hVar = this.ls;
                    if (hVar != null) {
                        hVar.tt(jSONObject2);
                    }
                    orVar = this.wq;
                    if (orVar != null) {
                        orVar.tt(jSONObject2);
                    }
                    rhVarIc = ic();
                    if (rhVarIc != null) {
                        JSONObject jSONObject113 = new JSONObject();
                        jSONObject113.put("lottie_tmp_url", rhVarIc.ve());
                        jSONArray = new JSONArray();
                        listC = rhVarIc.c();
                        if (listC != null) {
                            while (r4.hasNext()) {
                                if (zbVar2 != null) {
                                    JSONObject jSONObject114 = new JSONObject();
                                    jSONObject114.put("width", zbVar2.tt());
                                    str2 = str;
                                    jSONObject114.put(str2, zbVar2.ve());
                                    jSONObject114.put("url", zbVar2.c());
                                    jSONArray.put(jSONObject114);
                                } else {
                                    str2 = str;
                                }
                                str = str2;
                            }
                        }
                        jSONArray2 = new JSONArray();
                        listTt = rhVarIc.tt();
                        if (listTt != null) {
                            while (r0.hasNext()) {
                                if (ujVar != null) {
                                    JSONObject jSONObject23 = new JSONObject();
                                    jSONObject23.put("file_hash", ujVar.getFileHash());
                                    jSONObject23.put(com.umeng.analytics.pro.bm.f84423z, ujVar.getResolution());
                                    jSONObject23.put("video_duration", ujVar.getVideo_duration());
                                    jSONObject23.put("video_url", ujVar.getVideo_url());
                                    jSONArray2.put(jSONObject23);
                                }
                            }
                        }
                        JSONObject jSONObject24 = new JSONObject();
                        jSONObject24.put("bg_anim_img_android", jSONArray);
                        jSONObject24.put("bg_videos", jSONArray2);
                        JSONObject jSONObject25 = new JSONObject();
                        jSONObject25.put("sdk_template_info", jSONObject113);
                        jSONObject25.put("aigc", jSONObject24);
                        jSONObject2.put("sdk_derive_info", jSONObject25);
                    }
                    jSONObject2.put("disable_video_join", zb());
                    jSONObject2.put("disable_top_bar", nb());
                    jSONObject2.put("disable_rtn_button", bx());
                    jSONObject2.put("disable_safe_area", d());
                    jSONObject2.put("disable_slide_return", cu());
                    jSONObject2.put("_ad_index", fq());
                    jSONObject2.put("is_height_resize", rm());
                    return jSONObject2;
                }
            } else {
                objJm = jm();
                if (objJm != null) {
                    jSONObject2.put("session_params", objJm);
                }
                objYm = ym();
                if (objYm != null) {
                    jSONObject2.put("cache_control", objYm);
                }
                ttVarIj = ij();
                if (ttVarIj != null) {
                    jSONObject2.put("adslot", com.byazt.aas.md.c(ttVarIj));
                }
                listPa = pa();
                if (listPa != null) {
                    jSONArray5 = new JSONArray();
                    while (r12.hasNext()) {
                        JSONObject jSONObject26 = new JSONObject();
                        jSONObject26.put("url", zbVar.c());
                        jSONObject26.put("height", zbVar.ve());
                        jSONObject26.put("width", zbVar.tt());
                        jSONObject26.put("image_preview", zbVar.a());
                        jSONObject26.put("image_key", zbVar.sp());
                        jSONArray5.put(jSONObject26);
                    }
                    jSONObject2.put("image", jSONArray5);
                }
                listPr = pr();
                if (listPr != null) {
                    jSONArray4 = new JSONArray();
                    it3 = listPr.iterator();
                    while (it3.hasNext()) {
                        jSONArray4.put(it3.next());
                    }
                    jSONObject2.put("show_url", jSONArray4);
                }
                listGl = gl();
                if (listGl != null) {
                    jSONArray3 = new JSONArray();
                    it2 = listGl.iterator();
                    while (it2.hasNext()) {
                        jSONArray3.put(it2.next());
                    }
                    jSONObject2.put("click_url", jSONArray3);
                }
                jSONObject2.put("phone_num", tp());
                jSONObject2.put("title", v_());
                jSONObject2.put("download_num", ru());
                jSONObject2.put(com.xinzhu.overmind.client.hook.proxies.context.providers.b.f89370k, op());
                jSONObject2.put("ext", w_());
                jSONObject2.put("req_id", qy());
                jSONObject2.put("image_mode", id());
                jSONObject2.put("intercept_flag", az());
                jSONObject2.put("web_inspector", is());
                jSONObject2.put("button_text", tj());
                jSONObject2.put("ad_logo", mq());
                jSONObject2.put("video_adaptation", vi());
                jSONObject2.put("feed_video_opentype", vp());
                jSONObject2.put("feed_reward_type", kz());
                jSONObject2.put("orientation", by());
                jSONObject2.put("aspect_ratio", fr());
                jSONObject2.put("aspect_margin", qe());
                jSONObject2.put("corner_radius", jy());
                nVarZ = z();
                if (nVarZ != null) {
                    JSONObject jSONObject27 = new JSONObject();
                    jSONObject27.put("app_name", nVarZ.ve());
                    jSONObject27.put("package_name", nVarZ.uj());
                    jSONObject27.put(COSHttpResponseKey.DOWNLOAD_URL, nVarZ.tt());
                    jSONObject27.put("score", nVarZ.n());
                    str = "height";
                    jSONObject27.put("comment_num", nVarZ.a());
                    jSONObject27.put("quick_app_url", nVarZ.c());
                    jSONObject27.put("app_size", nVarZ.sp());
                    jSONObject2.put("app", jSONObject27);
                } else {
                    str = "height";
                }
                rlVarNm = nm();
                if (rlVarNm != null) {
                    jSONObject2.put("download_sdk_conf", rlVarNm.ve());
                }
                if (xd() != null) {
                    xd().tt(jSONObject2);
                }
                if (xo() != null) {
                    xo().c(jSONObject2);
                }
                if (yp() != null) {
                    yp().c(jSONObject2);
                }
                if (wq() != null) {
                    wq().c(jSONObject2);
                }
                if (gy() != null) {
                    gy().tt(jSONObject2);
                }
                if (gx() != null) {
                    gx().c(jSONObject2);
                }
                if (pn() != null) {
                    pn().c(jSONObject2);
                }
                if (ef() != null) {
                    ef().c(jSONObject2);
                }
                if (yo() != null) {
                    yo().c(jSONObject2);
                }
                if (fb() != null) {
                    fb().c(jSONObject2);
                }
                if (jc() != null) {
                    jc().c(jSONObject2);
                }
                if (hq() != null) {
                    hq().tt(jSONObject2);
                }
                jSONObject2.put("count_down", xr());
                jSONObject2.put("expiration_time", uv());
                jSONObject2.put("client_expiration_time", uv());
                jSONObject2.put("_child_metas", hl());
                jSONObject2.put("_meta_life_record", bn().c());
                jSONObject2.put("src_req_id", xv());
                jSONObject2.put("player_type", xx());
                jSONObject2.put("video_encode_type", hc());
                jSONObject2.put("feed_video_finish_type", ir());
                jSONObject2.put("video_voice_control", ab());
                jSONObject2.put("if_show_win", oq());
                if (o() != null) {
                    o().c(jSONObject2);
                }
                if (u_() != null) {
                    u_().c(jSONObject2);
                }
                jSONObject2.put("if_both_open", jf());
                jSONObject2.put("if_double_deeplink", vr());
                JSONObject jSONObject28 = new JSONObject();
                jSONObject28.put("splash_clickarea", pl());
                jSONObject28.put("splash_clicktext", di());
                jSONObject28.put("area_height", hg());
                jSONObject28.put("area_width", sd());
                jSONObject28.put("area_blank_height", k());
                jSONObject28.put("half_blank_height", iy());
                jSONObject28.put("splash_style_id", nc());
                jSONObject28.put("btn_background_dest_color", ca());
                jSONObject28.put("top_splash_clicktext", cl());
                jSONObject28.put("splash_load_time_optimization", gk());
                if (nx() != null) {
                    jSONObjectC = nx().c();
                } else {
                    jSONObjectC = null;
                }
                jSONObject28.put("text_config", jSONObjectC);
                if (iw() != null) {
                    jSONObjectC2 = iw().c();
                } else {
                    jSONObjectC2 = null;
                }
                jSONObject28.put("top_text_config", jSONObjectC2);
                jSONObject28.put("sliding_distance", hm());
                if (bj() != null) {
                    jSONObjectN = bj().n();
                } else {
                    jSONObjectN = null;
                }
                jSONObject28.put("slide_area", jSONObjectN);
                jSONObject2.put("splash_control", jSONObject28);
                JSONObject jSONObject29 = new JSONObject();
                jSONObject29.put("position", bp());
                jSONObject29.put("left_or_right_margin", ph());
                jSONObject29.put("top_or_bottom_margin", dr());
                iuVar = this.nx;
                if (iuVar == null) {
                    iUj = 1;
                } else {
                    iUj = iuVar.uj();
                }
                jSONObject29.put("skip_style", iUj);
                iuVar2 = this.nx;
                if (iuVar2 == null) {
                    iN = 0;
                } else {
                    iN = iuVar2.n();
                }
                jSONObject29.put("hide_native_skip_logo", iN);
                jSONObject2.put("skip_control", jSONObject29);
                JSONObject jSONObject30 = new JSONObject();
                jSONObject30.put("show_type", ly());
                jSONObject30.put("blank", px());
                jSONObject30.put("half_blank", fk());
                jSONObject2.put("splash_compliance_bar", jSONObject30);
                jSONObject2.put("fix_click_sequence", h());
                if (yt() != null) {
                    jSONObject = new JSONObject();
                    setEntrySet = yt().entrySet();
                    if (setEntrySet != null) {
                        while (r10.hasNext()) {
                            jSONObject.put(entry.getKey(), entry.getValue());
                        }
                    }
                    jSONObject2.put("media_ext", jSONObject);
                }
                jSONObject2.put("isDirectDownload", hd());
                jSONObject2.put("page_render_type", tx());
                jSONObject2.put("promotion_type", ma());
                jSONObject2.put("if_lpua_package", this.jm);
                jSONObject2.put("click_freq", this.f13725fb);
                cVarV = v();
                if (cVarV != null) {
                    JSONObject jSONObject115 = new JSONObject();
                    jSONObject115.put("id", cVarV.c());
                    jSONObject115.put(TKDownloadReason.KSAD_TK_MD5, cVarV.tt());
                    jSONObject115.put("url", cVarV.ve());
                    jSONObject115.put("scene", cVarV.uj());
                    jSONObject2.put("ugeno", jSONObject115);
                }
                cVarOs = os();
                if (cVarOs != null) {
                    JSONObject jSONObject116 = new JSONObject();
                    jSONObject116.put("product_infos", cVarOs.c());
                    jSONObject116.put(PayCenterOrderRequest.PAY_TYPE_COUPON, cVarOs.tt());
                    jSONObject116.put("render_config", cVarOs.ve());
                    jSONObject116.put("live_room_data", cVarOs.uj());
                    jSONObject116.putOpt("ec_mall_conf", cVarOs.n());
                    jSONObject2.put("dylite_info", jSONObject116);
                }
                jSONObject2.put("native_lp_data", lo());
                jSONObject2.put("native_lp_tpl_id", pu());
                jSONObject2.put("native_lp_ugen_url", lt());
                jSONObject2.put("native_lp_ugen_md5", to());
                jSONObject2.put(COSHttpResponseKey.DOWNLOAD_URL, l());
                jSONObject2.put("native_lp_is_preload", tk());
                if (tk()) {
                    jSONObject2.put("native_lp_content", kp());
                }
                jSONObject2.put("market_url", gr());
                jSONObject2.put("close_on_dislike", lx());
                aVarRh = rh();
                if (aVarRh != null) {
                    JSONObject jSONObject117 = new JSONObject();
                    jSONObject117.put("developer_name", aVarRh.sp());
                    jSONObject117.put("app_version", aVarRh.n());
                    jSONObject117.put("permissions", aVarRh.t());
                    jSONObject117.put("privacy_policy_url", aVarRh.x());
                    jSONObject117.put("package_name", aVarRh.u());
                    jSONObject117.put("app_name", aVarRh.yp());
                    jSONObject117.put("score", aVarRh.ve());
                    jSONObject117.put("creative_tags", aVarRh.uj());
                    jSONObject117.put("permissions_url", aVarRh.tt());
                    jSONObject117.put("desc_url", aVarRh.i());
                    jSONObject117.put("reg_number", aVarRh.da());
                    jSONObject117.put("reg_url", aVarRh.sl());
                    jSONObject2.put("app_manage", jSONObject117);
                }
                zmVarPo = po();
                if (zmVarPo != null) {
                    JSONObject jSONObject118 = new JSONObject();
                    jSONObject118.put("ugen_dialog_url", zmVarPo.tt());
                    jSONObject118.put("ugen_dialog_md5", zmVarPo.ve());
                    jSONObject118.put("dialog_style", zmVarPo.c());
                    jSONObject2.put("easy_dl_dialog", jSONObject118);
                }
                if (la() != null) {
                    jSONObject2.put("easy_pl_material", la());
                }
                jSONObject2.put("micro_app_type", p());
                jSONObject2.put("app_manage_type", st());
                i10 = 1;
                if (en() == 1) {
                    i11 = 1;
                } else {
                    i11 = 0;
                }
                jSONObject2.put("lp_down_rule", i11);
                jSONObject2.put("auction_price", em());
                jSONObject2.put("price", j());
                jSONObject2.put("ad_info", mk());
                jSONObject2.put("adx_name", dn());
                jSONObject2.put("no_default_ttdsp_price", ku());
                jSONObject2.put("endcard_close_time", hz());
                jSONObject2.put("proportion_watching", cs());
                jSONObject2.put("video_skip_result", wn());
                jSONObject2.put("shake_value", ge());
                jSONObject2.put("deep_shake_value", tw());
                jSONObject2.put("rotation_angle", br());
                jSONObject2.put("calculation_method", e());
                jSONObject2.put("calculation_method_twist", pe());
                jSONObject2.put("show_poll_time", m17if());
                jSONObject2.put("dynamic_join_type", il());
                jSONObject2.put("dynamic_join_duration", pb());
                jSONObject2.put("is_web_meta", s_());
                jSONObject2.put("union_session_key", rl());
                jSONObject2.put("cache_ext", q());
                jSONObject2.put("cache_time", b());
                jSONObject2.put("req_id", oz());
                jSONObject2.put(PointParamKey.IS_CACHE, r());
                jSONObject2.put("log_ext", s());
                jSONObject2.put("material_key", y());
                jSONObject2.put("need_get_materials", iu());
                jSONObject2.put("s_send_ts", dz());
                jSONObject2.put("parse_material_ts", kk());
                hqVar = this.f13719c;
                if (hqVar != null) {
                    jSONObject2.put("wc_miniapp_info", hqVar.i());
                }
                obj = this.ve;
                if (obj != null) {
                    jSONObject2.put(PluginConstants.KEY_APP_ID, obj);
                }
                slVarMn = mn();
                if (slVarMn != null) {
                    JSONObject jSONObject119 = new JSONObject();
                    jSONObject119.put("click_trigger_type", slVarMn.c());
                    jSONObject119.put("shake_start_time", slVarMn.tt());
                    jSONObject119.put("shake_end_time", slVarMn.ve());
                    jSONObject2.put("click_trigger_config", jSONObject119);
                }
                jSONObject2.put("web_monitor_rate", md());
                if (ix() != null) {
                    ix().c(jSONObject2);
                }
            }
        } catch (Exception unused14) {
            str = "height";
        }
        if (js() != null) {
            js().c(jSONObject2);
        }
        try {
            if (!bz()) {
                i10 = 0;
            }
            jSONObject2.put("is_ec_mall", i10);
            jSONObject2.put("live_room_id", da());
            jSONObject2.put("ad_type", xl());
            jSONObject2.put("live_interaction_type", n());
            jSONObject2.put("ec_schema", t_());
        } catch (JSONException e11) {
            com.byazt.nr.m.c(e11);
        }
        try {
            jSONObject2.put("ecom_live_params", t());
        } catch (JSONException e12) {
            com.byazt.nr.m.c(e12);
        }
        cuVarDp = dp();
        if (cuVarDp != null) {
            cuVarDp.c(jSONObject2);
        }
        qyVarU = u();
        if (qyVarU != null) {
            qyVarU.c(jSONObject2);
        }
        pfVarGt = gt();
        if (pfVarGt != null) {
            JSONObject jSONObject1110 = new JSONObject();
            jSONObject1110.put("reward_live_deep_link_user_id", pfVarGt.c());
            jSONObject1110.put("reward_live_deep_link_request_id", pfVarGt.a());
            jSONObject1110.put("reward_live_deep_link_room_id", pfVarGt.tt());
            jSONObject1110.put("reward_live_last_time", pfVarGt.n());
            jSONObject1110.put("reawrd_live_short_touch_params", pfVarGt.ve());
            jSONObject1110.put("reawrd_live_extra_pangle_scheme_params", pfVarGt.uj());
            jSONObject2.put("reward_live_deep_link_params", jSONObject1110);
        }
        zVarQi = qi();
        if (zVarQi != null) {
            JSONObject jSONObject1111 = new JSONObject();
            jSONObject1111.put("style_type", zVarQi.c());
            jSONObject1111.put("image_url", zVarQi.tt());
            jSONObject1111.put("position", zVarQi.ve());
            jSONObject1111.put("image_height", zVarQi.uj());
            jSONObject1111.put("image_scale_rate", zVarQi.a());
            jSONObject1111.put("image_gif_url", zVarQi.n());
            jSONObject1111.put("image_gif_aspect_ratio", zVarQi.sp());
            jSONObject2.put("dynamic_join_coupon_style", jSONObject1111);
        }
        ypVarMy = my();
        if (ypVarMy != null) {
            jSONObject2.put(PayCenterOrderRequest.PAY_TYPE_COUPON, ypVarMy.c());
        }
        svVarSl = sl();
        if (svVarSl != null) {
            jSONObject2.put("live_info", svVarSl.c());
        }
        qVarC_ = C_();
        if (qVarC_ != null) {
            jSONObject2.put("saas_info", qVarC_.c());
        }
        kkVarD_ = D_();
        if (kkVarD_ != null) {
            jSONObject2.put("saas_on_click_material", kkVarD_.c());
        }
        try {
            jSONObject2.put("live_sdk_status_while_first_click", this.qe);
        } catch (JSONException unused15) {
        }
        objCx = cx();
        if (objCx != null) {
            jSONObject2.put(com.umeng.analytics.pro.f.K, objCx);
        }
        jVarEk = ek();
        if (jVarEk != null) {
            JSONObject jSONObject1112 = new JSONObject();
            jSONObject1112.put("video_adapter_type", jVarEk.c());
            jSONObject1112.put("video_mute_type", jVarEk.tt());
            jSONObject2.put("video_config", jSONObject1112);
        }
        try {
            jSONObject2.put("not_valid_download_url", B_());
        } catch (JSONException e13) {
            com.byazt.nr.m.c(e13);
        }
        try {
            jSONObject2.put("dynamic_configs", m());
            strWo = wo();
            if (!TextUtils.isEmpty(strWo)) {
                jSONObject2.put("gnd_prefetch_cache_key", strWo);
                jSONObject2.put("gnd_prefetch_timing", cj());
            }
        } catch (JSONException e14) {
            com.byazt.nr.m.c(e14);
        }
        try {
            jSONObject2.put("twist_config", lv());
            jSONObject2.put("shake_interact_conf", cy());
            jSONObject2.put("twist_interact_conf", yx());
        } catch (JSONException e15) {
            com.byazt.nr.m.c(e15);
        }
        try {
            hVar = this.ls;
            if (hVar != null) {
                hVar.tt(jSONObject2);
            }
        } catch (Throwable unused16) {
        }
        try {
            orVar = this.wq;
            if (orVar != null) {
                orVar.tt(jSONObject2);
            }
        } catch (Throwable unused17) {
        }
        rhVarIc = ic();
        if (rhVarIc != null) {
            JSONObject jSONObject1113 = new JSONObject();
            jSONObject1113.put("lottie_tmp_url", rhVarIc.ve());
            jSONArray = new JSONArray();
            listC = rhVarIc.c();
            if (listC != null) {
                while (r4.hasNext()) {
                    if (zbVar2 != null) {
                        JSONObject jSONObject1114 = new JSONObject();
                        jSONObject1114.put("width", zbVar2.tt());
                        str2 = str;
                        jSONObject1114.put(str2, zbVar2.ve());
                        jSONObject1114.put("url", zbVar2.c());
                        jSONArray.put(jSONObject1114);
                    } else {
                        str2 = str;
                    }
                    str = str2;
                }
            }
            jSONArray2 = new JSONArray();
            listTt = rhVarIc.tt();
            if (listTt != null) {
                while (r0.hasNext()) {
                    if (ujVar != null) {
                        JSONObject jSONObject210 = new JSONObject();
                        jSONObject210.put("file_hash", ujVar.getFileHash());
                        jSONObject210.put(com.umeng.analytics.pro.bm.f84423z, ujVar.getResolution());
                        jSONObject210.put("video_duration", ujVar.getVideo_duration());
                        jSONObject210.put("video_url", ujVar.getVideo_url());
                        jSONArray2.put(jSONObject210);
                    }
                }
            }
            JSONObject jSONObject211 = new JSONObject();
            jSONObject211.put("bg_anim_img_android", jSONArray);
            jSONObject211.put("bg_videos", jSONArray2);
            JSONObject jSONObject212 = new JSONObject();
            jSONObject212.put("sdk_template_info", jSONObject1113);
            jSONObject212.put("aigc", jSONObject211);
            jSONObject2.put("sdk_derive_info", jSONObject212);
        }
        try {
            jSONObject2.put("disable_video_join", zb());
            jSONObject2.put("disable_top_bar", nb());
            jSONObject2.put("disable_rtn_button", bx());
            jSONObject2.put("disable_safe_area", d());
            jSONObject2.put("disable_slide_return", cu());
        } catch (Throwable unused18) {
        }
        try {
            jSONObject2.put("_ad_index", fq());
        } catch (JSONException unused19) {
        }
        try {
            jSONObject2.put("is_height_resize", rm());
        } catch (JSONException unused20) {
        }
        return jSONObject2;
    }

    public JSONObject ym() {
        return this.f13726g;
    }

    public oz yo() {
        return this.hs;
    }

    public void yp(int i10) {
        this.nt = i10;
    }

    public boolean ys() {
        return this.bx;
    }

    public Map<String, Object> yt() {
        return this.f13718b;
    }

    public boolean yv() {
        return this.po == 3;
    }

    public JSONObject yx() {
        return this.vr;
    }

    public void z(int i10) {
        this.ny = i10;
    }

    @Override // com.byazt.eia.sl
    public boolean z_() {
        to toVar = this.cl;
        return toVar != null && toVar.c();
    }

    public int zb() {
        return this.fe;
    }

    public synchronized String zm() {
        if (TextUtils.isEmpty(this.f13738la)) {
            String strU = com.byazt.aas.nb.u(this);
            String strGu = gu();
            String strUj = uj();
            if (TextUtils.isEmpty(strU)) {
                strU = "0";
            }
            if (TextUtils.isEmpty(strUj)) {
                strUj = "0";
            }
            if (TextUtils.isEmpty(strGu)) {
                strGu = "0";
            }
            this.f13738la = strU + "_" + strGu + "_" + strUj;
        }
        return this.f13738la;
    }

    public h zo() {
        return this.ls;
    }

    public md zr() {
        return this.ey;
    }

    public void aw(int i10) {
        this.gy = Math.max(0, i10);
    }

    public void b(int i10) {
        if (i10 < 0 || i10 > 100) {
            return;
        }
        this.f13744nc = i10;
    }

    public void bm(int i10) {
        this.lt = i10;
    }

    public void bx(int i10) {
        this.f13722da = i10;
    }

    public void c(String str) {
        this.kn = str;
    }

    public void cu(int i10) {
        this.lr = i10;
    }

    public void d(int i10) {
        this.dr = i10;
    }

    public void da(String str) {
        this.cf = str;
    }

    public void eo(int i10) {
        this.tp = i10;
    }

    public void gr(String str) {
        this.f13727h = str;
    }

    public void gt(String str) {
        this.rh = str;
    }

    public void gu(String str) {
        this.qy = str;
    }

    public void h(int i10) {
        this.ph = i10;
    }

    public void hd(int i10) {
        this.cu = i10;
    }

    public void i(int i10) {
        this.ox = i10;
    }

    public void ic(int i10) {
        this.f13746p = i10;
    }

    public void iu(int i10) {
        this.qe = i10;
    }

    public void j(int i10) {
        this.f13741mc = i10;
    }

    public void kk(int i10) {
        int i11 = 500;
        if (i10 == Integer.MIN_VALUE) {
            i10 = com.byazt.aas.nb.sl(this) == 3 ? 500 : 1000;
        }
        if (i10 >= 500) {
            i11 = 3000;
            if (i10 <= 3000) {
                i11 = i10;
            }
        }
        this.cx = i11;
    }

    public void kp(int i10) {
        this.sd = i10;
    }

    public void l(int i10) {
        this.xd = i10;
    }

    public void lo(int i10) {
        this.hq = i10;
    }

    public void lr(int i10) {
        int i11 = this.aw;
        if (i11 == 100 || i11 == 102) {
            this.aw = i10;
        }
    }

    public void lt(int i10) {
        this.di = i10;
    }

    public void m(String str) {
        this.md = str;
    }

    public void md(int i10) {
        this.pn = i10;
    }

    public void my(String str) {
        this.f13760z = str;
    }

    public void n(boolean z10) {
        this.ku = z10;
    }

    public void nb(int i10) {
        this.f13742n = i10;
    }

    public void nu(String str) {
        this.f13730i = str;
    }

    public void or(int i10) {
        this.pf = i10;
    }

    public void os(int i10) {
        if (i10 <= 0 || i10 > 9) {
            this.f13735k = 3;
        } else {
            this.f13735k = i10;
        }
    }

    public void oz(int i10) {
        this.bp = i10;
    }

    public void p(int i10) {
        this.hj = i10;
    }

    public void pf(int i10) {
        this.f13716a = i10;
    }

    public void pu(int i10) {
        this.pl = i10;
    }

    public void q(int i10) {
        this.iy = i10;
    }

    public void qp(int i10) {
        this.f13737l = i10;
    }

    public void qy(String str) {
        this.rl = str;
    }

    public void r(int i10) {
        this.tu = i10;
    }

    @Override // com.byazt.eia.sp
    public a rh() {
        return this.ft;
    }

    public void rl(String str) {
        this.gt = str;
    }

    public void s(int i10) {
        this.f13725fb = i10;
    }

    public void sl(String str) {
        this.jt = str;
    }

    public void sp(int i10) {
        this.ge = i10;
    }

    public void sv(int i10) {
        this.gx = i10;
    }

    public void t(int i10) {
        this.op = i10;
    }

    public void tk(int i10) {
        if (i10 < 0 || i10 > 180) {
            this.bj = 50;
        } else {
            this.bj = i10;
        }
    }

    public void to(int i10) {
        if (i10 < 12) {
            i10 = 12;
        }
        if (i10 > 20) {
            i10 = 20;
        }
        this.iw = i10;
    }

    public void u(int i10) {
        this.qp = i10;
    }

    public void uj(boolean z10) {
        this.nq = z10;
    }

    public void v(int i10) {
        this.st = i10;
    }

    public void ve(String str) {
        this.f13748pb = str;
    }

    public void x(int i10) {
        this.br = i10;
    }

    public void y(int i10) {
        this.jm = i10;
    }

    public void yp(String str) {
        this.bw = str;
    }

    public void yv(int i10) {
        this.ir = i10;
    }

    public void z(String str) {
        this.f13747pa = str;
    }

    public void zb(int i10) {
        if (i10 != 1) {
            i10 = 0;
        }
        this.pr = i10;
    }

    public void a(String str) {
        this.ys = str;
    }

    public void aw(String str) {
        this.f13751ra = str;
    }

    public void bx(String str) {
        this.f13745o = str;
    }

    public void c(eo eoVar) {
        if (eoVar == null) {
            return;
        }
        if (this.cs == null) {
            this.cs = new ArrayList();
        }
        this.cs.add(eoVar);
    }

    public void cu(String str) {
        this.hg = str;
    }

    public void d(String str) {
        this.tt = str;
    }

    public void da(boolean z10) {
        this.sv = z10;
    }

    public void eo(String str) {
        this.ej = str;
    }

    @Override // com.byazt.eia.sp
    public String gr() {
        return this.f13733j;
    }

    @Override // com.byazt.eia.sl
    public pf gt() {
        return this.gk;
    }

    @Override // com.byazt.eia.sp
    public String gu() {
        return this.gu;
    }

    public void h(String str) {
        this.f13733j = str;
    }

    public void i(String str) {
        this.vi = str;
    }

    @Override // com.byazt.eia.i
    public String m() {
        return this.uv;
    }

    public void md(String str) {
        this.to = str;
    }

    @Override // com.byazt.eia.i
    public yp my() {
        return this.f13728hc;
    }

    public void n(String str) {
        this.ul = str;
    }

    public void nb(String str) {
        this.uv = str;
    }

    @Override // com.byazt.eia.sl
    public boolean nu() {
        return vr() == 1;
    }

    public void or(String str) {
        this.gl = str;
    }

    public void p(String str) {
        this.pu = str;
    }

    public void pf(String str) {
        this.mf = str;
    }

    public void qp(String str) {
        this.ve = str;
    }

    @Override // com.byazt.eia.i
    public String qy() {
        return this.eo;
    }

    public void rh(String str) {
        this.sl = str;
    }

    @Override // com.byazt.eia.i
    public String rl() {
        JSONObject jSONObject = this.f13724f;
        String strOptString = jSONObject != null ? jSONObject.optString("session_id") : "";
        return TextUtils.isEmpty(strOptString) ? lw() : strOptString;
    }

    public int sl(boolean z10) {
        if (this.sv || z10) {
            return vz();
        }
        return 102;
    }

    public void sp(String str) {
        this.up = str;
    }

    public void sv(String str) {
        this.cg = str;
    }

    public void t(boolean z10) {
        this.tk = z10;
    }

    public void tx(int i10) {
        this.fv = i10;
    }

    public void u(boolean z10) {
        this.sy = z10;
    }

    public void uj(String str) {
        this.fq = str;
    }

    public void ve(boolean z10) {
        this.em = z10;
    }

    public void x(String str) {
        this.kz = str;
    }

    @Override // com.byazt.eia.i
    public nu yp() {
        return this.yv;
    }

    public void yv(String str) {
        this.gu = str;
    }

    @Override // com.byazt.eia.sl
    public n z() {
        return this.gr;
    }

    public void zb(String str) {
        this.nl = str;
    }

    public static boolean uj(ic icVar) {
        try {
            return icVar.jm() != null && icVar.jm().optInt("parent_type") == 1;
        } catch (Exception unused) {
        }
    }

    public static boolean ve(ic icVar) {
        if (icVar == null) {
            return false;
        }
        return icVar.id() == 5 || icVar.id() == 15 || icVar.id() == 166;
    }

    public void a(boolean z10) {
        this.xg = z10;
    }

    public void da(long j10) {
        this.bm = j10;
    }

    @Override // com.byazt.eia.x
    public int i() {
        return this.f13742n;
    }

    public void m(boolean z10) {
        this.nm = z10;
    }

    public void n(JSONObject jSONObject) {
        this.f13755u = jSONObject;
    }

    public void sp(boolean z10) {
        this.mq = z10;
    }

    @Override // com.byazt.eia.i
    public String t() {
        return this.f13745o;
    }

    @Override // com.byazt.eia.i
    public qy u() {
        return this.ts;
    }

    public void x(boolean z10) {
        this.f13757w = z10;
    }

    public void yp(boolean z10) {
        this.yo = z10;
    }

    public void z(boolean z10) {
        this.tx = z10;
    }

    public void a(long j10) {
        this.or = j10;
    }

    @Override // com.byazt.eia.i
    public String da() {
        return this.mf;
    }

    public void i(boolean z10) {
        this.bx = z10;
    }

    public void n(long j10) {
        this.f13761zb = j10;
    }

    public void sl(long j10) {
        if (j10 != 0) {
            this.f13752ru = j10;
        } else {
            this.f13752ru = System.currentTimeMillis() / 1000;
        }
    }

    public void sp(long j10) {
        this.lo = j10;
    }

    public void t(JSONObject jSONObject) {
        this.ef = new hd(this, jSONObject);
    }

    public void u(JSONObject jSONObject) {
        this.f13736ka = jSONObject;
    }

    public void uj(JSONObject jSONObject) {
        this.f13754t = jSONObject;
    }

    @Override // com.byazt.eia.da
    public String x() {
        return this.f13730i;
    }

    public void a(JSONObject jSONObject) {
        this.f13724f = jSONObject;
    }

    public void c(boolean z10) {
        this.hz = z10;
    }

    public void da(JSONObject jSONObject) {
        this.jf = jSONObject;
    }

    public void i(long j10) {
        this.f13729hd = j10;
    }

    @Override // com.byazt.eia.i
    public int n() {
        return this.st;
    }

    public void sp(JSONObject jSONObject) {
        this.f13726g = jSONObject;
    }

    public void tt(int i10) {
        this.dn = i10;
    }

    public void uj(long j10) {
        this.my = j10;
    }

    public void x(long j10) {
        this.f13731ic = j10;
    }

    public static boolean n(ic icVar) {
        return icVar != null && icVar.jm == 1;
    }

    public static void sp(ic icVar) {
        if (icVar == null) {
            return;
        }
        icVar.mk = System.currentTimeMillis();
    }

    @Override // com.byazt.eia.sl
    public int a() {
        if (u_() != null) {
            return u_().uj();
        }
        return -1;
    }

    public void c(int i10) {
        this.po = i10;
    }

    public void i(JSONObject jSONObject) {
        this.ym = jSONObject;
    }

    @Override // com.byazt.eia.i
    public sv sl() {
        return this.f13717ab;
    }

    public void tt(boolean z10) {
        this.jy = z10;
    }

    @Override // com.byazt.eia.i
    public String uj() {
        return this.qy;
    }

    public void ve(long j10) {
        this.is = j10;
    }

    public void x(JSONObject jSONObject) {
        this.xw = jSONObject;
    }

    public static boolean a(ic icVar) {
        if (icVar == null || icVar.mk <= 0 || icVar.f13725fb <= 0) {
            return false;
        }
        boolean z10 = System.currentTimeMillis() - icVar.mk < ((long) icVar.f13725fb);
        if (z10) {
            icVar.by++;
            com.byazt.ukr.yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.ete.ic.1
                @Override // com.byazt.ee.c
                public com.byazt.qal.c c() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(QuarkInstallAppActivity_.COUNT_EXTRA, ic.this.by);
                    jSONObject.put("click_freq", ic.this.f13725fb);
                    return com.byazt.qal.tt.tt().c("click_intercept").x(ic.this.w_()).tt(jSONObject.toString());
                }
            }, "click_intercept");
        }
        return z10;
    }

    public void c(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.qt = new rh();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("sdk_template_info");
            if (jSONObjectOptJSONObject != null) {
                this.qt.c(jSONObjectOptJSONObject.optString("lottie_tmp_url"));
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("aigc");
            if (jSONObjectOptJSONObject2 != null) {
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("bg_anim_img_android");
                if (jSONArrayOptJSONArray != null) {
                    ArrayList arrayList = new ArrayList();
                    this.qt.c(arrayList);
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i10);
                        if (jSONObjectOptJSONObject3 != null) {
                            zb zbVar = new zb();
                            zbVar.c(jSONObjectOptJSONObject3.optInt("width"));
                            zbVar.tt(jSONObjectOptJSONObject3.optInt("height"));
                            zbVar.c(jSONObjectOptJSONObject3.optString("url"));
                            arrayList.add(zbVar);
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject2.optJSONArray("bg_videos");
                if (jSONArrayOptJSONArray2 != null) {
                    ArrayList arrayList2 = new ArrayList();
                    this.qt.tt(arrayList2);
                    for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                        JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray2.optJSONObject(i11);
                        if (jSONObjectOptJSONObject4 != null) {
                            com.byazt.jzl.uj ujVar = new com.byazt.jzl.uj();
                            ujVar.setFileHash(jSONObjectOptJSONObject4.optString("file_hash"));
                            ujVar.setResolution(jSONObjectOptJSONObject4.optString(com.umeng.analytics.pro.bm.f84423z));
                            ujVar.setVideo_duration(jSONObjectOptJSONObject4.optDouble("video_duration"));
                            ujVar.setVideo_url(jSONObjectOptJSONObject4.optString("video_url"));
                            arrayList2.add(ujVar);
                        }
                    }
                }
            }
        }
    }

    public void sl(JSONObject jSONObject) {
        this.vr = jSONObject;
    }

    public void tt(JSONObject jSONObject) {
        this.sf = jSONObject;
    }

    public void ve(JSONObject jSONObject) {
        this.il = jSONObject;
    }

    public static boolean tt(ic icVar) {
        return icVar != null && icVar.hj() == 1;
    }

    @Override // com.byazt.eia.x
    public String ve() {
        return this.sl;
    }

    public void tt(long j10) {
        this.an = j10;
    }

    public void ve(float f10) {
        this.px = f10;
    }

    public void zm(int i10) {
        this.os = i10;
    }

    public void tt(double d10) {
        if (d10 != 2.0d && d10 != 1.0d) {
            this.f13723e = 2;
        } else {
            this.f13723e = (int) d10;
        }
    }

    public void zm(String str) {
        this.eo = str;
    }

    @Override // com.byazt.eia.x
    public String tt() {
        return te() != null ? te().c() : "";
    }

    public void tt(zb zbVar) {
        this.yp.add(zbVar);
    }

    public void tt(float f10) {
        this.ly = f10;
    }

    public static boolean c(ic icVar) {
        return icVar != null && icVar.g() == 1;
    }

    public void c(long j10) {
        this.vp = j10;
    }

    public void c(com.byazt.seg.c cVar) {
        this.f0if = cVar;
    }

    public void c(com.byazt.lo.c cVar) {
        this.xl = cVar;
    }

    public void c(double d10) {
        if (d10 != 2.0d && d10 != 1.0d) {
            this.pe = 2;
        } else {
            this.pe = (int) d10;
        }
    }

    public void c(kp kpVar) {
        this.f13749q = kpVar;
    }

    public void c(or orVar) {
        this.wq = orVar;
    }

    public void c(lo loVar) {
        this.ix = loVar;
    }

    public void c(pu puVar) {
        this.ne = puVar;
    }

    public void c(my myVar) {
        this.lz = myVar;
    }

    public void c(oz ozVar) {
        this.hs = ozVar;
    }

    public void c(com.byazt.dj.tt ttVar) {
        if (ttVar == null) {
            com.byazt.dj.tt ttVar2 = this.f13750r;
            if (ttVar2 != null) {
                this.f13750r = new ve(ttVar2);
                return;
            }
            return;
        }
        this.f13750r = ttVar;
    }

    public void c(gt gtVar) {
        this.kp = gtVar;
    }

    public void c(s sVar) {
        this.mm = sVar;
    }

    public void c(a aVar) {
        this.ft = aVar;
    }

    public void c(xd xdVar) {
        this.f13743nb = xdVar;
    }

    public void c(tx txVar) {
        this.sp = txVar;
    }

    public void c(zb zbVar) {
        this.f13758x = zbVar;
    }

    public void c(n nVar) {
        this.gr = nVar;
    }

    public void c(rl rlVar) {
        this.zm = rlVar;
    }

    public void c(nu nuVar) {
        this.yv = nuVar;
    }

    public void c(Map<String, Object> map) {
        this.f13718b = map;
    }

    public void c(com.byazt.vo.tt ttVar) {
        this.uj = ttVar;
    }

    public void c(l lVar) {
        this.f13720ca = lVar;
    }

    public void c(qp qpVar) {
        this.te = qpVar;
    }

    public void c(float f10) {
        this.jg = f10;
    }

    public void c(zm zmVar) {
        this.xv = zmVar;
        if (zmVar != null) {
            String strTt = zmVar.tt();
            String strVe = this.xv.ve();
            if (TextUtils.isEmpty(strTt)) {
                return;
            }
            com.byazt.xs.da.c(strTt, strVe, (com.byazt.xs.ve) null);
        }
    }

    public void c(yv yvVar) {
        this.rp = yvVar;
    }

    public void c(to toVar) {
        this.cl = toVar;
    }

    public void c(pf pfVar) {
        this.gk = pfVar;
    }

    public void c(hq hqVar) {
        this.f13719c = hqVar;
    }

    public void c(iu iuVar) {
        this.nx = iuVar;
    }

    public void c(r rVar) {
        this.fk = rVar;
    }

    public void c(lt ltVar) {
        this.kk = ltVar;
    }

    public void c(yp ypVar) {
        this.f13728hc = ypVar;
    }

    public void c(sv svVar) {
        this.f13717ab = svVar;
    }

    public void c(q qVar) {
        this.dh = qVar;
    }

    public void c(z zVar) {
        this.en = zVar;
    }

    public void c(j jVar) {
        this.oq = jVar;
    }

    public void c(sl slVar) {
        this.tj = slVar;
    }

    public void c(bx bxVar) {
        this.f13756v = bxVar;
    }

    public void c(com.byazt.jzl.uj ujVar) {
        if (this.f13743nb == null) {
            this.f13743nb = new xd();
        }
        this.f13743nb.c(ujVar);
    }

    public void c(cu cuVar) {
        this.ri = cuVar;
    }

    public void c(qy qyVar) {
        this.ts = qyVar;
    }

    public void c(h hVar) {
        this.ls = hVar;
    }

    public void c(p pVar) {
        this.fr = pVar;
    }

    public void c(lr lrVar) {
        this.ck = lrVar;
    }

    public void c(md mdVar) {
        this.ey = mdVar;
    }

    public void c(kk kkVar) {
        this.f13734jc = kkVar;
    }
}
