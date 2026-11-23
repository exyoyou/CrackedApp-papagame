package com.byazt.ge;

import android.view.View;
import com.byazt.ete.ic;
import com.byazt.ete.my;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.xs.da;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 758, 46})
public class n extends ve {
    public n(TTBaseVideoActivity tTBaseVideoActivity, ic icVar, com.byazt.kcl.tt ttVar, com.byazt.kcl.n nVar, boolean z10) {
        super(tTBaseVideoActivity, icVar, ttVar, nVar, z10);
    }

    @Override // com.byazt.ge.ve, com.byazt.ge.tt
    public void a(View view) {
        super.a(view);
        if (da.n(this.tt) || da.uj(this.tt)) {
            this.f14506a.da();
        } else {
            c();
        }
    }

    @Override // com.byazt.ge.ve, com.byazt.ge.tt
    public void c(View view) {
        super.c(view);
        if (c()) {
            return;
        }
        this.f14506a.lt().c();
        if (my.u(this.tt) || da.n(this.tt) || da.uj(this.tt)) {
            this.f14506a.da();
            return;
        }
        com.byazt.qq.da daVar = new com.byazt.qq.da() { // from class: com.byazt.ge.n.1
            @Override // com.byazt.qq.da
            public void tt() {
                n.this.f14506a.yp();
                n.this.f14506a.tt();
            }
        };
        if (c(daVar)) {
            this.sp--;
        } else {
            daVar.tt();
        }
    }

    @Override // com.byazt.ge.ve, com.byazt.ge.tt
    public void tt(View view) {
        super.tt(view);
        if (my.uj(this.tt)) {
            this.f14506a.cu();
        } else {
            this.f14506a.qp();
        }
    }

    @Override // com.byazt.ge.ve, com.byazt.ge.tt
    public void ve(View view) {
        super.ve(view);
        this.f14506a.ve("playable");
    }
}
