package com.kwad.components.ad.reward.m;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.ad.reward.g;
import com.kwad.components.core.video.m;
import com.kwad.sdk.utils.j;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    @Nullable
    private com.kwad.components.ad.reward.f.a CK;

    @Nullable
    private d CL;

    @Nullable
    private b CM;

    @NonNull
    private com.kwad.components.ad.k.a CN;
    private g uj;
    private int CJ = 0;
    private int CO = 0;
    private List<m> CP = new CopyOnWriteArrayList();

    public e(g gVar) {
        this.uj = gVar;
        this.CN = new a(gVar.mAdTemplate);
    }

    private com.kwad.components.ad.k.a lr() {
        return this.CN;
    }

    public final void a(int i10, com.kwad.components.ad.k.a aVar) {
        this.CJ = i10;
        if (i10 == 1) {
            this.CL = (d) aVar;
        } else if (i10 == 2) {
            this.CK = (com.kwad.components.ad.reward.f.a) aVar;
        } else if (i10 == 3) {
            this.CM = (b) aVar;
        }
        this.CN = aVar;
        Iterator<m> it2 = this.CP.iterator();
        while (it2.hasNext()) {
            this.CN.b(it2.next());
        }
        this.CP.clear();
    }

    public final void b(@Nullable m mVar) {
        lr().a(mVar);
        if (mVar != null) {
            this.CP.remove(mVar);
        }
    }

    public final long getPlayDuration() {
        return lr().getPlayDuration();
    }

    public final void lo() {
        d dVar = this.CL;
        if (dVar != null) {
            dVar.lo();
        } else {
            b bVar = this.CM;
            if (bVar != null) {
                bVar.lo();
            }
        }
        this.uj.gT();
    }

    public final void lp() {
        d dVar = this.CL;
        if (dVar != null) {
            dVar.lp();
        }
    }

    public final boolean ls() {
        return this.CK != null;
    }

    @Nullable
    public final com.kwad.components.ad.reward.f.a lt() {
        return this.CK;
    }

    @Nullable
    public final b lu() {
        return this.CM;
    }

    public final void pause() {
        lr().pause();
    }

    public final void release() {
        lr().release();
    }

    public final void resume() {
        int i10;
        lr().resume();
        com.kwad.components.ad.reward.f.a aVar = this.CK;
        if (aVar == null || (i10 = this.CO) <= 0) {
            return;
        }
        aVar.setAudioEnabled(i10 == 2, false);
    }

    public final void setAudioEnabled(boolean z10, boolean z11) {
        this.CO = z10 ? 2 : 1;
        lr().setAudioEnabled(z10, z11);
    }

    public final void skipToEnd() {
        lr().skipToEnd();
    }

    public final void b(j.a aVar) {
        d dVar = this.CL;
        if (dVar != null) {
            dVar.b(aVar);
        }
    }

    public final void a(@Nullable m mVar) {
        if (lr().ln()) {
            this.CP.add(mVar);
        } else {
            lr().b(mVar);
        }
    }

    public final void a(j.a aVar) {
        d dVar = this.CL;
        if (dVar != null) {
            dVar.a(aVar);
        }
    }
}
