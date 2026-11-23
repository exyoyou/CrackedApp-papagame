package com.kwad.sdk.core.video.a;

import android.media.TimedText;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements c {
    private c.f aZg;
    private c.g aZh;
    private c.h aZi;
    private c.e amN;
    private c.i amO;
    private c.b amP;
    private c.InterfaceC0940c amQ;
    private c.d amR;
    private c.a amS;

    protected static void o(float f10) {
        if (f10 == 0.0f) {
            com.kwad.sdk.core.video.a.a.a.fs("autoMute");
        } else {
            com.kwad.sdk.core.video.a.a.a.fs("autoVoice");
        }
    }

    public final void D(int i10, int i11) {
        c.i iVar = this.amO;
        if (iVar != null) {
            iVar.n(i10, i11);
        }
    }

    protected final void OF() {
        c.f fVar = this.aZg;
        if (fVar != null) {
            fVar.xt();
        }
    }

    @Override // com.kwad.sdk.core.video.a.c
    public final void a(c.f fVar) {
        this.aZg = fVar;
    }

    @Override // com.kwad.sdk.core.video.a.c
    public final void b(c.e eVar) {
        this.amN = eVar;
    }

    @Override // com.kwad.sdk.core.video.a.c
    public final void c(c.d dVar) {
        this.amR = dVar;
    }

    public final void notifyOnBufferingUpdate(int i10) {
        c.a aVar = this.amS;
        if (aVar != null) {
            aVar.br(i10);
        }
    }

    public final void notifyOnCompletion() {
        c.b bVar = this.amP;
        if (bVar != null) {
            bVar.tK();
        }
    }

    public final boolean notifyOnError(int i10, int i11) {
        com.kwad.sdk.core.video.a.a.a.fs("videoPlayError");
        c.InterfaceC0940c interfaceC0940c = this.amQ;
        return interfaceC0940c != null && interfaceC0940c.o(i10, i11);
    }

    public final boolean notifyOnInfo(int i10, int i11) {
        c.d dVar = this.amR;
        return dVar != null && dVar.m(i10, i11);
    }

    public final void notifyOnPrepared() {
        c.e eVar = this.amN;
        if (eVar != null) {
            eVar.a(this);
        }
    }

    public final void notifyOnSeekComplete() {
        c.g gVar = this.aZh;
        if (gVar != null) {
            gVar.tL();
        }
    }

    public final void resetListeners() {
        this.aZg = null;
        this.amN = null;
        this.amS = null;
        this.amP = null;
        this.aZh = null;
        this.amO = null;
        this.amQ = null;
        this.amR = null;
        this.aZi = null;
    }

    @Override // com.kwad.sdk.core.video.a.c
    public final void a(c.b bVar) {
        this.amP = bVar;
    }

    protected final void b(TimedText timedText) {
        c.h hVar = this.aZi;
        if (hVar != null) {
            hVar.a(timedText);
        }
    }

    @Override // com.kwad.sdk.core.video.a.c
    public final void a(c.a aVar) {
        this.amS = aVar;
    }

    @Override // com.kwad.sdk.core.video.a.c
    public final void a(c.g gVar) {
        this.aZh = gVar;
    }

    @Override // com.kwad.sdk.core.video.a.c
    public final void a(c.i iVar) {
        this.amO = iVar;
    }

    @Override // com.kwad.sdk.core.video.a.c
    public final void a(c.InterfaceC0940c interfaceC0940c) {
        this.amQ = interfaceC0940c;
    }

    @Override // com.kwad.sdk.core.video.a.c
    public final void a(c.h hVar) {
        this.aZi = hVar;
    }
}
