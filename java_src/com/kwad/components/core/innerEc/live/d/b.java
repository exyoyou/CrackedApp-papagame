package com.kwad.components.core.innerEc.live.d;

import com.kwad.components.core.webview.tachikoma.TKRenderFailReason;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private final Set<a> Xm = new HashSet();

    public final void b(a aVar) {
        if (aVar == null) {
            return;
        }
        this.Xm.remove(aVar);
    }

    public final void sJ() {
        by.runOnUiThread(new bi() { // from class: com.kwad.components.core.innerEc.live.d.b.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                Iterator it2 = b.this.Xm.iterator();
                while (it2.hasNext()) {
                    ((a) it2.next()).aE();
                }
            }
        });
    }

    public final void a(a aVar) {
        if (aVar == null) {
            return;
        }
        this.Xm.add(aVar);
    }

    public final void b(final TKRenderFailReason tKRenderFailReason) {
        by.runOnUiThread(new bi() { // from class: com.kwad.components.core.innerEc.live.d.b.2
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                Iterator it2 = b.this.Xm.iterator();
                while (it2.hasNext()) {
                    ((a) it2.next()).sd();
                }
            }
        });
    }
}
