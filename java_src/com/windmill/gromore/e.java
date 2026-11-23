package com.windmill.gromore;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
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
public final class e extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TTDrawFeedAd f86244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f86245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f86246c;

    public e(TTDrawFeedAd tTDrawFeedAd, final WMCustomNativeAdapter wMCustomNativeAdapter, final q qVar) {
        this.f86246c = 0;
        this.f86244a = tTDrawFeedAd;
        if (wMCustomNativeAdapter != null) {
            this.f86246c = wMCustomNativeAdapter.getChannelId();
        }
        TTDrawFeedAd tTDrawFeedAd2 = this.f86244a;
        if (tTDrawFeedAd2 != null) {
            tTDrawFeedAd2.setCanInterruptVideoPlay(true);
            this.f86244a.setDrawVideoListener(new TTDrawFeedAd.DrawVideoListener() { // from class: com.windmill.gromore.e.1
                @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd.DrawVideoListener
                public final void onClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "onClick()");
                }

                @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd.DrawVideoListener
                public final void onClickRetry() {
                    WMLogUtil.d(WMLogUtil.TAG, "onAdClicked()");
                }
            });
            this.f86244a.setExpressRenderListener(new MediationExpressRenderListener() { // from class: com.windmill.gromore.e.2
                @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener
                public final void onAdClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "----------onAdClicked-----------");
                    if (e.this.f86245b != null && wMCustomNativeAdapter != null) {
                        TTDrawFeedAd tTDrawFeedAd3 = e.this.f86244a;
                        if (tTDrawFeedAd3 != null && tTDrawFeedAd3.getMediationManager() != null) {
                            wMCustomNativeAdapter.setGroEcpm(n.a(e.this.f86244a.getMediationManager().getShowEcpm()));
                        }
                        e.this.f86245b.onADClicked(wMCustomNativeAdapter.getAdInFo(e.this));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdClick(e.this);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener
                public final void onAdShow() {
                    MediationAdEcpmInfo showEcpm;
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onAdShow-----------");
                    MediationNativeManager mediationManager = e.this.f86244a.getMediationManager();
                    if (mediationManager != null && (showEcpm = mediationManager.getShowEcpm()) != null) {
                        HashMap map = new HashMap();
                        map.put(MediationConstant.KEY_ADN_NAME, showEcpm.getSdkName());
                        map.put("adnNetworkRitId", showEcpm.getSlotId());
                        map.put("adnEcpm", showEcpm.getEcpm());
                        if (wMCustomNativeAdapter.getAdInFo(e.this) != null) {
                            wMCustomNativeAdapter.getAdInFo(e.this).fillNetWorkOption(map);
                        }
                    }
                    if (e.this.f86245b != null && wMCustomNativeAdapter != null) {
                        e.this.f86245b.onADExposed(wMCustomNativeAdapter.getAdInFo(e.this));
                    }
                    if (wMCustomNativeAdapter != null) {
                        TTDrawFeedAd tTDrawFeedAd3 = e.this.f86244a;
                        if (tTDrawFeedAd3 != null && tTDrawFeedAd3.getMediationManager() != null) {
                            wMCustomNativeAdapter.setGroEcpm(n.a(e.this.f86244a.getMediationManager().getShowEcpm()));
                        }
                        wMCustomNativeAdapter.callNativeAdShow(e.this);
                        c.a(wMCustomNativeAdapter, qVar);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener
                public final void onRenderFail(View view, String str, int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onRenderFail-----------:" + i10 + ":" + str);
                    if (e.this.f86245b != null && wMCustomNativeAdapter != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_ADAPTER_PLAY;
                        windMillError.setMessage("code : " + i10 + " msg : " + str);
                        e.this.f86245b.onADError(wMCustomNativeAdapter.getAdInFo(e.this), windMillError);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdShowError(e.this, new WMAdapterError(i10, "tt onRenderFail:".concat(String.valueOf(str))));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeAd.ExpressRenderListener
                public final void onRenderSuccess(View view, float f10, float f11, boolean z10) {
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onRenderSuccess-----------:" + f10 + ":" + f11 + ":" + z10);
                    if (e.this.f86245b == null || wMCustomNativeAdapter == null) {
                        return;
                    }
                    e.this.f86245b.onADRenderSuccess(wMCustomNativeAdapter.getAdInFo(e.this), e.this.f86244a.getAdView(), f10, f11);
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
        TTDrawFeedAd tTDrawFeedAd = this.f86244a;
        if (tTDrawFeedAd != null) {
            tTDrawFeedAd.destroy();
        }
        this.f86245b = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        TTDrawFeedAd tTDrawFeedAd = this.f86244a;
        if (tTDrawFeedAd == null) {
            return 0;
        }
        int i10 = 2;
        if (tTDrawFeedAd.getImageMode() == 2) {
            return 1;
        }
        if (this.f86244a.getImageMode() != 3 && this.f86244a.getImageMode() != 16) {
            i10 = 4;
            if (this.f86244a.getImageMode() == 4) {
                return 3;
            }
            if (this.f86244a.getImageMode() != 5 && this.f86244a.getImageMode() != 15) {
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
        TTDrawFeedAd tTDrawFeedAd = this.f86244a;
        if (tTDrawFeedAd != null) {
            return tTDrawFeedAd.getAdView();
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
        TTDrawFeedAd tTDrawFeedAd = this.f86244a;
        if (tTDrawFeedAd == null) {
            return 0;
        }
        int interactionType = tTDrawFeedAd.getInteractionType();
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
        return this.f86246c;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f86244a;
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
        return true;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
        TTDrawFeedAd tTDrawFeedAd = this.f86244a;
        if (tTDrawFeedAd != null) {
            tTDrawFeedAd.render();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, final WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        TTDrawFeedAd tTDrawFeedAd = this.f86244a;
        if (tTDrawFeedAd != null) {
            tTDrawFeedAd.setDislikeCallback(activity, new TTAdDislike.DislikeInteractionCallback() { // from class: com.windmill.gromore.e.4
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
            this.f86245b = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(final WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        TTDrawFeedAd tTDrawFeedAd = this.f86244a;
        if (tTDrawFeedAd != null) {
            tTDrawFeedAd.setVideoAdListener(new TTFeedAd.VideoAdListener() { // from class: com.windmill.gromore.e.3
                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onProgressUpdate(long j10, long j11) {
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdComplete(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdComplete");
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoCompleted();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdContinuePlay(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdContinuePlay:" + tTFeedAd.getTitle());
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoResume();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdPaused(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdPaused:" + tTFeedAd.getTitle());
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoPause();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdStartPlay(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdStartPlay:" + tTFeedAd.getTitle());
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
                public final void onVideoLoad(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoLoad:" + tTFeedAd.getTitle());
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoLoad();
                    }
                }
            });
        }
    }
}
