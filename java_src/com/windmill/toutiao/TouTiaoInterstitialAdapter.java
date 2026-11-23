package com.windmill.toutiao;

import android.app.Activity;
import android.content.Context;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class TouTiaoInterstitialAdapter extends WMCustomInterstitialAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f87665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f87666b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f87668d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<WeakReference<Activity>> f87667c = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f87669e = "com.bytedance";

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        d dVar = this.f87665a;
        if (dVar != null) {
            dVar.d();
            this.f87665a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        d dVar = this.f87665a;
        return dVar != null ? dVar.a() : super.getChannelObject();
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Map<String, Object> mapC;
        Object obj;
        d dVar = this.f87665a;
        if (dVar == null || (mapC = dVar.c()) == null || (obj = mapC.get("request_id")) == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("request_id", obj);
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            d dVar = this.f87665a;
            if (dVar != null) {
                return dVar.b();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f87666b = false;
            String str = (String) map2.get("placementId");
            int interstitialAdType = getInterstitialAdType();
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str + ":" + interstitialAdType);
            if (interstitialAdType != 1 && interstitialAdType != 2) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "can not get tt adType"));
                return;
            }
            c cVar = new c(this);
            this.f87665a = cVar;
            cVar.a(str, map2);
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch TT loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f87665a != null) {
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
                    this.f87665a.a(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin"))));
                } else {
                    this.f87665a.a(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice"))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onCreate(Activity activity) {
        if (this.f87666b && this.f87668d && !getCloseToOut() && activity.getClass().getName().startsWith(this.f87669e)) {
            SigmobLog.e(getClass().getSimpleName() + " onCreate " + activity.getClass().getName() + " id " + activity.hashCode());
            this.f87667c.add(new WeakReference<>(activity));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onDestroy(Activity activity) {
        try {
            if (this.f87668d && activity.getClass().getName().startsWith(this.f87669e)) {
                Iterator<WeakReference<Activity>> it2 = this.f87667c.iterator();
                while (it2.hasNext()) {
                    if (activity.equals(it2.next().get())) {
                        SigmobLog.e(getClass().getSimpleName() + " remove " + activity.getClass().getName() + " id " + activity.hashCode());
                        it2.remove();
                        break;
                    }
                }
                if (this.f87666b && this.f87667c.isEmpty()) {
                    this.f87666b = false;
                    if (getCloseToOut()) {
                        return;
                    }
                    callVideoAdClosed();
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        try {
            if (map2.containsKey(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK)) {
                this.f87668d = map2.get(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK).equals("1");
            }
            d dVar = this.f87665a;
            if (dVar == null || !dVar.b()) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
                return;
            }
            this.f87666b = true;
            this.f87667c.clear();
            this.f87665a.a(activity, map2);
        } catch (Throwable th) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "catch TT presentVideoAd error " + th.getMessage()));
        }
    }
}
