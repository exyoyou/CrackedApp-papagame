package com.windmill.sigmob;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.windad.Splash.WindSplashAD;
import com.sigmob.windad.Splash.WindSplashADListener;
import com.sigmob.windad.Splash.WindSplashAdRequest;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomSplashAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class SigSplashAdAdapter extends WMCustomSplashAdapter implements WindSplashADListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WindSplashAD f87615a;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        WindSplashAD windSplashAD = this.f87615a;
        if (windSplashAD == null) {
            return;
        }
        windSplashAD.destroy();
        this.f87615a = null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f87615a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, String> getSaasChannelInfo() {
        WindSplashAD windSplashAD = this.f87615a;
        if (windSplashAD == null) {
            return null;
        }
        return windSplashAD.getSaasOptions();
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        WindSplashAD windSplashAD = this.f87615a;
        if (windSplashAD == null) {
            return false;
        }
        return windSplashAD.isReady();
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(Context context, ViewGroup viewGroup, Map<String, Object> map, Map<String, Object> map2) {
        try {
            String str = (String) map2.get("placementId");
            SigmobLog.i("SigSplashAdAdapter#loadAd: placementId = ".concat(String.valueOf(str)));
            Map<String, Object> mapA = a.a("SigSplashAdAdapter#", this);
            WindSplashAdRequest windSplashAdRequest = new WindSplashAdRequest(str, getUserId(), map);
            windSplashAdRequest.setExtOptions(mapA);
            this.f87615a = new WindSplashAD(windSplashAdRequest, this);
            int biddingType = getBiddingType();
            if (biddingType == 0) {
                this.f87615a.loadAd(getHbResponseStr());
                return;
            }
            if (biddingType != 1) {
                this.f87615a.loadAd();
                return;
            }
            try {
                Object obj = map2.get(WMConstants.BID_FLOOR);
                if (obj != null) {
                    this.f87615a.setBidFloor(((Integer) obj).intValue());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f87615a.setCurrency(WindAds.CNY);
            this.f87615a.loadAd();
        } catch (Exception e11) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e11.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i("SigSplashAdAdapter#notifyBiddingResult: isWin = " + z10 + ", price = " + str + ", referBidInfo = " + map);
        if (this.f87615a == null) {
            return;
        }
        try {
            Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
            int channelId = getChannelId();
            SigmobLog.i("SigSplashAdAdapter#notifyBiddingResult: channelId = " + channelId + ", bidInfoToOut = " + bidInfoToOut);
            Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(channelId, z10, map, bidInfoToOut);
            SigmobLog.i("SigSplashAdAdapter#notifyBiddingResult: bidInfoWithChannel = ".concat(String.valueOf(bidInfoWithChannel)));
            Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel == null ? SigAdapterProxy.castBiddingInfo(z10, bidInfoToOut) : SigAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel);
            SigmobLog.i("SigSplashAdAdapter#notifyBiddingResult: map = ".concat(String.valueOf(mapCastBiddingInfo)));
            if (z10) {
                this.f87615a.sendWinNotificationWithInfo(mapCastBiddingInfo);
            } else {
                this.f87615a.sendLossNotificationWithInfo(mapCastBiddingInfo);
            }
        } catch (Exception e10) {
            SigmobLog.e("SigSplashAdAdapter#notifyBiddingResult: error = " + e10.getMessage());
        }
    }

    @Override // com.sigmob.windad.Splash.WindSplashADListener
    public void onSplashAdClick(String str) {
        SigmobLog.i("SigSplashAdAdapter#onSplashAdClick: placementId = ".concat(String.valueOf(str)));
        callSplashAdClick();
    }

    @Override // com.sigmob.windad.Splash.WindSplashADListener
    public void onSplashAdClose(String str) {
        SigmobLog.i("SigSplashAdAdapter#onSplashAdClose: placementId = ".concat(String.valueOf(str)));
        callSplashAdClosed();
    }

    @Override // com.sigmob.windad.Splash.WindSplashADListener
    public void onSplashAdLoadFail(WindAdError windAdError, String str) {
        SigmobLog.e("SigSplashAdAdapter#onSplashAdLoadFail: placementId = " + str + ", error = " + windAdError.toString());
        callLoadFail(new WMAdapterError(windAdError.getErrorCode(), windAdError.getMessage()));
    }

    @Override // com.sigmob.windad.Splash.WindSplashADListener
    public void onSplashAdLoadSuccess(String str) {
        SigmobLog.i("SigSplashAdAdapter#onSplashAdLoadSuccess: placementId = ".concat(String.valueOf(str)));
        if (getBiddingType() == 1) {
            WindSplashAD windSplashAD = this.f87615a;
            callLoadBiddingSuccess(new BidPrice(windSplashAD == null ? "" : windSplashAD.getEcpm()));
        }
        callLoadSuccess();
    }

    @Override // com.sigmob.windad.Splash.WindSplashADListener
    public void onSplashAdShow(String str) {
        SigmobLog.i("SigSplashAdAdapter#onSplashAdShow: placementId = ".concat(String.valueOf(str)));
        callSplashAdShow();
    }

    @Override // com.sigmob.windad.Splash.WindSplashADListener
    public void onSplashAdShowError(WindAdError windAdError, String str) {
        SigmobLog.e("SigSplashAdAdapter#onSplashAdShowError: placementId = " + str + ", error = " + windAdError.toString());
        callSplashAdShowError(new WMAdapterError(windAdError.getErrorCode(), windAdError.getMessage()));
    }

    @Override // com.sigmob.windad.Splash.WindSplashADListener
    public void onSplashAdSkip(String str) {
        SigmobLog.i("SigSplashAdAdapter#onSplashAdSkip: placementId = ".concat(String.valueOf(str)));
        callSplashAdSkipped();
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> map) {
        try {
            if (this.f87615a == null) {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "SplashAd is not ready."));
                return;
            }
            if (getBiddingType() == 1) {
                try {
                    Object obj = map.get("eCpm");
                    if (obj != null) {
                        this.f87615a.setBidEcpm(WMBidUtil.parseInt(obj).intValue());
                    }
                } catch (Exception e10) {
                    SigmobLog.e("SigSplashAdAdapter#showAd: error = " + e10.getMessage());
                }
            }
            this.f87615a.show(viewGroup);
        } catch (Throwable th) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
        }
    }
}
