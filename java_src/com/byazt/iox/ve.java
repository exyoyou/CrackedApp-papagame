package com.byazt.iox;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.byazt.im.a;
import com.byazt.im.n;
import com.byazt.im.sp;
import com.byazt.omf.gt;
import com.byazt.omf.gu;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public sp f15448c = new sp();
    public int ve = 3;
    public final gu tt = gt.c();

    public void c(final n nVar, final com.byazt.gat.tt<a, sp> ttVar) {
        if (this.tt == null || nVar == null) {
            return;
        }
        this.f15448c.tt(false);
        this.tt.c(nVar.uj(), nVar.n(), this.ve, new gu.tt() { // from class: com.byazt.iox.ve.1
            @Override // com.byazt.omf.gu.tt
            public void c(int i10, String str, com.byazt.ete.tt ttVar2) {
                ve.this.f15448c.tt(i10);
                ve.this.f15448c.ve(ttVar2 != null ? ttVar2.ve() : 0);
                if (TextUtils.isEmpty(str)) {
                    str = "load ad error";
                }
                ve.this.f15448c.c(str);
                ttVar.c(ve.this.f15448c);
            }

            @Override // com.byazt.omf.gu.tt
            public void c(com.byazt.ete.c cVar, com.byazt.ete.tt ttVar2) {
                if (cVar == null || cVar.tt() == null) {
                    ve.this.f15448c.tt(1);
                    ve.this.f15448c.c("no ad or material");
                    ttVar.c(ve.this.f15448c);
                    return;
                }
                a aVar = new a(cVar, false);
                aVar.tt(ttVar2.i());
                aVar.ve(ttVar2.da());
                aVar.uj(ttVar2.sl());
                aVar.n(ttVar2.t());
                aVar.c(nVar.c());
                aVar.c(nVar.ve());
                ttVar.tt(aVar);
            }
        });
    }
}
