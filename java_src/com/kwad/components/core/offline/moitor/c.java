package com.kwad.components.core.offline.moitor;

import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.service.ServiceProvider;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    private static void a(d dVar, boolean z10) {
        com.kwad.sdk.commercial.c.d(com.kwad.sdk.commercial.d.In().m34do(z10 ? ILoggerReporter.Category.ERROR_LOG : ILoggerReporter.Category.APM_LOG).g(z10 ? 1.0d : 0.01d).Q("ad_sdk_offline_component_update", "load_status").A(dVar).a(com.kwai.adclient.kscommerciallogger.model.a.buA));
    }

    public static void b(String str, long j10, int i10, String str2, String str3) {
        try {
            a(new d().aV(str).N(j10).setErrorCode(i10).aX(str2).aW(str3).M(2L), true);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void d(String str, long j10, String str2) {
        try {
            a(new d().aV(str).aX(str2).N(j10).M(1L), false);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(String str, long j10, long j11, String str2) {
        try {
            a(new d().aV(str).N(j10).O(j11).aX(str2).M(3L), false);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
