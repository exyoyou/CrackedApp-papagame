package com.windmill.toutiao;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes8.dex */
public final class b extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TTNativeExpressAd f87721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<TTNativeExpressAd, TTAppDownloadListener> f87722b = new WeakHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f87723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WMNativeAdData.NativeADMediaListener f87724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f87725e;

    public b(TTNativeExpressAd tTNativeExpressAd, final WMCustomNativeAdapter wMCustomNativeAdapter) {
        this.f87725e = 0;
        this.f87721a = tTNativeExpressAd;
        if (wMCustomNativeAdapter != null) {
            this.f87725e = wMCustomNativeAdapter.getChannelId();
        }
        TTNativeExpressAd tTNativeExpressAd2 = this.f87721a;
        if (tTNativeExpressAd2 != null) {
            tTNativeExpressAd2.setVideoAdListener(new TTNativeExpressAd.ExpressVideoAdListener() { // from class: com.windmill.toutiao.b.1
                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
                public final void onClickRetry() {
                    WMLogUtil.d(WMLogUtil.TAG, "onClickRetry()");
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
                public final void onProgressUpdate(long j10, long j11) {
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
                public final void onVideoAdComplete() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdComplete()");
                    if (b.this.f87724d != null) {
                        b.this.f87724d.onVideoCompleted();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
                public final void onVideoAdContinuePlay() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdContinuePlay()");
                    if (b.this.f87724d != null) {
                        b.this.f87724d.onVideoResume();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
                public final void onVideoAdPaused() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdPaused()");
                    if (b.this.f87724d != null) {
                        b.this.f87724d.onVideoPause();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
                public final void onVideoAdStartPlay() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdStartPlay()");
                    if (b.this.f87724d != null) {
                        b.this.f87724d.onVideoStart();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
                public final void onVideoError(int i10, int i11) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoError:" + i10 + ":" + i11);
                    if (b.this.f87724d != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                        windMillError.setMessage(i10 + "-" + i11);
                        b.this.f87724d.onVideoError(windMillError);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
                public final void onVideoLoad() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoLoad()");
                    if (b.this.f87724d != null) {
                        b.this.f87724d.onVideoLoad();
                    }
                }
            });
            this.f87721a.setCanInterruptVideoPlay(true);
            this.f87721a.setExpressInteractionListener(new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.windmill.toutiao.b.2
                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
                public final void onAdClicked(View view, int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "----------onAdClicked-----------:".concat(String.valueOf(i10)));
                    if (b.this.f87723c != null && wMCustomNativeAdapter != null) {
                        b.this.f87723c.onADClicked(wMCustomNativeAdapter.getAdInFo(b.this));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdClick(b.this);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
                public final void onAdShow(View view, int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onAdShow-----------:".concat(String.valueOf(i10)));
                    if (b.this.f87723c != null && wMCustomNativeAdapter != null) {
                        b.this.f87723c.onADExposed(wMCustomNativeAdapter.getAdInFo(b.this));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdShow(b.this);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
                public final void onRenderFail(View view, String str, int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onRenderFail-----------:" + str + ":" + i10);
                    if (b.this.f87723c != null && wMCustomNativeAdapter != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_ADAPTER_PLAY;
                        windMillError.setMessage("code : " + i10 + " msg : " + str);
                        b.this.f87723c.onADError(wMCustomNativeAdapter.getAdInFo(b.this), windMillError);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdShowError(b.this, new WMAdapterError(i10, TouTiaoAdapterProxy.getReason(str), "tt onRenderFail:".concat(String.valueOf(str))));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
                public final void onRenderSuccess(View view, float f10, float f11) {
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onRenderSuccess-----------:" + f10 + ":" + f11);
                    if (b.this.f87723c == null || wMCustomNativeAdapter == null) {
                        return;
                    }
                    b.this.f87723c.onADRenderSuccess(wMCustomNativeAdapter.getAdInFo(b.this), view, f10, f11);
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
        TTNativeExpressAd tTNativeExpressAd = this.f87721a;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.destroy();
        }
        Map<TTNativeExpressAd, TTAppDownloadListener> map = this.f87722b;
        if (map != null) {
            map.clear();
        }
        this.f87723c = null;
        this.f87724d = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        TTNativeExpressAd tTNativeExpressAd = this.f87721a;
        if (tTNativeExpressAd == null) {
            return 0;
        }
        int i10 = 2;
        if (tTNativeExpressAd.getImageMode() == 2) {
            return 1;
        }
        if (this.f87721a.getImageMode() != 3 && this.f87721a.getImageMode() != 16) {
            i10 = 4;
            if (this.f87721a.getImageMode() == 4) {
                return 3;
            }
            if (this.f87721a.getImageMode() != 5 && this.f87721a.getImageMode() != 15) {
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
        TTNativeExpressAd tTNativeExpressAd = this.f87721a;
        if (tTNativeExpressAd != null) {
            return tTNativeExpressAd.getExpressAdView();
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
        TTNativeExpressAd tTNativeExpressAd = this.f87721a;
        if (tTNativeExpressAd == null) {
            return 0;
        }
        int interactionType = tTNativeExpressAd.getInteractionType();
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
        return this.f87725e;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f87721a;
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
        TTNativeExpressAd tTNativeExpressAd = this.f87721a;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.render();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, final WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        TTNativeExpressAd tTNativeExpressAd = this.f87721a;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.setDislikeCallback(activity, new TTAdDislike.DislikeInteractionCallback() { // from class: com.windmill.toutiao.b.3
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
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onSelected-----------:" + i10 + ":" + str + ":" + z10);
                    WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                    if (dislikeInteractionCallback2 != null) {
                        dislikeInteractionCallback2.onSelected(i10, str, z10);
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
    public final void setDownloadListener(final WMNativeAdData.AppDownloadListener appDownloadListener) {
        TTNativeExpressAd tTNativeExpressAd = this.f87721a;
        if (tTNativeExpressAd == null || tTNativeExpressAd.getInteractionType() != 4) {
            return;
        }
        TTAppDownloadListener tTAppDownloadListener = new TTAppDownloadListener() { // from class: com.windmill.toutiao.b.4
            private boolean a() {
                return b.this.f87722b.get(b.this.f87721a) == this;
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public final void onDownloadActive(long j10, long j11, String str, String str2) {
                if (a()) {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onDownloadActive-----------");
                    WMNativeAdData.AppDownloadListener appDownloadListener2 = appDownloadListener;
                    if (appDownloadListener2 != null) {
                        appDownloadListener2.onDownloadActive(j10, j11, str, str2);
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public final void onDownloadFailed(long j10, long j11, String str, String str2) {
                if (a()) {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onDownloadFailed-----------");
                    WMNativeAdData.AppDownloadListener appDownloadListener2 = appDownloadListener;
                    if (appDownloadListener2 != null) {
                        appDownloadListener2.onDownloadFailed(j10, j11, str, str2);
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public final void onDownloadFinished(long j10, String str, String str2) {
                if (a()) {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onDownloadFinished-----------");
                    WMNativeAdData.AppDownloadListener appDownloadListener2 = appDownloadListener;
                    if (appDownloadListener2 != null) {
                        appDownloadListener2.onDownloadFinished(j10, str, str2);
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public final void onDownloadPaused(long j10, long j11, String str, String str2) {
                if (a()) {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onDownloadPaused-----------");
                    WMNativeAdData.AppDownloadListener appDownloadListener2 = appDownloadListener;
                    if (appDownloadListener2 != null) {
                        appDownloadListener2.onDownloadPaused(j10, j11, str, str2);
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public final void onIdle() {
                if (a()) {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onIdle-----------");
                    WMNativeAdData.AppDownloadListener appDownloadListener2 = appDownloadListener;
                    if (appDownloadListener2 != null) {
                        appDownloadListener2.onIdle();
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public final void onInstalled(String str, String str2) {
                if (a()) {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onInstalled-----------");
                    WMNativeAdData.AppDownloadListener appDownloadListener2 = appDownloadListener;
                    if (appDownloadListener2 != null) {
                        appDownloadListener2.onInstalled(str, str2);
                    }
                }
            }
        };
        this.f87721a.setDownloadListener(tTAppDownloadListener);
        this.f87722b.put(this.f87721a, tTAppDownloadListener);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f87723c = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener != null) {
            this.f87724d = nativeADMediaListener;
        }
    }
}
