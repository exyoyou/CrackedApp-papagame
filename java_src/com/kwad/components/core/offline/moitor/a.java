package com.kwad.components.core.offline.moitor;

import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.service.ServiceProvider;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static void a(b bVar) {
        a(bVar, false);
    }

    public static void b(String str, long j10, int i10) {
        try {
            a(new b().aS(str).L(j10).bs(i10).K(2L));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void c(String str, long j10) {
        try {
            a(new b().aS(str).L(j10).K(1L));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void d(String str, long j10) {
        try {
            a(new b().aS(str).L(j10).K(6L));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    private static void a(b bVar, boolean z10) {
        com.kwad.sdk.commercial.c.d(com.kwad.sdk.commercial.d.In().m34do(z10 ? ILoggerReporter.Category.ERROR_LOG : ILoggerReporter.Category.APM_LOG).g(z10 ? 1.0d : 0.01d).Q("ad_sdk_offline_component_monitor", "load_status").A(bVar).a(com.kwai.adclient.kscommerciallogger.model.a.buA));
    }

    public static void c(String str, long j10, String str2) {
        try {
            a(new b().aS(str).L(j10).aU(str2).K(4L));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void b(String str, long j10, String str2) {
        try {
            a(new b().aS(str).L(j10).aU(str2).K(3L));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(String str, long j10, int i10, String str2, String str3) {
        try {
            a(new b().aS(str).L(j10).setErrorCode(i10).aU(str3).aT(str2).K(7L), true);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void c(String str, long j10, int i10) {
        try {
            a(new b().aS(str).K(8L).bs(i10).L(j10));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(String str, long j10, String str2) {
        try {
            a(new b().aS(str).aU(str2).L(j10).K(5L));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
