package com.windmill.kuaishou;

import com.czhj.sdk.logger.SigmobLog;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsAdVideoPlayConfig;
import com.kwad.sdk.api.KsFeedAd;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.kwad.sdk.api.model.NativeAdExtraData;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class j extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    g.a f86501b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f86500a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f86502c = false;

    public j(g.a aVar) {
        this.f86501b = aVar;
    }

    @Override // com.windmill.kuaishou.g
    public final void a(final WMCustomNativeAdapter wMCustomNativeAdapter, final String str, Map<String, Object> map, Map<String, Object> map2) {
        int iIntValue;
        try {
            this.f86502c = false;
            this.f86500a.clear();
            SigmobLog.i(j.class.getSimpleName() + " loadAd " + str);
            int i10 = 1020;
            try {
                Object obj = map.get(WMConstants.AD_WIDTH);
                if (obj == null || ((Integer) obj).intValue() == 0) {
                    iIntValue = 1020;
                } else {
                    iIntValue = (int) ((((Integer) obj).intValue() * WindMillAd.sharedAds().getContext().getResources().getDisplayMetrics().density) + 0.5f);
                }
                Object obj2 = map2.get(WMConstants.AUTO_PLAY_MUTED);
                if (obj2 == null || !obj2.equals("0")) {
                    this.f86502c = false;
                } else {
                    this.f86502c = true;
                }
                i10 = iIntValue;
            } catch (Exception unused) {
                this.f86502c = false;
            }
            WMLogUtil.d(WMLogUtil.TAG, "-------------expressViewWidth-------:".concat(String.valueOf(i10)));
            KsScene.Builder builderWidth = new KsScene.Builder(WMBidUtil.parseLong(str).longValue()).width(i10);
            if (wMCustomNativeAdapter.getBiddingType() == 0) {
                builderWidth.adNum(1);
                builderWidth.setBidResponseV2(wMCustomNativeAdapter.getHbResponseStr());
            } else {
                builderWidth.adNum(wMCustomNativeAdapter.getAdCount());
            }
            NativeAdExtraData nativeAdExtraData = new NativeAdExtraData();
            nativeAdExtraData.setEnableShake(true);
            builderWidth.setNativeAdExtraData(nativeAdExtraData);
            KsAdSDK.getLoadManager().loadConfigFeedAd(builderWidth.build(), new KsLoadManager.FeedAdListener() { // from class: com.windmill.kuaishou.j.1
                @Override // com.kwad.sdk.api.KsLoadManager.FeedAdListener
                public final void onError(int i11, String str2) {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onError---------:" + i11 + ":" + str2);
                    if (j.this.f86501b != null) {
                        j.this.f86501b.onNativeAdFailToLoad(new WMAdapterError(i11, str2 + " codeId " + str));
                    }
                }

                @Override // com.kwad.sdk.api.KsLoadManager.FeedAdListener
                public final void onFeedAdLoad(List<KsFeedAd> list) {
                    if (list == null || list.isEmpty()) {
                        if (j.this.f86501b != null) {
                            j.this.f86501b.onNativeAdFailToLoad(new WMAdapterError(0, "ads is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onFeedAdLoad---------" + list.size());
                    int ecpm = 0;
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        KsFeedAd ksFeedAd = list.get(i11);
                        if (ksFeedAd != null) {
                            if (ecpm == 0) {
                                ecpm = ksFeedAd.getECPM();
                            }
                            ksFeedAd.setBidEcpm(ksFeedAd.getECPM(), 0L);
                            ksFeedAd.setVideoPlayConfig(new KsAdVideoPlayConfig.Builder().videoSoundEnable(j.this.f86502c).dataFlowAutoStart(true).build());
                            j.this.f86500a.add(new a(ksFeedAd, wMCustomNativeAdapter));
                        }
                    }
                    j jVar = j.this;
                    g.a aVar = jVar.f86501b;
                    if (aVar != null) {
                        aVar.onNativeAdLoadSuccess(jVar.f86500a, String.valueOf(ecpm));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callLoadSuccess(list);
                    }
                }
            });
        } catch (Throwable th) {
            if (this.f86501b != null) {
                this.f86501b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.kuaishou.g
    public final void b() {
        this.f86501b = null;
        List<WMNativeAdData> list = this.f86500a;
        if (list != null) {
            Iterator<WMNativeAdData> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.f86500a.clear();
        }
    }

    @Override // com.windmill.kuaishou.g
    public final List<WMNativeAdData> c() {
        return this.f86500a;
    }

    @Override // com.windmill.kuaishou.g
    public final Map<String, Object> d() {
        List<WMNativeAdData> list = this.f86500a;
        return (list == null || list.size() <= 0) ? Collections.emptyMap() : KuaiShouAdapterProxy.getRequestId(((a) this.f86500a.get(0)).f86413a.getMediaExtraInfo());
    }

    @Override // com.windmill.kuaishou.g
    public final void a(boolean z10, Map<String, Object> map) {
        List<WMNativeAdData> list = this.f86500a;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < this.f86500a.size(); i10++) {
            KsFeedAd ksFeedAd = (KsFeedAd) ((a) this.f86500a.get(i10)).getOriginNativeAdData();
            if (ksFeedAd != null) {
                if (z10) {
                    Object obj = map.get("bidEcpm");
                    Object obj2 = map.get("lossBidEcpm");
                    SigmobLog.i(j.class.getSimpleName() + " ---notifyBiddingResult:" + obj + ":" + obj2);
                    if (obj != null && obj2 != null) {
                        ksFeedAd.setBidEcpm(WMBidUtil.parseLong(obj).longValue(), WMBidUtil.parseLong(obj2).longValue());
                    }
                } else {
                    Object obj3 = map.get("adExposureFailedReasonCode");
                    ksFeedAd.reportAdExposureFailed(obj3 != null ? ((Integer) obj3).intValue() : 2, (AdExposureFailedReason) map.get("adExposureFailedReason"));
                }
            }
        }
    }

    @Override // com.windmill.kuaishou.g
    public final boolean a() {
        return this.f86500a.size() > 0;
    }
}
