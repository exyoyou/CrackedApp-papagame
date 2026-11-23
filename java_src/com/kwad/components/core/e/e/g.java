package com.kwad.components.core.e.e;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class g {
    private final List<f> RR;

    public static class a {
        private static final g RS = new g(0);
    }

    /* synthetic */ g(byte b10) {
        this();
    }

    public static g qK() {
        return a.RS;
    }

    public final void a(f fVar) {
        this.RR.add(fVar);
    }

    public final void b(f fVar) {
        if (fVar != null) {
            this.RR.remove(fVar);
        }
    }

    public final void qL() {
        Iterator<f> it2 = this.RR.iterator();
        while (it2.hasNext()) {
            it2.next().show();
        }
    }

    public final void qM() {
        Iterator<f> it2 = this.RR.iterator();
        while (it2.hasNext()) {
            it2.next().dismiss();
        }
    }

    private g() {
        this.RR = new CopyOnWriteArrayList();
    }
}
