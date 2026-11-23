package com.kwad.sdk.core.videocache;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
final class c {
    public final File aZK;
    public final com.kwad.sdk.core.videocache.a.c aZL;
    public final com.kwad.sdk.core.videocache.a.a aZM;
    public final com.kwad.sdk.core.videocache.d.c aZN;
    public final com.kwad.sdk.core.videocache.b.b aZO;
    public final int aZP;
    public final int aZQ;

    c(File file, com.kwad.sdk.core.videocache.a.c cVar, com.kwad.sdk.core.videocache.a.a aVar, com.kwad.sdk.core.videocache.d.c cVar2, com.kwad.sdk.core.videocache.b.b bVar, int i10, int i11) {
        this.aZK = file;
        this.aZL = cVar;
        this.aZM = aVar;
        this.aZN = cVar2;
        this.aZO = bVar;
        this.aZP = i10;
        this.aZQ = i11;
    }

    final File fu(String str) {
        return new File(this.aZK, this.aZL.generate(str));
    }
}
