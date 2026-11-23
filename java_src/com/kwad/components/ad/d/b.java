package com.kwad.components.ad.d;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.kwad.components.ad.reward.monitor.c;
import com.kwad.components.ad.reward.monitor.d;
import com.kwad.components.core.video.k;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.response.model.AdVideoPreCacheConfig;
import com.kwad.sdk.core.videocache.f;
import com.kwad.sdk.export.proxy.AdHttpResponseListener;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.y;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    @WorkerThread
    public static boolean a(@NonNull AdTemplate adTemplate, boolean z10, final AdVideoPreCacheConfig adVideoPreCacheConfig, final a aVar) {
        String str;
        String strM = com.kwad.sdk.core.response.helper.a.M(e.eO(adTemplate));
        if (TextUtils.isEmpty(strM)) {
            return false;
        }
        final long adVideoPreCacheSize = ((long) adVideoPreCacheConfig.getAdVideoPreCacheSize()) * 1024;
        boolean zA = true;
        if (adVideoPreCacheSize > 0) {
            long j10 = adVideoPreCacheConfig.isContinueLoadingAll() ? -1L : adVideoPreCacheSize;
            com.kwad.sdk.core.network.a.a.C0937a c0937a = new com.kwad.sdk.core.network.a.a.C0937a();
            f fVarCm = com.kwad.sdk.core.videocache.c.a.cm(ServiceProvider.getContext());
            if (fVarCm.fy(strM)) {
                a(aVar);
            } else {
                zA = fVarCm.a(strM, j10, c0937a, new AdHttpResponseListener() { // from class: com.kwad.components.ad.d.b.1
                    private boolean cr = false;

                    @Override // com.kwad.sdk.export.proxy.AdHttpResponseListener
                    public final boolean onReadProgress(long j11, long j12) {
                        if ((j11 >= adVideoPreCacheSize || j11 >= j12) && !this.cr) {
                            this.cr = true;
                            b.a(aVar);
                            if (!adVideoPreCacheConfig.isContinueLoadingAll()) {
                                return true;
                            }
                        }
                        return false;
                    }

                    @Override // com.kwad.sdk.export.proxy.AdHttpResponseListener
                    public final void onResponseEnd() {
                    }

                    @Override // com.kwad.sdk.export.proxy.AdHttpResponseListener
                    public final void onResponseStart() {
                    }
                });
            }
            str = c0937a.msg;
        } else {
            str = "";
            if (adVideoPreCacheSize < 0) {
                File fileCO = com.kwad.sdk.core.diskcache.b.a.Lx().cO(strM);
                if (!y.Q(fileCO)) {
                    com.kwad.sdk.core.network.a.a.C0937a c0937a2 = new com.kwad.sdk.core.network.a.a.C0937a();
                    zA = com.kwad.sdk.core.diskcache.b.a.Lx().a(strM, c0937a2);
                    str = c0937a2.msg;
                }
                adTemplate.setDownloadSize(fileCO != null ? fileCO.length() : 0L);
                if (zA) {
                    a(aVar);
                }
            } else {
                a(aVar);
            }
        }
        if (zA) {
            k.n(strM, adVideoPreCacheConfig.getAdVideoPreCacheSize());
        } else {
            d.a(z10, adTemplate, str);
            c.a(z10, adTemplate);
            a(aVar, str);
        }
        return zA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(a aVar) {
        if (aVar == null) {
            return;
        }
        aVar.ai();
    }

    private static void a(a aVar, String str) {
        if (aVar == null) {
            return;
        }
        aVar.aj();
    }
}
