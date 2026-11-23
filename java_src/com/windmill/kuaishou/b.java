package com.windmill.kuaishou;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.kwad.sdk.api.KsDrawAd;
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
public final class b extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public KsDrawAd f86422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f86423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMNativeAdData.NativeADMediaListener f86424c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdInfo f86425d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f86426e;

    public b(KsDrawAd ksDrawAd, final WMCustomNativeAdapter wMCustomNativeAdapter) {
        this.f86422a = ksDrawAd;
        if (wMCustomNativeAdapter != null) {
            this.f86425d = wMCustomNativeAdapter.getAdInFo(this);
            this.f86426e = wMCustomNativeAdapter.getChannelId();
        }
        KsDrawAd ksDrawAd2 = this.f86422a;
        if (ksDrawAd2 != null) {
            ksDrawAd2.setAdInteractionListener(new KsDrawAd.AdInteractionListener() { // from class: com.windmill.kuaishou.b.1
                @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
                public final void onAdClicked() {
                    WMLogUtil.d(WMLogUtil.TAG, "----------onAdClicked-----------");
                    if (b.this.f86423b != null && wMCustomNativeAdapter != null) {
                        b.this.f86423b.onADClicked(wMCustomNativeAdapter.getAdInFo(b.this));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdClick(b.this);
                    }
                }

                @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
                public final void onAdShow() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onAdShow-----------");
                    if (b.this.f86423b != null && wMCustomNativeAdapter != null) {
                        b.this.f86423b.onADExposed(wMCustomNativeAdapter.getAdInFo(b.this));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdShow(b.this);
                    }
                }

                @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
                public final void onVideoPlayEnd() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayComplete");
                    if (b.this.f86424c != null) {
                        b.this.f86424c.onVideoCompleted();
                    }
                }

                @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
                public final void onVideoPlayError() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayError");
                    if (b.this.f86424c != null) {
                        b.this.f86424c.onVideoError(WindMillError.ERROR_AD_PLAY);
                    }
                }

                @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
                public final void onVideoPlayPause() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayPause");
                    if (b.this.f86424c != null) {
                        b.this.f86424c.onVideoPause();
                    }
                }

                @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
                public final void onVideoPlayResume() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayResume");
                    if (b.this.f86424c != null) {
                        b.this.f86424c.onVideoResume();
                    }
                }

                @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
                public final void onVideoPlayStart() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayStart");
                    if (b.this.f86424c != null) {
                        b.this.f86424c.onVideoStart();
                    }
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
        this.f86423b = null;
        this.f86424c = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        KsDrawAd ksDrawAd = this.f86422a;
        if (ksDrawAd == null) {
            return 0;
        }
        if (ksDrawAd.getMaterialType() == 2) {
            return 2;
        }
        if (this.f86422a.getMaterialType() == 3) {
            return 3;
        }
        return (this.f86422a.getMaterialType() == 1 || this.f86422a.getMaterialType() == 8) ? 4 : 0;
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
        KsDrawAd ksDrawAd = this.f86422a;
        if (ksDrawAd != null) {
            return ksDrawAd.getDrawView(WindMillAd.sharedAds().getContext());
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
        KsDrawAd ksDrawAd = this.f86422a;
        if (ksDrawAd == null) {
            return 0;
        }
        int interactionType = ksDrawAd.getInteractionType();
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
        return this.f86426e;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f86422a;
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
        KsDrawAd ksDrawAd;
        if (this.f86423b == null || (ksDrawAd = this.f86422a) == null) {
            return;
        }
        View drawView = ksDrawAd.getDrawView(WindMillAd.sharedAds().getContext());
        if (drawView != null) {
            this.f86423b.onADRenderSuccess(this.f86425d, drawView, drawView.getWidth(), drawView.getHeight());
        } else {
            this.f86423b.onADRenderSuccess(this.f86425d, null, 0.0f, 0.0f);
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f86423b = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener != null) {
            this.f86424c = nativeADMediaListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setVideoMute(boolean z10) {
        KsDrawAd ksDrawAd = this.f86422a;
        if (ksDrawAd != null) {
            ksDrawAd.setVideoSoundEnable(!z10);
        }
    }
}
