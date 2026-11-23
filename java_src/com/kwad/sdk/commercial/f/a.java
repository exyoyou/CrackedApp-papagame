package com.kwad.sdk.commercial.f;

import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.commercial.c;
import com.kwad.sdk.commercial.d;
import com.kwad.sdk.commercial.e;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static void a(AdTemplate adTemplate, com.kwad.sdk.commercial.c.a aVar) {
        a(adTemplate, false, aVar);
    }

    private static void b(AdTemplate adTemplate, com.kwad.sdk.commercial.c.a aVar) {
        aVar.setAdTemplate(adTemplate);
        c.d(d.In().m34do(ILoggerReporter.Category.APM_LOG).g(0.001d).b(e.bA(adTemplate)).Q("ad_sdk_landing_page_performance", "status").A(aVar));
    }

    public static void k(AdTemplate adTemplate, int i10, String str) {
        try {
            a(adTemplate, b.Iu().dC(1).dB(str).dD(i10));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void l(AdTemplate adTemplate, int i10, String str) {
        try {
            a(adTemplate, b.Iu().dC(2).dB(str).dD(i10));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void m(AdTemplate adTemplate, int i10, String str) {
        try {
            a(adTemplate, b.Iu().dC(4).dB(str).dD(i10));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void n(AdTemplate adTemplate, int i10, String str) {
        try {
            a(adTemplate, b.Iu().dC(5).dB(str).dD(i10));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    private static void a(AdTemplate adTemplate, boolean z10, com.kwad.sdk.commercial.c.a aVar) {
        aVar.setAdTemplate(adTemplate);
        c.d(d.In().m34do(z10 ? ILoggerReporter.Category.ERROR_LOG : ILoggerReporter.Category.APM_LOG).g(z10 ? 1.0d : 0.01d).b(e.bA(adTemplate)).Q("ad_sdk_landing_page_performance", "status").A(aVar));
    }

    public static void b(AdTemplate adTemplate, int i10, String str, int i11, String str2) {
        try {
            b(adTemplate, b.Iu().dC(7).dB(str).dD(i10).setErrorCode(i11).setErrorMsg(str2));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(AdTemplate adTemplate, int i10, String str, String str2) {
        try {
            a(adTemplate, true, b.Iu().dC(3).dB(str).dD(i10).setErrorCode(100009).setErrorMsg(str2));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(AdTemplate adTemplate, int i10, String str, int i11, String str2) {
        try {
            a(adTemplate, true, b.Iu().dC(6).dB(str).dD(i10).setErrorCode(i11).setErrorMsg(str2));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
