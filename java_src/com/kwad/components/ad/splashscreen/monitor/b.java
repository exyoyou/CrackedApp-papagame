package com.kwad.components.ad.splashscreen.monitor;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.ad.splashscreen.h;
import com.kwad.components.offline.api.tk.model.StyleTemplate;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.core.response.model.AdTemplate;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static volatile b Hq;

    public static void a(@NonNull AdTemplate adTemplate, int i10, long j10, long j11) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j10;
        com.kwad.sdk.commercial.c.j(new SplashMonitorInfo().setType(adTemplate.notNetworkRequest ? 2 : 1).setStatus(3).setLoadDataTime(adTemplate.loadDataTime).setCheckStatus(i10).setCheckDataTime(jElapsedRealtime).setBeforeLoadDataTime(j11).setLoadProcessType(e.a(com.kwad.components.ad.splashscreen.b.a.Hn) ? 1L : 2L).setLoadAndCheckDataTime(adTemplate.loadDataTime + jElapsedRealtime).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(com.kwad.sdk.core.response.helper.e.eO(adTemplate))).setAdTemplate(adTemplate));
    }

    public static void ap(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setLoadType(adTemplate.splashAdLoadType).setStatus(4).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void aq(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(200).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void ar(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(201).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void as(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(204).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void at(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(205).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void au(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(206).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void av(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(207).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void aw(@Nullable AdTemplate adTemplate) {
        String str;
        boolean z10;
        int i10;
        AdMatrixInfo.SplashPlayCardTKInfo splashPlayCardTKInfoDW = com.kwad.sdk.core.response.helper.b.dW(adTemplate);
        boolean z11 = true;
        if (TextUtils.isEmpty(splashPlayCardTKInfoDW.templateId)) {
            str = SplashMonitorInfo.TEMPLATE_ID_EMPTY;
            z10 = true;
        } else {
            str = "";
            z10 = false;
        }
        if (splashPlayCardTKInfoDW.renderType != 1) {
            str = str + SplashMonitorInfo.TEMPLATE_RENER_TYPE_ERROR;
            i10 = splashPlayCardTKInfoDW.renderType;
        } else {
            i10 = -1;
            z11 = z10;
        }
        if (z11) {
            com.kwad.sdk.commercial.c.o(new SplashMonitorInfo().setErrorMsg(str).setErrorCode(i10).setAdTemplate(adTemplate));
        }
    }

    public static void b(@NonNull AdTemplate adTemplate, int i10, long j10, long j11) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j10;
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.j(new SplashMonitorInfo().setType(adTemplate.notNetworkRequest ? 2 : 1).setStatus(5).setCheckStatus(i10).setLoadDataTime(adTemplate.loadDataTime).setCheckDataTime(jElapsedRealtime).setBeforeLoadDataTime(j11).setLoadAndCheckDataTime(adTemplate.loadDataTime + jElapsedRealtime).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setUrl(com.kwad.sdk.core.response.helper.a.bi(adInfoEO) ? com.kwad.sdk.core.response.helper.a.M(adInfoEO) : com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl).setAdTemplate(adTemplate));
    }

    public static void c(boolean z10, int i10, String str, long j10) {
        com.kwad.sdk.commercial.c.j(new SplashMonitorInfo().setStatus(4).setType(z10 ? 2 : 1).setErrorCode(i10).setErrorMsg(str).setPosId(j10));
    }

    public static void d(@NonNull AdTemplate adTemplate, int i10, String str) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.g(true, new SplashMonitorInfo().setStatus(2).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setUrl(com.kwad.sdk.core.response.helper.a.bi(adInfoEO) ? com.kwad.sdk.core.response.helper.a.M(adInfoEO) : com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl).setErrorCode(i10).setErrorMsg(str).setMaterialType(com.kwad.sdk.core.response.helper.a.bi(adInfoEO) ? 1 : 2).setType(1).setAdTemplate(adTemplate));
    }

    public static void e(@NonNull AdTemplate adTemplate, long j10) {
        com.kwad.sdk.commercial.c.j(new SplashMonitorInfo().setType(adTemplate.notNetworkRequest ? 2 : 1).setStatus(2).setBeforeLoadDataTime(j10).setLoadDataTime(adTemplate.loadDataTime).setLoadProcessType(e.a(com.kwad.components.ad.splashscreen.b.a.Hn) ? 1L : 2L).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(com.kwad.sdk.core.response.helper.e.eO(adTemplate))).setAdTemplate(adTemplate));
    }

    public static void f(long j10, long j11) {
        com.kwad.sdk.commercial.c.j(new SplashMonitorInfo().setStatus(11).setBeforeLoadDataTime(j11).setLoadProcessType(e.a(com.kwad.components.ad.splashscreen.b.a.Hn) ? 1L : 2L).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setPosId(j10));
    }

    public static void g(@NonNull AdTemplate adTemplate, long j10) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(5).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setCostTime(j10).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setAdTemplate(adTemplate));
    }

    public static void k(@NonNull AdResultData adResultData) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<AdTemplate> it2 = adResultData.getAdTemplateList().iterator();
        while (true) {
            int i10 = 1;
            if (!it2.hasNext()) {
                com.kwad.sdk.commercial.c.l(new SplashMonitorInfo().setTotalCount(adResultData.getAdTemplateList().size()).setCreativeIds(arrayList).setPreloadIds(arrayList2).setMaterialTypes(arrayList3).setStatus(1).setPosId(adResultData.getPosId()));
                return;
            }
            AdTemplate next = it2.next();
            arrayList.add(String.valueOf(com.kwad.sdk.core.response.helper.a.L(com.kwad.sdk.core.response.helper.e.eO(next))));
            arrayList2.add(com.kwad.sdk.core.response.helper.a.bf(com.kwad.sdk.core.response.helper.e.eO(next)));
            if (com.kwad.sdk.core.response.helper.a.bi(com.kwad.sdk.core.response.helper.e.eO(next))) {
                i10 = 2;
            }
            arrayList3.add(Integer.valueOf(i10));
        }
    }

    public static b mv() {
        if (Hq == null) {
            synchronized (b.class) {
                if (Hq == null) {
                    Hq = new b();
                }
            }
        }
        return Hq;
    }

    public static void x(long j10) {
        com.kwad.sdk.commercial.c.j(new SplashMonitorInfo().setStatus(1).setLoadProcessType(e.a(com.kwad.components.ad.splashscreen.b.a.Hn) ? 1L : 2L).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setPosId(j10));
    }

    public static void y(long j10) {
        com.kwad.sdk.commercial.c.k(new SplashMonitorInfo().setStatus(1).setPosId(j10));
    }

    public final void c(AdTemplate adTemplate, String str) {
        long jDT;
        StyleTemplate styleTemplateC = c(adTemplate);
        SplashMonitorInfo templateVersionCode = new SplashMonitorInfo().setStatus(103).setTkRenderType(com.kwad.sdk.core.response.helper.b.dY(adTemplate)).setTemplateId(styleTemplateC.templateId).setTemplateVersionCode(styleTemplateC.templateVersionCode);
        com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (h.aj(adTemplate)) {
            jDT = com.kwad.sdk.core.response.helper.b.dX(adTemplate);
        } else {
            jDT = com.kwad.sdk.core.response.helper.b.dT(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        }
        com.kwad.sdk.commercial.c.m(templateVersionCode.setTkDefaultTimeout(jDT).setErrorMsg(str).setAdTemplate(adTemplate));
    }

    public static void f(@NonNull AdTemplate adTemplate, long j10) {
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setLoadType(adTemplate.splashAdLoadType).setStatus(1).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setType(com.kwad.sdk.core.response.helper.a.bj(com.kwad.sdk.core.response.helper.e.eO(adTemplate)) ? 2 : 1).setCostTime(j10).setLoadProcessType(e.a(com.kwad.components.ad.splashscreen.b.a.Hn) ? 1L : 2L).setAdTemplate(adTemplate));
    }

    public static void e(@NonNull AdTemplate adTemplate, int i10, String str) {
        String strM;
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        boolean zBj = com.kwad.sdk.core.response.helper.a.bj(adInfoEO);
        SplashMonitorInfo type = new SplashMonitorInfo().setLoadType(adTemplate.splashAdLoadType).setStatus(3).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setType(zBj ? 2 : 1);
        if (zBj) {
            strM = com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl;
        } else {
            strM = com.kwad.sdk.core.response.helper.a.M(adInfoEO);
        }
        com.kwad.sdk.commercial.c.m(type.setUrl(strM).setErrorCode(i10).setErrorMsg(str).setAdTemplate(adTemplate));
    }

    public static void k(AdTemplate adTemplate, int i10, int i11) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(3001).setMaterialType(i10).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setUrl(com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl).setShowType(i11).setAdTemplate(adTemplate));
    }

    public final void d(AdTemplate adTemplate, String str) {
        long jDT;
        StyleTemplate styleTemplateC = c(adTemplate);
        SplashMonitorInfo errorMsg = new SplashMonitorInfo().setStatus(105).setTemplateId(styleTemplateC.templateId).setTemplateVersionCode(styleTemplateC.templateVersionCode).setTkRenderType(com.kwad.sdk.core.response.helper.b.dY(adTemplate)).setErrorMsg(str);
        com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (h.aj(adTemplate)) {
            jDT = com.kwad.sdk.core.response.helper.b.dX(adTemplate);
        } else {
            jDT = com.kwad.sdk.core.response.helper.b.dT(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        }
        com.kwad.sdk.commercial.c.m(errorMsg.setTkDefaultTimeout(jDT).setAdTemplate(adTemplate));
    }

    public static void a(@NonNull List<AdTemplate> list, long j10, long j11) {
        ArrayList arrayList = new ArrayList();
        Iterator<AdTemplate> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(com.kwad.sdk.core.response.helper.a.bf(com.kwad.sdk.core.response.helper.e.eO(it2.next())));
        }
        com.kwad.sdk.commercial.c.k(new SplashMonitorInfo().setStatus(2).setIds(arrayList).setLoadDataTime(j10).setCount(list.size()).setPosId(j11));
    }

    public static void b(int i10, String str, long j10) {
        com.kwad.sdk.commercial.c.k(new SplashMonitorInfo().setStatus(3).setErrorCode(i10).setErrorMsg(str).setPosId(j10));
    }

    public static void c(AdTemplate adTemplate, StyleTemplate styleTemplate) {
        long jDT;
        SplashMonitorInfo templateVersionCode = new SplashMonitorInfo().setStatus(106).setTkRenderType(com.kwad.sdk.core.response.helper.b.dY(adTemplate)).setTemplateId(styleTemplate.templateId).setTemplateVersionCode(styleTemplate.templateVersionCode);
        com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (h.aj(adTemplate)) {
            jDT = com.kwad.sdk.core.response.helper.b.dX(adTemplate);
        } else {
            jDT = com.kwad.sdk.core.response.helper.b.dT(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        }
        com.kwad.sdk.commercial.c.m(templateVersionCode.setTkDefaultTimeout(jDT).setAdTemplate(adTemplate));
    }

    public static void b(@NonNull AdTemplate adTemplate, long j10, int i10, int i11) {
        String strM;
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (com.kwad.sdk.core.response.helper.a.bi(adInfoEO)) {
            strM = com.kwad.sdk.core.response.helper.a.M(adInfoEO);
        } else {
            strM = com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl;
        }
        File fileCO = com.kwad.sdk.core.diskcache.b.a.Lx().cO(com.kwad.sdk.core.response.helper.a.bf(adInfoEO));
        com.kwad.sdk.commercial.c.g(false, new SplashMonitorInfo().setStatus(1).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setCostTime(j10).setCacheValidTime(((long) adInfoEO.adPreloadInfo.validityPeriod) * 1000).setSize((fileCO == null || !fileCO.exists()) ? 0L : fileCO.length()).setUrl(strM).setMaterialType(com.kwad.sdk.core.response.helper.a.bi(adInfoEO) ? 1 : 2).setType(i10).setRequestType(i11).setAdTemplate(adTemplate));
    }

    public static void a(long j10, List<String> list, List<Integer> list2) {
        com.kwad.sdk.commercial.c.l(new SplashMonitorInfo().setTotalCount(list == null ? 0 : list.size()).setPreloadIds(list).setMaterialTypes(list2).setStatus(2).setPosId(j10));
    }

    private static StyleTemplate c(AdTemplate adTemplate) {
        AdMatrixInfo.MatrixTemplate matrixTemplateT = com.kwad.sdk.core.response.helper.b.t(adTemplate, com.kwad.sdk.core.response.helper.b.em(adTemplate));
        StyleTemplate styleTemplate = new StyleTemplate();
        if (matrixTemplateT != null) {
            styleTemplate.templateId = matrixTemplateT.templateId;
            styleTemplate.templateMd5 = matrixTemplateT.templateMd5;
            styleTemplate.templateUrl = matrixTemplateT.templateUrl;
            styleTemplate.templateVersionCode = (int) matrixTemplateT.templateVersionCode;
        }
        return styleTemplate;
    }

    public static void a(long j10, List<String> list, List<Integer> list2, int i10, int i11, int i12, int i13) {
        com.kwad.sdk.commercial.c.l(new SplashMonitorInfo().setTotalCount(list == null ? 0 : list.size()).setPreloadIds(list).setMaterialTypes(list2).setUpdateType(i10).setClearCount(i11).setClearImageCount(i12).setClearVideoCount(i13).setStatus(3).setPosId(j10));
    }

    public static void b(boolean z10, int i10, String str, long j10) {
        com.kwad.sdk.commercial.c.p(new SplashMonitorInfo().setStatus(4).setType(z10 ? 2 : 1).setErrorCode(i10).setErrorMsg(str).setPosId(j10));
    }

    public static void a(@NonNull AdTemplate adTemplate, long j10, long j11, long j12) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setLoadType(adTemplate.splashAdLoadType).setStatus(2).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setCostTime(j10).setAddLoadTime(j11).setRequestLoadTime(j12).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setLoadProcessType(e.a(com.kwad.components.ad.splashscreen.b.a.Hn) ? 1L : 2L).setAdTemplate(adTemplate));
    }

    public static void b(AdTemplate adTemplate, StyleTemplate styleTemplate) {
        long jDT;
        SplashMonitorInfo templateVersionCode = new SplashMonitorInfo().setStatus(102).setTemplateId(styleTemplate.templateId).setTkRenderType(com.kwad.sdk.core.response.helper.b.dY(adTemplate)).setTemplateVersionCode(styleTemplate.templateVersionCode);
        com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (h.aj(adTemplate)) {
            jDT = com.kwad.sdk.core.response.helper.b.dX(adTemplate);
        } else {
            jDT = com.kwad.sdk.core.response.helper.b.dT(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        }
        com.kwad.sdk.commercial.c.m(templateVersionCode.setTkDefaultTimeout(jDT).setAdTemplate(adTemplate));
    }

    public static void b(AdTemplate adTemplate, int i10, int i11, int i12, long j10, long j11) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(3003).setMaterialType(i10).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setUrl(com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl).setShowType(i11).setLoadType(i12).setCostTime(j10).setShowDurationMs(j11).setAdTemplate(adTemplate));
    }

    public static void a(@NonNull AdTemplate adTemplate, long j10, boolean z10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j10;
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setLoadType(adTemplate.splashAdLoadType).setStatus(6).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setViewSource(z10 ? 1 : 2).setLoadDataTime(jElapsedRealtime).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void a(@NonNull AdTemplate adTemplate, boolean z10, boolean z11, boolean z12) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(202).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setRootVisible(z10).setParentVisible(z11).setHasUnbind(z12).setAdTemplate(adTemplate));
    }

    public static void a(@NonNull AdTemplate adTemplate, long j10, boolean z10, boolean z11) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(203).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setLoadDataTime(SystemClock.elapsedRealtime() - j10).setRootVisible(z10).setParentVisible(z11).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void a(@Nullable AdTemplate adTemplate, String str, boolean z10) {
        if (adTemplate == null) {
            com.kwad.sdk.commercial.c.n(new SplashMonitorInfo().setErrorMsg(str).setViewSource(z10 ? 1 : 2));
        } else {
            com.kwad.sdk.commercial.c.n(new SplashMonitorInfo().setCreativeId(com.kwad.sdk.core.response.helper.a.L(com.kwad.sdk.core.response.helper.e.eO(adTemplate))).setErrorMsg(str).setViewSource(z10 ? 1 : 2).setAdTemplate(adTemplate));
        }
    }

    public static void a(AdTemplate adTemplate, StyleTemplate styleTemplate) {
        long jDT;
        SplashMonitorInfo tkRenderType = new SplashMonitorInfo().setStatus(101).setTemplateId(styleTemplate.templateId).setTemplateVersionCode(styleTemplate.templateVersionCode).setTkRenderType(com.kwad.sdk.core.response.helper.b.dY(adTemplate));
        com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (h.aj(adTemplate)) {
            jDT = com.kwad.sdk.core.response.helper.b.dX(adTemplate);
        } else {
            jDT = com.kwad.sdk.core.response.helper.b.dT(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        }
        com.kwad.sdk.commercial.c.m(tkRenderType.setTkDefaultTimeout(jDT).setAdTemplate(adTemplate));
    }

    public static void a(AdTemplate adTemplate, StyleTemplate styleTemplate, int i10, long j10, int i11, long j11, long j12, long j13, long j14, long j15) {
        long jDT;
        SplashMonitorInfo templateVersionCode = new SplashMonitorInfo().setStatus(104).setTemplateId(styleTemplate.templateId).setTkRenderType(com.kwad.sdk.core.response.helper.b.dY(adTemplate)).setTemplateVersionCode(styleTemplate.templateVersionCode);
        com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (h.aj(adTemplate)) {
            jDT = com.kwad.sdk.core.response.helper.b.dX(adTemplate);
        } else {
            jDT = com.kwad.sdk.core.response.helper.b.dT(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        }
        com.kwad.sdk.commercial.c.m(templateVersionCode.setTkDefaultTimeout(jDT).setSoSource(i10).setSoLoadTime(j10).setOfflineSource(i11).setOfflineLoadTime(j11).setTkFileLoadTime(j12).setTkInitTime(j13).setTkRenderTime(j14).setTkTotalTime(j15).setAdTemplate(adTemplate));
    }

    public static void a(AdTemplate adTemplate, int i10, int i11, int i12, long j10, long j11) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(3002).setMaterialType(i10).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setUrl(com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl).setShowType(i11).setLoadType(i12).setCostTime(j10).setShowDurationMs(j11).setAdTemplate(adTemplate));
    }
}
