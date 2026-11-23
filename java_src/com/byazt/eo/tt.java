package com.byazt.eo;

import com.byazt.cv.a;
import com.byazt.cv.n;
import com.byazt.cv.yp;
import com.byazt.cv.z;
import com.byazt.hz.sl;
import com.byazt.oh.uj;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 47, 13})
public class tt implements yp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public sl f13535c;

    public tt(sl slVar) {
        this.f13535c = slVar;
    }

    @Override // com.byazt.oh.ve
    public com.byazt.oh.tt a() {
        sl slVar = this.f13535c;
        return slVar != null ? new a(slVar.t()) : new n();
    }

    @Override // com.byazt.cv.yp
    public void c(z zVar) {
    }

    @Override // com.byazt.cv.yp
    public void da() {
        sl slVar = this.f13535c;
        if (slVar != null) {
            slVar.tt();
        }
    }

    @Override // com.byazt.cv.yp
    public void i() {
        sl slVar = this.f13535c;
        if (slVar != null) {
            slVar.c();
        }
    }

    @Override // com.byazt.oh.ve
    public List<com.byazt.oh.tt> n() {
        List<com.byazt.pp.ve> listSl;
        ArrayList arrayList = new ArrayList();
        sl slVar = this.f13535c;
        if (slVar != null && (listSl = slVar.sl()) != null) {
            for (com.byazt.pp.ve veVar : listSl) {
                if (veVar != null) {
                    arrayList.add(new a(veVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.cv.yp
    public boolean sp() {
        return false;
    }

    @Override // com.byazt.oh.ve
    public List<uj> tt() {
        List<com.byazt.pp.tt> listX;
        ArrayList arrayList = new ArrayList();
        sl slVar = this.f13535c;
        if (slVar != null && (listX = slVar.x()) != null) {
            for (com.byazt.pp.tt ttVar : listX) {
                if (ttVar != null) {
                    arrayList.add(new com.byazt.cv.c(ttVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.oh.ve
    public com.byazt.oh.tt uj() {
        sl slVar = this.f13535c;
        return slVar != null ? new a(slVar.da()) : new n();
    }

    @Override // com.byazt.oh.ve
    public List<com.byazt.oh.tt> ve() {
        List<com.byazt.pp.ve> listI;
        ArrayList arrayList = new ArrayList();
        sl slVar = this.f13535c;
        if (slVar != null && (listI = slVar.i()) != null) {
            for (com.byazt.pp.ve veVar : listI) {
                if (veVar != null) {
                    arrayList.add(new a(veVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.cv.yp
    public boolean x() {
        return false;
    }

    @Override // com.byazt.cv.yp
    public void c(boolean z10) {
    }

    @Override // com.byazt.oh.ve
    public boolean c() {
        sl slVar = this.f13535c;
        if (slVar != null) {
            return slVar.uj();
        }
        return false;
    }
}
