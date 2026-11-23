package com.kwad.components.ad.j;

import com.kwad.sdk.core.network.e;
import com.kwad.sdk.core.network.f;
import com.kwad.sdk.core.network.h;
import com.kwad.sdk.internal.api.SceneImpl;

/* JADX INFO: loaded from: classes2.dex */
public class d implements h.a {
    private static volatile d Nw;

    private d() {
    }

    public static d om() {
        if (Nw == null) {
            synchronized (d.class) {
                if (Nw == null) {
                    Nw = new d();
                }
            }
        }
        return Nw;
    }

    @Override // com.kwad.sdk.core.network.h.a
    public final void a(f fVar, int i10) {
        SceneImpl scene;
        int i11;
        if (!(fVar instanceof com.kwad.components.core.request.a) || i10 == e.aTe.errorCode || (scene = fVar.getScene()) == null) {
            return;
        }
        long posId = scene.getPosId();
        if (i10 == e.aSZ.errorCode) {
            i11 = 21001;
        } else if (i10 == e.aTd.errorCode) {
            i11 = 21003;
        } else {
            i11 = (i10 <= 0 || i10 >= 1000) ? 21004 : 21002;
        }
        com.kwad.components.core.p.a.vL().c(posId, i11);
    }

    public final void init() {
        h.Mg().a(this);
    }
}
