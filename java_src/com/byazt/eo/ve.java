package com.byazt.eo;

import android.content.Context;
import android.view.View;
import com.byazt.hz.sl;
import com.byazt.oc.uj;
import com.byazt.oh.n;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 47, 54})
public class ve implements n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.ch.c f13536c;
    public final com.byazt.xw.c tt;
    public boolean uj;
    public sl ve;

    public ve(Context context, com.byazt.ch.c cVar, com.byazt.xw.c cVar2, boolean z10) {
        this.f13536c = cVar;
        this.tt = cVar2;
        this.uj = z10;
        if (cVar != null) {
            this.ve = new sl(context);
        }
    }

    @Override // com.byazt.oh.n
    public void c() {
        final com.byazt.am.tt ttVarDa;
        com.byazt.ll.tt ttVar = new com.byazt.ll.tt(1, this.f13536c.eo(), this.f13536c.or());
        ttVar.c(this.uj);
        com.byazt.ch.tt ttVarMd = this.f13536c.md();
        if (ttVarMd != null && (ttVarDa = ttVarMd.da()) != null) {
            this.ve.c(new uj() { // from class: com.byazt.eo.ve.1
                @Override // com.byazt.oc.uj
                public View c(com.byazt.oc.ve veVar) {
                    if (veVar != null) {
                        return ttVarDa.c(new com.byazt.xw.uj(veVar));
                    }
                    return null;
                }
            });
        }
        this.ve.c(ttVar, new com.byazt.oc.tt() { // from class: com.byazt.eo.ve.2
            @Override // com.byazt.oc.tt
            public void c(com.byazt.pp.c cVar) {
                if (ve.this.tt != null) {
                    ve.this.tt.c(cVar.f18789c, cVar.tt);
                }
            }

            @Override // com.byazt.oc.tt
            public void c() {
                if (ve.this.tt != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new c(ve.this.ve));
                    ve.this.tt.c(arrayList);
                }
            }
        });
    }
}
