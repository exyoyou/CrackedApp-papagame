package com.windmill.kuaishou;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.sdk.api.KsFeedAd;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class a extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public KsFeedAd f86413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WMNativeAdData.DislikeInteractionCallback f86414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f86415c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdInfo f86416d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f86417e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f86418f = "KuaiShouExpressAdData";

    public a(KsFeedAd ksFeedAd, final WMCustomNativeAdapter wMCustomNativeAdapter) {
        this.f86413a = ksFeedAd;
        if (wMCustomNativeAdapter != null) {
            this.f86416d = wMCustomNativeAdapter.getAdInFo(this);
            this.f86417e = wMCustomNativeAdapter.getChannelId();
        }
        KsFeedAd ksFeedAd2 = this.f86413a;
        if (ksFeedAd2 != null) {
            ksFeedAd2.setAdInteractionListener(new KsFeedAd.AdInteractionListener() { // from class: com.windmill.kuaishou.a.1
                @Override // com.kwad.sdk.api.KsFeedAd.AdInteractionListener
                public final void onAdClicked() {
                    WMLogUtil.d(a.this.f86418f + "----------onAdClicked-----------");
                    if (a.this.f86415c != null && wMCustomNativeAdapter != null) {
                        a.this.f86415c.onADClicked(wMCustomNativeAdapter.getAdInFo(a.this));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdClick(a.this);
                    }
                }

                @Override // com.kwad.sdk.api.KsFeedAd.AdInteractionListener
                public final void onAdShow() {
                    WMLogUtil.d(a.this.f86418f + "------onAdShow-----------");
                    if (a.this.f86415c != null && wMCustomNativeAdapter != null) {
                        a.this.f86415c.onADExposed(wMCustomNativeAdapter.getAdInFo(a.this));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdShow(a.this);
                    }
                }

                @Override // com.kwad.sdk.api.KsFeedAd.AdInteractionListener
                public final void onDislikeClicked() {
                    WMLogUtil.d(a.this.f86418f + "--------onDislikeClicked-----------");
                    if (a.this.f86414b != null) {
                        a.this.f86414b.onSelected(0, MediationConstant.ADN_KS, true);
                    }
                }

                @Override // com.kwad.sdk.api.KsFeedAd.AdInteractionListener
                public final void onDownloadTipsDialogDismiss() {
                    WMLogUtil.d(a.this.f86418f + "-------onDownloadTipsDialogDismiss-----------");
                }

                @Override // com.kwad.sdk.api.KsFeedAd.AdInteractionListener
                public final void onDownloadTipsDialogShow() {
                    WMLogUtil.d(a.this.f86418f + "------onDownloadTipsDialogShow-----------");
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
        this.f86414b = null;
        this.f86415c = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        KsFeedAd ksFeedAd = this.f86413a;
        if (ksFeedAd == null) {
            return 0;
        }
        if (ksFeedAd.getMaterialType() == 2) {
            return 2;
        }
        if (this.f86413a.getMaterialType() == 3) {
            return 3;
        }
        return (this.f86413a.getMaterialType() == 1 || this.f86413a.getMaterialType() == 8) ? 4 : 0;
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
        KsFeedAd ksFeedAd = this.f86413a;
        if (ksFeedAd != null) {
            return ksFeedAd.getFeedView(WindMillAd.sharedAds().getContext());
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
        KsFeedAd ksFeedAd = this.f86413a;
        if (ksFeedAd == null) {
            return 0;
        }
        int interactionType = ksFeedAd.getInteractionType();
        int i10 = 1;
        if (interactionType != 1) {
            i10 = 2;
            if (interactionType != 2) {
                return 0;
            }
        }
        return i10;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getNetworkId() {
        return this.f86417e;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f86413a;
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
        KsFeedAd ksFeedAd = this.f86413a;
        if (ksFeedAd != null) {
            ksFeedAd.render(new KsFeedAd.AdRenderListener() { // from class: com.windmill.kuaishou.a.2
                @Override // com.kwad.sdk.api.KsFeedAd.AdRenderListener
                public final void onAdRenderFailed(int i10, String str) {
                    a.this.f86415c.onADError(a.this.f86416d, WindMillError.ERROR_AD_PLAY);
                }

                @Override // com.kwad.sdk.api.KsFeedAd.AdRenderListener
                public final void onAdRenderSuccess(View view) {
                    if (a.this.f86415c == null || a.this.f86413a == null) {
                        return;
                    }
                    WMLogUtil.d(a.this.f86418f + "------onAdRenderSuccess----");
                    if (view != null) {
                        a.this.f86415c.onADRenderSuccess(a.this.f86416d, view, view.getWidth(), view.getHeight());
                    } else {
                        a.this.f86415c.onADRenderSuccess(a.this.f86416d, null, 0.0f, 0.0f);
                    }
                }
            });
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null) {
            this.f86414b = dislikeInteractionCallback;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f86415c = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
    }
}
