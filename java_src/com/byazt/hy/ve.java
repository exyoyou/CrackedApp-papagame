package com.byazt.hy;

import android.graphics.Bitmap;
import com.byazt.omf.sp;
import com.byazt.ukr.yp;
import com.byazt.yj.gr;
import com.byazt.yj.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 604, 54})
public class ve implements gr<Bitmap> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f15181c;
    public com.byazt.qal.tt tt;

    public ve(boolean z10) {
        this.f15181c = z10;
        if (z10) {
            this.tt = com.byazt.qal.tt.tt();
        }
    }

    public void c(String str) {
        com.byazt.qal.tt ttVar;
        if (!this.f15181c || (ttVar = this.tt) == null) {
            return;
        }
        ttVar.ve(str);
    }

    @Override // com.byazt.yj.gr
    public void onFailed(int i10, String str, Throwable th) {
        com.byazt.qal.tt ttVar;
        if (!this.f15181c || (ttVar = this.tt) == null) {
            return;
        }
        ttVar.tt(201).sp(sp.c(201));
        yp.c().c(this.tt);
    }

    @Override // com.byazt.yj.gr
    public void onSuccess(m<Bitmap> mVar) {
        if (!this.f15181c || this.tt == null) {
            return;
        }
        if (mVar == null || mVar.getResult() == null) {
            this.tt.tt(202).sp(sp.c(202));
            yp.c().c(this.tt);
        }
    }

    public void tt(String str) {
        com.byazt.qal.tt ttVar;
        if (!this.f15181c || (ttVar = this.tt) == null) {
            return;
        }
        ttVar.a(str);
    }

    public void uj(String str) {
        com.byazt.qal.tt ttVar;
        if (!this.f15181c || (ttVar = this.tt) == null) {
            return;
        }
        ttVar.x(str);
    }

    public void ve(String str) {
        com.byazt.qal.tt ttVar;
        if (!this.f15181c || (ttVar = this.tt) == null) {
            return;
        }
        ttVar.uj(str);
    }

    public void c(int i10) {
        com.byazt.qal.tt ttVar;
        if (!this.f15181c || (ttVar = this.tt) == null) {
            return;
        }
        ttVar.c(i10);
    }
}
