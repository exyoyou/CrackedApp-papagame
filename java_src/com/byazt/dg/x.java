package com.byazt.dg;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 186, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<c<com.byazt.jx.yp, Path>> f12894c;
    public final List<c<Integer, Integer>> tt;
    public final List<com.byazt.jx.x> ve;

    public x(List<com.byazt.jx.x> list) {
        this.ve = list;
        this.f12894c = new ArrayList(list.size());
        this.tt = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f12894c.add(list.get(i10).tt().c());
            this.tt.add(list.get(i10).ve().c());
        }
    }

    public List<com.byazt.jx.x> c() {
        return this.ve;
    }

    public List<c<com.byazt.jx.yp, Path>> tt() {
        return this.f12894c;
    }

    public List<c<Integer, Integer>> ve() {
        return this.tt;
    }
}
