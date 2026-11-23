package com.windmill.gromore;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CSJAdError;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationAdEcpmInfo;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationSplashManager;
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
public class GroSplashAdAdapter extends WMCustomSplashAdapter implements CSJSplashAd.SplashAdListener, TTAdNative.CSJSplashAdListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CSJSplashAd f86214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f86215b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f86216c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f86217d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f86218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private q f86219f;

    private static DisplayMetrics a(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        CSJSplashAd cSJSplashAd = this.f86214a;
        if (cSJSplashAd != null) {
            cSJSplashAd.setSplashAdListener(null);
            this.f86214a.setDownloadListener(null);
            this.f86214a.getMediationManager().destroy();
            this.f86214a = null;
            this.f86216c = false;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86214a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        CSJSplashAd cSJSplashAd = this.f86214a;
        if (cSJSplashAd != null) {
            return GroAdapterProxy.getRequestId(cSJSplashAd.getMediaExtraInfo());
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getNetworkOption() {
        MediationSplashManager mediationManager;
        MediationAdEcpmInfo showEcpm;
        HashMap map = new HashMap();
        CSJSplashAd cSJSplashAd = this.f86214a;
        if (cSJSplashAd != null && (mediationManager = cSJSplashAd.getMediationManager()) != null && (showEcpm = mediationManager.getShowEcpm()) != null) {
            map.put(MediationConstant.KEY_ADN_NAME, showEcpm.getSdkName());
            map.put("adnNetworkRitId", showEcpm.getSlotId());
            map.put("adnEcpm", showEcpm.getEcpm());
        }
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public IWMSplashEyeAd getSplashEyeAd() {
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return this.f86216c && this.f86214a != null;
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(Context context, ViewGroup viewGroup, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f86215b = false;
            this.f86216c = false;
            this.f86217d = n.a(map2);
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "activity is null"));
                return;
            }
            this.f86218e = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd " + this.f86218e);
            TTAdNative tTAdNative = GroAdapterProxy.getTTAdNative();
            int i10 = a(context).widthPixels;
            int i11 = a(context).heightPixels;
            float fPx2dip = (float) px2dip(context, (float) i10);
            float fPx2dip2 = px2dip(context, i11);
            int iIntValue = 5;
            try {
                if (getSplashType() == 1) {
                    this.f86215b = true;
                } else {
                    this.f86215b = false;
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
            tTAdNative.loadSplashAd(new AdSlot.Builder().setCodeId(this.f86218e).setExpressViewAcceptedSize(fPx2dip, fPx2dip2).setSupportDeepLink(true).build(), this, iIntValue * 1000);
        } catch (Exception e11) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e11.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult " + z10 + ":" + str);
        try {
            if (this.f86214a != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel != null ? GroAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : GroAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + mapCastBiddingInfo);
                if (z10) {
                    this.f86214a.win(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin")))));
                } else {
                    this.f86214a.loss(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice")))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
    public void onSplashAdClick(CSJSplashAd cSJSplashAd) {
        if (cSJSplashAd != null && cSJSplashAd.getMediationManager() != null) {
            setGroEcpm(n.a(cSJSplashAd.getMediationManager().getShowEcpm()));
        }
        callSplashAdClick();
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
    public void onSplashAdClose(CSJSplashAd cSJSplashAd, int i10) {
        if (cSJSplashAd != null && cSJSplashAd.getMediationManager() != null) {
            setGroEcpm(n.a(cSJSplashAd.getMediationManager().getShowEcpm()));
        }
        callSplashAdClosed();
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
    public void onSplashAdShow(CSJSplashAd cSJSplashAd) {
        if (cSJSplashAd != null && cSJSplashAd.getMediationManager() != null) {
            setGroEcpm(n.a(cSJSplashAd.getMediationManager().getShowEcpm()));
        }
        callSplashAdShow();
        c.a(this, this.f86219f);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
    public void onSplashLoadFail(CSJAdError cSJAdError) {
        SigmobLog.i(getClass().getSimpleName() + " onSplashLoadFail:" + cSJAdError.toString());
        callLoadFail(new WMAdapterError(cSJAdError.getCode(), GroAdapterProxy.getReason(cSJAdError.getMsg()), cSJAdError.getMsg()));
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
    public void onSplashLoadSuccess(CSJSplashAd cSJSplashAd) {
        SigmobLog.i(getClass().getSimpleName() + " onSplashLoadSuccess");
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
    public void onSplashRenderFail(CSJSplashAd cSJSplashAd, CSJAdError cSJAdError) {
        callLoadFail(new WMAdapterError(cSJAdError.getCode(), GroAdapterProxy.getReason(cSJAdError.getMsg()), cSJAdError.getMsg()));
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
    public void onSplashRenderSuccess(CSJSplashAd cSJSplashAd) {
        SigmobLog.i(getClass().getSimpleName() + " onSplashRenderSuccess");
        if (cSJSplashAd == null) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ttSplashAd is null"));
            return;
        }
        this.f86214a = cSJSplashAd;
        this.f86216c = true;
        if (getBiddingType() == 1) {
            this.f86219f = n.a(this.f86214a, this.f86217d, this.f86218e, 0);
            BidPrice bidPrice = new BidPrice(String.valueOf(this.f86219f.f86346a));
            q qVar = this.f86219f;
            setGroC2sPriceInfo(qVar.f86346a, qVar.f86350e, qVar.f86349d, qVar.f86353h, qVar.f86351f, qVar.f86354i);
            callLoadBiddingSuccess(bidPrice);
        }
        callLoadSuccess();
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
            if (this.f86214a == null || !this.f86216c) {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "mSplashAD is null"));
            } else {
                if (getBiddingType() == 1 && (obj = map.get("eCpm")) != null) {
                    this.f86214a.setPrice(Double.valueOf(Double.parseDouble((String) obj)));
                }
                this.f86214a.showSplashView(viewGroup);
                this.f86214a.setSplashAdListener(this);
            }
            this.f86216c = false;
        } catch (Exception e10) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e10.getMessage()));
        }
    }
}
