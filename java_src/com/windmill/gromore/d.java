package com.windmill.gromore;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationAdEcpmInfo;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class d extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TTFeedAd f86234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f86235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f86236c;

    public d(TTFeedAd tTFeedAd, final WMCustomNativeAdapter wMCustomNativeAdapter, final q qVar) {
        this.f86236c = 0;
        this.f86234a = tTFeedAd;
        if (wMCustomNativeAdapter != null) {
            this.f86236c = wMCustomNativeAdapter.getChannelId();
        }
        TTFeedAd tTFeedAd2 = this.f86234a;
        if (tTFeedAd2 != null) {
            tTFeedAd2.setExpressRenderListener(new MediationExpressRenderListener() { // from class: com.windmill.gromore.d.1
                @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener
                public final void onAdClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "----------onAdClicked-----------");
                    if (d.this.f86235b != null && wMCustomNativeAdapter != null) {
                        d.this.f86235b.onADClicked(wMCustomNativeAdapter.getAdInFo(d.this));
                    }
                    if (wMCustomNativeAdapter != null) {
                        TTFeedAd tTFeedAd3 = d.this.f86234a;
                        if (tTFeedAd3 != null && tTFeedAd3.getMediationManager() != null) {
                            wMCustomNativeAdapter.setGroEcpm(n.a(d.this.f86234a.getMediationManager().getShowEcpm()));
                        }
                        wMCustomNativeAdapter.callNativeAdClick(d.this);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener
                public final void onAdShow() {
                    MediationAdEcpmInfo showEcpm;
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onAdShow-----------");
                    MediationNativeManager mediationManager = d.this.f86234a.getMediationManager();
                    if (mediationManager != null && (showEcpm = mediationManager.getShowEcpm()) != null) {
                        HashMap map = new HashMap();
                        map.put(MediationConstant.KEY_ADN_NAME, showEcpm.getSdkName());
                        map.put("adnNetworkRitId", showEcpm.getSlotId());
                        map.put("adnEcpm", showEcpm.getEcpm());
                        if (wMCustomNativeAdapter.getAdInFo(d.this) != null) {
                            wMCustomNativeAdapter.getAdInFo(d.this).fillNetWorkOption(map);
                        }
                    }
                    if (d.this.f86235b != null && wMCustomNativeAdapter != null) {
                        d.this.f86235b.onADExposed(wMCustomNativeAdapter.getAdInFo(d.this));
                    }
                    if (wMCustomNativeAdapter != null) {
                        TTFeedAd tTFeedAd3 = d.this.f86234a;
                        if (tTFeedAd3 != null && tTFeedAd3.getMediationManager() != null) {
                            wMCustomNativeAdapter.setGroEcpm(n.a(d.this.f86234a.getMediationManager().getShowEcpm()));
                        }
                        wMCustomNativeAdapter.callNativeAdShow(d.this);
                        c.a(wMCustomNativeAdapter, qVar);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener
                public final void onRenderFail(View view, String str, int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onRenderFail-----------:" + i10 + ":" + str);
                    if (d.this.f86235b != null && wMCustomNativeAdapter != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_ADAPTER_PLAY;
                        windMillError.setMessage("code : " + i10 + " msg : " + str);
                        d.this.f86235b.onADError(wMCustomNativeAdapter.getAdInFo(d.this), windMillError);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdShowError(d.this, new WMAdapterError(i10, "tt onRenderFail:".concat(String.valueOf(str))));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeAd.ExpressRenderListener
                public final void onRenderSuccess(View view, float f10, float f11, boolean z10) {
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onRenderSuccess-----------:" + f10 + ":" + f11 + ":" + z10);
                    if (d.this.f86235b == null || wMCustomNativeAdapter == null) {
                        return;
                    }
                    d.this.f86235b.onADRenderSuccess(wMCustomNativeAdapter.getAdInFo(d.this), d.this.f86234a.getAdView(), f10, f11);
                }
            });
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, ViewGroup viewGroup) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void connectAdToView(Activity activity, WMNativeAdContainer wMNativeAdContainer, WMNativeAdRender wMNativeAdRender) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void destroy() {
        TTFeedAd tTFeedAd = this.f86234a;
        if (tTFeedAd != null) {
            tTFeedAd.destroy();
        }
        this.f86235b = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        TTFeedAd tTFeedAd = this.f86234a;
        if (tTFeedAd == null) {
            return 0;
        }
        int i10 = 2;
        if (tTFeedAd.getImageMode() == 2) {
            return 1;
        }
        if (this.f86234a.getImageMode() != 3 && this.f86234a.getImageMode() != 16) {
            i10 = 4;
            if (this.f86234a.getImageMode() == 4) {
                return 3;
            }
            if (this.f86234a.getImageMode() != 5 && this.f86234a.getImageMode() != 15) {
                return 0;
            }
        }
        return i10;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        return "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getDesc() {
        return "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        TTFeedAd tTFeedAd = this.f86234a;
        if (tTFeedAd != null) {
            return tTFeedAd.getAdView();
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        return "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<String> getImageUrlList() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getInteractionType() {
        TTFeedAd tTFeedAd = this.f86234a;
        if (tTFeedAd == null) {
            return 0;
        }
        int interactionType = tTFeedAd.getInteractionType();
        if (interactionType != 2 && interactionType != 3) {
            if (interactionType == 4) {
                return 1;
            }
            if (interactionType != 5) {
                return 0;
            }
        }
        return 2;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getNetworkId() {
        return this.f86236c;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f86234a;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        return "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isExpressAd() {
        return true;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isNativeDrawAd() {
        return false;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
        TTFeedAd tTFeedAd = this.f86234a;
        if (tTFeedAd != null) {
            tTFeedAd.render();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, final WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        TTFeedAd tTFeedAd = this.f86234a;
        if (tTFeedAd != null) {
            tTFeedAd.setDislikeCallback(activity, new TTAdDislike.DislikeInteractionCallback() { // from class: com.windmill.gromore.d.3
                @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                public final void onCancel() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onCancel-----------");
                    WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                    if (dislikeInteractionCallback2 != null) {
                        dislikeInteractionCallback2.onCancel();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                public final void onSelected(int i10, String str, boolean z10) {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onSelected-----------:" + i10 + ":" + str);
                    WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                    if (dislikeInteractionCallback2 != null) {
                        dislikeInteractionCallback2.onSelected(i10, str, true);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                public final void onShow() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onShow-----------");
                    WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                    if (dislikeInteractionCallback2 != null) {
                        dislikeInteractionCallback2.onShow();
                    }
                }
            });
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f86235b = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(final WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        TTFeedAd tTFeedAd = this.f86234a;
        if (tTFeedAd != null) {
            tTFeedAd.setVideoAdListener(new TTFeedAd.VideoAdListener() { // from class: com.windmill.gromore.d.2
                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onProgressUpdate(long j10, long j11) {
                    WMLogUtil.d(WMLogUtil.TAG, "onProgressUpdate current:" + j10 + " duration:" + j11);
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdComplete(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdComplete");
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoCompleted();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdContinuePlay(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdContinuePlay:" + tTFeedAd2.getTitle());
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoResume();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdPaused(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdPaused:" + tTFeedAd2.getTitle());
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoPause();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdStartPlay(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdStartPlay:" + tTFeedAd2.getTitle());
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoStart();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoError(int i10, int i11) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoError:" + i10 + ":" + i11);
                    if (nativeADMediaListener != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                        windMillError.setMessage(i10 + "-" + i11);
                        nativeADMediaListener.onVideoError(windMillError);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoLoad(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoLoad:" + tTFeedAd2.getTitle());
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoLoad();
                    }
                }
            });
        }
    }
}
