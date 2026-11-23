package com.kwad.components.core.e.d;

import android.content.Context;
import android.text.TextUtils;
import com.kwad.components.core.page.AdWebViewActivityProxy;
import com.kwad.components.core.page.AdWebViewVideoActivityProxy;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ae;
import com.kwad.sdk.utils.ag;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.au;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    private static int F(AdInfo adInfo) {
        com.kwad.sdk.core.download.a.K(adInfo);
        return 3;
    }

    private static int a(a.C0852a c0852a, AdTemplate adTemplate, Context context) {
        AdWebViewActivityProxy.launch(context, new AdWebViewActivityProxy.a.C0871a().aZ(com.kwad.sdk.core.response.helper.b.dm(adTemplate)).aY(adTemplate).aS(c0852a.pS()).bv(1).ua());
        a.f(adTemplate, 14);
        return 14;
    }

    private static int b(a.C0852a c0852a) {
        Context context = c0852a.getContext();
        AdTemplate adTemplate = c0852a.getAdTemplate();
        AdWebViewActivityProxy.launch(context, new AdWebViewActivityProxy.a.C0871a().aZ(com.kwad.sdk.core.response.helper.b.dm(adTemplate)).aY(adTemplate).aR(true).ua());
        a.f(adTemplate, 20);
        return 20;
    }

    private static int d(final AdTemplate adTemplate, AdInfo adInfo) {
        i.execute(new bi() { // from class: com.kwad.components.core.e.d.c.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.components.d.f(com.kwad.components.a.a.a.class);
            }
        });
        au.az(ServiceProvider.getContext(), com.kwad.sdk.core.response.helper.a.aE(adInfo));
        return 6;
    }

    private static boolean j(a.C0852a c0852a) {
        AdTemplate adTemplate = c0852a.getAdTemplate();
        boolean zL = com.kwad.sdk.utils.f.l(c0852a.getContext(), adTemplate);
        if (zL) {
            t(c0852a);
            a.f(adTemplate, 11);
        }
        return zL;
    }

    public static int q(a.C0852a c0852a) {
        e.aD(false);
        Context context = c0852a.getContext();
        AdTemplate adTemplate = c0852a.getAdTemplate();
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (c0852a.pV()) {
            return b(c0852a);
        }
        int iF = e.F(c0852a);
        if (iF == 1) {
            t(c0852a);
            return 13;
        }
        if (iF == 2) {
            return 16;
        }
        int iS = s(c0852a);
        if (iS == 1) {
            return 12;
        }
        if (iS == 2) {
            return 17;
        }
        if (!com.kwad.sdk.core.response.helper.a.aL(adInfoEO)) {
            if (adTemplate.isWebViewDownload) {
                int iA = a(c0852a, adTemplate, adInfoEO);
                t(c0852a);
                adTemplate.isWebViewDownload = false;
                return iA;
            }
            if (j(c0852a)) {
                return 11;
            }
            t(c0852a);
            return a(c0852a, adTemplate, context);
        }
        if (c0852a.qh() == 2 || c0852a.qh() == 1) {
            c0852a.av(false);
            t(c0852a);
            return a(c0852a, adTemplate, adInfoEO);
        }
        if (!c0852a.qc() || !com.kwad.sdk.core.response.helper.a.b(adInfoEO, com.kwad.sdk.core.config.e.JJ()) || TextUtils.isEmpty(com.kwad.sdk.core.response.helper.a.aY(adInfoEO)) || AdWebViewVideoActivityProxy.showingAdWebViewVideoActivity) {
            t(c0852a);
            c0852a.av(true);
            return a(c0852a, adTemplate, adInfoEO);
        }
        int iU = c0852a.iv().u(c0852a);
        if (iU == 0) {
            t(c0852a);
            return a(c0852a, adTemplate, context);
        }
        t(c0852a);
        a.f(adTemplate, iU);
        return iU;
    }

    private static int r(a.C0852a c0852a) {
        Context context = c0852a.getContext();
        AdTemplate adTemplate = c0852a.getAdTemplate();
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (com.kwad.sdk.utils.f.a(context, com.kwad.sdk.core.response.helper.a.dd(adInfoEO), adTemplate) || a(c0852a, adTemplate)) {
            return 11;
        }
        if (aq.isNetworkConnected(context)) {
            return F(adInfoEO);
        }
        ae.V(context, ag.dl(context));
        return 2;
    }

    private static int s(a.C0852a c0852a) {
        Context context = c0852a.getContext();
        AdTemplate adTemplate = c0852a.getAdTemplate();
        int iF = f.f(context, adTemplate);
        if (iF == 1) {
            t(c0852a);
            a.f(adTemplate, 12);
        }
        return iF;
    }

    private static void t(a.C0852a c0852a) {
        if (c0852a.pR() != null) {
            try {
                c0852a.pR().onAdClicked();
            } catch (Throwable th) {
                ServiceProvider.reportSdkCaughtException(th);
            }
        }
    }

    private static int a(a.C0852a c0852a, AdTemplate adTemplate, AdInfo adInfo) {
        int iR;
        d dVarIv = c0852a.iv();
        dVarIv.qs();
        switch (adInfo.status) {
            case 0:
            case 1:
            case 5:
            case 6:
            case 7:
                iR = r(c0852a);
                break;
            case 2:
            case 3:
            case 10:
            default:
                iR = 0;
                break;
            case 4:
                iR = dVarIv.qA();
                break;
            case 8:
            case 9:
            case 11:
                iR = dVarIv.qx();
                break;
            case 12:
                iR = d(adTemplate, adInfo);
                break;
        }
        a.f(c0852a.getAdTemplate(), iR);
        return iR;
    }

    private static boolean a(a.C0852a c0852a, AdTemplate adTemplate) {
        return com.kwad.sdk.utils.f.l(c0852a.getContext(), adTemplate);
    }
}
