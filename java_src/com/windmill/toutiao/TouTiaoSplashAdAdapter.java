package com.windmill.toutiao;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CSJAdError;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomSplashAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.splash.IWMSplashEyeAd;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class TouTiaoSplashAdAdapter extends WMCustomSplashAdapter implements CSJSplashAd.SplashAdListener, TTAdNative.CSJSplashAdListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CSJSplashAd f87707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f87708b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f87709c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f87710d = false;

    private static DisplayMetrics a(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        CSJSplashAd cSJSplashAd = this.f87707a;
        if (cSJSplashAd == null || this.f87708b) {
            return;
        }
        cSJSplashAd.getMediationManager().destroy();
        this.f87707a.setSplashAdListener(null);
        this.f87707a.setDownloadListener(null);
        this.f87707a = null;
        this.f87709c = false;
    }

    public int dp2px(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f87707a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Map<String, Object> mediaExtraInfo;
        Object obj;
        CSJSplashAd cSJSplashAd = this.f87707a;
        if (cSJSplashAd == null || (mediaExtraInfo = cSJSplashAd.getMediaExtraInfo()) == null || (obj = mediaExtraInfo.get("request_id")) == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("request_id", obj);
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public IWMSplashEyeAd getSplashEyeAd() {
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return this.f87709c && this.f87707a != null;
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(Context context, ViewGroup viewGroup, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f87708b = false;
            this.f87709c = false;
            this.f87710d = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "context is null"));
                return;
            }
            String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd " + str);
            TTAdNative tTAdNative = TouTiaoAdapterProxy.getTTAdNative();
            int i10 = a(context).widthPixels;
            int i11 = a(context).heightPixels;
            float fPx2dip = (float) px2dip(context, (float) i10);
            float fPx2dip2 = px2dip(context, i11);
            int iIntValue = 5;
            try {
                if (getSplashType() == 1) {
                    this.f87708b = true;
                } else {
                    this.f87708b = false;
                }
                Object obj = map.get(WMConstants.AD_WIDTH);
                if (obj != null && ((Integer) obj).intValue() != 0) {
                    fPx2dip = px2dip(context, WMBidUtil.parseInt(String.valueOf(obj)).intValue());
                }
                Object obj2 = map.get(WMConstants.AD_HEIGHT);
                if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                    fPx2dip2 = px2dip(context, WMBidUtil.parseInt(String.valueOf(obj2)).intValue());
                }
                Object obj3 = map2.get(WMConstants.LOAD_TIMEOUT);
                if (obj3 != null) {
                    iIntValue = WMBidUtil.parseInt(String.valueOf(obj3)).intValue();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            AdSlot.Builder supportDeepLink = new AdSlot.Builder().setCodeId(str).setExpressViewAcceptedSize(fPx2dip, fPx2dip2).setSupportDeepLink(true);
            if (getBiddingType() == 0) {
                supportDeepLink.withBid(getHbResponseStr());
            }
            tTAdNative.loadSplashAd(supportDeepLink.build(), this, iIntValue * 1000);
        } catch (Exception e11) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e11.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult " + z10 + ":" + str);
        try {
            if (this.f87707a != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel != null ? TouTiaoAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : TouTiaoAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + mapCastBiddingInfo);
                if (z10) {
                    this.f87707a.win(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin")))));
                } else {
                    this.f87707a.loss(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice")))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
    public void onSplashAdClick(CSJSplashAd cSJSplashAd) {
        callSplashAdClick();
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
    public void onSplashAdClose(CSJSplashAd cSJSplashAd, int i10) {
        callSplashAdClosed();
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
    public void onSplashAdShow(CSJSplashAd cSJSplashAd) {
        callSplashAdShow();
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
    public void onSplashLoadFail(CSJAdError cSJAdError) {
        SigmobLog.i(getClass().getSimpleName() + " onSplashLoadFail:" + cSJAdError.toString());
        callLoadFail(new WMAdapterError(cSJAdError.getCode(), TouTiaoAdapterProxy.getReason(cSJAdError.getMsg()), cSJAdError.getMsg()));
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
    public void onSplashLoadSuccess(CSJSplashAd cSJSplashAd) {
        SigmobLog.i(getClass().getSimpleName() + " onSplashLoadSuccess");
        if (this.f87710d || getBiddingType() != 1) {
            return;
        }
        String strA = a(cSJSplashAd, (String) null);
        SigmobLog.i(getClass().getSimpleName() + " onSplashLoadSuccess eCpm = " + strA);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        this.f87710d = true;
        callLoadBiddingSuccess(new BidPrice(strA));
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
    public void onSplashRenderFail(CSJSplashAd cSJSplashAd, CSJAdError cSJAdError) {
        callLoadFail(new WMAdapterError(cSJAdError.getCode(), TouTiaoAdapterProxy.getReason(cSJAdError.getMsg()), cSJAdError.getMsg()));
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
    public void onSplashRenderSuccess(CSJSplashAd cSJSplashAd) {
        SigmobLog.i(getClass().getSimpleName() + " onSplashRenderSuccess");
        if (cSJSplashAd == null) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ttSplashAd is null"));
            return;
        }
        this.f87707a = cSJSplashAd;
        this.f87709c = true;
        if (!this.f87710d && getBiddingType() == 1) {
            String strA = a(cSJSplashAd, "0");
            SigmobLog.i(getClass().getSimpleName() + " onSplashRenderSuccess eCpm = " + strA);
            this.f87710d = true;
            callLoadBiddingSuccess(new BidPrice(strA));
        }
        callLoadSuccess(cSJSplashAd);
    }

    public int px2dip(Context context, float f10) {
        float f11 = context.getResources().getDisplayMetrics().density;
        if (f11 <= 0.0f) {
            f11 = 1.0f;
        }
        return (int) ((f10 / f11) + 0.5f);
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> map) {
        Object obj;
        try {
            if (this.f87707a == null || !this.f87709c) {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "mSplashAD is null"));
            } else {
                if (getBiddingType() == 1 && (obj = map.get("eCpm")) != null) {
                    this.f87707a.setPrice(Double.valueOf(Double.parseDouble((String) obj)));
                }
                this.f87707a.showSplashView(viewGroup);
                this.f87707a.setSplashAdListener(this);
            }
            this.f87709c = false;
        } catch (Exception e10) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e10.getMessage()));
        }
    }

    private static String a(CSJSplashAd cSJSplashAd, String str) {
        Object obj;
        if (cSJSplashAd == null) {
            return str;
        }
        try {
            Map<String, Object> mediaExtraInfo = cSJSplashAd.getMediaExtraInfo();
            if (mediaExtraInfo != null && (obj = mediaExtraInfo.get("price")) != null) {
                return String.valueOf(obj);
            }
        } catch (Exception e10) {
            SigmobLog.e(e10.getMessage());
        }
        return str;
    }
}
