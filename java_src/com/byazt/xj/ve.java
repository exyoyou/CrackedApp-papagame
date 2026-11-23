package com.byazt.xj;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.byazt.cd.x;
import com.byazt.dq.a;
import com.byazt.dq.n;
import com.byazt.pm.i;
import com.byazt.pm.yp;
import com.byazt.sa.uj;
import com.byazt.sz.da;
import com.byazt.sz.gt;
import com.byazt.sz.m;
import com.byazt.sz.nu;
import com.byazt.sz.qy;
import com.byazt.sz.rh;
import com.byazt.sz.sp;
import com.byazt.sz.u;
import com.sigmob.sdk.archives.tar.e;
import com.umeng.analytics.pro.f;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okio.Utf8;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1471, 54})
public abstract class ve<T extends View> implements View.OnTouchListener, uj, rh.c, rh.tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c<ViewGroup> f21863a;
    public boolean aw;
    public boolean az;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f21864b;
    public boolean bj;
    public float bm;
    public JSONObject bp;
    public ImageView.ScaleType bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f21865c;

    /* JADX INFO: renamed from: ca, reason: collision with root package name */
    public boolean f21866ca;
    public boolean cf;
    public boolean cl;
    public boolean cu;
    public long cx;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f21867d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f21868da;

    @Deprecated
    public a di;
    public boolean dr;
    public float dz;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f21869e;
    public com.byazt.hn.ve ej;
    public boolean eo;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f21870f;
    public boolean fk;
    public yp fv;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f21871g;
    public qy gk;
    public boolean gr;
    public float gt;
    public boolean gu;
    public Map<Integer, m> gx;
    public boolean gy;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f21872h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public float f21873hd;

    @Deprecated
    public com.byazt.dq.ve hg;
    public float hj;
    public rh hq;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.sz.yp f21874i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public boolean f21875ic;
    public boolean ij;
    public float ir;
    public boolean is;
    public float iu;
    public boolean iw;
    public u iy;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f21876j;

    @Deprecated
    public com.byazt.dq.tt jg;
    public GradientDrawable jt;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Deprecated
    public com.byazt.dq.uj.c f21877k;
    public int kk;
    public float kp;
    public boolean kz;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f21878l;
    public float lo;
    public float lr;
    public boolean lt;
    public com.byazt.vt.c ly;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f21879m;

    /* JADX INFO: renamed from: ma, reason: collision with root package name */
    public float f21880ma;
    public float md;
    public float mf;
    public com.byazt.cd.c.C0282c mm;
    public boolean mq;
    public float my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public T f21881n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public int f21882nb;

    /* JADX INFO: renamed from: nc, reason: collision with root package name */
    public String f21883nc;
    public com.byazt.xd.c nl;
    public sp nt;
    public float nu;
    public boolean nx;
    public gt ny;
    public boolean or;
    public ViewGroup.LayoutParams os;
    public com.byazt.rb.c oz;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f21884p;
    public boolean pe;
    public String pf;
    public boolean ph;
    public com.byazt.sz.c pl;
    public i pn;
    public boolean pu;
    public boolean px;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f21885q;
    public boolean qp;
    public boolean qy;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public com.byazt.rb.a f21886r;
    public float rh;
    public float rl;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public float f21887s;

    @Deprecated
    public n sd;
    public String sl;
    public c<ViewGroup> sp;
    public com.byazt.pm.u st;
    public float sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f21888t;
    public boolean tk;
    public boolean to;
    public Context tt;
    public float tx;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float f21889u;
    public JSONObject uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f21890v;
    public JSONObject ve;
    public boolean vi;
    public boolean vp;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f21891w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.sz.i.c f21892x;
    public da xd;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f21893y;
    public float yf;
    public boolean yo;
    public float yp;
    public float yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f21894z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public boolean f21895zb;
    public boolean zm;

    public ve(Context context) {
        this(context, null);
    }

    private void b() {
        m mVar;
        if (this.hq == null || !c(18) || (mVar = this.gx.get(18)) == null) {
            return;
        }
        JSONObject jSONObjectVe = mVar.ve();
        if (jSONObjectVe != null) {
            try {
                jSONObjectVe.put("rotateZ", com.byazt.wj.tt.c(jSONObjectVe.optString("rotateZ"), this.uj));
            } catch (JSONException unused) {
            }
        }
        this.hq.c(mVar, this, this);
    }

    private void kk() {
        com.byazt.xd.c cVar = this.nl;
        if (cVar == null || !cVar.tt()) {
            this.f21881n.setBackground(this.jt);
        } else {
            this.nl.c(this.f21881n, this.jt, this.kp, oz());
        }
    }

    private void os() {
        this.jt.setCornerRadii(oz());
    }

    private float[] oz() {
        float f10 = this.pu ? this.bm : this.f21873hd;
        float f11 = this.lt ? this.f21878l : this.f21873hd;
        float f12 = this.to ? this.lr : this.f21873hd;
        float f13 = this.tk ? this.lo : this.f21873hd;
        return new float[]{f10, f10, f11, f11, f13, f13, f12, f12};
    }

    private void q() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.sl);
        this.f21881n.setContentDescription(sb2);
    }

    private void sp() {
        if (this.f21865c) {
            this.f21881n.setTranslationX(this.f21893y);
        }
        if (this.yo) {
            this.f21881n.setTranslationY(this.iu);
        }
        if (this.vp) {
            this.f21881n.setScaleX(this.dz);
        }
        if (this.kz) {
            this.f21881n.setScaleY(this.f21880ma);
        }
        if (this.vi) {
            this.f21881n.setRotation(this.yf);
        }
        if (this.mq) {
            this.f21881n.setRotationX(this.f21870f);
        }
        if (this.cf) {
            this.f21881n.setRotationY(-this.ir);
        }
        if (this.ij) {
            this.f21881n.setAlpha(this.hj);
        }
        float f10 = this.f21871g;
        if (f10 != 0.0f) {
            this.f21881n.setRotation(f10);
        }
        if (this.vi || this.mq || this.cf) {
            this.f21881n.setCameraDistance(10000.0f);
        }
    }

    private com.byazt.xd.c tx() {
        if (this.nl == null) {
            this.nl = new com.byazt.xd.c();
        }
        return this.nl;
    }

    private void v() {
        com.byazt.xd.c cVar = this.nl;
        if (cVar == null || !cVar.c()) {
            if (TextUtils.equals("dashed", this.f21885q)) {
                GradientDrawable gradientDrawable = this.jt;
                float f10 = this.kp;
                gradientDrawable.setStroke((int) f10, this.f21864b, 3.0f * f10, f10);
            } else {
                if (!TextUtils.equals("dotted", this.f21885q)) {
                    this.jt.setStroke((int) this.kp, this.f21864b);
                    return;
                }
                GradientDrawable gradientDrawable2 = this.jt;
                float f11 = this.kp;
                gradientDrawable2.setStroke((int) f11, this.f21864b, f11 / 2.0f, f11);
            }
        }
    }

    @Deprecated
    private void x() {
        com.byazt.dq.uj ujVarUj;
        this.f21881n.setVisibility(this.kk);
        float f10 = this.f21871g;
        if (f10 != 0.0f) {
            this.f21881n.setRotation(f10);
        }
        com.byazt.sz.i.c cVar = this.f21892x;
        if (cVar != null && TextUtils.isEmpty(cVar.tt())) {
            this.f21881n.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.xj.ve.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ve veVar = ve.this;
                    if (veVar.xd == null || !veVar.bj) {
                        return;
                    }
                    ve veVar2 = ve.this;
                    veVar2.xd.c(veVar2);
                }
            });
        } else if (c(1) && !this.f21866ca) {
            this.f21881n.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.xj.ve.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ve veVar = ve.this;
                    if (veVar.hq == null || !veVar.bj) {
                        return;
                    }
                    ve veVar2 = ve.this;
                    rh rhVar = veVar2.hq;
                    m mVar = veVar2.gx.get(1);
                    ve veVar3 = ve.this;
                    rhVar.c(mVar, veVar3, veVar3);
                }
            });
        }
        if (this.hq != null && c(4)) {
            if (c(1)) {
                this.cl = true;
                this.sd = new n(this.tt, this.gx.get(4), this.gx.get(1), this.cl, lt(), this.fk);
            } else {
                this.sd = new n(this.tt, this.gx.get(4), this.cl, lt(), this.fk);
            }
        }
        if (this.hq != null && c(1) && this.f21866ca) {
            this.hg = new com.byazt.dq.ve(this.tt, this.gx.get(1));
        }
        b();
        if (this.hq != null && c(3) && (ujVarUj = com.byazt.sa.n.c().uj()) != null) {
            com.byazt.dq.uj.c cVar2 = this.f21877k;
            if (cVar2 != null) {
                cVar2.tt();
            }
            com.byazt.dq.uj.c cVarC = ujVarUj.c(this.tt, this);
            this.f21877k = cVarC;
            cVarC.c(this.mf);
            this.f21877k.c();
            this.f21877k.c(new com.byazt.dq.uj.tt() { // from class: com.byazt.xj.ve.3
                @Override // com.byazt.dq.uj.tt
                public void c(int i10) {
                    ve veVar;
                    rh rhVar;
                    ve.this.f21877k.tt();
                    if (ve.this.f21881n.isShown() && (rhVar = (veVar = ve.this).hq) != null && i10 == 1) {
                        m mVar = veVar.gx.get(3);
                        ve veVar2 = ve.this;
                        rhVar.c(mVar, veVar2, veVar2);
                    }
                }
            });
        }
        if (this.hq != null && c(9)) {
            a aVar = new a(this.tt, this.gx.get(9), this);
            this.di = aVar;
            aVar.c(this.hq);
        }
        if (c(10)) {
            com.byazt.dq.tt ttVar = new com.byazt.dq.tt(this.tt, this.gx.get(10), this);
            this.jg = ttVar;
            ttVar.c(this.hq);
        }
    }

    public void a() {
        u uVar = this.iy;
        if (uVar != null) {
            uVar.tt();
        }
        com.byazt.rb.c cVar = this.oz;
        if (cVar != null) {
            cVar.ve();
        }
        com.byazt.rb.a aVar = this.f21886r;
        if (aVar != null) {
            aVar.ve();
        }
        qy qyVar = this.gk;
        if (qyVar != null) {
            qyVar.n();
        }
        com.byazt.dq.uj.c cVar2 = this.f21877k;
        if (cVar2 != null) {
            cVar2.tt();
        }
        com.byazt.xd.c cVar3 = this.nl;
        if (cVar3 != null) {
            cVar3.uj();
        }
        com.byazt.hn.ve veVar = this.ej;
        if (veVar != null) {
            veVar.uj();
        }
    }

    public void aw() {
    }

    public float bm() {
        T t10 = this.f21881n;
        if (t10 instanceof com.byazt.rb.sp) {
            return ((com.byazt.rb.sp) t10).getRipple();
        }
        return 0.0f;
    }

    public com.byazt.vt.c bx() {
        return this.ly;
    }

    public T c() {
        return null;
    }

    public int cu() {
        return (int) this.yp;
    }

    public c d() {
        return this.f21863a;
    }

    public JSONObject da() {
        return this.uj;
    }

    public String eo() {
        return this.sl;
    }

    public JSONObject gr() {
        return this.ve;
    }

    public float gt() {
        return this.hj;
    }

    public long gu() {
        return this.cx;
    }

    public boolean h() {
        return this.f21868da;
    }

    public boolean hd() {
        return this.tx > 0.0f;
    }

    public T i() {
        return this.f21881n;
    }

    public void ic() {
        n nVar = this.sd;
        if (nVar != null) {
            nVar.tt();
        }
    }

    public i kp() {
        return this.pn;
    }

    public float l() {
        T t10 = this.f21881n;
        if (t10 instanceof com.byazt.rb.sp) {
            return ((com.byazt.rb.sp) t10).getStretch();
        }
        return 0.0f;
    }

    public float lo() {
        T t10 = this.f21881n;
        if (t10 instanceof com.byazt.rb.sp) {
            return ((com.byazt.rb.sp) t10).getRubIn();
        }
        return 0.0f;
    }

    public float lr() {
        T t10 = this.f21881n;
        if (t10 instanceof com.byazt.rb.sp) {
            return ((com.byazt.rb.sp) t10).getShine();
        }
        return 0.0f;
    }

    public boolean lt() {
        return this.px;
    }

    public float m() {
        return this.f21880ma;
    }

    public com.byazt.sz.i.c md() {
        return this.f21892x;
    }

    public float my() {
        return this.f21871g;
    }

    public void n() {
        com.byazt.sz.c cVar = this.pl;
        if (cVar != null) {
            u uVar = new u(this.f21881n, cVar);
            this.iy = uVar;
            uVar.c();
        }
        com.byazt.rb.c cVar2 = this.oz;
        if (cVar2 != null) {
            cVar2.c();
        }
        com.byazt.rb.a aVar = this.f21886r;
        if (aVar != null) {
            aVar.tt();
        }
        qy qyVar = this.gk;
        if (qyVar != null) {
            qyVar.uj();
        }
        i iVar = this.pn;
        if (iVar != null) {
            iVar.sp();
        }
        if (this.jg != null && c(10)) {
            this.jg.c();
        }
        if (this.di != null && c(9)) {
            this.di.c();
        }
        n nVar = this.sd;
        if (nVar != null) {
            nVar.c();
        }
        com.byazt.xd.c cVar3 = this.nl;
        if (cVar3 != null) {
            cVar3.ve();
        }
        com.byazt.hn.ve veVar = this.ej;
        if (veVar != null) {
            veVar.ve();
        }
        this.cx = System.currentTimeMillis();
    }

    public boolean nb() {
        return this.f21890v;
    }

    public float nu() {
        return this.f21870f;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        n nVar;
        rh rhVar;
        com.byazt.dq.ve veVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            sv();
        } else if (action == 1 || action == 3) {
            aw();
        }
        gt gtVar = this.ny;
        if (gtVar != null) {
            gtVar.c(this, motionEvent);
        }
        if (c(17) && motionEvent.getAction() == 0) {
            this.hq.c(this.gx.get(17), this, this);
        }
        if (c(1) && this.f21866ca && (rhVar = this.hq) != null && (veVar = this.hg) != null) {
            return veVar.c(rhVar, this, motionEvent);
        }
        rh rhVar2 = this.hq;
        if (rhVar2 != null && (nVar = this.sd) != null) {
            return nVar.c(rhVar2, this, motionEvent, lt());
        }
        i iVar = this.pn;
        if (iVar != null) {
            return iVar.c(motionEvent);
        }
        return false;
    }

    public int or() {
        return (int) this.f21889u;
    }

    public ViewGroup.LayoutParams p() {
        return this.os;
    }

    public int pf() {
        return this.f21882nb;
    }

    public boolean pu() {
        return this.is;
    }

    public com.byazt.sz.yp qp() {
        return this.f21874i;
    }

    public rh qy() {
        return this.hq;
    }

    public float rh() {
        return this.ir;
    }

    public float rl() {
        return this.f21873hd;
    }

    public void sl() {
        boolean zOptBoolean = this.uj.optBoolean("gesture_through_enable", false);
        com.byazt.sz.i.c cVar = this.f21892x;
        this.px = zOptBoolean && (cVar == null || cVar.ve());
        this.fk = this.uj.optBoolean("is_adapt_two_finger", false);
    }

    public void sv() {
    }

    public void t() {
        this.f21881n.setPadding((int) (this.f21895zb ? this.f21884p : this.yv), (int) (this.cu ? this.f21872h : this.yv), (int) (this.or ? this.md : this.yv), (int) (this.qp ? this.f21867d : this.yv));
    }

    public com.byazt.pm.u tk() {
        return this.st;
    }

    public yp to() {
        return this.fv;
    }

    public void tt(JSONObject jSONObject) {
        this.uj = jSONObject;
        sl();
    }

    public float u() {
        return this.f21893y;
    }

    public float yp() {
        return this.iu;
    }

    public void yv() {
        sp spVar = this.nt;
        if (spVar != null) {
            spVar.c();
        }
        com.byazt.sa.n.c().tt().c(this.f21874i, this.pf, new com.byazt.sa.c.InterfaceC0422c() { // from class: com.byazt.xj.ve.4
            @Override // com.byazt.sa.c.InterfaceC0422c
            public void c(final Bitmap bitmap) {
                if (bitmap == null) {
                    ve veVar = ve.this;
                    sp spVar2 = veVar.nt;
                    if (spVar2 != null) {
                        spVar2.tt(veVar, veVar.pf);
                        return;
                    }
                    return;
                }
                ve veVar2 = ve.this;
                sp spVar3 = veVar2.nt;
                if (spVar3 != null) {
                    spVar3.c(veVar2, veVar2.pf);
                }
                ve veVar3 = ve.this;
                if (!veVar3.aw) {
                    x.c(new Runnable() { // from class: com.byazt.xj.ve.4.2
                        @Override // java.lang.Runnable
                        public void run() {
                            ve.this.c(new BitmapDrawable(bitmap));
                        }
                    });
                    return;
                }
                final Bitmap bitmapC = x.c(veVar3.tt, bitmap, (int) veVar3.sv);
                if (bitmapC != null) {
                    x.c(new Runnable() { // from class: com.byazt.xj.ve.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ve.this.c(new BitmapDrawable(bitmapC));
                        }
                    });
                }
            }
        });
    }

    public float z() {
        return this.dz;
    }

    public String zb() {
        return this.f21888t;
    }

    public void zm() {
        BitmapDrawable bitmapDrawable;
        Bitmap bitmapC;
        if (TextUtils.isEmpty(this.pf)) {
            if (this.gy) {
                c(this.mm);
                return;
            } else {
                this.jt.setColor(this.f21882nb);
                ve(this.f21882nb);
                return;
            }
        }
        if (!this.pf.startsWith("local://")) {
            yv();
            return;
        }
        String strReplace = this.pf.replace("local://", "");
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = this.aw ? Bitmap.Config.ARGB_4444 : Bitmap.Config.RGB_565;
            options.inPurgeable = true;
            options.inInputShareable = true;
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(this.tt.getResources().openRawResource(com.byazt.cd.uj.tt(this.tt, strReplace)), null, options);
            if (!this.aw || (bitmapC = x.c(this.tt, bitmapDecodeStream, (int) this.sv)) == null) {
                BitmapDrawable bitmapDrawable2 = new BitmapDrawable(this.tt.getResources(), bitmapDecodeStream);
                bitmapDrawable = bitmapDrawable2;
            } else {
                bitmapDrawable = new BitmapDrawable(this.tt.getResources(), bitmapC);
            }
            c(bitmapDrawable);
        } catch (Throwable unused) {
        }
    }

    public ve(Context context, c<ViewGroup> cVar) {
        this.f21889u = -2.0f;
        this.yp = -2.0f;
        this.f21885q = "solid";
        this.kk = 0;
        this.f21890v = true;
        this.f21887s = 0.0f;
        this.f21893y = 0.0f;
        this.iu = 0.0f;
        this.f21876j = 1.0f;
        this.dz = 1.0f;
        this.f21880ma = 1.0f;
        this.yf = 0.0f;
        this.f21870f = 0.0f;
        this.ir = 0.0f;
        this.f21871g = 0.0f;
        this.hj = 1.0f;
        this.az = true;
        this.bj = true;
        this.ph = false;
        this.dr = false;
        this.px = false;
        this.fk = false;
        this.mf = 12.0f;
        this.tt = context;
        this.f21863a = cVar;
        this.gx = new HashMap();
        this.jt = new GradientDrawable();
        this.f21881n = (T) c();
    }

    public void c(String str, Map<String, Object> map) {
    }

    public com.byazt.rb.c da(String str) {
        com.byazt.rb.c cVar = this.oz;
        if (cVar != null && TextUtils.equals(str, cVar.n())) {
            return this.oz;
        }
        com.byazt.rb.a aVar = this.f21886r;
        if (aVar != null) {
            return aVar.c(str);
        }
        return null;
    }

    public List<com.byazt.ji.tt> i(String str) {
        i iVar;
        if (TextUtils.isEmpty(str) || (iVar = this.pn) == null) {
            return null;
        }
        return iVar.tt(str);
    }

    public ve<T> uj(String str) {
        return c(str);
    }

    public void ve(JSONObject jSONObject) {
        this.ve = jSONObject;
    }

    public void c(JSONObject jSONObject) {
        this.uj = jSONObject;
        sl();
        JSONObject jSONObject2 = this.ve;
        if (jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject2.keys();
        c<ViewGroup> cVar = this.f21863a;
        c.C0482c c0482cX = cVar instanceof c ? cVar.x() : null;
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strC = com.byazt.wj.tt.c(this.ve.optString(next), jSONObject);
            c(next, strC);
            if (c0482cX != null) {
                c0482cX.c(this.tt, next, strC);
            }
        }
        if (c0482cX != null) {
            c(c0482cX.c());
        }
        if (this.bp == null || this.uj == null) {
            return;
        }
        try {
            if (h()) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("i18n", this.bp);
                this.uj.put("xNode", jSONObject3);
                return;
            }
            this.uj.put("i18n", this.bp);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void tt() {
        zm();
        t();
        tt(this.kk);
        sp();
        x();
        i iVar = this.pn;
        if (iVar != null) {
            iVar.tt();
            this.pn.ve();
            this.pn.uj();
        }
        this.f21881n.setOnTouchListener(this);
        q();
        ViewGroup viewGroup = (ViewGroup) this.f21881n.getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(!this.az);
        }
        com.byazt.rb.c cVar = this.oz;
        if (cVar != null) {
            cVar.uj();
        }
        com.byazt.rb.a aVar = this.f21886r;
        if (aVar != null) {
            aVar.c();
        }
        i iVar2 = this.pn;
        if (iVar2 != null) {
            iVar2.n();
            this.pn.a();
        }
        if (this.hq != null && c(22)) {
            this.hq.c(this.gx.get(22), this, this);
        }
        com.byazt.hn.ve veVar = this.ej;
        if (veVar == null || !veVar.c()) {
            return;
        }
        this.ej.c(this.f21881n);
    }

    @Override // com.byazt.sa.uj
    public void uj() {
        if (this.gk == null || this.nx) {
            return;
        }
        this.nx = true;
    }

    public void ve(int i10) {
        this.jt.setShape(0);
        this.jt.setColor(i10);
        os();
        v();
        kk();
    }

    private ImageView.ScaleType sl(String str) {
        str.hashCode();
        switch (str) {
            case "center":
                this.bx = ImageView.ScaleType.CENTER;
                break;
            case "fit":
                this.bx = ImageView.ScaleType.FIT_CENTER;
                break;
            case "crop":
                this.bx = ImageView.ScaleType.CENTER_CROP;
                break;
            default:
                this.bx = ImageView.ScaleType.FIT_XY;
                break;
        }
        return this.bx;
    }

    private boolean t(String str) {
        return TextUtils.isEmpty(str) || !TextUtils.equals(str, "hidden");
    }

    public void uj(int i10) {
        if (h()) {
            T t10 = this.f21881n;
            if (t10 instanceof tt) {
                ((tt) t10).c(i10);
                return;
            }
            ViewParent viewParent = (ViewGroup) t10.getParent();
            if (viewParent instanceof tt) {
                ((tt) viewParent).c(this.f21881n, i10);
                return;
            }
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f21881n.getLayoutParams();
        layoutParams.width = i10;
        this.f21881n.setLayoutParams(layoutParams);
    }

    public ve<T> ve(String str) {
        if (da(str) != null) {
            return this;
        }
        return null;
    }

    public void ve(boolean z10) {
        this.f21868da = z10;
    }

    @Override // com.byazt.sa.uj
    public void ve() {
        if (this.gk == null || this.f21869e) {
            return;
        }
        this.f21869e = true;
    }

    public ve<T> a(String str) {
        return ve(str);
    }

    public void sp(String str) {
        this.sl = str;
    }

    public void c(qy qyVar) {
        this.gk = qyVar;
    }

    public void c(boolean z10) {
        qy qyVar = this.gk;
        if (qyVar != null) {
            qyVar.c(z10);
        }
        i iVar = this.pn;
        if (iVar != null) {
            iVar.c(z10);
        }
    }

    public ve<T> n(String str) {
        return tt(str);
    }

    public void n(int i10) {
        if (h()) {
            T t10 = this.f21881n;
            if (t10 instanceof tt) {
                ((tt) t10).tt(i10);
                return;
            }
            ViewParent viewParent = (ViewGroup) t10.getParent();
            if (viewParent instanceof tt) {
                ((tt) viewParent).tt(this.f21881n, i10);
                return;
            }
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f21881n.getLayoutParams();
        layoutParams.height = i10;
        this.f21881n.setLayoutParams(layoutParams);
    }

    public boolean c(int i10) {
        Map<Integer, m> map = this.gx;
        return map != null && map.containsKey(Integer.valueOf(i10));
    }

    public void c(gt gtVar) {
        this.ny = gtVar;
    }

    public void tt(boolean z10) {
        this.f21866ca = z10;
    }

    public void c(rh rhVar) {
        this.hq = rhVar;
    }

    public void tt(int i10) {
        ViewParent viewParent = (ViewGroup) this.f21881n.getParent();
        if (viewParent instanceof tt) {
            ((tt) viewParent).ve(this.f21881n, i10);
        } else {
            this.f21881n.setVisibility(i10);
        }
        i iVar = this.pn;
        if (iVar != null) {
            iVar.c(i10);
        }
    }

    public void c(com.byazt.cd.c.C0282c c0282c) {
        if (c0282c == null) {
            return;
        }
        this.jt.setShape(0);
        this.jt.setOrientation(c0282c.f12378c);
        if (Build.VERSION.SDK_INT >= 29) {
            this.jt.setColors(c0282c.tt, c0282c.ve);
        } else {
            this.jt.setColors(c0282c.tt);
        }
        os();
        v();
        kk();
    }

    public void x(String str) {
        this.f21888t = str;
    }

    public ve<T> tt(String str) {
        if (TextUtils.isEmpty(this.f21888t) || !TextUtils.equals(this.f21888t, str)) {
            return null;
        }
        return this;
    }

    public void tt(String str, String str2) {
        if (TextUtils.isEmpty(str2) || this.gx == null) {
            return;
        }
        try {
            int type = nu.c(str).getType();
            m mVar = new m();
            mVar.c(type);
            mVar.c(this);
            JSONObject jSONObject = new JSONObject(str2);
            if (type == 3) {
                try {
                    this.mf = Float.parseFloat(com.byazt.wj.tt.c(jSONObject.optString("shakeAmplitude"), this.uj));
                } catch (NumberFormatException unused) {
                    this.mf = 12.0f;
                }
            }
            rh rhVar = this.hq;
            if (!(rhVar instanceof com.byazt.lv.tt)) {
                c(type, jSONObject, mVar);
            } else if (!((com.byazt.lv.tt) rhVar).c()) {
                c(type, jSONObject, mVar);
            } else {
                mVar.c(jSONObject);
                this.gx.put(Integer.valueOf(type), mVar);
            }
        } catch (JSONException unused2) {
        }
    }

    public void c(Drawable drawable) {
        this.f21881n.setBackground(drawable);
    }

    public void c(ViewGroup.LayoutParams layoutParams) {
        T t10 = this.f21881n;
        if (t10 != null) {
            t10.setLayoutParams(layoutParams);
        }
        this.os = layoutParams;
    }

    public void c(boolean z10, boolean z11) {
        if (this.f21881n != null) {
            c(this.os);
            if (z10) {
                uj((int) this.f21889u);
            }
            if (z11) {
                n((int) this.yp);
            }
        }
    }

    public void c(com.byazt.sz.i.c cVar) {
        this.f21892x = cVar;
    }

    public ve<T> c(String str) {
        if (TextUtils.isEmpty(this.sl) || !TextUtils.equals(this.sl, str)) {
            return null;
        }
        return this;
    }

    public void c(c cVar) {
        this.f21863a = cVar;
    }

    public void c(com.byazt.sz.yp ypVar) {
        this.f21874i = ypVar;
    }

    public void c(da daVar) {
        this.xd = daVar;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
        }
        str.hashCode();
        byte b10 = -1;
        switch (str.hashCode()) {
            case -1964681502:
                if (str.equals("clickable")) {
                    b10 = 0;
                }
                break;
            case -1901681170:
                if (str.equals("onRenderSuccess")) {
                    b10 = 1;
                }
                break;
            case -1721943862:
                if (str.equals("translateX")) {
                    b10 = 2;
                }
                break;
            case -1721943861:
                if (str.equals("translateY")) {
                    b10 = 3;
                }
                break;
            case -1501175880:
                if (str.equals("paddingLeft")) {
                    b10 = 4;
                }
                break;
            case -1375815020:
                if (str.equals("minWidth")) {
                    b10 = 5;
                }
                break;
            case -1351184668:
                if (str.equals("onDelay")) {
                    b10 = 6;
                }
                break;
            case -1337252761:
                if (str.equals("onShake")) {
                    b10 = 7;
                }
                break;
            case -1337126126:
                if (str.equals("onSlide")) {
                    b10 = 8;
                }
                break;
            case -1336288090:
                if (str.equals("onTimer")) {
                    b10 = 9;
                }
                break;
            case -1335874424:
                if (str.equals("onTwist")) {
                    b10 = 10;
                }
                break;
            case -1332194002:
                if (str.equals("background")) {
                    b10 = 11;
                }
                break;
            case -1291329255:
                if (str.equals(f.ax)) {
                    b10 = 12;
                }
                break;
            case -1267206133:
                if (str.equals("opacity")) {
                    b10 = 13;
                }
                break;
            case -1228066334:
                if (str.equals("borderTopLeftRadius")) {
                    b10 = 14;
                }
                break;
            case -1221029593:
                if (str.equals("height")) {
                    b10 = 15;
                }
                break;
            case -1081309778:
                if (str.equals("margin")) {
                    b10 = 16;
                }
                break;
            case -1044792121:
                if (str.equals("marginTop")) {
                    b10 = BinaryMemcacheOpcodes.SETQ;
                }
                break;
            case -1013407967:
                if (str.equals("onDown")) {
                    b10 = BinaryMemcacheOpcodes.ADDQ;
                }
                break;
            case -933876756:
                if (str.equals("backgroundDrawable")) {
                    b10 = BinaryMemcacheOpcodes.REPLACEQ;
                }
                break;
            case -925180581:
                if (str.equals("rotate")) {
                    b10 = BinaryMemcacheOpcodes.DELETEQ;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                }
                break;
            case -882862153:
                if (str.equals("particleEffect")) {
                    b10 = BinaryMemcacheOpcodes.QUITQ;
                }
                break;
            case -806339567:
                if (str.equals("padding")) {
                    b10 = BinaryMemcacheOpcodes.FLUSHQ;
                }
                break;
            case -681357156:
                if (str.equals("triggerFunc")) {
                    b10 = BinaryMemcacheOpcodes.APPENDQ;
                }
                break;
            case -389160068:
                if (str.equals("borderGradient")) {
                    b10 = 26;
                }
                break;
            case -289173127:
                if (str.equals("marginBottom")) {
                    b10 = 27;
                }
                break;
            case -133587431:
                if (str.equals("minHeight")) {
                    b10 = BinaryMemcacheOpcodes.TOUCH;
                }
                break;
            case 3355:
                if (str.equals("id")) {
                    b10 = BinaryMemcacheOpcodes.GAT;
                }
                break;
            case 3176990:
                if (str.equals("i18n")) {
                    b10 = BinaryMemcacheOpcodes.GATQ;
                }
                break;
            case 3373707:
                if (str.equals("name")) {
                    b10 = 31;
                }
                break;
            case 87811796:
                if (str.equals("backgroundImageBlur")) {
                    b10 = 32;
                }
                break;
            case 90130308:
                if (str.equals("paddingTop")) {
                    b10 = BinaryMemcacheOpcodes.SASL_AUTH;
                }
                break;
            case 94750088:
                if (str.equals("click")) {
                    b10 = 34;
                }
                break;
            case 105871684:
                if (str.equals("onTap")) {
                    b10 = BinaryMemcacheOpcodes.GATK;
                }
                break;
            case 108285963:
                if (str.equals("ratio")) {
                    b10 = BinaryMemcacheOpcodes.GATKQ;
                }
                break;
            case 109250890:
                if (str.equals("scale")) {
                    b10 = 37;
                }
                break;
            case 113126854:
                if (str.equals("width")) {
                    b10 = 38;
                }
                break;
            case 197402866:
                if (str.equals("borderFog")) {
                    b10 = 39;
                }
                break;
            case 202355100:
                if (str.equals("paddingBottom")) {
                    b10 = 40;
                }
                break;
            case 314070383:
                if (str.equals("animations")) {
                    b10 = 41;
                }
                break;
            case 320386138:
                if (str.equals("onLoadMore")) {
                    b10 = 42;
                }
                break;
            case 333432965:
                if (str.equals("borderTopRightRadius")) {
                    b10 = 43;
                }
                break;
            case 529642498:
                if (str.equals("overflow")) {
                    b10 = HttpConstants.COMMA;
                }
                break;
            case 581268560:
                if (str.equals("borderBottomLeftRadius")) {
                    b10 = 45;
                }
                break;
            case 588239831:
                if (str.equals("borderBottomRightRadius")) {
                    b10 = 46;
                }
                break;
            case 713848971:
                if (str.equals("paddingRight")) {
                    b10 = 47;
                }
                break;
            case 722830999:
                if (str.equals("borderColor")) {
                    b10 = e.H;
                }
                break;
            case 737768677:
                if (str.equals("borderStyle")) {
                    b10 = e.I;
                }
                break;
            case 741115130:
                if (str.equals("borderWidth")) {
                    b10 = e.J;
                }
                break;
            case 843948038:
                if (str.equals("onExposure")) {
                    b10 = e.K;
                }
                break;
            case 975087886:
                if (str.equals("marginRight")) {
                    b10 = e.L;
                }
                break;
            case 1052832078:
                if (str.equals("translate")) {
                    b10 = e.M;
                }
                break;
            case 1087723621:
                if (str.equals("onAnimation")) {
                    b10 = e.N;
                }
                break;
            case 1118509956:
                if (str.equals("animation")) {
                    b10 = e.O;
                }
                break;
            case 1151851515:
                if (str.equals("animatorSet")) {
                    b10 = 56;
                }
                break;
            case 1158381436:
                if (str.equals("onPullToRefresh")) {
                    b10 = 57;
                }
                break;
            case 1287124693:
                if (str.equals("backgroundColor")) {
                    b10 = HttpConstants.COLON;
                }
                break;
            case 1292595405:
                if (str.equals("backgroundImage")) {
                    b10 = HttpConstants.SEMICOLON;
                }
                break;
            case 1301532860:
                if (str.equals("backgroundScale")) {
                    b10 = 60;
                }
                break;
            case 1349188574:
                if (str.equals("borderRadius")) {
                    b10 = 61;
                }
                break;
            case 1384173149:
                if (str.equals("rotateX")) {
                    b10 = 62;
                }
                break;
            case 1384173150:
                if (str.equals("rotateY")) {
                    b10 = Utf8.REPLACEMENT_BYTE;
                }
                break;
            case 1384173151:
                if (str.equals("rotateZ")) {
                    b10 = 64;
                }
                break;
            case 1490730380:
                if (str.equals("onScroll")) {
                    b10 = 65;
                }
                break;
            case 1671308008:
                if (str.equals("disable")) {
                    b10 = 66;
                }
                break;
            case 1685004456:
                if (str.equals("onLongTap")) {
                    b10 = 67;
                }
                break;
            case 1824519034:
                if (str.equals("borderFlow")) {
                    b10 = 68;
                }
                break;
            case 1941332754:
                if (str.equals("visibility")) {
                    b10 = 69;
                }
                break;
            case 1970934485:
                if (str.equals("marginLeft")) {
                    b10 = 70;
                }
                break;
            case 1997542747:
                if (str.equals("availability")) {
                    b10 = 71;
                }
                break;
        }
        switch (b10) {
            case 0:
                this.bj = com.byazt.cd.ve.c(str2, true);
                break;
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 18:
            case 35:
            case 42:
            case 51:
            case 54:
            case 57:
            case 65:
            case 67:
                tt(str, str2);
                break;
            case 2:
                this.f21865c = true;
                this.f21893y = x.c(this.tt, com.byazt.cd.ve.c(str2, 0.0f));
                break;
            case 3:
                this.yo = true;
                this.iu = x.c(this.tt, com.byazt.cd.ve.c(str2, 0.0f));
                break;
            case 4:
                this.f21884p = x.c(this.tt, str2);
                this.f21895zb = true;
                break;
            case 5:
                this.gt = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 11:
            case 58:
                if (com.byazt.cd.c.ve(str2)) {
                    this.gy = true;
                    this.mm = com.byazt.cd.c.tt(str2);
                } else {
                    this.f21882nb = com.byazt.cd.c.c(str2, 0);
                    this.gy = false;
                }
                break;
            case 12:
                this.pn = i.c(this, str2);
                break;
            case 13:
                this.ij = true;
                this.hj = com.byazt.cd.ve.c(str2, 1.0f);
                break;
            case 14:
                this.bm = x.c(this.tt, str2);
                this.pu = true;
                break;
            case 15:
                if (TextUtils.equals(str2, "match_parent")) {
                    this.yp = -1.0f;
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.yp = -2.0f;
                } else {
                    this.yp = x.c(this.tt, str2);
                }
                this.dr = true;
                break;
            case 16:
                this.f21894z = x.c(this.tt, str2);
                break;
            case 17:
                this.rh = x.c(this.tt, str2);
                this.gr = true;
                break;
            case 19:
            case 59:
                this.pf = str2;
                break;
            case 20:
                this.vi = true;
                this.yf = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 21:
                this.vp = true;
                this.dz = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 22:
                this.kz = true;
                this.f21880ma = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 23:
                if (this.ej == null) {
                    this.ej = new com.byazt.hn.ve(this.tt);
                }
                this.ej.c(str2);
                break;
            case 24:
                this.yv = x.c(this.tt, str2);
                this.eo = true;
                break;
            case 25:
                this.f21883nc = str2;
                break;
            case 26:
                tx().c(str2);
                break;
            case 27:
                this.my = x.c(this.tt, str2);
                this.zm = true;
                break;
            case 28:
                this.rl = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 29:
                this.sl = str2;
                break;
            case 30:
                this.bp = com.byazt.cd.tt.c(str2, (JSONObject) null);
                break;
            case 31:
                this.f21888t = str2;
                break;
            case 32:
                float fC = com.byazt.cd.ve.c(str2, 0.0f);
                this.sv = fC;
                if (fC > 0.0f) {
                    this.aw = true;
                }
                break;
            case 33:
                this.f21872h = x.c(this.tt, str2);
                this.cu = true;
                break;
            case 34:
                this.f21891w = str2;
                break;
            case 36:
                this.tx = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 37:
                this.vp = true;
                this.kz = true;
                float[] fArrTt = com.byazt.rb.uj.tt(str2, this.uj);
                this.dz = fArrTt[0];
                this.f21880ma = fArrTt[1];
                break;
            case 38:
                if (TextUtils.equals(str2, "match_parent")) {
                    this.f21889u = -1.0f;
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.f21889u = -2.0f;
                } else {
                    this.f21889u = x.c(this.tt, str2);
                }
                this.ph = true;
                break;
            case 39:
                tx().c(str2, this.tt);
                break;
            case 40:
                this.f21867d = x.c(this.tt, str2);
                this.qp = true;
                break;
            case 41:
                List<com.byazt.rb.ve> listC = com.byazt.rb.uj.c(str2, this.uj);
                if (listC != null && !listC.isEmpty()) {
                    this.f21886r = new com.byazt.rb.a(this.tt, this, listC);
                    break;
                }
                break;
            case 43:
                this.f21878l = x.c(this.tt, str2);
                this.lt = true;
                break;
            case 44:
                this.az = t(str2);
                break;
            case 45:
                this.lr = x.c(this.tt, str2);
                this.to = true;
                break;
            case 46:
                this.lo = x.c(this.tt, str2);
                this.tk = true;
                break;
            case 47:
                this.md = x.c(this.tt, str2);
                this.or = true;
                break;
            case 48:
                this.f21864b = com.byazt.cd.c.c(str2);
                break;
            case 49:
                this.f21885q = str2;
                break;
            case 50:
                this.kp = x.c(this.tt, str2);
                break;
            case 52:
                this.nu = x.c(this.tt, str2);
                this.gu = true;
                break;
            case 53:
                this.f21865c = true;
                this.yo = true;
                float[] fArrTt2 = com.byazt.rb.uj.tt(str2, this.uj);
                this.f21893y = x.c(this.tt, fArrTt2[0]);
                this.iu = x.c(this.tt, fArrTt2[1]);
                break;
            case 55:
                try {
                    this.oz = new com.byazt.rb.c(this.tt, this, com.byazt.rb.uj.c(new JSONObject(str2), this.uj));
                } catch (JSONException e10) {
                    com.byazt.nr.m.c(e10);
                    return;
                }
                break;
            case 56:
                this.pl = com.byazt.sz.c.c(str2, this);
                break;
            case 60:
                this.f21875ic = true;
                this.bx = sl(str2);
                break;
            case 61:
                this.f21873hd = x.c(this.tt, str2);
                break;
            case 62:
                this.mq = true;
                this.f21870f = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 63:
                this.cf = true;
                this.ir = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 64:
                this.f21871g = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 66:
                this.is = com.byazt.cd.ve.c(str2, false);
                break;
            case 68:
                tx().tt(str2);
                break;
            case 69:
                if (TextUtils.equals("visible", str2)) {
                    this.kk = 0;
                } else if (TextUtils.equals("invisible", str2)) {
                    this.kk = 4;
                } else if (TextUtils.equals("gone", str2) || TextUtils.equals("hidden", str2)) {
                    this.kk = 8;
                }
                this.f21881n.setVisibility(this.kk);
                i iVar = this.pn;
                if (iVar != null) {
                    iVar.c(this.kk);
                }
                break;
            case 70:
                this.f21879m = x.c(this.tt, str2);
                this.qy = true;
                break;
            case 71:
                this.f21890v = !TextUtils.equals(str2, "unavailable");
                break;
        }
    }

    @Override // com.byazt.sa.uj
    public void tt(Canvas canvas) {
        if (this instanceof c) {
            com.byazt.rb.c cVar = this.oz;
            if (cVar != null) {
                cVar.tt(canvas);
            }
            com.byazt.rb.a aVar = this.f21886r;
            if (aVar != null) {
                aVar.tt(canvas);
            }
        }
    }

    @Override // com.byazt.sa.uj
    public void tt(int i10, int i11, int i12, int i13) {
        u uVar = this.iy;
        if (uVar != null) {
            uVar.c(i10, i11);
        }
        com.byazt.rb.c cVar = this.oz;
        if (cVar != null) {
            cVar.c(i10, i11);
        }
        com.byazt.rb.a aVar = this.f21886r;
        if (aVar != null) {
            aVar.c(i10, i11);
        }
    }

    public ve tt(ve veVar) {
        return (veVar.d() == null && (veVar instanceof c)) ? veVar : tt(veVar.d());
    }

    @Deprecated
    public void c(int i10, JSONObject jSONObject, m mVar) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("success");
        if (jSONObjectOptJSONObject != null) {
            m mVar2 = new m();
            mVar2.c(jSONObjectOptJSONObject);
            mVar2.c(this);
            mVar.c(mVar2);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("fail");
        if (jSONObjectOptJSONObject2 != null) {
            m mVar3 = new m();
            mVar3.c(jSONObjectOptJSONObject2);
            mVar3.c(this);
            mVar.tt(mVar3);
        }
        mVar.c(jSONObject);
        this.gx.put(Integer.valueOf(i10), mVar);
    }

    @Override // com.byazt.sa.uj
    public int[] c(int i10, int i11) {
        if (this.tx > 0.0f) {
            if (this.ph) {
                int size = View.MeasureSpec.getSize(i10);
                float f10 = this.tx;
                if (f10 != 0.0f) {
                    i11 = View.MeasureSpec.makeMeasureSpec((int) (size / f10), 1073741824);
                }
            } else if (this.dr) {
                int size2 = View.MeasureSpec.getSize(i11);
                float f11 = this.tx;
                if (f11 != 0.0f) {
                    i10 = View.MeasureSpec.makeMeasureSpec((int) (size2 * f11), 1073741824);
                }
            }
        }
        if (this.gk != null && !this.pe) {
            this.pe = true;
        }
        return new int[]{i10, i11};
    }

    @Override // com.byazt.sa.uj
    public void c(int i10, int i11, int i12, int i13) {
        if (this.gk == null || this.iw) {
            return;
        }
        this.iw = true;
    }

    @Override // com.byazt.sa.uj
    public void c(Canvas canvas, com.byazt.sz.n nVar) {
        u uVar = this.iy;
        if (uVar != null) {
            uVar.c(canvas, nVar);
        }
    }

    @Override // com.byazt.sa.uj
    public void c(Canvas canvas) {
        if (this instanceof c) {
            return;
        }
        com.byazt.rb.c cVar = this.oz;
        if (cVar != null) {
            cVar.c(canvas);
        }
        com.byazt.rb.a aVar = this.f21886r;
        if (aVar != null) {
            aVar.c(canvas);
        }
    }

    @Override // com.byazt.sz.rh.tt
    public void c(m mVar) {
        c<ViewGroup> cVar;
        ve<T> veVarUj;
        if (mVar == null || mVar.ve() == null) {
            return;
        }
        com.byazt.dq.uj.c cVar2 = this.f21877k;
        if (cVar2 != null) {
            cVar2.tt();
        }
        if (TextUtils.equals(mVar.ve().optString("type"), "onDismiss")) {
            String strOptString = mVar.ve().optString("nodeId");
            tt(8);
            this.sp = (c) tt(this);
            if (TextUtils.isEmpty(strOptString) || (cVar = this.sp) == null || (veVarUj = cVar.uj(strOptString)) == null) {
                return;
            }
            veVarUj.tt(8);
        }
    }

    public void c(com.byazt.vt.c cVar) {
        this.ly = cVar;
    }

    public void c(String str, Object... objArr) {
        List<com.byazt.ji.tt> listI = i(str);
        if (listI == null || listI.isEmpty()) {
            return;
        }
        for (com.byazt.ji.tt ttVar : listI) {
            ttVar.c(this.pn);
            ttVar.c(objArr);
        }
    }

    public void c(com.byazt.sz.a aVar) {
        i iVar = this.pn;
        if (iVar != null) {
            iVar.c(aVar);
        }
    }

    public void c(sp spVar) {
        this.nt = spVar;
    }

    public void c(yp ypVar) {
        i iVar = this.pn;
        if (iVar != null) {
            iVar.c(ypVar);
        }
        this.fv = ypVar;
    }

    public void c(com.byazt.pm.u uVar) {
        i iVar = this.pn;
        if (iVar != null) {
            iVar.c(uVar);
        }
        this.st = uVar;
    }
}
