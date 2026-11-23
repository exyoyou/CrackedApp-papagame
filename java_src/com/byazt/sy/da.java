package com.byazt.sy;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.ete.ir;
import com.byazt.ete.lr;
import com.byazt.ete.p;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 528, 72})
public class da {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ic f19989c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<com.byazt.ma.a> f19990n;
    public com.byazt.dj.tt tt;
    public Context uj;
    public c ve;

    public da(ic icVar, c cVar) {
        this.f19989c = icVar;
        this.ve = cVar;
        this.f19990n = new ArrayList();
        if (icVar == null || !lr.tt(icVar)) {
            return;
        }
        com.byazt.rgb.a.c(icVar, String.valueOf(nb.t(icVar)), nb.sl(icVar), 3, com.byazt.ip.sp.c(icVar));
        final int iUj = p.uj(this.f19989c);
        com.byazt.rgb.a.c().c(com.byazt.ip.sp.c(icVar), new com.byazt.ip.uj.c() { // from class: com.byazt.sy.da.1
            @Override // com.byazt.ip.uj.c
            public void c(com.byazt.ip.tt ttVar) {
                if (ttVar instanceof com.byazt.ha.x) {
                    ((com.byazt.ha.x) ttVar).ve = iUj;
                }
            }
        });
    }

    private void tt(ViewGroup viewGroup, View view) {
        if (viewGroup != null) {
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if ("overlay_tag".equals(childAt.getTag())) {
                    viewGroup.removeView(childAt);
                }
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) view;
            for (int i11 = 0; i11 < viewGroup2.getChildCount(); i11++) {
                View childAt2 = viewGroup2.getChildAt(i11);
                if ("overlay_tag".equals(childAt2.getTag())) {
                    viewGroup2.removeView(childAt2);
                }
            }
        }
    }

    public void c(ViewGroup viewGroup, View view) {
        final List<ir> listC;
        tt(viewGroup, view);
        if (!lr.tt(this.f19989c) || (listC = lr.c(this.f19989c)) == null || listC.isEmpty()) {
            return;
        }
        com.byazt.rgb.a.tt(com.byazt.ip.sp.c(this.f19989c));
        if (listC.get(0) != null) {
            com.byazt.rgb.a.c().c(com.byazt.ip.sp.c(this.f19989c), new com.byazt.ip.uj.c() { // from class: com.byazt.sy.da.2
                @Override // com.byazt.ip.uj.c
                public void c(com.byazt.ip.tt ttVar) {
                    if (ttVar instanceof com.byazt.ha.x) {
                        com.byazt.ha.x xVar = (com.byazt.ha.x) ttVar;
                        xVar.tt = ((ir) listC.get(0)).n();
                        xVar.f14880n = ((ir) listC.get(0)).uj();
                    }
                }
            });
        }
        for (ir irVar : listC) {
            if (irVar != null) {
                ve.c(this.f19989c, irVar);
                com.byazt.ma.a aVar = new com.byazt.ma.a(this.f19989c, this.ve, irVar);
                aVar.c(this.tt);
                aVar.c(this.uj);
                aVar.tt(viewGroup, irVar.uj() == 0 ? viewGroup : view);
                this.f19990n.add(aVar);
            }
        }
    }

    public da(ic icVar, c cVar, com.byazt.dj.tt ttVar, Context context) {
        this(icVar, cVar);
        this.tt = ttVar;
        this.uj = context;
    }

    public void c() {
        for (com.byazt.ma.a aVar : this.f19990n) {
            if (aVar != null) {
                aVar.c((com.byazt.dj.tt) null);
                aVar.c((Context) null);
                aVar.n();
            }
        }
        this.f19990n.clear();
    }
}
