package com.byazt.sz;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.mgps.activity.PayNowActivity_;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 133})
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public qy f20059a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f20060c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.pm.u f20061da;
    public float gr;
    public List<String> gt;
    public float gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.pm.yp f20062i;
    public boolean my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public rh f20064n;
    public com.byazt.vt.c nu;
    public a qy;
    public boolean rh;
    public x rl;
    public i sl;
    public gt sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f20065t;
    public JSONObject tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public yp f20066u;
    public da uj;
    public com.byazt.xj.ve<View> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public my f20067x;
    public JSONObject yp;
    public sl zm;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f20068z = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f20063m = false;

    public z(Context context) {
        this.f20060c = context;
    }

    private void ve(com.byazt.xj.ve veVar) {
        try {
            if (!veVar.h() || veVar.md() == null || veVar.md().sp() == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("i18n", veVar.md().sp());
            this.tt.put("xNode", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void c(String str, yp ypVar) {
        this.f20066u = ypVar;
        this.f20065t = str;
        if (ypVar != null) {
            this.tt = ypVar.c();
        }
    }

    public com.byazt.xj.ve<View> tt(i.c cVar, com.byazt.xj.ve<View> veVar) {
        List<i.c> listVe;
        com.byazt.xj.c.C0482c c0482cX = null;
        if (!i.uj(cVar)) {
            return null;
        }
        x xVar = this.rl;
        if (xVar != null) {
            xVar.tt(cVar);
        }
        String strUj = cVar.uj();
        tt ttVarC = uj.c(strUj);
        if (ttVarC == null) {
            this.rh = true;
            if (this.gt == null) {
                this.gt = new ArrayList();
            }
            this.gt.add(strUj);
            return null;
        }
        com.byazt.xj.ve veVarC = ttVarC.c(this.f20060c);
        if (veVarC == null) {
            return null;
        }
        veVarC.sp(com.byazt.wj.tt.c(cVar.c(), this.tt));
        veVarC.x(strUj);
        veVarC.ve(cVar.n());
        veVarC.c(cVar);
        veVarC.c(this.f20066u);
        if (veVar instanceof com.byazt.xj.c) {
            com.byazt.xj.c cVar2 = (com.byazt.xj.c) veVar;
            veVarC.c(cVar2);
            c0482cX = cVar2.x();
        }
        Iterator<String> itKeys = cVar.n().keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strC = com.byazt.wj.tt.c(cVar.n().optString(next), this.tt);
            veVarC.c(next, strC);
            if (c0482cX != null) {
                c0482cX.c(this.f20060c, next, strC);
            }
        }
        if (veVarC instanceof com.byazt.xj.c) {
            List<i.c> listA = cVar.a();
            if (listA == null || listA.size() <= 0) {
                if (TextUtils.equals(veVarC.zb(), "RecyclerLayout") && (listVe = this.sl.ve()) != null && listVe.size() > 0) {
                    Iterator<i.c> it2 = listVe.iterator();
                    while (it2.hasNext()) {
                        com.byazt.xj.ve<View> veVarTt = tt(it2.next(), veVarC);
                        if (veVarTt != null && veVarTt.nb()) {
                            ((com.byazt.xj.c) veVarC).c(veVarTt);
                        }
                    }
                }
                return veVarC;
            }
            if (TextUtils.equals(veVarC.zb(), "Swiper") && listA.size() != 1) {
                com.byazt.nr.m.uj("UGTemplateEngine", "Swiper must be only one widget");
            }
            Iterator<i.c> it3 = listA.iterator();
            while (it3.hasNext()) {
                com.byazt.xj.ve<View> veVarTt2 = tt(it3.next(), veVarC);
                if (veVarTt2 != null && veVarTt2.nb()) {
                    ((com.byazt.xj.c) veVarC).c(veVarTt2);
                }
            }
        }
        if (c0482cX != null) {
            veVarC.c(c0482cX.c());
        }
        this.ve = veVarC;
        return veVarC;
    }

    public com.byazt.xj.ve<View> c(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        this.tt = jSONObject2;
        qy qyVar = this.f20059a;
        if (qyVar != null) {
            qyVar.c();
        }
        i iVar = new i(jSONObject, jSONObject2, jSONObject3);
        this.sl = iVar;
        iVar.c(this.gu, this.gr);
        this.nu = new com.byazt.vt.c();
        rh rhVar = this.f20064n;
        if (rhVar instanceof com.byazt.lv.tt) {
            ((com.byazt.lv.tt) rhVar).c(this.sl.tt());
        }
        this.ve = c(this.sl.c(), (com.byazt.xj.ve<View>) null);
        sl slVar = this.zm;
        if (slVar != null) {
            slVar.tt();
            if (this.zm.ve()) {
                this.zm.c(this.f20067x);
            }
            this.zm.c(this.f20059a);
        }
        qy qyVar2 = this.f20059a;
        if (qyVar2 != null) {
            qyVar2.tt();
            this.ve.c(this.f20059a);
            this.f20059a.ve();
        }
        tt(this.ve);
        if (this.f20059a != null) {
            rl rlVar = new rl();
            rlVar.c(0);
            rlVar.c(this.ve);
            this.f20059a.c(rlVar);
        }
        return this.ve;
    }

    public boolean ve() {
        return this.my;
    }

    public com.byazt.xj.ve<View> c(i.c cVar, JSONObject jSONObject, JSONObject jSONObject2) {
        this.tt = jSONObject;
        qy qyVar = this.f20059a;
        if (qyVar != null) {
            qyVar.c();
        }
        this.nu = new com.byazt.vt.c();
        rh rhVar = this.f20064n;
        if (rhVar instanceof com.byazt.lv.tt) {
            ((com.byazt.lv.tt) rhVar).c("3.0");
        }
        this.ve = c(cVar, (com.byazt.xj.ve<View>) null);
        qy qyVar2 = this.f20059a;
        if (qyVar2 != null) {
            qyVar2.tt();
            this.ve.c(this.f20059a);
        }
        tt(this.ve);
        return this.ve;
    }

    public com.byazt.xj.ve<View> c(i.c cVar, com.byazt.xj.ve<View> veVar) {
        List<i.c> listVe;
        com.byazt.xj.c.C0482c c0482c = null;
        if (!i.uj(cVar)) {
            return null;
        }
        x xVar = this.rl;
        if (xVar != null) {
            xVar.c(cVar);
        }
        String strUj = cVar.uj();
        tt ttVarC = uj.c(strUj);
        tt ttVar = ttVarC;
        if (ttVarC == null) {
            this.rh = true;
            if (this.gt == null) {
                this.gt = new ArrayList();
            }
            this.gt.add(strUj);
            strUj = "View";
            cVar.c("View");
            tt ttVarC2 = uj.c("View");
            ttVar = ttVarC2;
            if (ttVarC2 == null) {
                return null;
            }
        }
        com.byazt.xj.ve veVarC = ttVar.c(this.f20060c);
        if (veVarC == null) {
            return null;
        }
        JSONObject jSONObjectN = cVar.n();
        veVarC.sp(com.byazt.wj.tt.c(cVar.c(), this.tt));
        veVarC.x(strUj);
        veVarC.ve(jSONObjectN);
        veVarC.c(cVar);
        veVarC.tt(this.tt);
        i iVar = this.sl;
        if (iVar == null) {
            veVarC.ve(true);
        } else {
            veVarC.ve(iVar.uj());
        }
        veVarC.c(this.f20066u);
        veVarC.c(this.nu);
        Iterator<String> itKeys = jSONObjectN.keys();
        if (veVar instanceof com.byazt.xj.c) {
            com.byazt.xj.c cVar2 = (com.byazt.xj.c) veVar;
            com.byazt.xj.c.C0482c c0482cX = cVar2.x();
            veVarC.c(cVar2);
            c0482c = c0482cX;
        }
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strC = com.byazt.wj.tt.c(jSONObjectN.optString(next), this.tt);
            veVarC.c(next, strC);
            sl slVar = this.zm;
            if (slVar != null) {
                slVar.c(next, strC);
            }
            if (c0482c != null) {
                c0482c.c(this.f20060c, next, strC);
            }
        }
        if (c0482c != null) {
            veVarC.c(c0482c.c());
        }
        if (veVar != null && TextUtils.equals("virtualNode", veVar.eo()) && veVarC.pu()) {
            this.my = true;
        }
        if (veVarC instanceof com.byazt.xj.c) {
            List<i.c> listA = cVar.a();
            if (listA != null && listA.size() > 0) {
                if (TextUtils.equals(veVarC.zb(), "Swiper") && listA.size() != 1) {
                    com.byazt.nr.m.uj("UGTemplateEngine", "Swiper must be only one widget");
                }
                try {
                    Collections.sort(listA, new Comparator<i.c>() { // from class: com.byazt.sz.z.1
                        @Override // java.util.Comparator
                        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                        public int compare(i.c cVar3, i.c cVar4) {
                            return cVar3.n().optInt(PayNowActivity_.ORDER_EXTRA, 0) - cVar4.n().optInt(PayNowActivity_.ORDER_EXTRA, 0);
                        }
                    });
                } catch (Throwable unused) {
                }
                Iterator<i.c> it2 = listA.iterator();
                while (it2.hasNext()) {
                    com.byazt.xj.ve<View> veVarC2 = c(it2.next(), (com.byazt.xj.ve<View>) veVarC);
                    if (veVarC2 != null && !veVarC2.pu()) {
                        ((com.byazt.xj.c) veVarC).c(veVarC2, veVarC2.p());
                    }
                }
            } else {
                if (TextUtils.equals(veVarC.zb(), "RecyclerLayout") && (listVe = this.sl.ve()) != null && listVe.size() > 0) {
                    Iterator<i.c> it3 = listVe.iterator();
                    while (it3.hasNext()) {
                        com.byazt.xj.ve<View> veVarC3 = c(it3.next(), (com.byazt.xj.ve<View>) veVarC);
                        if (veVarC3 != null && veVarC3.nb()) {
                            ((com.byazt.xj.c) veVarC).c(veVarC3);
                        }
                    }
                }
                return veVarC;
            }
        }
        this.ve = veVarC;
        return veVarC;
    }

    public void tt(JSONObject jSONObject) {
        qy qyVar = this.f20059a;
        if (qyVar != null) {
            qyVar.ve();
        }
        this.tt = jSONObject;
        c(this.ve, jSONObject);
        tt(this.ve);
        if (this.f20059a != null) {
            rl rlVar = new rl();
            rlVar.c(0);
            rlVar.c(this.ve);
            this.f20059a.c(rlVar);
        }
    }

    private void tt(com.byazt.xj.ve<View> veVar) {
        List<com.byazt.xj.ve<View>> listSp;
        if (veVar == null) {
            return;
        }
        JSONObject jSONObjectGr = veVar.gr();
        Iterator<String> itKeys = jSONObjectGr.keys();
        com.byazt.xj.c cVarD = veVar.d();
        com.byazt.xj.c.C0482c c0482cX = cVarD != null ? cVarD.x() : null;
        ve(veVar);
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strC = com.byazt.wj.tt.c(jSONObjectGr.optString(next), this.tt);
            veVar.c(next, strC);
            if (c0482cX != null) {
                c0482cX.c(this.f20060c, next, strC);
            }
        }
        veVar.c(this.uj);
        veVar.c(this.f20064n);
        veVar.c(this.sp);
        sl slVar = this.zm;
        if (slVar != null) {
            veVar.c(slVar);
        }
        a aVar = this.qy;
        if (aVar != null) {
            veVar.c(aVar);
        }
        com.byazt.pm.yp ypVar = this.f20062i;
        if (ypVar != null) {
            veVar.c(ypVar);
        }
        com.byazt.pm.u uVar = this.f20061da;
        if (uVar != null) {
            veVar.c(uVar);
        }
        if ((veVar instanceof com.byazt.xj.c) && (listSp = ((com.byazt.xj.c) veVar).sp()) != null && listSp.size() > 0) {
            Iterator<com.byazt.xj.ve<View>> it2 = listSp.iterator();
            while (it2.hasNext()) {
                tt(it2.next());
            }
        }
        if (c0482cX != null) {
            veVar.c(c0482cX.c());
        }
        veVar.tt();
    }

    public List<String> tt() {
        return this.gt;
    }

    public com.byazt.xj.ve<View> c(JSONObject jSONObject) {
        qy qyVar = this.f20059a;
        if (qyVar != null) {
            qyVar.c();
        }
        i iVar = new i(jSONObject, this.tt);
        this.sl = iVar;
        rh rhVar = this.f20064n;
        if (rhVar instanceof com.byazt.lv.tt) {
            ((com.byazt.lv.tt) rhVar).c(iVar.tt());
        }
        this.ve = tt(this.sl.c(), null);
        qy qyVar2 = this.f20059a;
        if (qyVar2 != null) {
            qyVar2.tt();
            this.ve.c(this.f20059a);
        }
        return this.ve;
    }

    public com.byazt.xj.ve<View> c(i.c cVar) {
        com.byazt.xj.ve<View> veVarTt = tt(cVar, null);
        this.ve = veVarTt;
        return veVarTt;
    }

    public void c(com.byazt.xj.ve veVar) {
        List<com.byazt.xj.ve<View>> listSp;
        if (veVar == null) {
            return;
        }
        com.byazt.xj.c cVarD = veVar.d();
        if (cVarD != null) {
            com.byazt.xj.c.C0482c c0482cX = cVarD.x();
            Iterator<String> itKeys = veVar.gr().keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String strC = com.byazt.wj.tt.c(veVar.gr().optString(next), this.tt);
                veVar.c(next, strC);
                c0482cX.c(this.f20060c, next, strC);
            }
            veVar.c(c0482cX.c());
        }
        if (!(veVar instanceof com.byazt.xj.c) || (listSp = ((com.byazt.xj.c) veVar).sp()) == null || listSp.size() <= 0) {
            return;
        }
        Iterator<com.byazt.xj.ve<View>> it2 = listSp.iterator();
        while (it2.hasNext()) {
            c(it2.next());
        }
    }

    public void c(com.byazt.xj.ve veVar, JSONObject jSONObject) {
        if (veVar == null) {
            return;
        }
        if (veVar instanceof com.byazt.xj.c) {
            veVar.c(jSONObject);
            List<com.byazt.xj.ve<View>> listSp = ((com.byazt.xj.c) veVar).sp();
            if (listSp == null || listSp.size() <= 0) {
                return;
            }
            Iterator<com.byazt.xj.ve<View>> it2 = listSp.iterator();
            while (it2.hasNext()) {
                c(it2.next(), jSONObject);
            }
            return;
        }
        veVar.c(jSONObject);
    }

    public void c(da daVar) {
        this.uj = daVar;
    }

    public void c(rh rhVar) {
        com.byazt.lv.c cVarN = com.byazt.sa.n.c().n();
        if (cVarN == null) {
            this.f20064n = rhVar;
            return;
        }
        com.byazt.lv.tt ttVarC = cVarN.c(rhVar);
        if (ttVarC == null) {
            this.f20064n = rhVar;
            return;
        }
        ttVarC.c(this.yp);
        ttVarC.c(this.f20068z);
        ttVarC.tt(this.f20063m);
        i iVar = this.sl;
        if (iVar != null) {
            ttVarC.c(iVar.tt());
        }
        this.f20064n = ttVarC;
    }

    public void c(gt gtVar) {
        this.sp = gtVar;
    }

    public void c(com.byazt.xj.ve veVar, String str, Object... objArr) {
        List<com.byazt.xj.ve<View>> listSp;
        if (veVar == null) {
            return;
        }
        veVar.c(str, objArr);
        if (!(veVar instanceof com.byazt.xj.c) || (listSp = ((com.byazt.xj.c) veVar).sp()) == null || listSp.isEmpty()) {
            return;
        }
        Iterator<com.byazt.xj.ve<View>> it2 = listSp.iterator();
        while (it2.hasNext()) {
            c(it2.next(), str, objArr);
        }
    }

    public boolean c() {
        return this.rh;
    }

    public void c(x xVar) {
        this.rl = xVar;
    }

    public void c(a aVar) {
        this.qy = aVar;
    }

    public void c(com.byazt.pm.yp ypVar) {
        this.f20062i = ypVar;
    }

    public void c(com.byazt.pm.u uVar) {
        this.f20061da = uVar;
    }
}
