package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.logger.SigmobLog;
import com.qq.e.ads.ADActivity;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.rewardvideo.RewardVideoADListener;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.util.AdError;
import com.sigmob.windad.WindAds;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomRewardAdapter;
import com.windmill.sdk.models.BidPrice;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GDTRewardVideoAdapter extends WMCustomRewardAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RewardVideoAD f86055b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, Object> f86059f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f86060g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f86054a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f86056c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f86057d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f86058e = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<WeakReference<Activity>> f86061h = new ArrayList<>();

    static /* synthetic */ boolean e(GDTRewardVideoAdapter gDTRewardVideoAdapter) {
        gDTRewardVideoAdapter.f86056c = false;
        return false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        if (this.f86055b != null) {
            this.f86055b = null;
            this.f86057d = false;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void gdtNoadNotify(String str, HashMap<String, Object> map) {
        GdtUtil.noAdReplace(str, map);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86055b;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        RewardVideoAD rewardVideoAD = this.f86055b;
        if (rewardVideoAD != null) {
            return GDTAdapterProxy.getRequestId(rewardVideoAD.getExtraInfo());
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getRewardExtraOption() {
        Object obj;
        Map<String, Object> map = this.f86059f;
        if (map == null || (obj = map.get("transId")) == null) {
            return null;
        }
        HashMap map2 = new HashMap();
        map2.put(WindAds.TRANS_ID, obj);
        return map2;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public String getS2sResultUrl(boolean z10, String str, HashMap<String, String> map) {
        WMLogUtil.i(getClass().getSimpleName() + "------getS2sResultUrl " + map);
        return !TextUtils.isEmpty(str) ? GdtUtil.s2sMacroReplace(str, GDTAdapterProxy.castBiddingInfo(z10, map)) : super.getS2sResultUrl(z10, str, map);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            RewardVideoAD rewardVideoAD = this.f86055b;
            return rewardVideoAD != null && this.f86057d && rewardVideoAD.isValid() && !this.f86055b.hasShown();
        } catch (Throwable th) {
            SigmobLog.e("GDT isReady error", th);
        }
        return false;
    }

    @Override // com.windmill.sdk.custom.WMCustomRewardAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        boolean z10;
        boolean z11 = false;
        try {
            this.f86056c = false;
            this.f86057d = false;
            this.f86058e = false;
            this.f86059f = null;
            setAdapterServerExtra(map2);
            String str = "";
            if (map2 != null) {
                Object obj = map2.get("showDownloadDialog");
                if (obj != null && obj.equals("1")) {
                    this.f86058e = true;
                }
                Object obj2 = map2.get(WMConstants.AUTO_PLAY_MUTED);
                if (obj2 != null && obj2.equals("0")) {
                    z11 = true;
                }
                str = (String) map2.get("placementId");
                z10 = z11;
            } else {
                z10 = false;
            }
            SigmobLog.i(getClass().getSimpleName() + "----loadAd:" + str + " " + hashCode() + " " + map2);
            RewardVideoADListener rewardVideoADListener = new RewardVideoADListener() { // from class: com.windmill.gdt.GDTRewardVideoAdapter.1
                @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
                public final void onADClick() {
                    GDTRewardVideoAdapter.this.callVideoAdClick();
                }

                @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
                public final void onADClose() {
                    SigmobLog.i(GDTRewardVideoAdapter.this.getClass().getSimpleName() + " onADClose()");
                    if (GDTRewardVideoAdapter.this.f86056c) {
                        GDTRewardVideoAdapter.e(GDTRewardVideoAdapter.this);
                        GDTRewardVideoAdapter.this.callVideoAdClosed();
                    }
                }

                @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
                public final void onADExpose() {
                    SigmobLog.i(GDTRewardVideoAdapter.this.getClass().getSimpleName() + " onADExpose()");
                    GDTRewardVideoAdapter.this.callVideoAdShow();
                }

                @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
                public final void onADLoad() {
                    SigmobLog.i(GDTRewardVideoAdapter.this.getClass().getSimpleName() + " onADLoad()");
                    GDTRewardVideoAdapter.a(GDTRewardVideoAdapter.this);
                    if (GDTRewardVideoAdapter.this.f86055b != null && GDTRewardVideoAdapter.this.f86058e) {
                        GDTRewardVideoAdapter.this.f86055b.setDownloadConfirmListener(GDTAdapterProxy.DOWNLOAD_CONFIRM_LISTENER);
                    }
                    if (GDTRewardVideoAdapter.this.f86055b != null && GDTRewardVideoAdapter.this.getBiddingType() == 1) {
                        GDTRewardVideoAdapter.this.callLoadBiddingSuccess(new BidPrice(String.valueOf(GDTRewardVideoAdapter.this.f86055b.getECPM())));
                    }
                    GDTRewardVideoAdapter gDTRewardVideoAdapter = GDTRewardVideoAdapter.this;
                    gDTRewardVideoAdapter.callLoadSuccess(gDTRewardVideoAdapter.f86055b);
                }

                @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
                public final void onADShow() {
                    SigmobLog.i(GDTRewardVideoAdapter.this.getClass().getSimpleName() + " onADShow()");
                }

                @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
                public final void onError(AdError adError) {
                    SigmobLog.i(GDTRewardVideoAdapter.this.getClass().getSimpleName() + " onError " + adError.getErrorCode() + ":" + adError.getErrorMsg());
                    WMAdapterError wMAdapterError = new WMAdapterError(adError.getErrorCode(), GDTAdapterProxy.getDetailCode(adError.getErrorMsg()), adError.getErrorMsg());
                    if (GDTRewardVideoAdapter.this.f86057d) {
                        GDTRewardVideoAdapter.this.callVideoAdPlayError(wMAdapterError);
                    } else {
                        GDTRewardVideoAdapter.this.callLoadFail(wMAdapterError);
                    }
                }

                @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
                public final void onReward(Map<String, Object> map3) {
                    SigmobLog.i(AnonymousClass1.class.getSimpleName() + "---onReward:" + map3);
                    GDTRewardVideoAdapter.this.f86059f = map3;
                    GDTRewardVideoAdapter.this.callVideoAdRewardWithData(true, map3);
                }

                @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
                public final void onVideoCached() {
                    SigmobLog.i(GDTRewardVideoAdapter.this.getClass().getSimpleName() + " onVideoCached()");
                }

                @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
                public final void onVideoComplete() {
                    GDTRewardVideoAdapter.this.callVideoAdPlayComplete();
                }
            };
            if (getBiddingType() == 0) {
                this.f86055b = new RewardVideoAD(context, str, rewardVideoADListener, z10, getHbResponseStr());
            } else {
                this.f86055b = new RewardVideoAD(context, str, rewardVideoADListener, z10);
            }
            LoadAdParams loadAdParams = GdtUtil.getLoadAdParams(getClass(), map2);
            if (loadAdParams != null) {
                this.f86055b.setLoadAdParams(loadAdParams);
            }
            try {
                ServerSideVerificationOptions.Builder builder = new ServerSideVerificationOptions.Builder();
                builder.setUserId(getUserId());
                if (map != null) {
                    String strSerialize = JSONSerializer.Serialize(map);
                    SigmobLog.i(getClass().getSimpleName() + " json " + strSerialize);
                    builder.setCustomData(strSerialize);
                }
                this.f86055b.setServerSideVerificationOptions(builder.build());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f86055b.loadAD();
        } catch (Throwable th) {
            SigmobLog.i(getClass().getSimpleName() + " catch throwable " + th);
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        GdtNotifyBiddingResult.notifyBiddingResult(z10, map, this.f86055b, this);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onCreate(Activity activity) {
        String name = activity.getClass().getName();
        if (this.f86060g && this.f86056c && (activity instanceof ADActivity) && name.startsWith("com.qq.e.ads")) {
            SigmobLog.e(getClass().getSimpleName() + " onCreate " + activity.getClass().getName() + " id " + activity.hashCode());
            this.f86061h.add(new WeakReference<>(activity));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onDestroy(Activity activity) {
        try {
            String name = activity.getClass().getName();
            if (this.f86060g && (activity instanceof ADActivity) && name.startsWith("com.qq.e.ads")) {
                SigmobLog.e(getClass().getSimpleName() + " GDT onDestroy activity:" + activity.getClass().getSimpleName() + "-" + this.f86054a);
                Iterator<WeakReference<Activity>> it2 = this.f86061h.iterator();
                while (it2.hasNext()) {
                    if (activity.equals(it2.next().get())) {
                        SigmobLog.e(getClass().getSimpleName() + " remove " + activity.getClass().getName() + " id " + activity.hashCode());
                        it2.remove();
                        break;
                    }
                }
                if (this.f86056c && this.f86061h.isEmpty()) {
                    this.f86056c = false;
                    callVideoAdClosed();
                    this.f86060g = false;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomRewardAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        RewardVideoAD rewardVideoAD;
        try {
            if (map2.containsKey(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK)) {
                this.f86060g = map2.get(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK).equals("1");
            }
            if (!this.f86057d || (rewardVideoAD = this.f86055b) == null) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "rewardVideoAD is not isReady or is null"));
                return;
            }
            if (rewardVideoAD.hasShown()) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "此条广告已经展示过，请再次请求广告后进行广告展示！"));
                return;
            }
            if (!this.f86055b.isValid()) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "激励视频广告已过期，请再次请求广告后进行广告展示！"));
                return;
            }
            int biddingType = getBiddingType();
            if (biddingType == 0 || biddingType == 1) {
                try {
                    Object obj = map2.get("eCpm");
                    if (obj != null) {
                        this.f86055b.setBidECPM(WMBidUtil.parseInt(obj).intValue());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.f86056c = true;
            this.f86055b.showAD(activity);
        } catch (Throwable th) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
        }
    }

    static /* synthetic */ boolean a(GDTRewardVideoAdapter gDTRewardVideoAdapter) {
        gDTRewardVideoAdapter.f86057d = true;
        return true;
    }
}
