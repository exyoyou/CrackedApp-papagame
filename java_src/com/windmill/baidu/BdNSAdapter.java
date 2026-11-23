package com.windmill.baidu;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.logger.SigmobLog;
import com.sdk.base.module.manager.SDKManager;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomSplashAdapter;
import com.windmill.sdk.models.BidInfo;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.widget.SplashViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class BdNSAdapter extends WMCustomSplashAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f85878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f85879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NativeResponse f85880c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f85881d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f85882e = false;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        f fVar = this.f85881d;
        if (fVar != null) {
            fVar.destroy();
            this.f85881d = null;
        }
        this.f85882e = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f85880c;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Object adDataForKey;
        try {
            NativeResponse nativeResponse = this.f85880c;
            if (nativeResponse == null || (adDataForKey = nativeResponse.getAdDataForKey("request_id")) == null) {
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

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (!this.f85882e || this.f85880c == null || this.f85881d == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(final Context context, ViewGroup viewGroup, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            this.f85882e = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "activity is null"));
                return;
            }
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + "---loadAd " + str);
            this.f85878a = context.getResources().getDisplayMetrics().widthPixels;
            this.f85879b = context.getResources().getDisplayMetrics().heightPixels;
            try {
                Object obj = map.get(WMConstants.AD_WIDTH);
                if (obj != null && ((Integer) obj).intValue() != 0) {
                    this.f85878a = WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                }
                Object obj2 = map.get(WMConstants.AD_HEIGHT);
                if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                    this.f85879b = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            BaiduNativeManager baiduNativeManager = new BaiduNativeManager(context, str);
            RequestParameters.Builder builderDownloadAppConfirmPolicy = new RequestParameters.Builder().downloadAppConfirmPolicy(1);
            BidInfo lastBidInfo = getLastBidInfo();
            if (lastBidInfo != null) {
                SigmobLog.i(getClass().getSimpleName() + " bidInfo:" + lastBidInfo.toString());
                builderDownloadAppConfirmPolicy.addCustExt("A", lastBidInfo.getWinner()).addCustExt(SDKManager.ALGO_B_AES_SHA256_RSA, lastBidInfo.getECpm()).addCustExt(SDKManager.ALGO_C_RFU, lastBidInfo.getBidType()).addCustExt("S", lastBidInfo.getExposureStatus()).addCustExt(SDKManager.ALGO_D_RFU, lastBidInfo.getClickStatus()).addCustExt("H", lastBidInfo.getFailReason()).addCustExt("I", lastBidInfo.getSecondPrice()).addCustExt("J", lastBidInfo.getBidTime()).addCustExt("K", lastBidInfo.getRequestId());
            }
            try {
                Object obj3 = map2.get(WMConstants.BID_FLOOR);
                if (obj3 != null) {
                    baiduNativeManager.setBidFloor(((Integer) obj3).intValue());
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            baiduNativeManager.loadFeedAd(builderDownloadAppConfirmPolicy.build(), new BaiduNativeManager.FeedAdListener() { // from class: com.windmill.baidu.BdNSAdapter.1
                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onLpClosed() {
                    SigmobLog.i(BdNSAdapter.this.getClass().getSimpleName() + " onLpClosed()");
                }

                public void onNativeFail(int i10, String str2) {
                    SigmobLog.i(BdNSAdapter.this.getClass().getSimpleName() + " onNativeFail:" + i10 + ":" + str2);
                    BdNSAdapter.this.callLoadFail(new WMAdapterError(i10, str2));
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onNativeLoad(List<NativeResponse> list) {
                    SigmobLog.i(BdNSAdapter.this.getClass().getSimpleName() + " onNativeLoad()");
                    if (list == null || list.isEmpty()) {
                        BdNSAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 " + str));
                        return;
                    }
                    BdNSAdapter.a(BdNSAdapter.this);
                    BdNSAdapter.this.f85880c = list.get(0);
                    BdNSAdapter bdNSAdapter = BdNSAdapter.this;
                    bdNSAdapter.f85881d = new f(context, bdNSAdapter.f85880c, BdNSAdapter.this.getChannelId(), map2);
                    if (BdNSAdapter.this.getBiddingType() == 1) {
                        BidPrice bidPrice = new BidPrice(!TextUtils.isEmpty(BdNSAdapter.this.f85880c.getECPMLevel()) ? BdNSAdapter.this.f85880c.getECPMLevel() : "0");
                        bidPrice.pecpm = BdNSAdapter.this.f85880c.getPECPM();
                        BdNSAdapter.this.callLoadBiddingSuccess(bidPrice);
                    }
                    BdNSAdapter.this.callLoadSuccess(list);
                }

                public void onNoAd(int i10, String str2) {
                    SigmobLog.i(BdNSAdapter.this.getClass().getSimpleName() + " onNoAd:" + i10 + ":" + str2);
                    BdNSAdapter.this.callLoadFail(new WMAdapterError(i10, str2));
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onVideoDownloadFailed() {
                    SigmobLog.i(BdNSAdapter.this.getClass().getSimpleName() + " onVideoDownloadFailed()");
                }

                @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
                public void onVideoDownloadSuccess() {
                    SigmobLog.i(BdNSAdapter.this.getClass().getSimpleName() + " onVideoDownloadSuccess()");
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
        } catch (Exception e12) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e12.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f85880c != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                LinkedHashMap<String, Object> linkedHashMapCastBiddingInfo = bidInfoWithChannel != null ? BdAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : BdAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + linkedHashMapCastBiddingInfo);
                if (z10) {
                    a.a(this.f85880c, String.valueOf(linkedHashMapCastBiddingInfo.get("ecpm")), linkedHashMapCastBiddingInfo);
                } else {
                    a.b(this.f85880c, String.valueOf(linkedHashMapCastBiddingInfo.get(MediationConstant.KEY_REASON)), linkedHashMapCastBiddingInfo);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> map) {
        f fVar;
        try {
            SigmobLog.i(getClass().getSimpleName() + " showAd");
            if (this.f85880c == null || (fVar = this.f85881d) == null || !this.f85882e) {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
            } else {
                new SplashViewManager(this.f85878a, this.f85879b, fVar, map, new ViewInteractionListener() { // from class: com.windmill.baidu.BdNSAdapter.2
                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClick() {
                        BdNSAdapter.this.callSplashAdClick();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClose() {
                        BdNSAdapter.this.callSplashAdClosed();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShow() {
                        BdNSAdapter.this.callSplashAdShow();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShowError(WMAdapterError wMAdapterError) {
                        BdNSAdapter.this.callSplashAdShowError(wMAdapterError);
                    }
                }).show(viewGroup);
            }
            this.f85882e = false;
        } catch (Exception e10) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e10.getMessage()));
        }
    }

    static /* synthetic */ boolean a(BdNSAdapter bdNSAdapter) {
        bdNSAdapter.f85882e = true;
        return true;
    }
}
