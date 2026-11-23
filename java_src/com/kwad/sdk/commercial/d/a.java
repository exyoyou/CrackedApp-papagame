package com.kwad.sdk.commercial.d;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.join.mgps.Util.v0;
import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.commercial.d;
import com.kwad.sdk.commercial.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.internal.api.SceneImpl;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.by;
import com.tencent.cos.common.COSHttpResponseKey;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static void a(int i10, AdTemplate adTemplate, String str, String str2) {
        com.kwad.sdk.commercial.c.d(d.In().m34do(ILoggerReporter.Category.ERROR_LOG).g(0.01d).b(e.ds(i10)).Q("ad_sdk_ad_data_performance", "error_name").A(b.Ir().dw(str).dx(str2).setAdTemplate(adTemplate)));
    }

    private static void c(AdTemplate adTemplate, String str, String str2) {
        com.kwad.sdk.commercial.c.d(d.In().m34do(ILoggerReporter.Category.ERROR_LOG).g(0.01d).b(e.bA(adTemplate)).Q("ad_sdk_ad_data_performance", "error_name").A(b.Ir().dw(str).dx(str2).setAdTemplate(adTemplate)));
    }

    public static void ci(@NonNull AdTemplate adTemplate) {
        try {
            if (adTemplate.llsid == 0) {
                c(adTemplate, "llsid", "");
            }
            if (com.kwad.sdk.core.response.helper.e.eY(adTemplate) == 0) {
                c(adTemplate, "create_id", "");
            }
            AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
            int i10 = adInfoEO.adBaseInfo.adOperationType;
            if (i10 == 1) {
                String strDb = com.kwad.sdk.core.response.helper.a.db(adInfoEO);
                if (by.ir(strDb)) {
                    c(adTemplate, COSHttpResponseKey.DOWNLOAD_URL, strDb);
                }
            } else if (i10 == 2) {
                String strAY = com.kwad.sdk.core.response.helper.a.aY(adInfoEO);
                if (by.ir(strAY)) {
                    c(adTemplate, "h5_url", strAY);
                }
            }
            AdInfo.AdMaterialInfo.MaterialFeature materialFeatureP = com.kwad.sdk.core.response.helper.a.P(adInfoEO);
            int i11 = materialFeatureP.featureType;
            String str = materialFeatureP.materialUrl;
            if (i11 == 1) {
                if (by.ir(str)) {
                    c(adTemplate, "video_url", str);
                    return;
                }
                return;
            }
            if (i11 == 2) {
                if (by.ir(str)) {
                    c(adTemplate, "image_url", str);
                }
            } else if (i11 == 3) {
                long jCw = com.kwad.sdk.core.response.helper.a.cw(adInfoEO);
                String strBn = com.kwad.sdk.core.response.helper.a.bn(adInfoEO);
                if (jCw == 0) {
                    c(adTemplate, "live_author_id", "");
                } else if (TextUtils.isEmpty(strBn)) {
                    c(adTemplate, "live_stream_id", strBn);
                }
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void n(AdTemplate adTemplate, String str) {
        c(adTemplate, "tk_template_id", str);
    }

    public static void a(@Nullable SceneImpl sceneImpl, long j10, String str) {
        if (sceneImpl == null) {
            return;
        }
        try {
            com.kwad.sdk.commercial.c.d(d.In().m34do(ILoggerReporter.Category.ERROR_LOG).g(0.01d).b(e.ds(sceneImpl.getAdStyle())).Q("ad_sdk_ad_parse_performance", v0.f50057a).A(c.Is().dy(str).setPosId(sceneImpl.posId).setLlsid(j10)));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(@Nullable SceneImpl sceneImpl, long j10, String str, String str2) {
        if (sceneImpl == null) {
            return;
        }
        try {
            com.kwad.sdk.commercial.c.d(d.In().m34do(ILoggerReporter.Category.ERROR_LOG).g(0.01d).b(e.ds(sceneImpl.getAdStyle())).Q("ad_sdk_ad_parse_performance", v0.f50057a).A(c.Is().dy(str).dz(str2).setErrorCode(100013).setPosId(sceneImpl.posId).setLlsid(j10)));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
