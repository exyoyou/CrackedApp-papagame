package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.czhj.sdk.logger.SigmobLog;
import com.qq.e.ads.splash.SplashAD;
import com.qq.e.ads.splash.SplashADListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.util.AdError;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomSplashAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.splash.IWMSplashEyeAd;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GDTSplashAdAdapter extends WMCustomSplashAdapter implements SplashADListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    h f86063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SplashAD f86064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f86065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f86066d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f86067e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f86068f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f86069g = getClass().getSimpleName();

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        if (this.f86064b != null && !this.f86067e) {
            this.f86064b = null;
        }
        this.f86068f = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void gdtNoadNotify(String str, HashMap<String, Object> map) {
        GdtUtil.noAdReplace(str, map);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86064b;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        SplashAD splashAD = this.f86064b;
        if (splashAD != null) {
            return GDTAdapterProxy.getRequestId(splashAD.getExtraInfo());
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public String getS2sResultUrl(boolean z10, String str, HashMap<String, String> map) {
        WMLogUtil.i(getClass().getSimpleName() + "------getS2sResultUrl " + map);
        return !TextUtils.isEmpty(str) ? GdtUtil.s2sMacroReplace(str, GDTAdapterProxy.castBiddingInfo(z10, map)) : super.getS2sResultUrl(z10, str, map);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public IWMSplashEyeAd getSplashEyeAd() {
        return this.f86063a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return this.f86065c > 0 && SystemClock.elapsedRealtime() < this.f86065c;
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(Context context, ViewGroup viewGroup, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f86066d = false;
            this.f86067e = false;
            this.f86068f = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "activity is null"));
                return;
            }
            String str = "";
            if (map2 != null) {
                Object obj = map2.get("showDownloadDialog");
                if (obj != null && obj.equals("1")) {
                    this.f86066d = true;
                }
                str = (String) map2.get("placementId");
            }
            String str2 = str;
            SigmobLog.i(getClass().getSimpleName() + " loadAd " + str2);
            if (getBiddingType() == 0) {
                this.f86064b = new SplashAD(context, str2, this, 0, getHbResponseStr());
            } else {
                this.f86064b = new SplashAD(context, str2, this, 0);
            }
            LoadAdParams loadAdParams = GdtUtil.getLoadAdParams(getClass(), map2);
            if (loadAdParams != null) {
                this.f86064b.setLoadAdParams(loadAdParams);
            }
            this.f86064b.fetchAdOnly();
            this.f86065c = 0L;
        } catch (Exception e10) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e10.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        GdtNotifyBiddingResult.notifyBiddingResult(z10, map, this.f86064b, this);
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADClicked() {
        SigmobLog.i(this.f86069g + "---onADClicked");
        callSplashAdClick();
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADDismissed() {
        SigmobLog.i(this.f86069g + "---onADDismissed");
        callSplashAdClosed();
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADExposure() {
        SigmobLog.i(this.f86069g + "---onADExposure");
        callSplashAdShow();
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADLoaded(long j10) {
        SigmobLog.i(this.f86069g + "---onADLoaded");
        this.f86065c = j10;
        this.f86068f = true;
        SplashAD splashAD = this.f86064b;
        if (splashAD != null && this.f86066d) {
            splashAD.setDownloadConfirmListener(GDTAdapterProxy.DOWNLOAD_CONFIRM_LISTENER);
        }
        if (this.f86064b != null && getBiddingType() == 1) {
            callLoadBiddingSuccess(new BidPrice(String.valueOf(this.f86064b.getECPM())));
        }
        callLoadSuccess(this.f86064b);
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADPresent() {
        SigmobLog.i(this.f86069g + "---onADPresent");
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADTick(long j10) {
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onNoAD(AdError adError) {
        SigmobLog.i(getClass().getName() + " onError: " + adError.getErrorCode() + ":" + adError.getErrorMsg());
        if (this.f86068f) {
            callSplashAdShowError(new WMAdapterError(adError.getErrorCode(), GDTAdapterProxy.getDetailCode(adError.getErrorMsg()), adError.getErrorMsg()));
        } else {
            callLoadFail(new WMAdapterError(adError.getErrorCode(), GDTAdapterProxy.getDetailCode(adError.getErrorMsg()), adError.getErrorMsg()));
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> map) {
        try {
            SigmobLog.i(getClass().getSimpleName() + " showAd");
            if (this.f86064b == null) {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "mSplashAD is null"));
                return;
            }
            viewGroup.removeAllViews();
            int biddingType = getBiddingType();
            if (biddingType == 0 || biddingType == 1) {
                try {
                    Object obj = map.get("eCpm");
                    if (obj != null) {
                        this.f86064b.setBidECPM(WMBidUtil.parseInt(obj).intValue());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.f86064b.showAd(viewGroup);
        } catch (Exception e11) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e11.getMessage()));
        }
    }
}
