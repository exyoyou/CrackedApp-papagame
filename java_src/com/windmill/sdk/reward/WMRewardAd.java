package com.windmill.sdk.reward;

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
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class WMRewardAd implements k, t.a, t.b {
    private WeakReference<Activity> activityWeakReference;
    public AdStatus adOutStatus = AdStatus.AdStatusNone;
    private t controller;
    private e mActivityFilterModel;
    private f mAdFilterModel;
    private n mCustomGroupModel;
    private Handler mHandler;
    private WMRewardAdRequest mRequest;
    private g mWMAdSourceModel;
    private i mWMAutoAdLoadModel;
    private t nextController;
    private String placementId;
    private WMRewardAdListener wmRewardAdListener;

    public WMRewardAd(Activity activity, WMRewardAdRequest request) {
        this.placementId = "";
        if (activity != null) {
            this.activityWeakReference = new WeakReference<>(activity);
        }
        if (request != null && !TextUtils.isEmpty(request.getPlacementId())) {
            this.placementId = request.getPlacementId();
        }
        this.mRequest = request;
        this.mAdFilterModel = new f();
        this.mActivityFilterModel = new e();
        this.mHandler = WindMillAd.sharedAds().getHandler();
        this.mCustomGroupModel = new n();
        this.mWMAdSourceModel = new g();
        this.mWMAutoAdLoadModel = new i();
    }

    private Activity getActivity() {
        WeakReference<Activity> weakReference = this.activityWeakReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean privateLoadAd(WMRewardAdRequest request, boolean isAutoLoad) {
        try {
            WMRewardAdRequest wMRewardAdRequest = this.mRequest;
            if (request != null) {
                wMRewardAdRequest = new WMRewardAdRequest(request.getPlacementId(), request.getUserId(), request.getOptions());
            }
            this.mRequest.isLoadToOut = false;
            t tVar = this.controller;
            if (tVar == null) {
                tVar = new t(wMRewardAdRequest, this, this);
                this.controller = tVar;
            } else if (this.adOutStatus == AdStatus.AdStatusPlaying) {
                tVar = new t(wMRewardAdRequest, this, this);
                this.nextController = tVar;
            }
            if (tVar != null) {
                tVar.a(getActivity());
                WMLogUtil.d("WMRewardAd----loadAd " + tVar.hashCode() + " " + hashCode());
                tVar.a((WMAdSourceStatusListener) this.mWMAdSourceModel);
                tVar.a((AutoAdLoadListener) this.mWMAutoAdLoadModel);
                tVar.a((m) this.mCustomGroupModel);
                tVar.a((u) this.mAdFilterModel);
                tVar.a((d) this.mActivityFilterModel);
                tVar.a(wMRewardAdRequest, isAutoLoad);
            }
            return true;
        } catch (Throwable th) {
            WindMillError windMillError = WindMillError.ERROR_AD_REQUEST;
            PointEntityWMError pointEntityWMErrorWindError = PointEntityWMError.WindError("error", "load", windMillError.getErrorCode(), th.getMessage());
            pointEntityWMErrorWindError.setAdtype(String.valueOf(1));
            pointEntityWMErrorWindError.setPlacement_id(this.placementId);
            pointEntityWMErrorWindError.commit();
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
            tVar.a((WMAdSourceStatusListener) null);
            this.controller.a((m) null);
            this.controller.a((u) null);
            this.controller.a((AutoAdLoadListener) null);
            this.controller.a(true);
            this.controller = null;
        }
        t tVar2 = this.nextController;
        if (tVar2 != null) {
            tVar2.a((WMAdSourceStatusListener) null);
            this.nextController.a((m) null);
            this.nextController.a((u) null);
            this.nextController.a((AutoAdLoadListener) null);
            this.nextController.a(true);
            this.nextController = null;
        }
        if (this.mCustomGroupModel != null) {
            this.mCustomGroupModel = null;
        }
        i iVar = this.mWMAutoAdLoadModel;
        if (iVar != null) {
            iVar.a(null);
        }
        if (this.wmRewardAdListener != null) {
            this.wmRewardAdListener = null;
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

    public WMRewardAdRequest getRequest() {
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
            WindMillError windMillError = WindMillError.ERROR_AD_REQUEST;
            PointEntityWMError pointEntityWMErrorWindError = PointEntityWMError.WindError("error", "load", windMillError.getErrorCode(), th.getMessage());
            pointEntityWMErrorWindError.setAdtype(String.valueOf(1));
            pointEntityWMErrorWindError.setPlacement_id(this.placementId);
            pointEntityWMErrorWindError.commit();
            onVideoAdLoadFail(windMillError, this.placementId);
            return false;
        }
    }

    @Override // com.windmill.sdk.common.t.b
    public void onVideoAdClicked(AdInfo adInfo) {
        if (this.wmRewardAdListener != null) {
            WMLogUtil.i("---onVideoAdClicked |" + this.placementId);
            this.wmRewardAdListener.onVideoAdClicked(adInfo);
        }
    }

    @Override // com.windmill.sdk.common.t.b
    public void onVideoAdClosed(AdInfo adInfo) {
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
        if (this.wmRewardAdListener != null) {
            WMLogUtil.i("---onVideoAdClosed |" + this.placementId);
            this.wmRewardAdListener.onVideoAdClosed(adInfo);
        }
    }

    @Override // com.windmill.sdk.common.t.a
    public void onVideoAdLoadFail(final WindMillError error, final String placementId) {
        this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.reward.WMRewardAd.3
            @Override // java.lang.Runnable
            public void run() {
                if (WMRewardAd.this.wmRewardAdListener != null) {
                    WMLogUtil.i("---onVideoAdLoadFail " + error.toString() + "|" + placementId);
                    WMRewardAd.this.wmRewardAdListener.onVideoAdLoadError(error, placementId);
                }
            }
        });
    }

    @Override // com.windmill.sdk.common.t.a
    public void onVideoAdLoadSuccess(final String placementId) {
        this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.reward.WMRewardAd.1
            @Override // java.lang.Runnable
            public void run() {
                if (WMRewardAd.this.wmRewardAdListener != null) {
                    WMLogUtil.i(WMLogUtil.TAG, "---onVideoAdLoadSuccess |" + placementId);
                    WMRewardAd.this.wmRewardAdListener.onVideoAdLoadSuccess(placementId);
                }
            }
        });
    }

    @Override // com.windmill.sdk.common.t.b
    public void onVideoAdPlayEnd(AdInfo adInfo) {
        if (this.wmRewardAdListener != null) {
            WMLogUtil.i("---onVideoAdPlayEnd |" + this.placementId);
            this.wmRewardAdListener.onVideoAdPlayEnd(adInfo);
        }
    }

    @Override // com.windmill.sdk.common.t.b
    public void onVideoAdPlayError(final WindMillError error, final String placementId) {
        this.adOutStatus = AdStatus.AdStatusNone;
        this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.reward.WMRewardAd.4
            @Override // java.lang.Runnable
            public void run() {
                if (WMRewardAd.this.wmRewardAdListener != null) {
                    WMLogUtil.i(WMLogUtil.TAG, "onVideoAdPlayError " + error + "|" + placementId);
                    WMRewardAd.this.wmRewardAdListener.onVideoAdPlayError(error, placementId);
                }
            }
        });
    }

    @Override // com.windmill.sdk.common.t.b
    public void onVideoAdPlayStart(final AdInfo adInfo, final boolean hasAdShow) {
        this.adOutStatus = AdStatus.AdStatusPlaying;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("---onVideoAdPlayStart ");
        sb2.append(this.mHandler != null);
        sb2.append(this.wmRewardAdListener != null);
        WMLogUtil.i(sb2.toString());
        this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.reward.WMRewardAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (WMRewardAd.this.wmRewardAdListener != null) {
                    WMLogUtil.i("---onVideoAdPlayStart |" + WMRewardAd.this.placementId);
                    WMRewardAd.this.wmRewardAdListener.onVideoAdPlayStart(adInfo);
                }
                if (WMRewardAd.this.controller == null || !WMRewardAd.this.controller.i() || hasAdShow) {
                    return;
                }
                WMRewardAd wMRewardAd = WMRewardAd.this;
                wMRewardAd.privateLoadAd(wMRewardAd.mRequest, true);
            }
        });
    }

    @Override // com.windmill.sdk.common.t.b
    public void onVideoAdReward(AdInfo adInfo, WMRewardInfo rewardInfo) {
        if (this.wmRewardAdListener != null) {
            WMLogUtil.i("---onVideoAdReward |" + this.placementId);
            this.wmRewardAdListener.onVideoRewarded(adInfo, rewardInfo);
        }
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

    public void setAutoLoadListener(AutoAdLoadListener autoLoadListener) {
        i iVar = this.mWMAutoAdLoadModel;
        if (iVar != null) {
            iVar.a(autoLoadListener);
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

    public void setRewardedAdListener(WMRewardAdListener rewardAdListener) {
        this.wmRewardAdListener = rewardAdListener;
    }

    public boolean show(Activity activity, HashMap<String, String> options) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getClass().getSimpleName());
            sb2.append("----showAd ");
            sb2.append(activity != null);
            sb2.append(" ");
            sb2.append(options != null);
            WMLogUtil.i(sb2.toString());
            if (activity == null) {
                WMLogUtil.e("activity can't is null");
                WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                PointEntityWMError pointEntityWMErrorWindError = PointEntityWMError.WindError("error", "play", windMillError.getErrorCode(), "activity can't is null");
                pointEntityWMErrorWindError.setAdtype(String.valueOf(1));
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
            WMLogUtil.e("can't find controller object");
            WindMillError windMillError2 = WindMillError.ERROR_AD_NOT_READY;
            PointEntityWMError pointEntityWMErrorWindError2 = PointEntityWMError.WindError("error", "play", windMillError2.getErrorCode(), "can't find  controller object");
            pointEntityWMErrorWindError2.setAdtype(String.valueOf(1));
            pointEntityWMErrorWindError2.setPlacement_id(this.placementId);
            pointEntityWMErrorWindError2.commit();
            onVideoAdPlayError(windMillError2, this.placementId);
            return false;
        } catch (Throwable th) {
            PointEntityWMError pointEntityWMErrorWindError3 = PointEntityWMError.WindError("error", "play", WindMillError.ERROR_AD_REQUEST.getErrorCode(), th.getMessage());
            pointEntityWMErrorWindError3.setAdtype(String.valueOf(1));
            pointEntityWMErrorWindError3.setPlacement_id(this.placementId);
            pointEntityWMErrorWindError3.commit();
            WMLogUtil.e("show Ad catch throwable " + th.getMessage());
        }
    }
}
