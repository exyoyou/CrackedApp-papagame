package com.byazt.hz;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.nr.m;
import com.byazt.vx.p;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 701, 42})
public class i extends tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.me.uj f15196c;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.om.c.InterfaceC0392c f15197m;
    public boolean nu;
    public com.byazt.zh.ve tt;

    public i(Context context) {
        super(context);
        this.nu = false;
    }

    private void uj() {
        try {
            List<com.byazt.nbs.da> listTt = tt();
            if (listTt == null || listTt.size() <= 0) {
                return;
            }
            for (com.byazt.nbs.da daVar : listTt) {
                if (daVar != null) {
                    String strRh = daVar.rh();
                    if (com.byazt.hk.c.c().uj(this.f15240n, strRh, this.f15236a.n())) {
                        if (daVar.my() == 100) {
                            c(strRh, this.ve.sl());
                        } else if (daVar.my() == 0) {
                            c(strRh, this.ve.t());
                        }
                    }
                }
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @Override // com.byazt.hz.tt, com.byazt.ul.c
    public void sp() {
        List<com.byazt.yl.ve> listC;
        List<com.byazt.yl.ve> listC2;
        if (this.f15196c == null || (listC2 = c((listC = this.ve.c(true)), this.f15236a.gr())) == null || listC2.size() <= 0) {
            return;
        }
        if (com.byazt.eu.tt.tt()) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "返回给外部开发者的广告数量：sumList.size=" + listC2.size());
        }
        CopyOnWriteArrayList<com.byazt.yl.ve> copyOnWriteArrayList = new CopyOnWriteArrayList<>(listC);
        for (com.byazt.yl.ve veVar : listC2) {
            if (veVar != null) {
                veVar.setHasShown(true);
                if (veVar.canAdReuse() && com.byazt.hk.c.c().uj(this.f15240n, veVar.getAdNetworkSlotId(), this.f15236a.n())) {
                    com.byazt.qv.a.c(veVar, this.f15240n, veVar.getAdNetworkSlotId());
                    c(copyOnWriteArrayList, veVar);
                }
                c(this.ve.sl(), veVar);
                c(this.ve.t(), veVar);
                c(this.ve.u(), veVar);
                c(this.ve.yp(), veVar);
            }
        }
        com.byazt.hk.c cVarC = com.byazt.hk.c.c();
        String str = this.f15240n;
        com.byazt.ll.tt ttVar = this.f15236a;
        cVarC.c(copyOnWriteArrayList, str, ttVar, ttVar.n(), null);
        this.f15196c.c(listC2);
    }

    @Override // com.byazt.hz.tt, com.byazt.ul.c
    public void tt(@NonNull com.byazt.pp.c cVar) {
        com.byazt.zh.ve veVar;
        com.byazt.me.uj ujVar = this.f15196c;
        if (ujVar != null) {
            ujVar.c(cVar);
            if (this.sl != 0 || (veVar = this.tt) == null) {
                return;
            }
            this.sl = 2;
            veVar.c(cVar);
        }
    }

    @Override // com.byazt.hz.tt
    public void ve() {
        this.f15196c = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve(com.byazt.yl.ve veVar) {
        com.byazt.nbs.tt ttVar;
        if (this.f15236a.tk() || veVar == null || veVar.getAdNetworkPlatformId() == 7 || (veVar instanceof com.byazt.zm.tt) || (ttVar = this.sp) == null || ttVar.z()) {
            return;
        }
        com.byazt.ix.uj.c().tt(this.f15243x.get(), this.f15240n, this.f15236a.n());
    }

    public void c(com.byazt.ll.tt ttVar, @NonNull com.byazt.me.uj ujVar) {
        c(ttVar);
        this.f15196c = ujVar;
        i();
    }

    private boolean tt(String str, List<com.byazt.yl.ve> list) {
        if (list == null || list.size() <= 0) {
            return false;
        }
        for (com.byazt.yl.ve veVar : list) {
            if (veVar != null && TextUtils.equals(str, veVar.getAdNetworkSlotId())) {
                return true;
            }
        }
        return false;
    }

    private void ve(List<com.byazt.yl.ve> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        ArrayList<com.byazt.yl.ve> arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        list.clear();
        for (com.byazt.yl.ve veVar : arrayList) {
            if (veVar != null && !veVar.isHasShown() && veVar.isReady(this.f15240n)) {
                list.add(veVar);
            }
        }
    }

    @Override // com.byazt.hz.tt, com.byazt.ul.c
    public void c(@Nullable List<com.byazt.yl.ve> list, @Nullable com.byazt.pp.c cVar) {
        super.c(list, cVar);
        if (!(this.f15196c instanceof com.byazt.me.sp) || p.c(list)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (com.byazt.yl.ve veVar : list) {
            veVar.setCallBack(new com.byazt.yl.ve.c() { // from class: com.byazt.hz.i.1
                @Override // com.byazt.yl.ve.c
                public void c() {
                    i.this.f15241t = true;
                }

                @Override // com.byazt.yl.ve.c
                public void c(com.byazt.yl.ve veVar2) {
                    i.this.c(veVar2, false);
                }
            });
            arrayList.add(veVar);
        }
    }

    @Override // com.byazt.hz.tt, com.byazt.ul.c
    public void c(@Nullable String str) {
        com.byazt.zh.ve veVar;
        if (this.sl != 0 || (veVar = this.tt) == null) {
            return;
        }
        this.sl = 1;
        veVar.c(str);
    }

    public void c(String str, com.byazt.me.uj ujVar) {
        if (this.sl != 1) {
            if (ujVar != null) {
                ujVar.c(new com.byazt.pp.c(10015, com.byazt.pp.c.c(10015)));
            }
        } else if (this.f15238da) {
            if (ujVar != null) {
                ujVar.c(new com.byazt.pp.c(40047, com.byazt.pp.c.c(40047)));
            }
        } else {
            this.f15238da = true;
            this.f15196c = ujVar;
            com.byazt.om.c.InterfaceC0392c interfaceC0392c = this.f15197m;
            if (interfaceC0392c != null) {
                interfaceC0392c.c(str);
            }
        }
    }

    public void c(com.byazt.ll.tt ttVar, com.byazt.zh.ve veVar) {
        c(ttVar);
        this.tt = veVar;
        if (this.ve.m() != null && this.ve.m().z()) {
            this.f15197m = i();
        } else if (veVar != null) {
            veVar.c(new com.byazt.pp.c(10014, com.byazt.pp.c.c(10014)));
        }
    }

    private List<com.byazt.yl.ve> c(List<com.byazt.yl.ve> list, int i10) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        ve(list);
        uj();
        final ArrayList arrayList = new ArrayList(list);
        ArrayList arrayList2 = new ArrayList();
        Iterator<com.byazt.yl.ve> it2 = list.iterator();
        while (it2.hasNext() && arrayList2.size() < i10) {
            com.byazt.yl.ve next = it2.next();
            arrayList2.add(next);
            if (com.byazt.eu.tt.tt()) {
                com.byazt.eu.tt.uj(MediationConstant.TAG, "");
                com.byazt.eu.tt.uj(MediationConstant.TAG, com.byazt.eu.uj.c(this.f15240n, "show") + "返回给开发者最终广告：slotId=" + next.getAdNetworkSlotId() + ",slotType:" + next.getAdNetworkSlotType() + ",cpm=" + next.getCpm() + ",广告类型：" + com.byazt.yl.c.c(next.getAdNetworkPlatformId()) + ",ImageMode=" + next.getImageMode() + ",showSort=" + next.getShowSort() + ",isExpressAd=" + next.isExpressAd());
            }
            next.setCallBack(new com.byazt.yl.ve.c() { // from class: com.byazt.hz.i.2
                @Override // com.byazt.yl.ve.c
                public void c() {
                    i.this.f15241t = true;
                    com.byazt.iz.tt ttVar = i.this.ve;
                    if (ttVar != null) {
                        ttVar.c(arrayList);
                    }
                }

                @Override // com.byazt.yl.ve.c
                public void c(com.byazt.yl.ve veVar) {
                    boolean z10;
                    com.byazt.ix.uj ujVarC = com.byazt.ix.uj.c();
                    i iVar = i.this;
                    if (ujVarC.ve(iVar.f15240n, iVar.f15236a.n()) || i.this.nu) {
                        z10 = false;
                    } else {
                        z10 = true;
                        i.this.nu = true;
                    }
                    i.this.c(veVar, z10);
                    i.this.ve(veVar);
                }
            });
            it2.remove();
        }
        com.byazt.vy.c cVarC = com.byazt.vy.c.c();
        com.byazt.ll.tt ttVar = this.f15236a;
        cVarC.c(ttVar, com.byazt.vy.c.c(ttVar, arrayList2, list));
        c(arrayList2);
        return arrayList2;
    }

    public void c(com.byazt.yl.ve veVar, boolean z10) {
        if (veVar != null && veVar.canAdReuse() && com.byazt.hk.c.c().uj(this.f15240n, veVar.getAdNetworkSlotId(), this.f15236a.n())) {
            com.byazt.hk.c.c().c(veVar.getAdNetworkSlotId(), this.f15236a, this.ve.zb(), z10, this.ve.or(), this.ve.pf(), this.f15243x.get());
        }
    }

    private void c(CopyOnWriteArrayList<com.byazt.yl.ve> copyOnWriteArrayList, com.byazt.yl.ve veVar) {
        for (com.byazt.yl.ve veVar2 : copyOnWriteArrayList) {
            if (veVar2 == veVar && veVar2 != null) {
                copyOnWriteArrayList.remove(veVar2);
            }
        }
    }

    private void c(String str, List<com.byazt.yl.ve> list) {
        com.byazt.yl.ve veVar;
        if (tt(str, list) || com.byazt.hk.c.c().c(str, this.f15236a, false) != 3) {
            return;
        }
        com.byazt.hk.c cVarC = com.byazt.hk.c.c();
        com.byazt.ll.tt ttVar = this.f15236a;
        List<com.byazt.ix.sp> listC = cVarC.c(str, ttVar, ttVar.n());
        if (listC == null || listC.size() <= 0) {
            return;
        }
        for (com.byazt.ix.sp spVar : listC) {
            if (spVar != null && (veVar = spVar.f15563c) != null && !veVar.isHasShown() && spVar.f15563c.isReady(this.f15240n)) {
                list.add(spVar.f15563c);
                tt(spVar.f15563c);
            }
        }
    }
}
