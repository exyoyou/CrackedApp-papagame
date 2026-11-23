package com.byazt.aas;

import com.byazt.ete.ic;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 121})
public class cu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set<Integer> f11412c = new CopyOnWriteArraySet();
    public static final com.byazt.nr.yv tt = new com.byazt.nr.yv() { // from class: com.byazt.aas.cu.1
        @Override // com.byazt.nr.yv
        public boolean c(int i10) {
            if (com.byazt.omf.gt.tt().yg()) {
                return cu.f11412c.contains(Integer.valueOf(i10));
            }
            return true;
        }
    };

    public static com.byazt.nzi.c c(ic icVar) {
        if (icVar == null) {
            return null;
        }
        com.byazt.nzi.c cVar = new com.byazt.nzi.c();
        cVar.c(icVar.eo());
        cVar.c(icVar.w_());
        cVar.tt(icVar.uj());
        return cVar;
    }

    public static void tt(int i10) {
        f11412c.remove(Integer.valueOf(i10));
        tt.tt(i10);
    }

    public static void c() {
        if (com.byazt.omf.gt.tt().yg()) {
            com.byazt.nr.zm.c(tt);
        } else {
            f11412c.clear();
        }
    }

    public static void c(int i10) {
        if (com.byazt.omf.gt.tt().yg()) {
            f11412c.add(Integer.valueOf(i10));
        }
        tt.ve(i10);
    }
}
