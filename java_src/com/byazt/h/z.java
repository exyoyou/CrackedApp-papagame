package com.byazt.h;

import androidx.annotation.NonNull;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 518, 133})
public class z {
    public static long c(@NonNull List<i> list) {
        int size = list.size();
        long jN = 0;
        for (int i10 = 0; i10 < size; i10++) {
            i iVar = list.get(i10);
            if (iVar.ve() > jN) {
                break;
            }
            if (iVar.n() > jN) {
                jN = iVar.n();
            }
        }
        return jN;
    }

    public static long tt(@NonNull List<i> list) {
        long jVe;
        long jUj;
        Iterator<i> it2 = list.iterator();
        long j10 = 0;
        loop0: while (true) {
            jVe = -1;
            jUj = -1;
            while (true) {
                if (!it2.hasNext()) {
                    break loop0;
                }
                i next = it2.next();
                if (jVe == -1) {
                    if (next.c() > 0) {
                        jVe = next.ve();
                        jUj = next.uj();
                    }
                } else if (next.ve() > jUj) {
                    j10 += jUj - jVe;
                    if (next.c() > 0) {
                        jVe = next.ve();
                        jUj = next.uj();
                    }
                } else if (next.uj() > jUj) {
                    jUj = next.uj();
                }
            }
        }
        return (jVe < 0 || jUj <= jVe) ? j10 : j10 + (jUj - jVe);
    }
}
