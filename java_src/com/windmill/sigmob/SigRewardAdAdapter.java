package com.windmill.sigmob;

import android.app.Activity;
import android.content.Context;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.rewardVideo.WindRewardAdRequest;
import com.sigmob.windad.rewardVideo.WindRewardInfo;
import com.sigmob.windad.rewardVideo.WindRewardVideoAd;
import com.sigmob.windad.rewardVideo.WindRewardVideoAdListener;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomRewardAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class SigRewardAdAdapter extends WMCustomRewardAdapter implements WindRewardVideoAdListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WindRewardVideoAd f87614a;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        WindRewardVideoAd windRewardVideoAd = this.f87614a;
        if (windRewardVideoAd == null) {
            return;
        }
        windRewardVideoAd.destroy();
        this.f87614a = null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f87614a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, String> getSaasChannelInfo() {
        WindRewardVideoAd windRewardVideoAd = this.f87614a;
        if (windRewardVideoAd != null) {
            return windRewardVideoAd.getSaasOptions();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        WindRewardVideoAd windRewardVideoAd = this.f87614a;
        if (windRewardVideoAd == null) {
            return false;
        }
        return windRewardVideoAd.isReady();
    }

    @Override // com.windmill.sdk.custom.WMCustomRewardAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            String str = (String) map2.get("placementId");
            SigmobLog.i("SigRewardAdAdapter# loadAd: placementId = ".concat(String.valueOf(str)));
            Map<String, Object> mapA = a.a("SigRewardAdAdapter#", this);
            WindRewardAdRequest windRewardAdRequest = new WindRewardAdRequest(str, getUserId(), map);
            windRewardAdRequest.setExtOptions(mapA);
            WindRewardVideoAd windRewardVideoAd = new WindRewardVideoAd(windRewardAdRequest);
            this.f87614a = windRewardVideoAd;
            windRewardVideoAd.setWindRewardVideoAdListener(this);
            int biddingType = getBiddingType();
            if (biddingType == 0) {
                this.f87614a.loadAd(getHbResponseStr());
                return;
            }
            if (biddingType != 1) {
                this.f87614a.loadAd();
                return;
            }
            try {
                Object obj = map2.get(WMConstants.BID_FLOOR);
                if (obj != null) {
                    this.f87614a.setBidFloor(((Integer) obj).intValue());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f87614a.setCurrency(WindAds.CNY);
            this.f87614a.loadAd();
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i("SigRewardAdAdapter#notifyBiddingResult: isWin = " + z10 + ", price = " + str + ", referBidInfo = " + map);
        if (this.f87614a == null) {
            return;
        }
        try {
            Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
            int channelId = getChannelId();
            SigmobLog.i("SigRewardAdAdapter#notifyBiddingResult: channelId = " + channelId + ", bidInfoToOut = " + bidInfoToOut);
            Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(channelId, z10, map, bidInfoToOut);
            SigmobLog.i("SigRewardAdAdapter#notifyBiddingResult: bidInfoWithChannel = ".concat(String.valueOf(bidInfoWithChannel)));
            Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel == null ? SigAdapterProxy.castBiddingInfo(z10, bidInfoToOut) : SigAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel);
            SigmobLog.i("SigRewardAdAdapter#notifyBiddingResult: map = ".concat(String.valueOf(mapCastBiddingInfo)));
            if (z10) {
                this.f87614a.sendWinNotificationWithInfo(mapCastBiddingInfo);
            } else {
                this.f87614a.sendLossNotificationWithInfo(mapCastBiddingInfo);
            }
        } catch (Exception e10) {
            SigmobLog.e("SigRewardAdAdapter#notifyBiddingResult: error = " + e10.getMessage());
        }
    }

    @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
    public void onRewardAdClicked(String str) {
        callVideoAdClick();
    }

    @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
    public void onRewardAdClosed(String str) {
        callVideoAdClosed();
    }

    @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
    public void onRewardAdLoadError(WindAdError windAdError, String str) {
        SigmobLog.e("SigRewardAdAdapter#onRewardAdLoadError: error = " + windAdError.toString());
        callLoadFail(new WMAdapterError(windAdError.getErrorCode(), windAdError.getMessage()));
    }

    @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
    public void onRewardAdLoadSuccess(String str) {
        SigmobLog.i("SigRewardAdAdapter# onRewardAdLoadSuccess:".concat(String.valueOf(str)));
        callLoadSuccess();
    }

    @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
    public void onRewardAdPlayEnd(String str) {
        callVideoAdPlayComplete();
    }

    @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
    public void onRewardAdPlayError(WindAdError windAdError, String str) {
        callVideoAdPlayError(new WMAdapterError(windAdError.getErrorCode(), windAdError.getMessage()));
    }

    @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
    public void onRewardAdPlayStart(String str) {
        callVideoAdShow();
    }

    @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
    public void onRewardAdPreLoadFail(String str) {
    }

    @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
    public void onRewardAdPreLoadSuccess(String str) {
        SigmobLog.i("SigRewardAdAdapter#onRewardAdPreLoadSuccess: placementId = ".concat(String.valueOf(str)));
        if (this.f87614a == null || getBiddingType() != 1) {
            return;
        }
        callLoadBiddingSuccess(new BidPrice(this.f87614a.getEcpm()));
    }

    @Override // com.sigmob.windad.rewardVideo.WindRewardVideoAdListener
    public void onRewardAdRewarded(WindRewardInfo windRewardInfo, String str) {
        callVideoAdReward(windRewardInfo.isReward());
    }

    @Override // com.windmill.sdk.custom.WMCustomRewardAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        try {
            WindRewardVideoAd windRewardVideoAd = this.f87614a;
            if (windRewardVideoAd == null || !windRewardVideoAd.isReady()) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "rewardVideoAd is not ready."));
                return;
            }
            if (getBiddingType() == 1) {
                try {
                    Object obj = map2.get("eCpm");
                    if (obj != null) {
                        this.f87614a.setBidEcpm(WMBidUtil.parseInt(obj).intValue());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.f87614a.show(map);
        } catch (Throwable th) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
        }
    }
}
