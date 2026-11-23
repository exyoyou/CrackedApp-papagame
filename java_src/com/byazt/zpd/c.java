package com.byazt.zpd;

import com.byazt.omf.gt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1919, 20})
public abstract class c {
    /* JADX WARN: Code duplicated, block: B:10:0x0025  */
    public int c(int i10) {
        int iOptInt;
        JSONObject jSONObjectKz = gt.tt().kz();
        if (jSONObjectKz == null) {
            iOptInt = -1;
        } else if (tt(i10)) {
            iOptInt = jSONObjectKz.optInt("explicit_interval", 0);
        } else if (ve(i10)) {
            iOptInt = jSONObjectKz.optInt("ambiguous_interval", 0);
        } else {
            iOptInt = -1;
        }
        if (iOptInt > 86400000) {
            return 86400000;
        }
        return iOptInt;
    }

    public boolean tt(int i10) {
        return i10 == 0 || i10 == 1;
    }

    public boolean ve(int i10) {
        return i10 == 2 || i10 == 3;
    }

    public void c(int i10, long j10, long j11) {
        com.byazt.pf.c cVarC = com.byazt.pf.c.c();
        cVarC.c(i10);
        cVarC.c(j10, j11);
    }

    public int c(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optInt("delay", 200);
        }
        return 200;
    }
}
