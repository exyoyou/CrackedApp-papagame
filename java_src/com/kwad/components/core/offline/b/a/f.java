package com.kwad.components.core.offline.b.a;

import com.kwad.components.offline.api.core.api.IFlowUuid;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements IFlowUuid {
    @Override // com.kwad.components.offline.api.core.api.IFlowUuid
    public final long decryptLongFromBase64(String str) {
        try {
            return com.kwad.components.core.e.b.a.am(str);
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
            return 0L;
        }
    }

    @Override // com.kwad.components.offline.api.core.api.IFlowUuid
    public final String encryptLongToBase64(long j10) {
        try {
            return com.kwad.components.core.e.b.a.B(j10);
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
            return null;
        }
    }
}
