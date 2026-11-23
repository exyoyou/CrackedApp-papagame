package com.byazt.yih;

import com.byazt.omf.gt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 730, 34})
public class a implements uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<uj> f22255c = new ArrayList();
    public ve tt;

    public a() {
        ve veVar = new ve(gt.tt().vp());
        this.tt = veVar;
        this.f22255c.add(new n(veVar));
        this.f22255c.add(new sp(this.tt));
    }

    @Override // com.byazt.yih.uj
    public boolean c(com.byazt.qt.c cVar) {
        Iterator<uj> it2 = this.f22255c.iterator();
        while (it2.hasNext()) {
            if (it2.next().c(cVar)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.yih.uj
    public boolean tt(com.byazt.qt.c cVar) {
        Iterator<uj> it2 = this.f22255c.iterator();
        while (it2.hasNext()) {
            if (it2.next().tt(cVar)) {
                return true;
            }
        }
        return false;
    }
}
