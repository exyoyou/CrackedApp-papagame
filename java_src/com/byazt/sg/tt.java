package com.byazt.sg;

import com.byazt.ete.ic;
import com.byazt.kyz.ve;
import com.byazt.omf.gt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1015, 13})
public class tt extends com.byazt.vvt.tt<List<ve>> {
    public tt(com.byazt.iu.tt ttVar) {
        super(ttVar);
    }

    @Override // com.byazt.vvt.tt
    public /* bridge */ /* synthetic */ void c(com.byazt.dj.tt ttVar, List list, List<ve> list2) {
        c2(ttVar, (List<ic>) list, list2);
    }

    @Override // com.byazt.vvt.tt
    public void c(com.byazt.dj.tt ttVar, List<ic> list, com.byazt.vvt.tt.c<List<ve>> cVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<ic> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new ve(gt.getContext(), it2.next(), 1, ttVar, false));
        }
        if (cVar != null) {
            cVar.c(arrayList);
        }
    }

    /* JADX INFO: renamed from: c, reason: avoid collision after fix types in other method */
    public void c2(com.byazt.dj.tt ttVar, List<ic> list, List<ve> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            ic icVar = list.get(i10);
            ve veVar = list2.get(i10);
            com.byazt.iu.tt ttVar2 = this.f21372c;
            if (ttVar2 != null) {
                ttVar2.tt().c(ttVar, icVar, (Object) veVar, false);
            }
        }
    }
}
