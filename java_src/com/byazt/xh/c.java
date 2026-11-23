package com.byazt.xh;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.ete.ic;
import com.umeng.analytics.pro.k;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, k.f84751a, 20})
public class c extends com.byazt.zd.c {
    public c(Context context, ViewGroup viewGroup, ic icVar, com.byazt.hkv.c cVar) {
        super(context, viewGroup, icVar, cVar);
        c(false);
    }

    public boolean gr() {
        return nu() != null && nu().isPaused();
    }

    @Override // com.byazt.zd.c
    public int gu() {
        return 2;
    }
}
