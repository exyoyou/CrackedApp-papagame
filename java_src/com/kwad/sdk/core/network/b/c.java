package com.kwad.sdk.core.network.b;

import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.h;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public static b MD() {
        h hVar = (h) ServiceProvider.get(h.class);
        return (hVar == null || !hVar.FP()) ? new a() : new d();
    }
}
