package com.windmill.baidu;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.ExpressResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.logger.SigmobLog;
import com.sdk.base.module.manager.SDKManager;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
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
public final class k extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<WMNativeAdData> f85992a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    g.a f85993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    WMCustomNativeAdapter f85994c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BaiduNativeManager f85995d;

    public k(WMCustomNativeAdapter wMCustomNativeAdapter, g.a aVar) {
        this.f85994c = wMCustomNativeAdapter;
        this.f85993b = aVar;
    }

    @Override // com.windmill.baidu.g
    public final void a(Context context, final String str, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f85992a.clear();
            int iIntValue = 0;
            int i10 = MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO;
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    int iIntValue2 = (obj == null || ((Integer) obj).intValue() == 0) ? MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO : WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        iIntValue = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                    }
                    i10 = iIntValue2;
                } catch (Exception e10) {
                    WMLogUtil.d(WMLogUtil.TAG, "expressViewWidth:" + e10.getMessage());
                }
            }
            WMLogUtil.d(WMLogUtil.TAG, i10 + "-----expressViewWidth--------expressViewHeight-------:" + iIntValue);
            this.f85995d = new BaiduNativeManager(context, str);
            RequestParameters.Builder height = new RequestParameters.Builder().downloadAppConfirmPolicy(1).setWidth(i10).setHeight(iIntValue);
            BidInfo lastBidInfo = this.f85994c.getLastBidInfo();
            if (lastBidInfo != null) {
                SigmobLog.i(k.class.getSimpleName() + " bidInfo:" + lastBidInfo.toString());
                height.addCustExt("A", lastBidInfo.getWinner()).addCustExt(SDKManager.ALGO_B_AES_SHA256_RSA, lastBidInfo.getECpm()).addCustExt(SDKManager.ALGO_C_RFU, lastBidInfo.getBidType()).addCustExt("S", lastBidInfo.getExposureStatus()).addCustExt(SDKManager.ALGO_D_RFU, lastBidInfo.getClickStatus()).addCustExt("H", lastBidInfo.getFailReason()).addCustExt("I", lastBidInfo.getSecondPrice()).addCustExt("J", lastBidInfo.getBidTime()).addCustExt("K", lastBidInfo.getRequestId());
            }
            try {
                Object obj3 = map2.get(WMConstants.BID_FLOOR);
                if (obj3 != null) {
                    this.f85995d.setBidFloor(((Integer) obj3).intValue());
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            this.f85995d.loadExpressAd(height.build(), new BaiduNativeManager.ExpressAdListener() { // from class: com.windmill.baidu.BdNativeExpressAd$1
                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
                public void onLpClosed() {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onLpClosed---------");
                }

                public void onNativeFail(int i11, String str2) {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onNativeFail---------:" + i11 + ":" + str2);
                    if (this.f85931b.f85993b != null) {
                        this.f85931b.f85993b.onNativeAdFailToLoad(new WMAdapterError(i11, str2 + " codeId " + str));
                    }
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
                public void onNativeLoad(List<ExpressResponse> list) {
                    if (list == null || list.isEmpty()) {
                        if (this.f85931b.f85993b != null) {
                            this.f85931b.f85993b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 " + str));
                            return;
                        }
                        return;
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onNativeExpressAdLoad---------" + list.size());
                    String eCPMLevel = null;
                    String str2 = "";
                    int i11 = 0;
                    while (i11 < list.size()) {
                        ExpressResponse expressResponse = list.get(i11);
                        b bVar = new b(expressResponse, this.f85931b.f85994c);
                        String pecpm = expressResponse.getPECPM();
                        this.f85931b.f85992a.add(bVar);
                        if (TextUtils.isEmpty(eCPMLevel)) {
                            eCPMLevel = expressResponse.getECPMLevel();
                        }
                        i11++;
                        str2 = pecpm;
                    }
                    k kVar = this.f85931b;
                    g.a aVar = kVar.f85993b;
                    if (aVar != null) {
                        aVar.onNativeAdLoadSuccess(kVar.f85992a, eCPMLevel, str2);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter = this.f85931b.f85994c;
                    if (wMCustomNativeAdapter != null) {
                        wMCustomNativeAdapter.callLoadSuccess(list);
                    }
                }

                public void onNoAd(int i11, String str2) {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onNoAd---------:" + i11 + ":" + str2);
                    if (this.f85931b.f85993b != null) {
                        this.f85931b.f85993b.onNativeAdFailToLoad(new WMAdapterError(i11, str2 + " codeId " + str));
                    }
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
                public void onVideoDownloadFailed() {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onVideoDownloadFailed---------");
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
                public void onVideoDownloadSuccess() {
                    WMLogUtil.d(WMLogUtil.TAG, "-----------onVideoDownloadSuccess---------");
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
                public void onNativeFail(int i11, String str2, ExpressResponse expressResponse) {
                    onNativeFail(i11, str2);
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
                public void onNoAd(int i11, String str2, ExpressResponse expressResponse) {
                    onNoAd(i11, str2);
                }
            });
        } catch (Throwable th) {
            if (this.f85993b != null) {
                this.f85993b.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.baidu.g
    public final void b() {
        List<WMNativeAdData> list = this.f85992a;
        if (list != null) {
            Iterator<WMNativeAdData> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.f85992a.clear();
        }
    }

    @Override // com.windmill.baidu.g
    public final List<WMNativeAdData> c() {
        return this.f85992a;
    }

    @Override // com.windmill.baidu.g
    public final Map<String, Object> d() {
        ExpressResponse expressResponse;
        Object adDataForKey;
        try {
            List<WMNativeAdData> list = this.f85992a;
            if (list == null || list.size() <= 0 || (expressResponse = (ExpressResponse) this.f85992a.get(0).getOriginNativeAdData()) == null || (adDataForKey = expressResponse.getAdDataForKey("request_id")) == null) {
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
        List<WMNativeAdData> list = this.f85992a;
        if (list == null || list.size() <= 0) {
            return;
        }
        a.a((ExpressResponse) ((b) this.f85992a.get(0)).getOriginNativeAdData(), str, linkedHashMap);
    }

    @Override // com.windmill.baidu.g
    public final void b(String str, LinkedHashMap<String, Object> linkedHashMap) {
        List<WMNativeAdData> list = this.f85992a;
        if (list == null || list.size() <= 0) {
            return;
        }
        a.b((ExpressResponse) ((b) this.f85992a.get(0)).getOriginNativeAdData(), str, linkedHashMap);
    }

    @Override // com.windmill.baidu.g
    public final boolean a() {
        return this.f85992a.size() > 0;
    }
}
