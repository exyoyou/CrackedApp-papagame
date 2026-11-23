package com.windmill.baidu;

import android.app.Activity;
import android.content.Context;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidPrice;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class BdInterstitialAdapter extends WMCustomInterstitialAdapter implements e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f85854a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f85856c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f85855b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<WeakReference<Activity>> f85857d = new ArrayList<>();

    public void adapterDidLoadBiddingPriceSuccess(String str) {
        callLoadBiddingSuccess(new BidPrice(str));
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        e eVar = this.f85854a;
        if (eVar != null) {
            eVar.c();
            this.f85854a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        e eVar = this.f85854a;
        return eVar != null ? eVar.a() : super.getChannelObject();
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        e eVar = this.f85854a;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            e eVar = this.f85854a;
            if (eVar != null) {
                return eVar.b();
            }
            return false;
        } catch (Throwable th) {
            SigmobLog.e("bd isReady catch error", th);
            return false;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        e cVar;
        try {
            String str = (String) map2.get("placementId");
            int interstitialAdType = getInterstitialAdType();
            this.f85855b = false;
            SigmobLog.i(getClass().getSimpleName() + "---loadAd:" + str + ":" + interstitialAdType);
            if (interstitialAdType == 1) {
                cVar = new d(this, this);
            } else {
                if (interstitialAdType != 0 && interstitialAdType != 2) {
                    callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "can not get bd adType"));
                    return;
                }
                cVar = new c(this, this);
            }
            this.f85854a = cVar;
            this.f85854a.a(context, str, map2);
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch bd loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f85854a != null) {
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
                    this.f85854a.a(String.valueOf(linkedHashMapCastBiddingInfo.get("ecpm")), linkedHashMapCastBiddingInfo);
                } else {
                    this.f85854a.b(String.valueOf(linkedHashMapCastBiddingInfo.get(MediationConstant.KEY_REASON)), linkedHashMapCastBiddingInfo);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onCreate(Activity activity) {
        SigmobLog.e(getClass().getSimpleName() + " bd onCreate activity:" + activity.getClass().getName());
        String name = activity.getClass().getName();
        if (this.f85856c && this.f85855b && !getCloseToOut() && name.startsWith("com.baidu.mobads.sdk")) {
            SigmobLog.e(getClass().getSimpleName() + " onCreate " + activity.getClass().getName() + " id " + activity.hashCode());
            this.f85857d.add(new WeakReference<>(activity));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onDestroy(Activity activity) {
        try {
            String name = activity.getClass().getName();
            if (this.f85856c && name.startsWith("com.baidu.mobads.sdk")) {
                SigmobLog.e(getClass().getSimpleName() + " BD onDestroy activity:" + activity.getClass().getSimpleName());
                Iterator<WeakReference<Activity>> it2 = this.f85857d.iterator();
                while (it2.hasNext()) {
                    if (activity.equals(it2.next().get())) {
                        SigmobLog.e(getClass().getSimpleName() + " remove " + activity.getClass().getName() + " id " + activity.hashCode());
                        it2.remove();
                        break;
                    }
                }
                if (this.f85855b && this.f85857d.isEmpty()) {
                    this.f85855b = false;
                    callVideoAdClosed();
                    this.f85856c = false;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.baidu.e.a
    public void onInterstitialAdClick() {
        callVideoAdClick();
    }

    @Override // com.windmill.baidu.e.a
    public void onInterstitialAdClose() {
        if (this.f85855b) {
            this.f85855b = false;
            callVideoAdClosed();
        }
    }

    @Override // com.windmill.baidu.e.a
    public void onInterstitialAdFailToLoad(WMAdapterError wMAdapterError) {
        callLoadFail(wMAdapterError);
    }

    @Override // com.windmill.baidu.e.a
    public void onInterstitialAdFailToPlaying(WMAdapterError wMAdapterError) {
        callVideoAdPlayError(wMAdapterError);
    }

    @Override // com.windmill.baidu.e.a
    public void onInterstitialAdLoadSuccess() {
        e eVar = this.f85854a;
        callLoadSuccess(eVar == null ? null : eVar.a());
    }

    @Override // com.windmill.baidu.e.a
    public void onInterstitialAdPlayComplete() {
        callVideoAdPlayComplete();
    }

    @Override // com.windmill.baidu.e.a
    public void onInterstitialAdStartPlaying() {
        callVideoAdShow();
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        try {
            if (map2.containsKey(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK)) {
                this.f85856c = map2.get(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK).equals("1");
            }
            e eVar = this.f85854a;
            if (eVar == null || !eVar.b()) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
            } else {
                this.f85855b = true;
                this.f85854a.a(activity);
            }
        } catch (Throwable th) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "catch bd presentVideoAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.baidu.e.a
    public void adapterDidLoadBiddingPriceSuccess(String str, String... strArr) {
        BidPrice bidPrice = new BidPrice(str);
        if (strArr != null && strArr.length > 0) {
            bidPrice.pecpm = strArr[0];
        }
        callLoadBiddingSuccess(bidPrice);
    }
}
