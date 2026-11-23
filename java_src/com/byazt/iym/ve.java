package com.byazt.iym;

import android.content.Context;
import android.view.View;
import com.byazt.kt.RecyclerView;
import com.byazt.kt.i;
import com.byazt.nr.m;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_X_VALUE, 54})
public class ve extends com.byazt.kt.n {
    public c gr;
    public int gt;
    public int gu;
    public final i my;
    public boolean qy;
    public boolean rh;
    public int rl;
    public final RecyclerView.sl zm;

    public interface c {
        void c();

        void c(boolean z10, int i10);

        void c(boolean z10, int i10, boolean z11);
    }

    public ve(Context context, int i10, boolean z10) {
        super(context, i10, z10);
        this.qy = false;
        this.rh = true;
        this.zm = new RecyclerView.sl() { // from class: com.byazt.iym.ve.1
            @Override // com.byazt.kt.RecyclerView.sl
            public void c(View view) {
                if (ve.this.gr == null || ve.this.my() != 1) {
                    return;
                }
                ve.this.gr.c();
            }

            @Override // com.byazt.kt.RecyclerView.sl
            public void tt(View view) {
                if (ve.this.gr != null) {
                    ve.this.gr.c(ve.this.gt >= 0, ve.this.uj(view));
                }
            }
        };
        this.my = new i();
    }

    @Override // com.byazt.kt.RecyclerView.i
    public void sl(int i10) {
        boolean z10;
        c cVar;
        this.rl = i10;
        if (i10 == 0) {
            View viewC = this.my.c(this);
            if (viewC != null) {
                int iUj = uj(viewC);
                z10 = this.gu == iUj;
                this.gu = iUj;
            } else {
                z10 = true;
            }
            if (this.qy) {
                this.qy = false;
                if (!z10 && (cVar = this.gr) != null) {
                    boolean z11 = this.gt >= 0;
                    int i11 = this.gu;
                    cVar.c(z11, i11, i11 == h() - 1);
                }
            }
        }
        if (i10 == 2) {
            this.qy = true;
        }
    }

    @Override // com.byazt.kt.RecyclerView.i
    public void ve(RecyclerView recyclerView) {
        super.ve(recyclerView);
        this.my.c(recyclerView);
        recyclerView.c(this.zm);
    }

    @Override // com.byazt.kt.n, com.byazt.kt.RecyclerView.i
    public void c(RecyclerView recyclerView, RecyclerView.m mVar) {
        super.c(recyclerView, mVar);
        try {
            n nVar = (n) recyclerView.ve(this.gu);
            if (nVar != null) {
                nVar.h();
            }
        } catch (Exception e10) {
            m.ve("cubic detached exception:" + e10.getMessage());
        }
    }

    public void tt(boolean z10) {
        this.rh = z10;
    }

    @Override // com.byazt.kt.n, com.byazt.kt.RecyclerView.i
    public int tt(int i10, RecyclerView.m mVar, RecyclerView.gt gtVar) {
        this.gt = i10;
        return super.tt(i10, mVar, gtVar);
    }

    @Override // com.byazt.kt.n, com.byazt.kt.RecyclerView.i
    public int c(int i10, RecyclerView.m mVar, RecyclerView.gt gtVar) {
        this.gt = i10;
        return super.c(i10, mVar, gtVar);
    }

    public void c(c cVar) {
        this.gr = cVar;
    }
}
