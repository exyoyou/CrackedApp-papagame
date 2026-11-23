package com.windmill.kuaishou;

import com.czhj.sdk.logger.SigmobLog;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsNativeAd;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.kwad.sdk.api.model.NativeAdExtraData;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class k extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f86506a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    g.a f86507b;

    public k(g.a aVar) {
        this.f86507b = aVar;
    }

    @Override // com.windmill.kuaishou.g
    public final void a(final WMCustomNativeAdapter wMCustomNativeAdapter, final String str, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            this.f86506a.clear();
            SigmobLog.i(k.class.getSimpleName() + " loadAd " + str);
            KsScene.Builder builder = new KsScene.Builder(WMBidUtil.parseLong(str).longValue());
            if (wMCustomNativeAdapter.getBiddingType() == 0) {
                builder.adNum(1);
                builder.setBidResponseV2(wMCustomNativeAdapter.getHbResponseStr());
            } else {
                builder.adNum(wMCustomNativeAdapter.getAdCount());
            }
            NativeAdExtraData nativeAdExtraData = new NativeAdExtraData();
            nativeAdExtraData.setEnableShake(true);
            builder.setNativeAdExtraData(nativeAdExtraData);
            KsAdSDK.getLoadManager().loadNativeAd(builder.build(), new KsLoadManager.NativeAdListener() { // from class: com.windmill.kuaishou.k.1
                @Override // com.kwad.sdk.api.KsLoadManager.NativeAdListener
                public final void onError(int i10, String str2) {
                    if (k.this.f86507b != null) {
                        k.this.f86507b.onNativeAdFailToLoad(new WMAdapterError(i10, str2 + " codeId " + str));
                    }
                }

                @Override // com.kwad.sdk.api.KsLoadManager.NativeAdListener
                public final void onNativeAdLoad(List<KsNativeAd> list) {
                    if (list == null || list.isEmpty()) {
                        if (k.this.f86507b != null) {
                            k.this.f86507b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "adList is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    int ecpm = 0;
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        KsNativeAd ksNativeAd = list.get(i10);
                        if (ksNativeAd != null) {
                            if (ecpm == 0) {
                                ecpm = ksNativeAd.getECPM();
                            }
                            ksNativeAd.setBidEcpm(ksNativeAd.getECPM(), 0L);
                            k.this.f86506a.add(new h(ksNativeAd, wMCustomNativeAdapter, map2));
                        }
                    }
                    k kVar = k.this;
                    g.a aVar = kVar.f86507b;
                    if (aVar != null) {
                        aVar.onNativeAdLoadSuccess(kVar.f86506a, String.valueOf(ecpm));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callLoadSuccess(list);
                    }
                }
            });
        } catch (Throwable th) {
            SigmobLog.e("ks load ", th);
            if (this.f86507b != null) {
                this.f86507b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.kuaishou.g
    public final void b() {
        this.f86507b = null;
        List<WMNativeAdData> list = this.f86506a;
        if (list != null) {
            Iterator<WMNativeAdData> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.f86506a.clear();
        }
    }

    @Override // com.windmill.kuaishou.g
    public final List<WMNativeAdData> c() {
        return this.f86506a;
    }

    @Override // com.windmill.kuaishou.g
    public final Map<String, Object> d() {
        List<WMNativeAdData> list = this.f86506a;
        return (list == null || list.size() <= 0) ? Collections.emptyMap() : KuaiShouAdapterProxy.getRequestId(((h) this.f86506a.get(0)).f86468a.getMediaExtraInfo());
    }

    @Override // com.windmill.kuaishou.g
    public final void a(boolean z10, Map<String, Object> map) {
        List<WMNativeAdData> list = this.f86506a;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < this.f86506a.size(); i10++) {
            KsNativeAd ksNativeAd = (KsNativeAd) ((h) this.f86506a.get(i10)).getOriginNativeAdData();
            if (ksNativeAd != null) {
                if (z10) {
                    Object obj = map.get("bidEcpm");
                    Object obj2 = map.get("lossBidEcpm");
                    SigmobLog.i(k.class.getSimpleName() + " ---notifyBiddingResult:" + obj + ":" + obj2);
                    if (obj != null && obj2 != null) {
                        ksNativeAd.setBidEcpm(WMBidUtil.parseLong(obj).longValue(), WMBidUtil.parseLong(obj2).longValue());
                    }
                } else {
                    Object obj3 = map.get("adExposureFailedReasonCode");
                    ksNativeAd.reportAdExposureFailed(obj3 != null ? ((Integer) obj3).intValue() : 2, (AdExposureFailedReason) map.get("adExposureFailedReason"));
                }
            }
        }
    }

    @Override // com.windmill.kuaishou.g
    public final boolean a() {
        return this.f86506a.size() > 0;
    }
}
