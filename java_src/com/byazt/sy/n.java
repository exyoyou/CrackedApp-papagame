package com.byazt.sy;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.ete.p;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 528, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ic f19993c;
    public com.byazt.ma.tt tt;
    public com.byazt.ma.ve ve;

    public n(ic icVar, c cVar) {
        this.f19993c = icVar;
        this.tt = new com.byazt.ma.tt(icVar, cVar);
        this.ve = new com.byazt.ma.ve(this.f19993c, cVar);
        if (icVar == null || !p.c(icVar)) {
            return;
        }
        com.byazt.rgb.a.c(icVar, String.valueOf(nb.t(icVar)), nb.sl(icVar), p.tt(icVar) ? 1 : 2, com.byazt.ip.sp.c(icVar));
        final int iUj = p.uj(this.f19993c);
        com.byazt.rgb.a.c().c(com.byazt.ip.sp.c(icVar), new com.byazt.ip.uj.c() { // from class: com.byazt.sy.n.1
            @Override // com.byazt.ip.uj.c
            public void c(com.byazt.ip.tt ttVar) {
                if (ttVar instanceof com.byazt.ha.x) {
                    ((com.byazt.ha.x) ttVar).ve = iUj;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(ViewGroup viewGroup, View view) {
        if (viewGroup != null) {
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if ("easy_play_tag".equals(childAt.getTag())) {
                    viewGroup.removeView(childAt);
                }
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) view;
            for (int i11 = 0; i11 < viewGroup2.getChildCount(); i11++) {
                View childAt2 = viewGroup2.getChildAt(i11);
                if ("easy_play_tag".equals(childAt2.getTag())) {
                    viewGroup2.removeView(childAt2);
                }
            }
        }
    }

    public void c(final ViewGroup viewGroup, final View view) {
        if (viewGroup == null) {
            return;
        }
        viewGroup.post(new Runnable() { // from class: com.byazt.sy.n.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z10;
                n.this.tt(viewGroup, view);
                if (p.tt(n.this.f19993c)) {
                    com.byazt.rgb.a.tt(com.byazt.ip.sp.c(n.this.f19993c));
                    com.byazt.rgb.a.c().c(com.byazt.ip.sp.c(n.this.f19993c), new com.byazt.ip.uj.c() { // from class: com.byazt.sy.n.2.1
                        @Override // com.byazt.ip.uj.c
                        public void c(com.byazt.ip.tt ttVar) {
                            if (ttVar instanceof com.byazt.ha.x) {
                                com.byazt.ha.x xVar = (com.byazt.ha.x) ttVar;
                                xVar.tt = p.x(n.this.f19993c).n();
                                xVar.f14880n = p.x(n.this.f19993c).uj();
                            }
                        }
                    });
                    ic icVar = n.this.f19993c;
                    ve.c(icVar, p.x(icVar));
                    z10 = p.x(n.this.f19993c).uj() == 0;
                    com.byazt.ma.tt ttVar = n.this.tt;
                    ViewGroup viewGroup2 = viewGroup;
                    ttVar.tt(viewGroup2, z10 ? viewGroup2 : view);
                    return;
                }
                if (p.ve(n.this.f19993c)) {
                    com.byazt.rgb.a.tt(com.byazt.ip.sp.c(n.this.f19993c));
                    com.byazt.rgb.a.c().c(com.byazt.ip.sp.c(n.this.f19993c), new com.byazt.ip.uj.c() { // from class: com.byazt.sy.n.2.2
                        @Override // com.byazt.ip.uj.c
                        public void c(com.byazt.ip.tt ttVar2) {
                            if (ttVar2 instanceof com.byazt.ha.x) {
                                com.byazt.ha.x xVar = (com.byazt.ha.x) ttVar2;
                                xVar.tt = p.sp(n.this.f19993c).n();
                                xVar.f14880n = p.sp(n.this.f19993c).uj();
                            }
                        }
                    });
                    ic icVar2 = n.this.f19993c;
                    ve.c(icVar2, p.sp(icVar2));
                    z10 = p.sp(n.this.f19993c).uj() == 0;
                    com.byazt.ma.ve veVar = n.this.ve;
                    ViewGroup viewGroup3 = viewGroup;
                    veVar.tt(viewGroup3, z10 ? viewGroup3 : view);
                }
            }
        });
    }

    public sp c() {
        if (p.tt(this.f19993c)) {
            return this.tt.c();
        }
        if (p.ve(this.f19993c)) {
            return this.ve.c();
        }
        return new sp() { // from class: com.byazt.sy.n.3
            @Override // com.byazt.sy.sp
            public void c() {
            }

            @Override // com.byazt.sy.sp
            public void n() {
            }

            @Override // com.byazt.sy.sp
            public void tt() {
            }

            @Override // com.byazt.sy.sp
            public void uj() {
            }

            @Override // com.byazt.sy.sp
            public void ve() {
            }

            @Override // com.byazt.sy.sp
            public void c(int i10) {
            }

            @Override // com.byazt.sy.sp
            public void c(boolean z10) {
            }
        };
    }

    public void c(com.byazt.lsp.tt ttVar) {
        com.byazt.ma.ve veVar = this.ve;
        if (veVar != null) {
            veVar.c(ttVar);
        }
        com.byazt.ma.tt ttVar2 = this.tt;
        if (ttVar2 != null) {
            ttVar2.c(ttVar);
        }
    }

    public n(ic icVar, c cVar, com.byazt.dj.tt ttVar, Context context) {
        this(icVar, cVar);
        this.tt.c(ttVar);
        this.tt.c(context);
    }

    public void tt() {
        com.byazt.ma.tt ttVar = this.tt;
        if (ttVar != null) {
            ttVar.n();
        }
        com.byazt.ma.ve veVar = this.ve;
        if (veVar != null) {
            veVar.ve();
        }
    }
}
