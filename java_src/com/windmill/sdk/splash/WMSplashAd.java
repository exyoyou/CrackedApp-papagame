package com.windmill.sdk.splash;

import android.app.Activity;
import android.view.ViewGroup;
import com.czhj.sdk.common.models.AdStatus;
import com.windmill.sdk.WMAdFilter;
import com.windmill.sdk.WMAdSourceStatusListener;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.AutoAdLoadListener;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.common.e;
import com.windmill.sdk.common.f;
import com.windmill.sdk.common.g;
import com.windmill.sdk.common.i;
import com.windmill.sdk.common.k;
import com.windmill.sdk.common.n;
import com.windmill.sdk.common.s;
import com.windmill.sdk.common.u;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.strategy.a;
import com.windmill.sdk.utils.m;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class WMSplashAd implements k, s.a {
    private WeakReference<Activity> activityWeakReference;
    private AutoAdLoadListener autoAdLoadListener;
    private WMSplashAdRequest mRequest;
    private WMSplashAdListener mSplashADListener;
    private s mSplashAdController;
    private s nextController;
    private AdStatus adOutStatus = AdStatus.AdStatusNone;
    private boolean isAutoLoad = false;
    private String tag = "WMSplashAd";
    private boolean isLoadAndShow = false;
    private n mCustomGroupModel = new n();
    private f mAdFilterModel = new f();
    private e mActivityFilterModel = new e();
    private g mWMAdSourceModel = new g();
    private i mWMAutoAdLoadModel = new i();

    public WMSplashAd(Activity activity, WMSplashAdRequest adRequest, WMSplashAdListener adListener) {
        this.mSplashADListener = adListener;
        this.mRequest = adRequest;
        this.activityWeakReference = new WeakReference<>(activity);
    }

    private Activity getActivity() {
        WeakReference<Activity> weakReference = this.activityWeakReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private s isNextControllerReady(ViewGroup adContainer) {
        s sVar = this.nextController;
        if (sVar == null || !sVar.b()) {
            return null;
        }
        s sVar2 = this.nextController;
        this.mSplashAdController = sVar2;
        sVar2.a(getActivity(), this);
        if (adContainer != null) {
            this.mSplashAdController.b(adContainer);
        }
        this.mRequest.setRefreshRequest(true);
        return this.nextController;
    }

    private void logError(String event_type, int code, String message) {
        try {
            m.a("error", event_type, null, null, null, code, "", message, null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void privateLoadAd(ViewGroup adContainer, boolean isAutoLoad) {
        WMSplashAdRequest wMSplashAdRequest;
        try {
            this.isAutoLoad = isAutoLoad;
            boolean z10 = false;
            this.mRequest.isLoadToOut = false;
            s sVarIsNextControllerReady = isNextControllerReady(adContainer);
            s sVar = this.mSplashAdController;
            if (sVar == null) {
                if (sVarIsNextControllerReady == null) {
                    sVarIsNextControllerReady = this.nextController;
                    if (sVarIsNextControllerReady == null || sVarIsNextControllerReady.f86721a != AdStatus.AdStatusLoading) {
                        sVarIsNextControllerReady = new s(getActivity(), this.mRequest, this);
                        this.mSplashAdController = sVarIsNextControllerReady;
                        this.mRequest.setRefreshRequest(false);
                    } else {
                        this.mSplashAdController = sVarIsNextControllerReady;
                        sVarIsNextControllerReady.a(getActivity(), this);
                        if (adContainer != null) {
                            this.mSplashAdController.b(adContainer);
                        }
                    }
                }
            } else if (this.adOutStatus == AdStatus.AdStatusClose && this.nextController == null && isAutoLoad) {
                sVarIsNextControllerReady = new s(getActivity(), this.mRequest, this);
                this.nextController = sVarIsNextControllerReady;
                this.mRequest.setRefreshRequest(true);
            } else if (sVarIsNextControllerReady == null) {
                if (isAutoLoad) {
                    sVarIsNextControllerReady = new s(getActivity(), this.mRequest, this);
                    this.nextController = sVarIsNextControllerReady;
                    this.mRequest.setRefreshRequest(true);
                } else {
                    this.mRequest.setRefreshRequest(false);
                    sVarIsNextControllerReady = sVar;
                }
            }
            if (sVarIsNextControllerReady != null) {
                sVarIsNextControllerReady.a(this.mWMAdSourceModel);
                sVarIsNextControllerReady.a(this.mCustomGroupModel);
                sVarIsNextControllerReady.a(this.mAdFilterModel);
                sVarIsNextControllerReady.a(this.mActivityFilterModel);
                sVarIsNextControllerReady.a(getActivity());
                if (sVarIsNextControllerReady.f86721a != AdStatus.AdStatusLoading) {
                    sVarIsNextControllerReady.a(this.isLoadAndShow && !isAutoLoad);
                    if (isAutoLoad || ((wMSplashAdRequest = this.mRequest) != null && wMSplashAdRequest.isRefreshRequest)) {
                        z10 = true;
                    }
                    sVarIsNextControllerReady.a(adContainer, z10);
                    sVarIsNextControllerReady.a(this.mWMAutoAdLoadModel);
                    WMLogUtil.d("----WMSplashAd----loadAd: " + sVarIsNextControllerReady.hashCode() + " " + hashCode());
                }
            }
        } catch (Throwable th) {
            WMLogUtil.i(this.tag + "------privateLoadAd Throwable " + th.getMessage());
            WMSplashAdListener wMSplashAdListener = this.mSplashADListener;
            if (wMSplashAdListener != null) {
                WindMillError windMillError = WindMillError.ERROR_AD_REQUEST;
                wMSplashAdListener.onSplashAdFailToLoad(windMillError, "");
                logError("load", windMillError.getErrorCode(), "loadAdAndShow catch throwable:" + th.getMessage());
            }
        }
    }

    public List<AdInfo> checkValidAdCaches() {
        s sVar = this.mSplashAdController;
        if (sVar != null) {
            return sVar.e();
        }
        return null;
    }

    public void destroy() {
        try {
            s sVar = this.mSplashAdController;
            if (sVar != null) {
                sVar.a((Activity) null, (s.a) null);
                this.mSplashAdController.a((WMAdSourceStatusListener) null);
                this.mSplashAdController.a((com.windmill.sdk.common.m) null);
                this.mSplashAdController.a((u) null);
                this.mSplashAdController.a((AutoAdLoadListener) null);
                this.mSplashAdController.a((s.a) null);
                this.mSplashAdController.a(true, (a) null);
            }
            s sVar2 = this.nextController;
            if (sVar2 != null) {
                sVar2.a((Activity) null, (s.a) null);
                this.nextController.a((WMAdSourceStatusListener) null);
                this.nextController.a((com.windmill.sdk.common.m) null);
                this.nextController.a((u) null);
                this.nextController.a((AutoAdLoadListener) null);
                this.nextController.a((s.a) null);
                this.nextController.a(true, (a) null);
            }
            if (this.mCustomGroupModel != null) {
                this.mCustomGroupModel = null;
            }
            i iVar = this.mWMAutoAdLoadModel;
            if (iVar != null) {
                iVar.a(null);
            }
            this.mSplashADListener = null;
            this.mSplashAdController = null;
            this.autoAdLoadListener = null;
        } catch (Throwable th) {
            WMLogUtil.e(this.tag, "destroy: " + th.getMessage());
        }
    }

    public AdInfo getAdInfo() {
        s sVar = this.nextController;
        if (sVar != null && sVar.b()) {
            return this.nextController.c();
        }
        s sVar2 = this.mSplashAdController;
        if (sVar2 == null || !sVar2.b()) {
            return null;
        }
        return this.mSplashAdController.c();
    }

    public String getLoadFailMessages() {
        s sVar = this.mSplashAdController;
        return sVar != null ? sVar.o() : "";
    }

    public boolean isReady() {
        try {
            s sVar = this.nextController;
            if (sVar != null && sVar.b()) {
                this.mSplashAdController = this.nextController;
            }
            s sVar2 = this.mSplashAdController;
            if (sVar2 != null) {
                return sVar2.b();
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public void loadAdAndShow(ViewGroup adContainer) {
        this.isLoadAndShow = true;
        privateLoadAd(adContainer, false);
    }

    public void loadAdOnly() {
        this.isLoadAndShow = false;
        privateLoadAd(null, false);
    }

    public void loadWaterfall() {
        try {
            s sVar = this.mSplashAdController;
            if (sVar != null) {
                sVar.d();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.common.s.a
    public void onSplashAdClicked(AdInfo adInfo) {
        WMSplashAdListener wMSplashAdListener = this.mSplashADListener;
        if (wMSplashAdListener != null) {
            wMSplashAdListener.onSplashAdClicked(adInfo);
        }
    }

    @Override // com.windmill.sdk.common.s.a
    public void onSplashAdFailToLoad(final WindMillError error, final String placementId, boolean isAutoLoad) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.tag);
        sb2.append("----onSplashAdFailToLoad ");
        sb2.append(isAutoLoad);
        sb2.append(" ");
        sb2.append(this.adOutStatus);
        sb2.append(this.mSplashADListener != null);
        WMLogUtil.i(sb2.toString());
        if (isAutoLoad && this.adOutStatus == AdStatus.AdStatusPlaying) {
            AutoAdLoadListener autoAdLoadListener = this.autoAdLoadListener;
            if (autoAdLoadListener != null) {
                autoAdLoadListener.onAutoAdLoadFail(error, placementId);
            }
        } else if (WindMillAd.isMainUI()) {
            WMSplashAdListener wMSplashAdListener = this.mSplashADListener;
            if (wMSplashAdListener != null) {
                wMSplashAdListener.onSplashAdFailToLoad(error, placementId);
            }
        } else {
            WindMillAd.sharedAds().getHandler().post(new Runnable() { // from class: com.windmill.sdk.splash.WMSplashAd.3
                @Override // java.lang.Runnable
                public void run() {
                    if (WMSplashAd.this.mSplashADListener != null) {
                        WMSplashAd.this.mSplashADListener.onSplashAdFailToLoad(error, placementId);
                    }
                }
            });
        }
        this.adOutStatus = AdStatus.AdStatusNone;
    }

    @Override // com.windmill.sdk.common.s.a
    public void onSplashAdFailToPresent(final WindMillError error, final String placementId) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.tag);
        sb2.append("-----WMSplashAd onSplashAdFailToPresent ");
        sb2.append(this.isAutoLoad);
        sb2.append(" mainUI ");
        sb2.append(WindMillAd.isMainUI());
        sb2.append(" ");
        sb2.append(this.mSplashADListener != null);
        sb2.append(" ");
        sb2.append(this.autoAdLoadListener != null);
        WMLogUtil.i(sb2.toString());
        if (WindMillAd.isMainUI()) {
            WMSplashAdListener wMSplashAdListener = this.mSplashADListener;
            if (wMSplashAdListener != null) {
                wMSplashAdListener.onSplashAdFailToPresent(error, placementId);
            }
        } else {
            WindMillAd.sharedAds().getHandler().post(new Runnable() { // from class: com.windmill.sdk.splash.WMSplashAd.1
                @Override // java.lang.Runnable
                public void run() {
                    if (WMSplashAd.this.mSplashADListener != null) {
                        WMSplashAd.this.mSplashADListener.onSplashAdFailToPresent(error, placementId);
                    }
                }
            });
        }
        this.adOutStatus = AdStatus.AdStatusNone;
    }

    @Override // com.windmill.sdk.common.s.a
    public void onSplashAdSuccessLoad(final String placementId) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.tag);
        sb2.append("-----WMSplashAd onSplashAdSuccessLoad ");
        sb2.append(this.isAutoLoad);
        sb2.append(" mainUI ");
        sb2.append(WindMillAd.isMainUI());
        sb2.append(" ");
        sb2.append(this.mSplashADListener != null);
        sb2.append(" ");
        sb2.append(this.autoAdLoadListener != null);
        WMLogUtil.i(sb2.toString());
        if (this.isAutoLoad) {
            AutoAdLoadListener autoAdLoadListener = this.autoAdLoadListener;
            if (autoAdLoadListener != null) {
                autoAdLoadListener.onAutoAdLoadSuccess(placementId);
                return;
            }
            return;
        }
        if (!WindMillAd.isMainUI()) {
            WindMillAd.sharedAds().getHandler().post(new Runnable() { // from class: com.windmill.sdk.splash.WMSplashAd.2
                @Override // java.lang.Runnable
                public void run() {
                    if (WMSplashAd.this.mSplashADListener != null) {
                        WMSplashAd.this.mSplashADListener.onSplashAdSuccessLoad(placementId);
                    }
                }
            });
            return;
        }
        WMSplashAdListener wMSplashAdListener = this.mSplashADListener;
        if (wMSplashAdListener != null) {
            wMSplashAdListener.onSplashAdSuccessLoad(placementId);
        }
    }

    @Override // com.windmill.sdk.common.s.a
    public void onSplashAdSuccessPresent(AdInfo adInfo) {
        this.adOutStatus = AdStatus.AdStatusPlaying;
        WMSplashAdListener wMSplashAdListener = this.mSplashADListener;
        if (wMSplashAdListener != null) {
            wMSplashAdListener.onSplashAdSuccessPresent(adInfo);
        }
    }

    @Override // com.windmill.sdk.common.s.a
    public void onSplashClosed(AdInfo adInfo, IWMSplashEyeAd splashEyeAd) {
        this.adOutStatus = AdStatus.AdStatusClose;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.tag);
        sb2.append("-------onSplashClosed ");
        sb2.append(this.mSplashADListener != null);
        s sVar = this.mSplashAdController;
        sb2.append(sVar != null ? Boolean.valueOf(sVar.i()) : "F");
        WMLogUtil.i(sb2.toString());
        s sVar2 = this.mSplashAdController;
        if (sVar2 != null && sVar2.i()) {
            privateLoadAd(null, true);
        }
        WMSplashAdListener wMSplashAdListener = this.mSplashADListener;
        if (wMSplashAdListener != null) {
            wMSplashAdListener.onSplashClosed(adInfo, splashEyeAd);
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

    public void setAutoAdLoadListener(AutoAdLoadListener mAutoAdLoadListener) {
        this.autoAdLoadListener = mAutoAdLoadListener;
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

    public void setSplashADListener(WMSplashAdListener listener) {
        this.mSplashADListener = listener;
    }

    public void showAd(ViewGroup adContainer) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.tag);
            sb2.append("-----showAd: ");
            sb2.append(this.mSplashAdController != null);
            sb2.append(" ");
            sb2.append(this.mSplashAdController.hashCode());
            WMLogUtil.i(sb2.toString());
            s sVar = this.nextController;
            if (sVar != null && sVar.b()) {
                this.mSplashAdController = this.nextController;
            }
            s sVar2 = this.mSplashAdController;
            if (sVar2 != null) {
                sVar2.a(adContainer);
            }
        } catch (Throwable th) {
            WMLogUtil.i(this.tag + "-----showAd:Throwable " + th.getMessage());
            th.printStackTrace();
        }
    }

    public WMSplashAd(Activity activity, WMSplashAdRequest adRequest) {
        this.mRequest = adRequest;
        this.activityWeakReference = new WeakReference<>(activity);
    }
}
