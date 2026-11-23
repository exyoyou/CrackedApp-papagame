package com.kwad.sdk.commercial.b;

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

    public static void b(AdTemplate adTemplate, String str, String str2, int i10, int i11) {
        try {
            a(adTemplate, b.Ip().dx(2).dr(str).ds(str2).dz(i10).dy(i11));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void c(AdTemplate adTemplate, String str, int i10, int i11) {
        try {
            a(adTemplate, "", str, i10, i11, "marketUrl is empty");
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    private static void a(AdTemplate adTemplate, boolean z10, com.kwad.sdk.commercial.c.a aVar) {
        aVar.setAdTemplate(adTemplate);
        c.d(d.In().m34do(z10 ? ILoggerReporter.Category.ERROR_LOG : ILoggerReporter.Category.APM_LOG).g(z10 ? 1.0d : 0.01d).b(e.bA(adTemplate)).Q("ad_sdk_appstore_performance", "status").A(aVar));
    }

    public static void a(AdTemplate adTemplate, String str, String str2, int i10, int i11) {
        try {
            a(adTemplate, b.Ip().dx(1).dr(str).ds(str2).dz(i10).dy(i11));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(AdTemplate adTemplate, String str, String str2, int i10, int i11, String str3) {
        try {
            a(adTemplate, true, b.Ip().dx(4).dr(str).ds(str2).dz(i10).dy(i11).setErrorCode(100006).setErrorMsg(str3));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
