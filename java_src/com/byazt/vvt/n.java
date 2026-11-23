package com.byazt.vvt;

import android.text.TextUtils;
import com.byazt.ete.ic;
import com.byazt.nr.m;
import com.byazt.omf.gr;
import com.byazt.omf.gt;
import com.byazt.ukr.yp;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 210, 46})
public class n {
    public static boolean c(com.byazt.dj.tt ttVar, ic icVar, boolean z10) {
        boolean z11;
        if (!gt.tt().tt(ttVar.uj())) {
            return true;
        }
        if (icVar == null) {
            yp.c().tt(3);
            return false;
        }
        String strRl = ttVar.rl();
        long jB = icVar.b();
        String strY = icVar.y();
        try {
            if (TextUtils.isEmpty(strRl)) {
                yp.c().tt(1);
                return false;
            }
            JSONObject jSONObjectC = com.byazt.by.a.c(new JSONObject(strRl), false, true);
            if (jSONObjectC == null) {
                yp.c().tt(1);
                return false;
            }
            gr.c cVarC = gr.c.c(jSONObjectC, ttVar, null);
            com.byazt.ete.c cVar = cVarC.f18049x;
            if (cVar == null) {
                yp.c().tt(1);
                return false;
            }
            cVar.c(jSONObjectC);
            List<ic> listTt = cVarC.f18049x.tt();
            if (listTt == null) {
                yp.c().tt(1);
                return false;
            }
            Iterator<ic> it2 = listTt.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z11 = false;
                    break;
                }
                ic next = it2.next();
                if (TextUtils.isEmpty(next.y())) {
                    yp.c().tt(2);
                    return false;
                }
                if (!next.r()) {
                    yp.c().tt(5);
                    return false;
                }
                if (TextUtils.equals(next.y(), strY)) {
                    icVar.eo(next.em());
                    z11 = true;
                    break;
                }
            }
            if (!z11) {
                yp.c().tt(3);
                return false;
            }
            if (icVar.dz() + jB >= System.currentTimeMillis()) {
                return true;
            }
            com.byazt.eti.n.c(z10 ? 7 : 8).c(ttVar.uj());
            yp.c().tt(4);
            return false;
        } catch (Exception e10) {
            yp.c().tt(1000);
            m.c(e10);
            return false;
        }
    }
}
