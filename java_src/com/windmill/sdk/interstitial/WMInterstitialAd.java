package com.windmill.sdk.interstitial;

import android.app.Activity;
import android.os.Handler;
import android.text.TextUtils;
import com.czhj.sdk.common.models.AdStatus;
import com.windmill.sdk.WMAdFilter;
import com.windmill.sdk.WMAdSourceStatusListener;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.AutoAdLoadListener;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.common.d;
import com.windmill.sdk.common.e;
import com.windmill.sdk.common.f;
import com.windmill.sdk.common.g;
import com.windmill.sdk.common.i;
import com.windmill.sdk.common.k;
import com.windmill.sdk.common.m;
import com.windmill.sdk.common.n;
import com.windmill.sdk.common.t;
import com.windmill.sdk.common.u;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.point.PointEntityWMError;
import com.windmill.sdk.reward.WMRewardInfo;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class WMInterstitialAd implements k, t.a, t.b {
    private WeakReference<Activity> activityWeakReference;
    public AdStatus adOutStatus = AdStatus.AdStatusNone;
    private t controller;
    private e mActivityFilterModel;
    private f mAdFilterModel;
    private n mCustomGroupModel;
    private Handler mHandler;
    private WMInterstitialAdRequest mRequest;
    private g mWMAdSourceModel;
    private i mWMAutoAdLoadModel;
    private t nextController;
    private String placementId;
    private WMInterstitialAdListener wmInterstitialAdListener;

    public WMInterstitialAd(Activity activity, WMInterstitialAdRequest request) {
        this.placementId = "";
        if (request != null && !TextUtils.isEmpty(request.getPlacementId())) {
            this.placementId = request.getPlacementId();
        }
        if (activity != null) {
            this.activityWeakReference = new WeakReference<>(activity);
        }
        this.mRequest = request;
        this.mCustomGroupModel = new n();
        this.mAdFilterModel = new f();
        this.mActivityFilterModel = new e();
        this.mWMAdSourceModel = new g();
        this.mWMAutoAdLoadModel = new i();
        this.mHandler = WindMillAd.sharedAds().getHandler();
    }

    private Activity getActivity() {
        WeakReference<Activity> weakReference = this.activityWeakReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private boolean privateLoadAd(WMInterstitialAdRequest request, boolean isAutoLoad) {
        try {
            this.mRequest.isLoadToOut = false;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("-----WMInterstitialAd--loadAd ");
            sb2.append(this.controller == null);
            sb2.append(" adOutStatus: ");
            sb2.append(this.adOutStatus);
            sb2.append("  ");
            sb2.append(hashCode());
            WMLogUtil.i(sb2.toString());
            t tVar = this.controller;
            if (tVar == null) {
                tVar = new t(request, this, this);
                this.controller = tVar;
            } else if (this.adOutStatus == AdStatus.AdStatusPlaying) {
                tVar = new t(request, this, this);
                this.nextController = tVar;
            }
            if (tVar != null) {
                tVar.a((WMAdSourceStatusListener) this.mWMAdSourceModel);
                tVar.a((AutoAdLoadListener) this.mWMAutoAdLoadModel);
                tVar.a((m) this.mCustomGroupModel);
                tVar.a((u) this.mAdFilterModel);
                tVar.a((d) this.mActivityFilterModel);
                tVar.a(getActivity());
                tVar.a(request, isAutoLoad);
            }
            return true;
        } catch (Throwable th) {
            WindMillError windMillError = WindMillError.ERROR_AD_REQUEST;
            PointEntityWMError pointEntityWMErrorWindError = PointEntityWMError.WindError("error", "load", windMillError.getErrorCode(), th.getMessage());
            pointEntityWMErrorWindError.setAdtype(String.valueOf(4));
            pointEntityWMErrorWindError.setPlacement_id(this.placementId);
            pointEntityWMErrorWindError.commit();
            WMLogUtil.e("load Ad catch error " + th.getMessage());
            onVideoAdLoadFail(windMillError, request.getPlacementId());
            return false;
        }
    }

    public List<AdInfo> checkValidAdCaches() {
        t tVar = this.controller;
        if (tVar != null) {
            return tVar.e();
        }
        return null;
    }

    public void destroy() {
        t tVar = this.controller;
        if (tVar != null) {
            tVar.a((m) null);
            this.controller.a((WMAdSourceStatusListener) null);
            this.controller.a((u) null);
            this.controller.a((AutoAdLoadListener) null);
            this.controller.a(true);
        }
        t tVar2 = this.nextController;
        if (tVar2 != null) {
            tVar2.a((WMAdSourceStatusListener) null);
            this.nextController.a((m) null);
            this.nextController.a((u) null);
            this.nextController.a((AutoAdLoadListener) null);
            this.nextController.a(false);
        }
        if (this.mCustomGroupModel != null) {
            this.mCustomGroupModel = null;
        }
        i iVar = this.mWMAutoAdLoadModel;
        if (iVar != null) {
            iVar.a(null);
        }
        if (this.wmInterstitialAdListener != null) {
            this.wmInterstitialAdListener = null;
        }
    }

    public AdInfo getAdInfo() {
        t tVar = this.nextController;
        if (tVar != null && tVar.c()) {
            return this.nextController.d();
        }
        t tVar2 = this.controller;
        if (tVar2 == null || !tVar2.c()) {
            return null;
        }
        return this.controller.d();
    }

    public String getLoadFailMessages() {
        t tVar = this.controller;
        return tVar != null ? tVar.o() : "";
    }

    public WMInterstitialAdRequest getRequest() {
        return this.mRequest;
    }

    public boolean isReady() {
        t tVar = this.controller;
        if (tVar != null) {
            return tVar.c();
        }
        return false;
    }

    public boolean loadAd() {
        try {
            return privateLoadAd(this.mRequest, false);
        } catch (Throwable th) {
            WMLogUtil.e("load Ad catch error " + th.getMessage());
            WindMillError windMillError = WindMillError.ERROR_AD_REQUEST;
            PointEntityWMError pointEntityWMErrorWindError = PointEntityWMError.WindError("error", "load", windMillError.getErrorCode(), th.getMessage());
            pointEntityWMErrorWindError.setAdtype(String.valueOf(4));
            pointEntityWMErrorWindError.setPlacement_id(this.placementId);
            pointEntityWMErrorWindError.commit();
            onVideoAdLoadFail(windMillError, this.placementId);
            return false;
        }
    }

    @Override // com.windmill.sdk.common.t.b
    public void onVideoAdClicked(final AdInfo adInfo) {
        this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.interstitial.WMInterstitialAd.4
            @Override // java.lang.Runnable
            public void run() {
                if (WMInterstitialAd.this.wmInterstitialAdListener != null) {
                    WMLogUtil.i(WMLogUtil.TAG, "onVideoAdClicked |" + WMInterstitialAd.this.placementId);
                    WMInterstitialAd.this.wmInterstitialAdListener.onInterstitialAdClicked(adInfo);
                }
            }
        });
    }

    @Override // com.windmill.sdk.common.t.b
    public void onVideoAdClosed(final AdInfo adInfo) {
        this.adOutStatus = AdStatus.AdStatusClose;
        if (this.nextController != null) {
            t tVar = this.controller;
            if (tVar != null) {
                tVar.a((WMAdSourceStatusListener) null);
                this.controller.a(false);
            }
            this.controller = this.nextController;
            this.nextController = null;
        }
        this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.interstitial.WMInterstitialAd.5
            @Override // java.lang.Runnable
            public void run() {
                if (WMInterstitialAd.this.wmInterstitialAdListener != null) {
                    WMLogUtil.i(WMLogUtil.TAG, "onVideoAdClosed |" + WMInterstitialAd.this.placementId);
                    WMInterstitialAd.this.wmInterstitialAdListener.onInterstitialAdClosed(adInfo);
                }
            }
        });
    }

    @Override // com.windmill.sdk.common.t.a
    public void onVideoAdLoadFail(final WindMillError error, final String placementId) {
        this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.interstitial.WMInterstitialAd.6
            @Override // java.lang.Runnable
            public void run() {
                if (WMInterstitialAd.this.wmInterstitialAdListener != null) {
                    WMLogUtil.i(WMLogUtil.TAG, "onVideoAdLoadFail " + error.toString() + "|" + placementId);
                    WMInterstitialAd.this.wmInterstitialAdListener.onInterstitialAdLoadError(error, placementId);
                }
            }
        });
    }

    @Override // com.windmill.sdk.common.t.a
    public void onVideoAdLoadSuccess(final String placementId) {
        this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.interstitial.WMInterstitialAd.1
            @Override // java.lang.Runnable
            public void run() {
                if (WMInterstitialAd.this.wmInterstitialAdListener != null) {
                    WMLogUtil.i(WMLogUtil.TAG, "---onVideoAdLoadSuccess |" + placementId);
                    WMInterstitialAd.this.wmInterstitialAdListener.onInterstitialAdLoadSuccess(placementId);
                }
            }
        });
    }

    @Override // com.windmill.sdk.common.t.b
    public void onVideoAdPlayEnd(final AdInfo adInfo) {
        this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.interstitial.WMInterstitialAd.3
            @Override // java.lang.Runnable
            public void run() {
                if (WMInterstitialAd.this.wmInterstitialAdListener != null) {
                    WMLogUtil.i(WMLogUtil.TAG, "onVideoAdPlayEnd |" + WMInterstitialAd.this.placementId);
                    WMInterstitialAd.this.wmInterstitialAdListener.onInterstitialAdPlayEnd(adInfo);
                }
            }
        });
    }

    @Override // com.windmill.sdk.common.t.b
    public void onVideoAdPlayError(final WindMillError error, final String placementId) {
        this.adOutStatus = AdStatus.AdStatusNone;
        this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.interstitial.WMInterstitialAd.7
            @Override // java.lang.Runnable
            public void run() {
                if (WMInterstitialAd.this.wmInterstitialAdListener != null) {
                    WMLogUtil.i(WMLogUtil.TAG, "onVideoAdPlayError " + error + "|" + placementId);
                    WMInterstitialAd.this.wmInterstitialAdListener.onInterstitialAdPlayError(error, placementId);
                }
            }
        });
    }

    @Override // com.windmill.sdk.common.t.b
    public void onVideoAdPlayStart(final AdInfo adInfo, boolean hasAdShow) {
        try {
            this.adOutStatus = AdStatus.AdStatusPlaying;
            this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.interstitial.WMInterstitialAd.2
                @Override // java.lang.Runnable
                public void run() {
                    if (WMInterstitialAd.this.wmInterstitialAdListener != null) {
                        WMLogUtil.i(WMLogUtil.TAG, "onVideoAdPlayStart |" + WMInterstitialAd.this.placementId);
                        WMInterstitialAd.this.wmInterstitialAdListener.onInterstitialAdPlayStart(adInfo);
                    }
                }
            });
            t tVar = this.controller;
            if (tVar == null || !tVar.i()) {
                return;
            }
            privateLoadAd(this.mRequest, true);
        } catch (Exception unused) {
        }
    }

    @Override // com.windmill.sdk.common.t.b
    public void onVideoAdReward(AdInfo adInfo, WMRewardInfo rewardInfo) {
    }

    @Override // com.windmill.sdk.common.k
    public void setActivityChannelFilterList(Set<Integer> channelIds) {
        e eVar = this.mActivityFilterModel;
        if (eVar != null) {
            eVar.a(channelIds);
        }
    }

    public void setAdSourceStatusListener(WMAdSourceStatusListener listener) {
        g gVar = this.mWMAdSourceModel;
        if (gVar != null) {
            gVar.a(listener);
        }
    }

    public void setAutoLoadListener(AutoAdLoadListener mAutoAdLoadListener) {
        i iVar = this.mWMAutoAdLoadModel;
        if (iVar != null) {
            iVar.a(mAutoAdLoadListener);
        }
    }

    @Override // com.windmill.sdk.common.k
    public void setCustomGroup(HashMap<String, String> customGroup) {
        n nVar = this.mCustomGroupModel;
        if (nVar != null) {
            nVar.a(customGroup);
        }
    }

    @Override // com.windmill.sdk.common.k
    public void setFilter(WMAdFilter filter) {
        f fVar = this.mAdFilterModel;
        if (fVar != null) {
            fVar.a(filter);
        }
    }

    public void setInterstitialAdListener(WMInterstitialAdListener interstitialAdListener) {
        this.wmInterstitialAdListener = interstitialAdListener;
    }

    public boolean show(Activity activity, HashMap<String, String> options) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("----WMInterstitialAd--showAd ");
            sb2.append(activity != null);
            sb2.append(" ");
            sb2.append(options != null);
            WMLogUtil.i(sb2.toString());
            if (activity == null) {
                WMLogUtil.e("activity can't is null");
                WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                PointEntityWMError pointEntityWMErrorWindError = PointEntityWMError.WindError("error", "play", windMillError.getErrorCode(), "activity can't is null");
                pointEntityWMErrorWindError.setAdtype(String.valueOf(4));
                pointEntityWMErrorWindError.setPlacement_id(this.placementId);
                pointEntityWMErrorWindError.commit();
                onVideoAdPlayError(windMillError, this.placementId);
                return false;
            }
            this.activityWeakReference = new WeakReference<>(activity);
            AdStatus adStatus = this.adOutStatus;
            AdStatus adStatus2 = AdStatus.AdStatusPlaying;
            if (adStatus == adStatus2) {
                onVideoAdPlayError(WindMillError.ERROR_AD_LOAD_FAIL_PLAYING, this.placementId);
                return false;
            }
            this.adOutStatus = adStatus2;
            t tVar = this.controller;
            if (tVar != null) {
                tVar.a(activity, options);
                return true;
            }
            WMLogUtil.e("can't find  controller object");
            WindMillError windMillError2 = WindMillError.ERROR_AD_NOT_READY;
            PointEntityWMError pointEntityWMErrorWindError2 = PointEntityWMError.WindError("error", "play", windMillError2.getErrorCode(), "can't find  controller object");
            pointEntityWMErrorWindError2.setAdtype(String.valueOf(4));
            pointEntityWMErrorWindError2.setPlacement_id(this.placementId);
            pointEntityWMErrorWindError2.commit();
            onVideoAdLoadFail(windMillError2, this.placementId);
            return false;
        } catch (Throwable th) {
            PointEntityWMError pointEntityWMErrorWindError3 = PointEntityWMError.WindError("error", "play", WindMillError.ERROR_AD_REQUEST.getErrorCode(), th.getMessage());
            pointEntityWMErrorWindError3.setAdtype(String.valueOf(4));
            pointEntityWMErrorWindError3.setPlacement_id(this.placementId);
            pointEntityWMErrorWindError3.commit();
            WMLogUtil.e("show Ad catch error " + th.getMessage());
        }
    }
}
