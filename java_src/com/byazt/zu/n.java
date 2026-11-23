package com.byazt.zu;

import android.content.Context;
import com.byazt.hz.i;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 919, 46})
public class n implements com.byazt.oh.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.ch.c f22946c;
    public com.byazt.nh.a tt;
    public boolean uj;
    public i ve;

    public n(Context context, com.byazt.ch.c cVar, com.byazt.nh.a aVar, boolean z10) {
        this.f22946c = cVar;
        this.uj = z10;
        if (cVar != null) {
            this.ve = new i(context);
            this.tt = aVar;
        }
    }

    @Override // com.byazt.oh.n
    public void c() {
        com.byazt.ll.tt ttVar = new com.byazt.ll.tt(5, this.f22946c.eo(), this.f22946c.or());
        ttVar.c(this.uj);
        this.ve.c(ttVar, new com.byazt.me.uj() { // from class: com.byazt.zu.n.1
            @Override // com.byazt.me.uj
            public void c(List<com.byazt.yl.ve> list) {
                com.byazt.ch.tt ttVarMd;
                if (list == null) {
                    c(new com.byazt.pp.c(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "list is null"));
                    return;
                }
                if (n.this.tt != null) {
                    com.byazt.am.tt ttVarDa = (n.this.f22946c == null || (ttVarMd = n.this.f22946c.md()) == null) ? null : ttVarMd.da();
                    LinkedList linkedList = new LinkedList();
                    Iterator<com.byazt.yl.ve> it2 = list.iterator();
                    while (it2.hasNext()) {
                        linkedList.add(new uj(n.this.ve, it2.next(), n.this.ve.my(), ttVarDa));
                    }
                    n.this.tt.c(linkedList);
                }
            }

            @Override // com.byazt.me.uj
            public void c(com.byazt.pp.c cVar) {
                if (cVar == null || n.this.tt == null) {
                    return;
                }
                n.this.tt.c(cVar.f18789c, cVar.tt);
            }
        });
    }
}
