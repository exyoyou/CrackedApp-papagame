package com.byazt.atv;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.aas.nb;
import com.byazt.aas.or;
import com.byazt.aas.pf;
import com.byazt.ete.da;
import com.byazt.ete.gr;
import com.byazt.ete.ic;
import com.byazt.ete.ir;
import com.byazt.ete.pu;
import com.byazt.nr.zm;
import com.byazt.sy.sl;
import com.byazt.sy.x;
import com.byazt.sz.gt;
import com.byazt.sz.i;
import com.byazt.sz.m;
import com.byazt.sz.rh;
import com.byazt.sz.z;
import com.byazt.xl.yp;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 134, 46})
public class n implements gt, rh, com.byazt.kn.uj, com.byazt.xl.uj<View> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ic f11746a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public z f11747c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public x f11748da;
    public String gr;
    public zm gt;
    public String gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.xl.x f11749i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.xj.ve f11750m;
    public boolean md;
    public AtomicBoolean my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public JSONObject f11751n;
    public com.byazt.xj.ve nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final com.byazt.xyr.sp f11752p;
    public List<com.byazt.xj.ve<View>> qy;
    public com.byazt.sy.sp rh;
    public com.byazt.qmz.c rl;
    public yp sl;
    public tt sp;
    public Context tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.qdk.tt f11754u;
    public JSONObject uj;
    public com.byazt.xj.ve<View> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public UGTimerContainer f11755x;
    public com.byazt.sy.c yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public WeakReference<ViewGroup> f11756z;
    public com.byazt.ma.n zm;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public List<com.byazt.sz.x> f11753t = new ArrayList();
    public da yp = new da();

    public n(Context context, ic icVar, tt ttVar, ViewGroup viewGroup) {
        JSONObject jSONObjectOptJSONObject;
        this.md = false;
        this.tt = context;
        this.f11747c = new z(context);
        this.f11746a = icVar;
        this.sp = ttVar;
        com.byazt.xyr.sp spVar = new com.byazt.xyr.sp(icVar);
        this.f11752p = spVar;
        this.f11755x = new UGTimerContainer(context, spVar);
        this.f11756z = new WeakReference<>(viewGroup);
        this.my = new AtomicBoolean(false);
        JSONObject jSONObjectC = c();
        this.uj = jSONObjectC;
        if (icVar != null && jSONObjectC != null && (jSONObjectOptJSONObject = jSONObjectC.optJSONObject("event_template")) != null) {
            this.md = true;
            com.byazt.bh.tt.INSTANCE.c(jSONObjectOptJSONObject);
        }
        if (com.byazt.ic.c.uj(icVar)) {
            c(new com.byazt.sz.x() { // from class: com.byazt.atv.n.1
                @Override // com.byazt.sz.x
                public void c(i.c cVar) {
                    com.byazt.ic.c.c(true, cVar);
                }

                @Override // com.byazt.sz.x
                public void tt(i.c cVar) {
                    com.byazt.ic.c.c(false, cVar);
                }
            });
        }
        this.f11747c.c(new com.byazt.sz.x() { // from class: com.byazt.atv.n.2
            @Override // com.byazt.sz.x
            public void c(i.c cVar) {
                Iterator<com.byazt.sz.x> it2 = n.this.f11753t.iterator();
                while (it2.hasNext()) {
                    it2.next().c(cVar);
                }
            }

            @Override // com.byazt.sz.x
            public void tt(i.c cVar) {
                Iterator<com.byazt.sz.x> it2 = n.this.f11753t.iterator();
                while (it2.hasNext()) {
                    it2.next().tt(cVar);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int rh() {
        ic icVar = this.f11746a;
        if (icVar != null) {
            return icVar.eo();
        }
        return 0;
    }

    public com.byazt.xj.ve a() {
        com.byazt.xj.ve<View> veVar = this.ve;
        if (veVar == null) {
            return null;
        }
        return veVar.n("VideoPlaceholder");
    }

    @Override // com.byazt.sz.rh
    public void c(com.byazt.xj.ve veVar, String str, com.byazt.pm.a.c cVar) {
    }

    public boolean da() {
        return this.md;
    }

    public List<com.byazt.xj.ve<View>> i() {
        return this.qy;
    }

    public void m() {
        this.f11752p.c();
    }

    public float[] n() {
        com.byazt.xj.ve<View> veVar = this.ve;
        if (veVar == null) {
            return null;
        }
        com.byazt.sa.uj ujVarN = veVar.n("InteractContainerView");
        if (ujVarN instanceof sl) {
            return ((sl) ujVarN).q();
        }
        return null;
    }

    public void nu() {
        this.f11752p.c();
    }

    @Override // com.byazt.kn.uj
    public void setSoundMute(boolean z10) {
        com.byazt.xj.ve<T> veVarUj;
        com.byazt.xj.ve<View> veVar = this.ve;
        if (veVar == null || (veVarUj = veVar.uj("mute_image")) == 0) {
            return;
        }
        if (z10) {
            if (!TextUtils.isEmpty(this.gu)) {
                ((com.byazt.vn.tt) veVarUj).t(this.gu);
            }
        } else if (!TextUtils.isEmpty(this.gr)) {
            ((com.byazt.vn.tt) veVarUj).t(this.gr);
        }
        veVarUj.tt();
    }

    public JSONObject sl() {
        return this.sp.zb();
    }

    @Override // com.byazt.xl.uj
    public View sp() {
        return this.f11755x;
    }

    public void t() {
        this.my.set(false);
        zm zmVar = this.gt;
        if (zmVar != null) {
            zmVar.tt(rh());
        }
        com.byazt.qmz.c cVar = this.rl;
        if (cVar != null) {
            cVar.tt();
        }
        List<com.byazt.sz.x> list = this.f11753t;
        if (list != null) {
            list.clear();
        }
    }

    public boolean tt() {
        if (this.sp == null) {
            return false;
        }
        com.byazt.ogz.sl slVarTt = com.byazt.omf.gt.tt();
        int iQp = this.sp.qp();
        boolean z10 = this instanceof sp;
        if (z10 && iQp == 1) {
            return slVarTt.bp();
        }
        if (z10 && iQp == 2) {
            return slVarTt.ph();
        }
        if (z10 || iQp != 2) {
            return false;
        }
        return slVarTt.dr();
    }

    public void u() {
        com.byazt.xj.ve<T> veVarUj;
        com.byazt.xj.ve<View> veVar = this.ve;
        if (veVar == null || (veVarUj = veVar.uj("corver_container")) == 0 || veVarUj.i() == null) {
            return;
        }
        veVarUj.i().setVisibility(0);
    }

    public void uj() {
        List<com.byazt.xj.ve<View>> list = this.qy;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<com.byazt.xj.ve<View>> it2 = this.qy.iterator();
        while (it2.hasNext()) {
            it2.next().ic();
        }
    }

    @Override // com.byazt.xl.uj
    public int ve() {
        return pu.tt(this.f11746a);
    }

    public com.byazt.xj.ve x() {
        com.byazt.xj.ve<View> veVar = this.ve;
        if (veVar == null) {
            return null;
        }
        return veVar.n("PlayableComponent");
    }

    public void yp() {
        com.byazt.xj.ve<T> veVarUj;
        com.byazt.xj.ve<View> veVar = this.ve;
        if (veVar == null || (veVarUj = veVar.uj("corver_container")) == 0 || veVarUj.i() == null) {
            return;
        }
        veVarUj.i().setVisibility(8);
    }

    public void z() {
        com.byazt.xj.ve<View> veVar = this.ve;
        if (veVar == null) {
            return;
        }
        this.f11752p.c(veVar);
    }

    private void ve(m mVar) {
        JSONObject jSONObjectVe;
        if (mVar == null || (jSONObjectVe = mVar.ve()) == null) {
            return;
        }
        com.byazt.ukr.yp.c().c(this.f11746a, jSONObjectVe.optString("uttieUrl"), jSONObjectVe.optLong("duration"));
    }

    private boolean uj(m mVar) {
        JSONObject jSONObjectVe;
        return mVar != null && mVar.tt() == 1 && (jSONObjectVe = mVar.ve()) != null && jSONObjectVe.optBoolean("lottieEvent", false);
    }

    public void c(com.byazt.qdk.tt ttVar) {
        this.f11754u = ttVar;
    }

    public void c(com.byazt.xl.x xVar) {
        this.f11749i = xVar;
    }

    private void n(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("params")) == null) {
            return;
        }
        c(jSONObjectOptJSONObject.optString("scene"));
    }

    private void ve(final m mVar, final rh.tt ttVar, final rh.c cVar) {
        if (this.gt == null) {
            zm zmVar = new zm(com.byazt.omf.gt.getContext(), 2, this.sp.i());
            this.gt = zmVar;
            zmVar.c(this.f11746a.ge());
            this.gt.ve(this.f11746a.tw());
            this.gt.tt(this.f11746a.br());
            this.gt.c(this.f11746a.lv());
            this.gt.a(this.f11746a.pe());
            this.gt.n(this.f11746a.e());
            this.gt.tt(this.f11746a.yx());
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        final float[] fArr = {0.0f};
        this.gt.c(new zm.c() { // from class: com.byazt.atv.n.3
            @Override // com.byazt.nr.zm.c
            public void c(int i10) {
                if (i10 != 2) {
                    return;
                }
                n nVar = n.this;
                nVar.gt.tt(nVar.rh());
                fArr[0] = 0.0f;
                View viewI = ((com.byazt.xj.ve) ttVar).i();
                if (viewI != null) {
                    viewI.getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.byazt.atv.n.3.1
                        @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
                        public void onWindowFocusChanged(boolean z10) {
                            if (z10) {
                                n nVar2 = n.this;
                                nVar2.gt.c(nVar2.rh());
                            } else {
                                n nVar3 = n.this;
                                nVar3.gt.tt(nVar3.rh());
                                fArr[0] = 0.0f;
                            }
                        }
                    });
                }
                AtomicBoolean atomicBoolean2 = atomicBoolean;
                if (atomicBoolean2 != null) {
                    atomicBoolean2.set(true);
                }
                n.this.c(mVar, ttVar, cVar, 2, false);
            }
        });
        this.gt.c(new zm.tt() { // from class: com.byazt.atv.n.4

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public float f11764c = 0.0f;
            public float tt = 0.0f;
            public float ve = 0.0f;
            public float uj = 0.0f;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public float f11767n = 0.0f;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public float f11763a = 0.0f;
            public long sp = System.currentTimeMillis();

            @Override // com.byazt.nr.zm.tt
            public void c(float f10, float f11, float f12) {
                JSONObject jSONObjectVe;
                View viewI;
                boolean z10;
                float f13;
                float fCeil;
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.sp < 100) {
                    return;
                }
                this.sp = jCurrentTimeMillis;
                m mVar2 = mVar;
                if (mVar2 == null || (jSONObjectVe = mVar2.ve()) == null) {
                    return;
                }
                double dOptDouble = jSONObjectVe.optDouble("rotateZ", -1.0d);
                if (dOptDouble == -1.0d) {
                    return;
                }
                rh.tt ttVar2 = ttVar;
                if ((ttVar2 instanceof com.byazt.xj.ve) && (viewI = ((com.byazt.xj.ve) ttVar2).i()) != null && viewI.isShown()) {
                    float fAbs = Math.abs(f10);
                    float fAbs2 = Math.abs(f11);
                    float fAbs3 = Math.abs(f12);
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    if (atomicBoolean2 != null && atomicBoolean2.get()) {
                        if (f10 != 0.0f && f11 != 0.0f && f12 != 0.0f) {
                            atomicBoolean.set(false);
                        }
                        this.f11764c = fAbs;
                        this.tt = fAbs2;
                        this.ve = fAbs3;
                        this.uj = f10;
                        this.f11767n = f11;
                        this.f11763a = f12;
                        return;
                    }
                    float fMax = Math.max(Math.abs(fAbs - this.f11764c), Math.max(Math.abs(fAbs2 - this.tt), Math.abs(fAbs3 - this.ve)));
                    int iBr = n.this.f11746a.br();
                    if (iBr <= 0) {
                        iBr = 50;
                    }
                    if (Math.abs(fAbs - this.f11764c) == fMax) {
                        f13 = f10 >= this.uj ? fMax : -fMax;
                        z10 = true;
                    } else {
                        z10 = false;
                        f13 = 0.0f;
                    }
                    if (Math.abs(fAbs2 - this.tt) == fMax) {
                        f13 = f11 >= this.f11767n ? fMax : -fMax;
                        z10 = true;
                    }
                    if (Math.abs(fAbs3 - this.ve) != fMax) {
                        fMax = f13;
                    } else if (f12 < this.f11763a) {
                        fMax = -fMax;
                    }
                    if (n.this.f11746a.pe() == 0) {
                        fCeil = (float) Math.ceil(((double) (fMax * 180.0f)) / dOptDouble);
                    } else {
                        double degrees = Math.toDegrees(fMax);
                        float fCeil2 = (float) Math.ceil(degrees / dOptDouble);
                        if (z10 && Math.abs(degrees) < iBr - 8) {
                            return;
                        } else {
                            fCeil = z10 ? -Math.abs(fCeil2) : fCeil2;
                        }
                    }
                    if (Math.abs(fCeil - fArr[0]) < 1.3d) {
                        return;
                    }
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewI, "rotation", fArr[0], fCeil);
                    objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
                    objectAnimatorOfFloat.setDuration(100L);
                    objectAnimatorOfFloat.start();
                    fArr[0] = fCeil;
                }
            }
        });
        this.gt.c(rh());
    }

    public void c(x xVar) {
        this.f11748da = xVar;
    }

    private void uj(final m mVar, final rh.tt ttVar, final rh.c cVar) {
        WeakReference<ViewGroup> weakReference = this.f11756z;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        or.c(this.f11756z, new com.byazt.hkv.ve() { // from class: com.byazt.atv.n.5
            @Override // com.byazt.hkv.ve
            public void c() {
                WeakReference<ViewGroup> weakReference2 = n.this.f11756z;
                if (weakReference2 == null || weakReference2.get() == null || !or.c(n.this.f11756z.get())) {
                    return;
                }
                n.this.c(mVar, ttVar, cVar, 1, false);
            }
        });
    }

    public void c(com.byazt.sy.c cVar) {
        this.yv = cVar;
    }

    private void c(com.byazt.xj.ve<View> veVar, List<com.byazt.xj.ve<View>> list) {
        if (veVar instanceof com.byazt.xj.c) {
            if (veVar.c(4)) {
                list.add(veVar);
            }
            List<com.byazt.xj.ve<View>> listSp = ((com.byazt.xj.c) veVar).sp();
            if (listSp == null || listSp.size() == 0) {
                return;
            }
            Iterator<com.byazt.xj.ve<View>> it2 = listSp.iterator();
            while (it2.hasNext()) {
                c(it2.next(), list);
            }
            return;
        }
        if (veVar == null || !veVar.c(4)) {
            return;
        }
        list.add(veVar);
    }

    public void tt(com.byazt.xl.sp spVar) {
        this.f11747c.c((rh) this);
        this.f11747c.c((gt) this);
        this.ve = this.f11747c.c(this.uj);
        this.sp.or().tt();
        this.sp.or().ve();
        this.f11747c.tt(this.f11751n);
    }

    private void uj(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("params")) == null) {
            return;
        }
        c(jSONObjectOptJSONObject.optString("scene"), jSONObjectOptJSONObject.optString("ugen_id"), jSONObjectOptJSONObject.optString("ugen_md5"), jSONObjectOptJSONObject.optString("ugen_url"), jSONObjectOptJSONObject.optString("displayAreaAndroid"), jSONObjectOptJSONObject.optString("render_sequence"));
    }

    private void tt(m mVar) {
        JSONObject jSONObjectVe;
        if (mVar == null || (jSONObjectVe = mVar.ve()) == null) {
            return;
        }
        com.byazt.ukr.yp.c().tt(this.f11746a, jSONObjectVe.optString("uttieUrl"));
    }

    private void tt(m mVar, rh.tt ttVar, rh.c cVar) {
        JSONObject jSONObjectVe = mVar.ve();
        if (jSONObjectVe == null) {
            return;
        }
        String strOptString = jSONObjectVe.optString("type", null);
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        strOptString.hashCode();
        if (strOptString.equals("clickEvent")) {
            c(mVar, ttVar, cVar, 0, true);
            return;
        }
        if (strOptString.equals("close")) {
            x xVar = this.f11748da;
            if (xVar != null) {
                xVar.c();
            }
            com.byazt.ukr.yp.c().ve(this.f11746a, jSONObjectVe.optString("uttieUrl"));
        }
    }

    @Override // com.byazt.xl.uj
    public void c(com.byazt.xl.sp spVar) {
        this.sp.or().c();
        this.uj = c();
        JSONObject jSONObjectSl = sl();
        this.f11751n = jSONObjectSl;
        if (this.uj != null && jSONObjectSl != null) {
            tt(spVar);
            if (this.ve != null) {
                ve veVar = new ve();
                this.sl = veVar;
                veVar.c(true);
                this.sl.c(ve());
                com.byazt.xj.ve veVarA = a();
                this.f11750m = veVarA;
                if (veVarA != null && (veVarA instanceof com.byazt.hnr.c)) {
                    ((ve) this.sl).c((FrameLayout) veVarA.i());
                }
                com.byazt.xj.ve veVarX = x();
                this.nu = veVarX;
                if (veVarX != null && (veVarX instanceof com.byazt.dy.c)) {
                    ((ve) this.sl).tt((FrameLayout) veVarX.i());
                }
                yp ypVar = this.sl;
                if (ypVar instanceof ve) {
                    ((ve) ypVar).c(this.rl);
                }
                this.f11755x.setTimerHolder(this.rl);
                int iOr = this.ve.or();
                int iCu = this.ve.cu();
                ArrayList arrayList = new ArrayList();
                this.qy = arrayList;
                c(this.ve, arrayList);
                View viewI = this.ve.i();
                ViewGroup viewGroup = (ViewGroup) viewI.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(viewI);
                }
                this.f11755x.addView(this.ve.i(), new FrameLayout.LayoutParams(iOr, iCu));
                float fD = this.sp.d();
                float fEo = this.sp.eo();
                float fVe = pf.ve(this.tt, fD);
                float fVe2 = pf.ve(this.tt, fEo);
                int iUj = pf.uj(this.tt);
                int iX = (int) (pf.x(this.tt) + pf.da(this.tt));
                float f10 = iUj;
                if (fVe > f10) {
                    fVe = f10;
                }
                float f11 = iX;
                if (fVe2 > f11) {
                    fVe2 = f11;
                }
                if (fEo <= 0.0f) {
                    this.f11755x.setLayoutParams(new FrameLayout.LayoutParams((int) fVe, -2));
                } else {
                    this.f11755x.setLayoutParams(new FrameLayout.LayoutParams((int) fVe, (int) fVe2));
                }
                if (fEo <= 0.0f) {
                    this.f11755x.measure(View.MeasureSpec.makeMeasureSpec((int) fVe, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
                    int iUj2 = pf.uj(this.tt, this.f11755x.getMeasuredWidth());
                    int iUj3 = pf.uj(this.tt, this.f11755x.getMeasuredHeight());
                    this.sl.c(iUj2);
                    this.sl.tt(iUj3);
                } else {
                    this.sl.c(pf.uj(this.tt, fVe));
                    this.sl.tt(pf.uj(this.tt, fVe2));
                }
                if (this.my.get()) {
                    spVar.c(137, (String) null);
                    return;
                } else {
                    spVar.c(this.f11755x, this.sl);
                    return;
                }
            }
            spVar.c(138, (String) null);
            return;
        }
        spVar.c(133, (String) null);
    }

    private void ve(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("params")) == null) {
            return;
        }
        com.byazt.fx.ve.c(jSONObjectOptJSONObject, this.tt, this.f11746a);
    }

    private void tt(JSONObject jSONObject) {
        com.byazt.xj.ve<View> veVar;
        com.byazt.xj.ve veVarUj;
        if (jSONObject == null) {
            return;
        }
        String strC = com.byazt.wj.tt.c(jSONObject.optString("type"), sl());
        String strC2 = com.byazt.wj.tt.c(jSONObject.optString("nodeId"), sl());
        if (TextUtils.isEmpty(strC2) || (veVar = this.ve) == null || (veVarUj = veVar.tt(veVar).uj(strC2)) == null) {
            return;
        }
        if (TextUtils.equals(strC, "onDismiss")) {
            veVarUj.tt(8);
            return;
        }
        if (TextUtils.equals(strC, "onShow")) {
            veVarUj.tt(0);
        } else if (TextUtils.equals(strC, "haptic")) {
            ve(jSONObject);
        } else if (TextUtils.equals(strC, "dismissScene")) {
            n(jSONObject);
        }
    }

    public JSONObject c() {
        return this.sp.n();
    }

    public void c(boolean z10) {
        this.my.set(z10);
    }

    @Override // com.byazt.sz.rh
    public void c(m mVar, rh.tt ttVar, rh.c cVar) {
        if (mVar == null) {
            return;
        }
        if (mVar.tt() == 18) {
            ve(mVar, ttVar, cVar);
        } else if (mVar.tt() == 3) {
            uj(mVar, ttVar, cVar);
        } else if (mVar.tt() == 9) {
            tt(mVar.ve());
        } else if (mVar.tt() == 10) {
            c(mVar.ve());
        } else if (mVar.tt() == 21) {
            tt(mVar);
        } else if (mVar.tt() == 19) {
            tt(mVar, ttVar, cVar);
            ve(mVar);
        } else if (mVar.tt() == 20 || uj(mVar)) {
            tt(mVar, ttVar, cVar);
        } else if (mVar.tt() == 22) {
            c(mVar);
        } else {
            c(mVar, ttVar, cVar, 0, false);
        }
        if (mVar.ve() != null) {
            String strOptString = mVar.ve().optString("next");
            try {
                if (TextUtils.isEmpty(strOptString)) {
                    return;
                }
                m mVar2 = new m();
                mVar2.c(1);
                mVar2.c(new JSONObject(strOptString));
                mVar2.c(this.ve);
                c(mVar2, (rh.tt) null, (rh.c) null);
            } catch (JSONException unused) {
            }
        }
    }

    private void c(m mVar) {
        JSONObject jSONObjectVe;
        if (mVar == null || (jSONObjectVe = mVar.ve()) == null) {
            return;
        }
        String strOptString = jSONObjectVe.optString("type");
        String strOptString2 = jSONObjectVe.optString("uchain");
        JSONObject jSONObjectOptJSONObject = jSONObjectVe.optJSONObject("params");
        JSONObject jSONObject = new JSONObject();
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    jSONObject.put(next, com.byazt.wj.tt.c(jSONObjectOptJSONObject.optString(next), sl()));
                } catch (Throwable unused) {
                }
            }
        }
        if ("true".equals(strOptString2)) {
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            map2.put("material_meta", this.f11746a);
            HashMap map3 = new HashMap();
            map3.put("ugen_event_params", jSONObject);
            String strTt = nb.tt(this.f11746a);
            nb.md();
            com.byazt.ppf.ve.c(this.f11746a, map, strOptString, map2, strTt, map3, -1L);
        }
    }

    private void c(JSONObject jSONObject) {
        com.byazt.xj.ve<View> veVar;
        com.byazt.xj.ve veVarUj;
        if (jSONObject == null) {
            return;
        }
        String strC = com.byazt.wj.tt.c(jSONObject.optString("type"), sl());
        String strC2 = com.byazt.wj.tt.c(jSONObject.optString("nodeId"), sl());
        if (TextUtils.isEmpty(strC2) || (veVar = this.ve) == null || (veVarUj = veVar.tt(veVar).uj(strC2)) == null) {
            return;
        }
        if (TextUtils.equals(strC, "onShow")) {
            veVarUj.tt(0);
            return;
        }
        if (TextUtils.equals(strC, "onDismiss")) {
            veVarUj.tt(8);
        } else if (TextUtils.equals(strC, "haptic")) {
            ve(jSONObject);
        } else if (TextUtils.equals(strC, "dismissScene")) {
            n(jSONObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(m mVar, rh.tt ttVar, rh.c cVar, int i10, boolean z10) {
        com.byazt.xj.ve veVarC;
        int i11;
        String strOptString;
        int iOptInt;
        JSONObject jSONObjectZb;
        CharSequence text;
        if (mVar == null || (veVarC = mVar.c()) == null) {
            return;
        }
        JSONObject jSONObjectVe = mVar.ve();
        String strC = com.byazt.wj.tt.c(jSONObjectVe.optString("nodeId"), sl());
        String strC2 = com.byazt.wj.tt.c(jSONObjectVe.optString("type"), sl());
        if (tt()) {
            HashMap map = new HashMap();
            map.put("ugen_click_event_params", this.yp);
            map.put("convert_action_type", Integer.valueOf(i10));
            if (com.byazt.qdk.c.c().c(mVar, this.f11746a, this.tt, veVarC, sl(), this.f11754u, map)) {
                return;
            }
        }
        if (TextUtils.equals(strC2, "clickEvent")) {
            strOptString = jSONObjectVe.optString("subConvertLinkTag");
            iOptInt = jSONObjectVe.optInt("dpaPosition", -1);
            i11 = 2;
        } else {
            if (TextUtils.equals(strC2, "muteVideo")) {
                this.gu = jSONObjectVe.optString("muteSrc");
                this.gr = jSONObjectVe.optString("unmuteSrc");
                i11 = 5;
            } else if (TextUtils.equals(strC2, "dislike")) {
                i11 = 3;
            } else if (TextUtils.equals(strC2, "skip")) {
                i11 = 6;
            } else if (TextUtils.equals(strC2, "openPolicy")) {
                i11 = 7;
            } else if (TextUtils.equals(strC2, "openAppPolicy")) {
                i11 = 9;
            } else if (TextUtils.equals(strC2, "openAppPermission")) {
                i11 = 10;
            } else {
                i11 = 8;
                if (!TextUtils.equals(strC2, "close")) {
                    if (TextUtils.equals(strC2, "openAppFunctionDesc")) {
                        i11 = 12;
                    } else if (TextUtils.equals(strC2, "videoControl") || TextUtils.equals(strC2, "pauseVideo")) {
                        i11 = 4;
                    } else if (TextUtils.equals(strC2, "openCommonUrl")) {
                        i11 = 13;
                    } else {
                        if (TextUtils.equals(strC2, "onDismiss")) {
                            com.byazt.xj.ve veVarUj = mVar.c().tt(mVar.c()).uj(strC);
                            if (veVarUj != null) {
                                veVarUj.tt(8);
                                return;
                            }
                            return;
                        }
                        if (TextUtils.equals(strC2, "onShow")) {
                            com.byazt.xj.ve veVarUj2 = mVar.c().tt(mVar.c()).uj(strC);
                            if (veVarUj2 != null) {
                                veVarUj2.tt(0);
                                return;
                            }
                            return;
                        }
                        if (TextUtils.equals(strC2, "haptic")) {
                            ve(mVar.ve());
                            return;
                        }
                        if (TextUtils.equals(strC2, "closeWidget")) {
                            com.byazt.sy.sp spVar = this.rh;
                            if (spVar != null) {
                                spVar.n();
                                return;
                            }
                            return;
                        }
                        if (TextUtils.equals(strC2, "dismiss")) {
                            veVarC.tt(8);
                            return;
                        }
                        if (TextUtils.equals(strC2, "renderScene")) {
                            uj(jSONObjectVe);
                            return;
                        } else if (TextUtils.equals(strC2, "dismissScene")) {
                            n(jSONObjectVe);
                            return;
                        } else {
                            strOptString = "";
                            iOptInt = -1;
                            i11 = 0;
                        }
                    }
                }
            }
            strOptString = "";
            iOptInt = -1;
        }
        gr.c cVarN = new gr.c().uj(this.yp.nu()).ve(this.yp.rh()).tt(this.yp.my()).c(this.yp.gt()).c(veVarC.eo()).tt(this.yp.z()).c(this.yp.m()).n(strOptString).n(iOptInt);
        JSONObject jSONObject = new JSONObject();
        if (i10 > 0) {
            try {
                jSONObject.put("convertActionType", i10);
            } catch (Throwable unused) {
            }
        }
        View viewI = veVarC.i();
        try {
            if ((viewI instanceof TextView) && (text = ((TextView) viewI).getText()) != null && text.toString().contains("下载")) {
                jSONObject.put("is_compliant_download", true);
            }
        } catch (JSONException unused2) {
        }
        try {
            if (this.f11746a != null && this.md && jSONObjectVe.optBoolean("uchain", false)) {
                jSONObject.put("uchain_event_name", strC2);
            }
        } catch (JSONException unused3) {
        }
        try {
            tt ttVar2 = this.sp;
            if (ttVar2 != null && (jSONObjectZb = ttVar2.zb()) != null) {
                jSONObject.put("ugen_id", jSONObjectZb.optString("ugen_id"));
            }
        } catch (JSONException unused4) {
        }
        try {
            String strC3 = com.byazt.wj.tt.c(jSONObjectVe.optString("webUrl"), sl());
            String strC4 = com.byazt.wj.tt.c(jSONObjectVe.optString("webTitle"), sl());
            jSONObject.put("openCommonWebUrl", strC3);
            jSONObject.put("openCommonWebTitle", strC4);
        } catch (JSONException unused5) {
        }
        if (z10) {
            try {
                jSONObject.put("isLottieInternalClick", true);
            } catch (JSONException unused6) {
            }
        }
        cVarN.c(jSONObject);
        gr grVarC = cVarN.c();
        com.byazt.xl.x xVar = this.f11749i;
        if (xVar != null) {
            xVar.c(viewI, i11, grVarC, -1);
        }
        if (ttVar == null || mVar.uj() == null) {
            return;
        }
        ttVar.c(mVar.uj());
    }

    public void c(String str, String str2, String str3, String str4, String str5, String str6) {
        int i10;
        int i11;
        ir irVarC;
        String strC = com.byazt.wj.tt.c(str, sl());
        String strC2 = com.byazt.wj.tt.c(str2, sl());
        String strC3 = com.byazt.wj.tt.c(str3, sl());
        String strC4 = com.byazt.wj.tt.c(str4, sl());
        try {
            i10 = Integer.parseInt(com.byazt.wj.tt.c(str5, sl()));
        } catch (Exception unused) {
            i10 = 0;
        }
        try {
            i11 = Integer.parseInt(com.byazt.wj.tt.c(str6, sl()));
        } catch (Exception unused2) {
            i11 = 2;
        }
        if (c(strC, i10)) {
            com.byazt.xj.ve<View> veVar = this.ve;
            View viewI = veVar != null ? veVar.i() : null;
            if (viewI == null || this.f11746a == null || (irVarC = com.byazt.sy.uj.c(strC2, strC3, strC4, i10, i11, 5)) == null || !irVarC.t()) {
                return;
            }
            com.byazt.ma.n nVar = new com.byazt.ma.n(this.f11746a, this.yv, irVarC);
            this.zm = nVar;
            nVar.c(viewI);
        }
    }

    public void c(String str) {
        com.byazt.sy.sp spVar;
        if (!TextUtils.equals("scene1", com.byazt.wj.tt.c(str, sl())) || (spVar = this.rh) == null) {
            return;
        }
        spVar.n();
    }

    private boolean c(String str, int i10) {
        return TextUtils.equals("scene1", str) && com.byazt.sy.uj.c(i10);
    }

    public void c(com.byazt.sy.sp spVar) {
        this.rh = spVar;
    }

    public void c(long j10, long j11) {
        com.byazt.xj.ve veVar = this.f11750m;
        if (veVar instanceof com.byazt.hnr.c) {
            ((com.byazt.hnr.c) veVar).c(j10, j11);
        }
    }

    @Override // com.byazt.kn.uj
    public void c(CharSequence charSequence, int i10, int i11, boolean z10) {
        com.byazt.xj.ve<View> veVar = this.ve;
        if (veVar == null) {
            return;
        }
        com.byazt.xj.ve<T> veVarUj = veVar.uj("count_down_skip_container");
        if (veVarUj != 0 && veVarUj.i() != null) {
            veVarUj.i().setVisibility(0);
        }
        com.byazt.sa.uj ujVarUj = this.ve.uj("count_down");
        com.byazt.sa.uj ujVarUj2 = this.ve.uj("skip");
        if ((ujVarUj instanceof com.byazt.sm.tt) && (ujVarUj2 instanceof com.byazt.sm.tt)) {
            if (i11 == 0) {
                if (!TextUtils.equals(charSequence, "0") && !z10) {
                    ((com.byazt.sm.tt) ujVarUj).t(((Object) charSequence) + "s ");
                    com.byazt.sm.tt ttVar = (com.byazt.sm.tt) ujVarUj2;
                    ttVar.t("| 跳过");
                    ttVar.i().setVisibility(0);
                    return;
                }
                ((com.byazt.sm.tt) ujVarUj).i().setVisibility(8);
                ((com.byazt.sm.tt) ujVarUj2).t("跳过");
                return;
            }
            ((com.byazt.sm.tt) ujVarUj).t(((Object) charSequence) + "s ");
        }
    }

    @Override // com.byazt.sz.gt
    public void c(com.byazt.xj.ve veVar, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                return;
            }
            this.yp.ve(motionEvent.getRawX());
            this.yp.uj(motionEvent.getRawY());
            this.yp.tt(System.currentTimeMillis());
            return;
        }
        this.yp.n((int) motionEvent.getRawX());
        this.yp.a((int) motionEvent.getRawY());
        this.yp.c(motionEvent.getRawX());
        this.yp.tt(motionEvent.getRawY());
        this.yp.c(System.currentTimeMillis());
        this.yp.tt(motionEvent.getToolType(0));
        this.yp.ve(motionEvent.getDeviceId());
        this.yp.uj(motionEvent.getSource());
    }

    public void c(com.byazt.sz.x xVar) {
        this.f11753t.add(xVar);
    }
}
