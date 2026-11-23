package com.kwad.components.ad.i;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    private final AtomicBoolean rR;
    private final List<com.kwad.components.ad.b.a.b> rS;

    static class a {
        private static final e rT = new e(0);
    }

    /* synthetic */ e(byte b10) {
        this();
    }

    public static e gq() {
        return a.rT;
    }

    public final boolean X() {
        return this.rR.get();
    }

    public final void a(com.kwad.components.ad.b.a.b bVar) {
        if (bVar != null) {
            this.rS.add(bVar);
        }
    }

    public final void b(com.kwad.components.ad.b.a.b bVar) {
        if (bVar != null) {
            this.rS.remove(bVar);
        }
    }

    public final void gm() {
        this.rR.set(true);
        Iterator<com.kwad.components.ad.b.a.b> it2 = this.rS.iterator();
        while (it2.hasNext()) {
            it2.next().Y();
        }
    }

    public final void go() {
        this.rR.set(false);
        Iterator<com.kwad.components.ad.b.a.b> it2 = this.rS.iterator();
        while (it2.hasNext()) {
            it2.next().Z();
        }
    }

    private e() {
        this.rR = new AtomicBoolean();
        this.rS = new CopyOnWriteArrayList();
    }
}
