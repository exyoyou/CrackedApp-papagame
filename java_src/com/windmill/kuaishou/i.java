package com.windmill.kuaishou;

import com.czhj.sdk.logger.SigmobLog;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsDrawAd;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.kwad.sdk.api.model.NativeAdExtraData;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class i extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f86495a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    g.a f86496b;

    public i(g.a aVar) {
        this.f86496b = aVar;
    }

    @Override // com.windmill.kuaishou.g
    public final void a(final WMCustomNativeAdapter wMCustomNativeAdapter, final String str, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f86495a.clear();
            SigmobLog.i(i.class.getSimpleName() + " loadAd " + str);
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
            KsAdSDK.getLoadManager().loadDrawAd(builder.build(), new KsLoadManager.DrawAdListener() { // from class: com.windmill.kuaishou.i.1
                @Override // com.kwad.sdk.api.KsLoadManager.DrawAdListener
                public final void onDrawAdLoad(List<KsDrawAd> list) {
                    if (list == null || list.isEmpty()) {
                        if (i.this.f86496b != null) {
                            i.this.f86496b.onNativeAdFailToLoad(new WMAdapterError(0, "ads is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onDrawAdLoad---------" + list.size());
                    int ecpm = 0;
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        KsDrawAd ksDrawAd = list.get(i10);
                        if (ksDrawAd != null) {
                            if (ecpm == 0) {
                                ecpm = ksDrawAd.getECPM();
                            }
                            ksDrawAd.setBidEcpm(ksDrawAd.getECPM(), 0L);
                            i.this.f86495a.add(new b(ksDrawAd, wMCustomNativeAdapter));
                        }
                    }
                    i iVar = i.this;
                    g.a aVar = iVar.f86496b;
                    if (aVar != null) {
                        aVar.onNativeAdLoadSuccess(iVar.f86495a, String.valueOf(ecpm));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callLoadSuccess(list);
                    }
                }

                @Override // com.kwad.sdk.api.KsLoadManager.DrawAdListener
                public final void onError(int i10, String str2) {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onError---------:" + i10 + ":" + str2);
                    if (i.this.f86496b != null) {
                        i.this.f86496b.onNativeAdFailToLoad(new WMAdapterError(i10, str2 + " codeId " + str));
                    }
                }
            });
        } catch (Throwable th) {
            if (this.f86496b != null) {
                this.f86496b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.kuaishou.g
    public final void b() {
        this.f86496b = null;
    }

    @Override // com.windmill.kuaishou.g
    public final List<WMNativeAdData> c() {
        return this.f86495a;
    }

    @Override // com.windmill.kuaishou.g
    public final Map<String, Object> d() {
        List<WMNativeAdData> list = this.f86495a;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return KuaiShouAdapterProxy.getRequestId(((b) this.f86495a.get(0)).f86422a.getMediaExtraInfo());
    }

    @Override // com.windmill.kuaishou.g
    public final void a(boolean z10, Map<String, Object> map) {
        List<WMNativeAdData> list = this.f86495a;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < this.f86495a.size(); i10++) {
            KsDrawAd ksDrawAd = (KsDrawAd) ((b) this.f86495a.get(i10)).getOriginNativeAdData();
            if (ksDrawAd != null) {
                if (z10) {
                    Object obj = map.get("bidEcpm");
                    Object obj2 = map.get("lossBidEcpm");
                    SigmobLog.i(i.class.getSimpleName() + " ---notifyBiddingResult" + obj + ":" + obj2);
                    if (obj != null && obj2 != null) {
                        ksDrawAd.setBidEcpm(WMBidUtil.parseLong(obj).longValue(), WMBidUtil.parseLong(obj2).longValue());
                    }
                } else {
                    Object obj3 = map.get("adExposureFailedReasonCode");
                    ksDrawAd.reportAdExposureFailed(obj3 != null ? ((Integer) obj3).intValue() : 2, (AdExposureFailedReason) map.get("adExposureFailedReason"));
                }
            }
        }
    }

    @Override // com.windmill.kuaishou.g
    public final boolean a() {
        return this.f86495a.size() > 0;
    }
}
