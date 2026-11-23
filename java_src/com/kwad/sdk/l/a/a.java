package com.kwad.sdk.l.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private final List<b> bmG = new ArrayList();

    public final void addBackPressable(b bVar) {
        if (bVar != null) {
            this.bmG.add(bVar);
        }
    }

    public final boolean onBackPressed() {
        Iterator<b> it2 = this.bmG.iterator();
        while (it2.hasNext()) {
            if (it2.next().onBackPressed()) {
                return true;
            }
        }
        return false;
    }

    public final void removeBackPressable(b bVar) {
        if (bVar != null) {
            this.bmG.remove(bVar);
        }
    }

    public final void addBackPressable(b bVar, int i10) {
        if (bVar != null) {
            this.bmG.add(i10, bVar);
        }
    }
}
