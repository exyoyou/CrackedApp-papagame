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
public final class a extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TTNativeExpressAd f87711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<TTNativeExpressAd, TTAppDownloadListener> f87712b = new WeakHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f87713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f87714d;

    public a(TTNativeExpressAd tTNativeExpressAd, final WMCustomNativeAdapter wMCustomNativeAdapter) {
        this.f87714d = 0;
        this.f87711a = tTNativeExpressAd;
        if (wMCustomNativeAdapter != null) {
            this.f87714d = wMCustomNativeAdapter.getChannelId();
        }
        TTNativeExpressAd tTNativeExpressAd2 = this.f87711a;
        if (tTNativeExpressAd2 != null) {
            tTNativeExpressAd2.setExpressInteractionListener(new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.windmill.toutiao.a.1
                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
                public final void onAdClicked(View view, int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "----------onAdClicked-----------:".concat(String.valueOf(i10)));
                    if (a.this.f87713c != null && wMCustomNativeAdapter != null) {
                        a.this.f87713c.onADClicked(wMCustomNativeAdapter.getAdInFo(a.this));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdClick(a.this);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
                public final void onAdShow(View view, int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onAdShow-----------:".concat(String.valueOf(i10)));
                    if (a.this.f87713c != null && wMCustomNativeAdapter != null) {
                        a.this.f87713c.onADExposed(wMCustomNativeAdapter.getAdInFo(a.this));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdShow(a.this);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
                public final void onRenderFail(View view, String str, int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onRenderFail-----------:" + str + ":" + i10);
                    if (a.this.f87713c != null && wMCustomNativeAdapter != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_ADAPTER_PLAY;
                        windMillError.setMessage("code : " + i10 + " msg : " + str);
                        a.this.f87713c.onADError(wMCustomNativeAdapter.getAdInFo(a.this), windMillError);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdShowError(a.this, new WMAdapterError(i10, TouTiaoAdapterProxy.getReason(str), "tt onRenderFail:".concat(String.valueOf(str))));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
                public final void onRenderSuccess(View view, float f10, float f11) {
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onRenderSuccess-----------:" + f10 + ":" + f11);
                    if (a.this.f87713c == null || wMCustomNativeAdapter == null) {
                        return;
                    }
                    a.this.f87713c.onADRenderSuccess(wMCustomNativeAdapter.getAdInFo(a.this), view, f10, f11);
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
        TTNativeExpressAd tTNativeExpressAd = this.f87711a;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.destroy();
        }
        this.f87713c = null;
        this.f87712b.clear();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        TTNativeExpressAd tTNativeExpressAd = this.f87711a;
        if (tTNativeExpressAd == null) {
            return 0;
        }
        int i10 = 2;
        if (tTNativeExpressAd.getImageMode() == 2) {
            return 1;
        }
        if (this.f87711a.getImageMode() != 3 && this.f87711a.getImageMode() != 16) {
            i10 = 4;
            if (this.f87711a.getImageMode() == 4) {
                return 3;
            }
            if (this.f87711a.getImageMode() != 5 && this.f87711a.getImageMode() != 15) {
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
        TTNativeExpressAd tTNativeExpressAd = this.f87711a;
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
        TTNativeExpressAd tTNativeExpressAd = this.f87711a;
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
        return this.f87714d;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f87711a;
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
        TTNativeExpressAd tTNativeExpressAd = this.f87711a;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.render();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, final WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        TTNativeExpressAd tTNativeExpressAd = this.f87711a;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.setDislikeCallback(activity, new TTAdDislike.DislikeInteractionCallback() { // from class: com.windmill.toutiao.a.2
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
        TTNativeExpressAd tTNativeExpressAd = this.f87711a;
        if (tTNativeExpressAd == null || tTNativeExpressAd.getInteractionType() != 4) {
            return;
        }
        TTAppDownloadListener tTAppDownloadListener = new TTAppDownloadListener() { // from class: com.windmill.toutiao.a.3
            private boolean a() {
                return a.this.f87712b.get(a.this.f87711a) == this;
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
        this.f87711a.setDownloadListener(tTAppDownloadListener);
        this.f87712b.put(this.f87711a, tTAppDownloadListener);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f87713c = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
    }
}
