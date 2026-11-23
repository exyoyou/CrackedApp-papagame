package com.windmill.baidu;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.SplashAd;
import com.baidu.mobads.sdk.api.SplashInteractionListener;
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
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class BdSplashAdAdapter extends WMCustomSplashAdapter implements SplashInteractionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SplashAd f85941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f85942b = getClass().getSimpleName();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f85943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f85944d;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        SplashAd splashAd = this.f85941a;
        if (splashAd != null) {
            splashAd.destroy();
            this.f85941a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f85941a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Object adDataForKey;
        SplashAd splashAd = this.f85941a;
        if (splashAd == null || (adDataForKey = splashAd.getAdDataForKey("request_id")) == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("request_id", adDataForKey);
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        if (!isUseChannelIsReady()) {
            return this.f85943c;
        }
        SplashAd splashAd = this.f85941a;
        if (splashAd != null) {
            return splashAd.isReady();
        }
        return false;
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(Context context, ViewGroup viewGroup, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f85944d = false;
            this.f85943c = false;
            String str = (String) map2.get("placementId");
            SigmobLog.i(this.f85942b + "---loadAd " + str + " " + hashCode());
            RequestParameters.Builder builder = new RequestParameters.Builder();
            Object obj = map2.get("showDownloadDialog");
            builder.addExtra(SplashAd.KEY_POPDIALOG_DOWNLOAD, (obj == null || !obj.equals("1")) ? "false" : "true");
            BidInfo lastBidInfo = getLastBidInfo();
            if (lastBidInfo != null) {
                SigmobLog.i(getClass().getSimpleName() + " bidInfo:" + lastBidInfo.toString());
                builder.addCustExt("A", lastBidInfo.getWinner()).addCustExt(SDKManager.ALGO_B_AES_SHA256_RSA, lastBidInfo.getECpm()).addCustExt(SDKManager.ALGO_C_RFU, lastBidInfo.getBidType()).addCustExt("S", lastBidInfo.getExposureStatus()).addCustExt(SDKManager.ALGO_D_RFU, lastBidInfo.getClickStatus()).addCustExt("H", lastBidInfo.getFailReason()).addCustExt("I", lastBidInfo.getSecondPrice()).addCustExt("J", lastBidInfo.getBidTime()).addCustExt("K", lastBidInfo.getRequestId());
            }
            this.f85941a = new SplashAd(context, str, builder.build(), this);
            try {
                Object obj2 = map2.get(WMConstants.BID_FLOOR);
                if (obj2 != null) {
                    this.f85941a.setBidFloor(((Integer) obj2).intValue());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f85941a.load();
        } catch (Exception e11) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e11.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(this.f85942b + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f85941a != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(this.f85942b + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f85942b);
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                LinkedHashMap<String, Object> linkedHashMapCastBiddingInfo = bidInfoWithChannel != null ? BdAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : BdAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(this.f85942b + " notifyBiddingResult-----3:" + linkedHashMapCastBiddingInfo);
                if (z10) {
                    a.a(this.f85941a, String.valueOf(linkedHashMapCastBiddingInfo.get("ecpm")), linkedHashMapCastBiddingInfo);
                } else {
                    a.b(this.f85941a, String.valueOf(linkedHashMapCastBiddingInfo.get(MediationConstant.KEY_REASON)), linkedHashMapCastBiddingInfo);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.baidu.mobads.sdk.api.SplashAdListener
    public void onADLoaded() {
        SigmobLog.i(this.f85942b + "---onADLoaded " + hashCode());
        if (this.f85941a != null && getBiddingType() == 1) {
            SigmobLog.i(this.f85942b + "---onAdCacheSuccess ecpm: " + this.f85941a.getECPMLevel() + " pecpm " + this.f85941a.getPECPM());
            BidPrice bidPrice = new BidPrice(this.f85941a.getECPMLevel());
            bidPrice.pecpm = this.f85941a.getPECPM();
            callLoadBiddingSuccess(bidPrice);
        }
        if (getFillType() == 1) {
            this.f85943c = true;
            callLoadSuccess(this.f85941a);
        }
    }

    @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
    public void onAdCacheFailed() {
        this.f85944d = false;
        SigmobLog.i(this.f85942b + "---onAdCacheFailed");
    }

    @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
    public void onAdCacheSuccess() {
        this.f85944d = true;
        SigmobLog.i(this.f85942b + "---onAdCacheSuccess");
        if (getFillType() == 0) {
            callLoadSuccess(this.f85941a);
            this.f85943c = true;
        }
    }

    @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
    public void onAdClick() {
        SigmobLog.i(this.f85942b + "---onAdClick");
        callSplashAdClick();
    }

    @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
    public void onAdDismissed() {
        SigmobLog.i(this.f85942b + "---onAdDismissed");
        callSplashAdClosed();
    }

    @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
    public void onAdExposed() {
        SigmobLog.i(this.f85942b + "---onAdExposed");
        callSplashAdShow();
    }

    @Override // com.baidu.mobads.sdk.api.SplashAdListener
    public void onAdFailed(String str) {
        SigmobLog.i(this.f85942b + "---onAdFailed:" + str);
        callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), str));
    }

    @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
    public void onAdPresent() {
        SigmobLog.i(this.f85942b + "---onAdPresent");
    }

    @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
    public void onAdSkip() {
        SigmobLog.i(this.f85942b + "---onAdSkip");
        callSplashAdSkipped();
    }

    @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
    public void onLpClosed() {
        SigmobLog.i(this.f85942b + "---onLpClosed");
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> map) {
        try {
            if (this.f85941a == null || !isReady()) {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "splashAd is null"));
            } else if (this.f85944d) {
                this.f85941a.show(viewGroup);
            } else {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "material download error"));
            }
        } catch (Exception e10) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e10.getMessage()));
        }
    }
}
