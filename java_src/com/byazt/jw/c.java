package com.byazt.jw;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.pm.a;
import com.byazt.xj.ve;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1216, 20})
public class c extends com.byazt.vd.c {
    public c(ve veVar, String str, a.c cVar) {
        super(veVar, str, cVar);
    }

    @Override // com.byazt.vd.c
    public void c() {
        Object obj;
        ve veVar;
        ve veVarTt;
        int i10;
        Map<String, Object> map = this.f21180a;
        if (map == null || map.size() <= 0 || (obj = this.f21180a.get("id")) == null) {
            return;
        }
        String strValueOf = String.valueOf(obj);
        if (TextUtils.isEmpty(strValueOf) || (veVarTt = (veVar = this.ve).tt(veVar)) == null) {
            return;
        }
        ve veVarUj = veVarTt.uj(strValueOf);
        if (veVarUj instanceof com.byazt.yn.c) {
            com.byazt.yn.c cVar = (com.byazt.yn.c) veVarUj;
            int i11 = 4;
            int i12 = 3;
            try {
                i11 = Integer.parseInt(String.valueOf(this.f21180a.get("col")));
                i12 = Integer.parseInt(String.valueOf(this.f21180a.get("row")));
                i10 = Integer.parseInt(String.valueOf(this.f21180a.get("duration")));
            } catch (Exception e10) {
                m.c(e10);
                i10 = 600;
            }
            cVar.c(i11, i12, i10);
        }
    }
}
