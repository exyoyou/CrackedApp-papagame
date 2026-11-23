package com.byazt.cc;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.ete.ic;
import com.xinzhu.overmind.utils.l;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, l.f90098b, 54})
public abstract class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f12377c;
    public ViewGroup tt;
    public i.c uj;
    public ic ve;

    public abstract String c();

    public abstract void c(com.byazt.hkv.c cVar);

    public void c(boolean z10) {
    }

    public void tt() {
        i.c cVar = this.uj;
        if (cVar != null) {
            cVar.tt();
        }
    }

    public void c(Context context, ViewGroup viewGroup, ic icVar) {
        this.f12377c = context;
        this.tt = viewGroup;
        this.ve = icVar;
    }

    public void c(com.byazt.un.uj ujVar, i.c cVar) {
        com.byazt.ddx.uj.ve(this.ve, "splash_ad", c());
        this.tt.setVisibility(0);
        this.uj = cVar;
    }
}
