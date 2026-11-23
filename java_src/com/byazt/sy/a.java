package com.byazt.sy;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.ete.ic;
import com.byazt.ete.ir;
import com.byazt.ete.md;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 528, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ic f19987c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Context f19988n;
    public final c tt;
    public com.byazt.dj.tt uj;
    public final List<com.byazt.ma.c> ve;

    public a(ic icVar, c cVar) {
        this.f19987c = icVar;
        this.tt = cVar;
        this.ve = new ArrayList();
    }

    private void tt(ViewGroup viewGroup, View view) {
        c(viewGroup);
        if (view instanceof ViewGroup) {
            c((ViewGroup) view);
        }
    }

    public void c(ViewGroup viewGroup, View view) {
        List<ir> listUj;
        tt(viewGroup, view);
        if (!md.tt(this.f19987c) || (listUj = md.uj(this.f19987c)) == null || listUj.isEmpty()) {
            return;
        }
        for (ir irVar : listUj) {
            if (irVar != null) {
                ve.c(this.f19987c, irVar);
                com.byazt.ma.uj ujVar = new com.byazt.ma.uj(this.f19987c, this.tt, irVar);
                ujVar.c(this.uj);
                ujVar.c(this.f19988n);
                ujVar.tt(viewGroup, irVar.uj() == 0 ? viewGroup : view);
                this.ve.add(ujVar);
            }
        }
    }

    public a(ic icVar, c cVar, com.byazt.dj.tt ttVar, Context context) {
        this(icVar, cVar);
        this.uj = ttVar;
        this.f19988n = context;
    }

    private void c(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ("effects_tag".equals(childAt.getTag())) {
                viewGroup.removeView(childAt);
            }
        }
    }

    public void c() {
        for (com.byazt.ma.c cVar : this.ve) {
            if (cVar != null) {
                cVar.c((com.byazt.dj.tt) null);
                cVar.c((Context) null);
                cVar.n();
            }
        }
        this.ve.clear();
    }
}
