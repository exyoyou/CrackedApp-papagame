package com.byazt.zu;

import android.content.Context;
import androidx.annotation.NonNull;
import com.byazt.hz.i;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 919, 34})
public class a implements com.byazt.oh.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i f22942c;
    public com.byazt.ch.c tt;
    public boolean uj;
    public com.byazt.nh.ve ve;

    public a(Context context, com.byazt.ch.c cVar, com.byazt.nh.ve veVar, boolean z10) {
        this.tt = cVar;
        this.uj = z10;
        if (cVar != null) {
            this.f22942c = new i(context);
            this.ve = veVar;
        }
    }

    @Override // com.byazt.oh.n
    public void c() {
        com.byazt.ll.tt ttVar = new com.byazt.ll.tt(5, this.tt.eo(), this.tt.or());
        ttVar.c(this.uj);
        this.f22942c.c(ttVar, new com.byazt.me.uj() { // from class: com.byazt.zu.a.1
            @Override // com.byazt.me.uj
            public void c(@NonNull List<com.byazt.yl.ve> list) {
                if (list == null) {
                    c(new com.byazt.pp.c(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "list is null"));
                    return;
                }
                if (a.this.ve != null) {
                    LinkedList linkedList = new LinkedList();
                    Iterator<com.byazt.yl.ve> it2 = list.iterator();
                    while (it2.hasNext()) {
                        linkedList.add(new tt(a.this.f22942c, it2.next(), a.this.f22942c.my()));
                    }
                    a.this.ve.c(linkedList);
                }
            }

            @Override // com.byazt.me.uj
            public void c(@NonNull com.byazt.pp.c cVar) {
                if (cVar == null || a.this.ve == null) {
                    return;
                }
                a.this.ve.c(cVar.f18789c, cVar.tt);
            }
        });
    }
}
