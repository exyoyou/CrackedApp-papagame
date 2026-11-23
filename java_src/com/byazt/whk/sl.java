package com.byazt.whk;

import android.text.TextUtils;
import com.byazt.ete.ic;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 908, 158})
public class sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap<String, t> f21566c = new HashMap<>();

    public static void c(ic icVar) {
        ve veVar = (ve) com.byazt.ut.uj.getService("pitaya");
        if (veVar != null && veVar.isPitayaInitSuccess() && veVar.isPitayaEnvAvailable() && da.tt() && icVar != null && icVar.ij() != null) {
            String strQy = icVar.qy();
            String strGu = icVar.gu();
            String strUj = icVar.ij().uj();
            if (TextUtils.isEmpty(strUj)) {
                return;
            }
            t tVar = new t();
            tVar.c(1);
            tVar.c(strQy);
            tVar.tt(strGu);
            f21566c.put(strUj, tVar);
        }
    }
}
