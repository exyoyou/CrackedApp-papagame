package com.kwad.components.core.innerEc.live.end;

import androidx.annotation.NonNull;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements a {
    private final List<c> WZ = new CopyOnWriteArrayList();
    private boolean Xa;

    @Override // com.kwad.components.core.innerEc.live.end.a
    public final void a(@NonNull c cVar) {
        this.WZ.add(cVar);
    }

    @Override // com.kwad.components.core.innerEc.live.end.a
    public final void b(@NonNull c cVar) {
        this.WZ.remove(cVar);
    }

    @Override // com.kwad.components.core.innerEc.live.end.a
    public final boolean sD() {
        return this.Xa;
    }

    @Override // com.kwad.components.core.innerEc.live.end.a
    public final void a(@NonNull LiveAudienceEndReason liveAudienceEndReason) {
        this.Xa = true;
        Iterator<c> it2 = this.WZ.iterator();
        while (it2.hasNext()) {
            it2.next().sg();
        }
    }
}
