package com.windmill.gromore;

import android.app.Activity;
import android.content.Context;
import com.bytedance.pangle.activity.GenerateProxyActivity;
import com.bytedance.pangle.activity.GenerateProxyAppCompatActivity;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GroInterstitialAdapter extends WMCustomInterstitialAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f86166a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f86169d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f86167b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<WeakReference<Activity>> f86168c = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f86170e = 0;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        g gVar = this.f86166a;
        if (gVar != null) {
            gVar.d();
            this.f86166a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        g gVar = this.f86166a;
        if (gVar != null) {
            return gVar.a();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Object objA;
        Map<String, Object> mediaExtraInfo;
        try {
            g gVar = this.f86166a;
            if (gVar == null || (objA = gVar.a()) == null || !(objA instanceof TTFullScreenVideoAd) || (mediaExtraInfo = ((TTFullScreenVideoAd) objA).getMediaExtraInfo()) == null) {
                return null;
            }
            return GroAdapterProxy.getRequestId(mediaExtraInfo);
        } catch (Exception e10) {
            SigmobLog.e(getClass().getSimpleName() + " getMediaExtraOption error: " + e10);
            return null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getNetworkOption() {
        g gVar = this.f86166a;
        if (gVar != null) {
            return gVar.b();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            WMLogUtil.i(getClass().getSimpleName() + "--------isReady");
            g gVar = this.f86166a;
            if (gVar != null) {
                return gVar.c();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f86167b = false;
            String str = (String) map2.get("placementId");
            int interstitialAdType = getInterstitialAdType();
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str + ":" + interstitialAdType);
            if (interstitialAdType != 1 && interstitialAdType != 2) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "can not get tt adType"));
                return;
            }
            f fVar = new f(this, this.f86170e);
            this.f86166a = fVar;
            fVar.a(str, map2);
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch TT loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f86166a != null) {
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
                    this.f86166a.a(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin"))));
                } else {
                    this.f86166a.a(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice"))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onCreate(Activity activity) {
        if (this.f86169d && this.f86167b && !getCloseToOut()) {
            if ((activity instanceof GenerateProxyActivity) || (activity instanceof GenerateProxyAppCompatActivity)) {
                SigmobLog.e(getClass().getSimpleName() + " onCreate " + activity.getClass().getName() + " id " + activity.hashCode());
                this.f86168c.add(new WeakReference<>(activity));
            }
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onDestroy(Activity activity) {
        try {
            if (this.f86169d) {
                if ((activity instanceof GenerateProxyActivity) || (activity instanceof GenerateProxyAppCompatActivity)) {
                    SigmobLog.e(getClass().getSimpleName() + " onDestroy " + activity.getClass().getName() + " id " + activity.hashCode());
                    Iterator<WeakReference<Activity>> it2 = this.f86168c.iterator();
                    while (it2.hasNext()) {
                        if (activity.equals(it2.next().get())) {
                            SigmobLog.e(getClass().getSimpleName() + " remove " + activity.getClass().getName() + " id " + activity.hashCode());
                            it2.remove();
                            break;
                        }
                    }
                    if (this.f86167b && this.f86168c.isEmpty()) {
                        this.f86167b = false;
                        if (getCloseToOut()) {
                            return;
                        }
                        callVideoAdClosed();
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        try {
            if (map2.containsKey(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK)) {
                this.f86169d = map2.get(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK).equals("1");
            }
            g gVar = this.f86166a;
            if (gVar == null || !gVar.c()) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
                return;
            }
            this.f86168c.clear();
            this.f86167b = true;
            this.f86166a.a(activity, map2);
        } catch (Throwable th) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "catch TT presentVideoAd error " + th.getMessage()));
        }
    }
}
