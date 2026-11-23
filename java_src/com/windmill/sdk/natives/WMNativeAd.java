package com.windmill.sdk.natives;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.windmill.sdk.WMAdFilter;
import com.windmill.sdk.WMAdSourceStatusListener;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.AutoAdLoadListener;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.common.e;
import com.windmill.sdk.common.f;
import com.windmill.sdk.common.g;
import com.windmill.sdk.common.i;
import com.windmill.sdk.common.k;
import com.windmill.sdk.common.m;
import com.windmill.sdk.common.n;
import com.windmill.sdk.common.p;
import com.windmill.sdk.common.u;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.point.PointEntityWMError;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class WMNativeAd implements k, p.a {
    private WeakReference<Activity> activityWeakReference;
    private p controller;
    private e mActivityFilterModel;
    private f mAdFilterModel;
    private n mCustomGroupModel;
    private Handler mHandler;
    private WMNativeAdRequest mRequest;
    private g mWMAdSourceModel;
    private i mWMAutoAdLoadModel;
    private NativeAdLoadListener nativeAdLoadListener;
    private p nextController;
    private String placementId;

    public interface NativeAdLoadListener {
        void onError(WindMillError error, String placementId);

        void onFeedAdLoad(String placementId);
    }

    public WMNativeAd(Context context, WMNativeAdRequest request) {
        this.placementId = "";
        if (context instanceof Activity) {
            this.activityWeakReference = new WeakReference<>((Activity) context);
        }
        if (request != null && !TextUtils.isEmpty(request.getPlacementId())) {
            this.placementId = request.getPlacementId();
        }
        this.mRequest = request;
        this.mCustomGroupModel = new n();
        this.mWMAdSourceModel = new g();
        this.mAdFilterModel = new f();
        this.mWMAutoAdLoadModel = new i();
        this.mActivityFilterModel = new e();
        this.mHandler = WindMillAd.sharedAds().getHandler();
    }

    private Activity getActivity() {
        WeakReference<Activity> weakReference = this.activityWeakReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private boolean privateLoadAd(WMNativeAdRequest request) {
        try {
            this.mRequest.isLoadToOut = false;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("----NativeAd-----privateLoadAd ");
            sb2.append(this.controller != null);
            sb2.append(" ");
            sb2.append(this.nextController != null);
            sb2.append(" ");
            sb2.append(hashCode());
            WMLogUtil.i(sb2.toString());
            p pVar = this.nextController;
            if (pVar != null) {
                this.controller = pVar;
                this.nextController = null;
                onVideoAdLoadSuccess(pVar.d(), request.getPlacementId());
            } else {
                if (this.controller == null) {
                    this.controller = new p(request, this);
                }
                this.controller.a(getActivity());
                this.controller.a(this.mCustomGroupModel);
                this.controller.a(this.mAdFilterModel);
                this.controller.a(this.mActivityFilterModel);
                this.controller.a(this.mWMAdSourceModel);
                this.controller.a((WindMillAdRequest) request, false);
            }
            return true;
        } catch (Throwable th) {
            WindMillError windMillError = WindMillError.ERROR_AD_REQUEST;
            PointEntityWMError pointEntityWMErrorWindError = PointEntityWMError.WindError("error", "load", windMillError.getErrorCode(), th.getMessage());
            pointEntityWMErrorWindError.setAdtype(String.valueOf(5));
            pointEntityWMErrorWindError.setPlacement_id(this.placementId);
            pointEntityWMErrorWindError.commit();
            onVideoAdLoadFail(windMillError, request.getPlacementId());
            return false;
        }
    }

    public List<AdInfo> checkValidAdCaches() {
        p pVar = this.controller;
        if (pVar != null) {
            return pVar.e();
        }
        return null;
    }

    public void destroy() {
        p pVar = this.controller;
        if (pVar != null) {
            pVar.a((WMAdSourceStatusListener) null);
            this.controller.a((m) null);
            this.controller.a((u) null);
            this.controller.a((AutoAdLoadListener) null);
            this.controller.a(true);
            this.controller = null;
        }
        p pVar2 = this.nextController;
        if (pVar2 != null) {
            pVar2.a((WMAdSourceStatusListener) null);
            this.nextController.a((m) null);
            this.nextController.a((u) null);
            this.nextController.a((AutoAdLoadListener) null);
            this.nextController.a(true);
            this.nextController = null;
        }
        i iVar = this.mWMAutoAdLoadModel;
        if (iVar != null) {
            iVar.a(null);
        }
    }

    public AdInfo getAdInfo() {
        p pVar = this.controller;
        if (pVar != null) {
            return pVar.p();
        }
        return null;
    }

    public String getLoadFailMessages() {
        p pVar = this.controller;
        return pVar != null ? pVar.o() : "";
    }

    public List<WMNativeAdData> getNativeADDataList() {
        p pVar = this.nextController;
        if (pVar != null) {
            return pVar.d();
        }
        p pVar2 = this.controller;
        if (pVar2 != null) {
            return pVar2.d();
        }
        return null;
    }

    public WMNativeAdRequest getRequest() {
        return this.mRequest;
    }

    public boolean loadAd(NativeAdLoadListener nativeAdLoadListener) {
        if (nativeAdLoadListener != null) {
            try {
                this.nativeAdLoadListener = nativeAdLoadListener;
            } catch (Throwable th) {
                WindMillError windMillError = WindMillError.ERROR_AD_REQUEST;
                PointEntityWMError pointEntityWMErrorWindError = PointEntityWMError.WindError("error", "load", windMillError.getErrorCode(), th.getMessage());
                pointEntityWMErrorWindError.setAdtype(String.valueOf(5));
                pointEntityWMErrorWindError.setPlacement_id(this.placementId);
                pointEntityWMErrorWindError.commit();
                onVideoAdLoadFail(windMillError, this.placementId);
                return false;
            }
        }
        return privateLoadAd(this.mRequest);
    }

    @Override // com.windmill.sdk.common.p.a
    public void onNativeAdFirstPlay() throws Throwable {
        try {
            p pVar = this.controller;
            if (pVar == null || !pVar.i()) {
                return;
            }
            WMLogUtil.i("-------AdFirstPlay ");
            p pVar2 = new p(this.mRequest, this);
            this.nextController = pVar2;
            pVar2.a(this.mWMAutoAdLoadModel);
            this.nextController.a(getActivity());
            WMNativeAdRequest wMNativeAdRequest = this.mRequest;
            wMNativeAdRequest.setPlacementId(wMNativeAdRequest.getPlacementId());
            this.nextController.a(this.mCustomGroupModel);
            this.nextController.a((WindMillAdRequest) this.mRequest, true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.common.p.a
    public void onVideoAdLoadFail(final WindMillError error, final String placementId) {
        this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.natives.WMNativeAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (WMNativeAd.this.nativeAdLoadListener != null) {
                    WMLogUtil.i(WMLogUtil.TAG, "onVideoAdLoadFail " + error + "|" + placementId);
                    WMNativeAd.this.nativeAdLoadListener.onError(error, placementId);
                }
            }
        });
    }

    @Override // com.windmill.sdk.common.p.a
    public void onVideoAdLoadSuccess(final List<WMNativeAdData> adDataList, final String placementId) {
        this.mHandler.post(new Runnable() { // from class: com.windmill.sdk.natives.WMNativeAd.1
            @Override // java.lang.Runnable
            public void run() {
                if (WMNativeAd.this.nativeAdLoadListener != null) {
                    WMLogUtil.i(WMLogUtil.TAG, "onVideoAdLoadSuccess |" + placementId);
                    WMNativeAd.this.nativeAdLoadListener.onFeedAdLoad(placementId);
                }
            }
        });
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

    public void setAutoLoadListener(AutoAdLoadListener loadListener) {
        i iVar = this.mWMAutoAdLoadModel;
        if (iVar != null) {
            iVar.a(loadListener);
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
}
