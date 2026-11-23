package com.kwad.sdk.core.view;

import android.view.View;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    private List<c> bbT = new CopyOnWriteArrayList();

    private boolean c(c cVar) {
        if (cVar != null) {
            return this.bbT.contains(cVar);
        }
        return false;
    }

    public final void a(c cVar) {
        if (c(cVar)) {
            return;
        }
        this.bbT.add(cVar);
    }

    public final void b(c cVar) {
        this.bbT.remove(cVar);
    }

    public final void j(View view, boolean z10) {
        Iterator<c> it2 = this.bbT.iterator();
        while (it2.hasNext()) {
            it2.next().i(view, z10);
        }
    }
}
