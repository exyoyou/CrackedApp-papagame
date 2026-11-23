package com.byazt.dg;

import android.graphics.Path;
import com.byazt.zy.my;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 186, 67})
public class u extends c<com.byazt.jx.yp, Path> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<my> f12889a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Path f12890n;
    public final com.byazt.jx.yp uj;

    public u(List<com.byazt.vc.c<com.byazt.jx.yp>> list) {
        super(list);
        this.uj = new com.byazt.jx.yp();
        this.f12890n = new Path();
    }

    @Override // com.byazt.dg.c
    /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
    public Path c(com.byazt.vc.c<com.byazt.jx.yp> cVar, float f10) {
        this.uj.c(cVar.f21165c, cVar.tt, f10);
        com.byazt.jx.yp ypVarC = this.uj;
        List<my> list = this.f12889a;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ypVarC = this.f12889a.get(size).c(ypVarC);
            }
        }
        com.byazt.kk.i.c(ypVarC, this.f12890n);
        return this.f12890n;
    }

    public void c(List<my> list) {
        this.f12889a = list;
    }
}
