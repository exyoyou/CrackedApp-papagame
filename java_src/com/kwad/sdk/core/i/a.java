package com.kwad.sdk.core.i;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static c aZb;
    private static c aZc;

    public static c k(boolean z10, boolean z11) {
        c cVar;
        com.kwad.sdk.core.d.c.d("KSUserAgentManager", "obtainUAGetter useKwaiUA: " + z10 + ", unionUAMark: " + z11);
        if (z10) {
            if (aZb == null) {
                aZb = new b();
            }
            cVar = aZb;
        } else {
            if (aZc == null) {
                aZc = new d();
            }
            cVar = aZc;
        }
        cVar.bJ(z11);
        com.kwad.sdk.core.d.c.d("KSUserAgentManager", "obtainUAGetter result: " + cVar);
        return cVar;
    }
}
