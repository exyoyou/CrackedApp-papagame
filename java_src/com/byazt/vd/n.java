package com.byazt.vd;

import android.view.View;
import com.byazt.pm.i;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1582, 46})
public class n extends c {
    public n(com.byazt.xj.ve veVar, String str, com.byazt.pm.a.c cVar) {
        super(veVar, str, cVar);
    }

    @Override // com.byazt.vd.c
    public void c() {
        Object obj;
        Map<String, Object> map = this.f21180a;
        String strValueOf = (map == null || map.size() <= 0 || (obj = this.f21180a.get("name")) == null) ? "" : String.valueOf(obj);
        com.byazt.xj.ve veVar = this.ve;
        com.byazt.xj.ve veVarTt = veVar.tt(veVar);
        if (veVarTt == null) {
            return;
        }
        c(veVarTt, strValueOf);
    }

    @Override // com.byazt.vd.c
    public void tt() {
    }

    private void c(com.byazt.xj.ve veVar, String str) {
        List<com.byazt.xj.ve<View>> listSp;
        if (veVar == null) {
            return;
        }
        i iVarKp = veVar.kp();
        if (iVarKp != null) {
            iVarKp.c(str);
        }
        if (!(veVar instanceof com.byazt.xj.c) || (listSp = ((com.byazt.xj.c) veVar).sp()) == null || listSp.isEmpty()) {
            return;
        }
        Iterator<com.byazt.xj.ve<View>> it2 = listSp.iterator();
        while (it2.hasNext()) {
            c(it2.next(), str);
        }
    }
}
