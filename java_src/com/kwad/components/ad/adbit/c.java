package com.kwad.components.ad.adbit;

import android.os.SystemClock;
import com.kwad.sdk.core.threads.GlobalThreadPools;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.bi;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public static void a(boolean z10, boolean z11) {
        int i10 = z11 ? 1 : 2;
        try {
            d dVarR = d.R();
            dVarR.bG = i10;
            dVarR.bI = z10 ? "v1" : "v2";
            a(dVarR);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(long j10, boolean z10, boolean z11) {
        int i10 = z11 ? 1 : 2;
        try {
            d dVarS = d.S();
            dVarS.bG = i10;
            dVarS.bH = SystemClock.elapsedRealtime() - j10;
            dVarS.bI = z10 ? "v1" : "v2";
            a(dVarS);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    private static void a(final d dVar) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.adbit.c.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.z(dVar);
            }
        });
    }
}
