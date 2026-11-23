package com.kwad.sdk.core.network;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class h {
    private static volatile h aTu;
    private List<a> aTt = new CopyOnWriteArrayList();

    public interface a {
        void a(f fVar, int i10);
    }

    private h() {
    }

    public static h Mg() {
        if (aTu == null) {
            synchronized (h.class) {
                if (aTu == null) {
                    aTu = new h();
                }
            }
        }
        return aTu;
    }

    public final void a(a aVar) {
        this.aTt.add(aVar);
    }

    final void b(f fVar, int i10) {
        Iterator<a> it2 = this.aTt.iterator();
        while (it2.hasNext()) {
            it2.next().a(fVar, i10);
        }
    }
}
