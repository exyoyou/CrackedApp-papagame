package com.windmill.baidu;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.czhj.sdk.logger.SigmobLog;
import com.sdk.base.module.manager.SDKManager;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.BidInfo;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class l extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f85996a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    g.a f85997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    WMCustomNativeAdapter f85998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BaiduNativeManager f85999d;

    public l(WMCustomNativeAdapter wMCustomNativeAdapter, g.a aVar) {
        this.f85998c = wMCustomNativeAdapter;
        this.f85997b = aVar;
    }

    @Override // com.windmill.baidu.g
    public final void a(final Context context, final String str, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            this.f85996a.clear();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(l.class.getSimpleName());
            sb2.append(" loadAd ");
            sb2.append(str);
            SigmobLog.i(sb2.toString());
            this.f85999d = new BaiduNativeManager(context, str);
            RequestParameters.Builder builderDownloadAppConfirmPolicy = new RequestParameters.Builder().downloadAppConfirmPolicy(1);
            BidInfo lastBidInfo = this.f85998c.getLastBidInfo();
            if (lastBidInfo != null) {
                SigmobLog.i(l.class.getSimpleName() + " bidInfo:" + lastBidInfo.toString());
                builderDownloadAppConfirmPolicy.addCustExt("A", lastBidInfo.getWinner()).addCustExt(SDKManager.ALGO_B_AES_SHA256_RSA, lastBidInfo.getECpm()).addCustExt(SDKManager.ALGO_C_RFU, lastBidInfo.getBidType()).addCustExt("S", lastBidInfo.getExposureStatus()).addCustExt(SDKManager.ALGO_D_RFU, lastBidInfo.getClickStatus()).addCustExt("H", lastBidInfo.getFailReason()).addCustExt("I", lastBidInfo.getSecondPrice()).addCustExt("J", lastBidInfo.getBidTime()).addCustExt("K", lastBidInfo.getRequestId());
            }
            try {
                Object obj = map2.get(WMConstants.BID_FLOOR);
                if (obj != null) {
                    this.f85999d.setBidFloor(((Integer) obj).intValue());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f85999d.loadFeedAd(builderDownloadAppConfirmPolicy.build(), new BaiduNativeManager.FeedAdListener() { // from class: com.windmill.baidu.BdNativeUnifiedAd$1
                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onLpClosed() {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onLpClosed---------");
                }

                public void onNativeFail(int i10, String str2) {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onNativeFail---------:" + i10 + ":" + str2);
                    if (this.f85935d.f85997b != null) {
                        this.f85935d.f85997b.onNativeAdFailToLoad(new WMAdapterError(i10, str2 + " codeId " + str));
                    }
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onNativeLoad(List<NativeResponse> list) {
                    if (list == null || list.isEmpty()) {
                        if (this.f85935d.f85997b != null) {
                            this.f85935d.f85997b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onNativeLoad-----------" + list.size());
                    String eCPMLevel = null;
                    String str2 = "";
                    int i10 = 0;
                    while (i10 < list.size()) {
                        NativeResponse nativeResponse = list.get(i10);
                        h hVar = new h(context, nativeResponse, this.f85935d.f85998c, map2);
                        String pecpm = nativeResponse.getPECPM();
                        this.f85935d.f85996a.add(hVar);
                        if (TextUtils.isEmpty(eCPMLevel)) {
                            eCPMLevel = nativeResponse.getECPMLevel();
                        }
                        i10++;
                        str2 = pecpm;
                    }
                    l lVar = this.f85935d;
                    g.a aVar = lVar.f85997b;
                    if (aVar != null) {
                        aVar.onNativeAdLoadSuccess(lVar.f85996a, eCPMLevel, str2);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter = this.f85935d.f85998c;
                    if (wMCustomNativeAdapter != null) {
                        wMCustomNativeAdapter.callLoadSuccess(list);
                    }
                }

                public void onNoAd(int i10, String str2) {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onNoAd---------:" + i10 + ":" + str2);
                    if (this.f85935d.f85997b != null) {
                        this.f85935d.f85997b.onNativeAdFailToLoad(new WMAdapterError(i10, str2 + " codeId " + str));
                    }
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onVideoDownloadFailed() {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onVideoDownloadFailed---------");
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onVideoDownloadSuccess() {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onVideoDownloadSuccess---------");
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onNativeFail(int i10, String str2, NativeResponse nativeResponse) {
                    onNativeFail(i10, str2);
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onNoAd(int i10, String str2, NativeResponse nativeResponse) {
                    onNoAd(i10, str2);
                }
            });
        } catch (Throwable th) {
            if (this.f85997b != null) {
                this.f85997b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.baidu.g
    public final void b() {
        List<WMNativeAdData> list = this.f85996a;
        if (list != null) {
            Iterator<WMNativeAdData> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.f85996a.clear();
        }
    }

    @Override // com.windmill.baidu.g
    public final List<WMNativeAdData> c() {
        return this.f85996a;
    }

    @Override // com.windmill.baidu.g
    public final Map<String, Object> d() {
        NativeResponse nativeResponse;
        Object adDataForKey;
        try {
            List<WMNativeAdData> list = this.f85996a;
            if (list == null || list.size() <= 0 || (nativeResponse = (NativeResponse) this.f85996a.get(0).getOriginNativeAdData()) == null || (adDataForKey = nativeResponse.getAdDataForKey("request_id")) == null) {
                return null;
            }
            HashMap map = new HashMap();
            map.put("request_id", adDataForKey);
            return map;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.windmill.baidu.g
    public final void a(String str, LinkedHashMap<String, Object> linkedHashMap) {
        List<WMNativeAdData> list = this.f85996a;
        if (list == null || list.size() <= 0) {
            return;
        }
        a.a((NativeResponse) ((h) this.f85996a.get(0)).getOriginNativeAdData(), str, linkedHashMap);
    }

    @Override // com.windmill.baidu.g
    public final void b(String str, LinkedHashMap<String, Object> linkedHashMap) {
        List<WMNativeAdData> list = this.f85996a;
        if (list == null || list.size() <= 0) {
            return;
        }
        a.b((NativeResponse) ((h) this.f85996a.get(0)).getOriginNativeAdData(), str, linkedHashMap);
    }

    @Override // com.windmill.baidu.g
    public final boolean a() {
        return this.f85996a.size() > 0;
    }
}
