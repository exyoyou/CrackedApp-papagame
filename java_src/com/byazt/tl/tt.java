package com.byazt.tl;

import android.content.Context;
import com.byazt.aas.pf;
import com.byazt.nc.a;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 467, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static com.byazt.pr.ve f20249c;
    public static com.byazt.pr.uj tt;

    public static void c() {
        if (tt == null) {
            tt = new com.byazt.pr.uj() { // from class: com.byazt.tl.tt.1
                @Override // com.byazt.pr.uj
                public int c(Context context, float f10) {
                    return pf.ve(context, f10);
                }
            };
        }
        if (f20249c == null) {
            f20249c = new com.byazt.pr.ve() { // from class: com.byazt.tl.tt.2
                @Override // com.byazt.pr.ve
                public void c(com.byazt.vo.tt ttVar, a aVar) {
                    com.byazt.ddx.uj.c(ttVar, aVar);
                }

                @Override // com.byazt.pr.ve
                public void c(Context context, com.byazt.vo.tt ttVar, String str) {
                    com.byazt.ddx.uj.c(ttVar.uj(), ttVar.n(), ttVar.x(), str);
                }
            };
        }
        com.byazt.pr.c.c(f20249c, tt);
    }
}
