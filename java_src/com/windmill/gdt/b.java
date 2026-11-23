package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.ads.nativ.NativeExpressMediaListener;
import com.qq.e.comm.util.AdError;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class b extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public NativeExpressADView f86082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    WMNativeAdData.NativeAdInteractionListener f86083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    WMNativeAdData.DislikeInteractionCallback f86084c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WMCustomNativeAdapter f86085d;

    public b(NativeExpressADView nativeExpressADView, WMCustomNativeAdapter wMCustomNativeAdapter) {
        this.f86082a = nativeExpressADView;
        this.f86085d = wMCustomNativeAdapter;
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
        NativeExpressADView nativeExpressADView = this.f86082a;
        if (nativeExpressADView != null) {
            nativeExpressADView.destroy();
        }
        this.f86083b = null;
        this.f86084c = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        NativeExpressADView nativeExpressADView = this.f86082a;
        if (nativeExpressADView == null) {
            return 0;
        }
        int adPatternType = nativeExpressADView.getBoundData().getAdPatternType();
        if (adPatternType == 4 || adPatternType == 1) {
            return 2;
        }
        if (adPatternType == 3) {
            return 3;
        }
        return adPatternType == 2 ? 4 : 0;
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
        NativeExpressADView nativeExpressADView = this.f86082a;
        if (nativeExpressADView != null) {
            return nativeExpressADView;
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
        return 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getNetworkId() {
        WMCustomNativeAdapter wMCustomNativeAdapter = this.f86085d;
        if (wMCustomNativeAdapter != null) {
            return wMCustomNativeAdapter.getChannelId();
        }
        return 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f86082a;
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
        NativeExpressADView nativeExpressADView = this.f86082a;
        if (nativeExpressADView != null) {
            nativeExpressADView.render();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null) {
            this.f86084c = dislikeInteractionCallback;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f86083b = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(final WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        NativeExpressADView nativeExpressADView = this.f86082a;
        if (nativeExpressADView == null || nativeExpressADView.getBoundData().getAdPatternType() != 2) {
            return;
        }
        this.f86082a.setMediaListener(new NativeExpressMediaListener() { // from class: com.windmill.gdt.b.1
            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public final void onVideoCached(NativeExpressADView nativeExpressADView2) {
                WMLogUtil.d(WMLogUtil.TAG, "-----------onVideoCached---------");
                WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                if (nativeADMediaListener2 != null) {
                    nativeADMediaListener2.onVideoLoad();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public final void onVideoComplete(NativeExpressADView nativeExpressADView2) {
                WMLogUtil.d(WMLogUtil.TAG, "-----------onVideoComplete---------");
                WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                if (nativeADMediaListener2 != null) {
                    nativeADMediaListener2.onVideoCompleted();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public final void onVideoError(NativeExpressADView nativeExpressADView2, AdError adError) {
                WMLogUtil.d(WMLogUtil.TAG, "-----------onVideoError---------" + adError.toString());
                if (nativeADMediaListener != null) {
                    WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                    windMillError.setMessage(adError.getErrorCode() + ":" + adError.getErrorMsg());
                    nativeADMediaListener.onVideoError(windMillError);
                }
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public final void onVideoInit(NativeExpressADView nativeExpressADView2) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public final void onVideoLoading(NativeExpressADView nativeExpressADView2) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public final void onVideoPageClose(NativeExpressADView nativeExpressADView2) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public final void onVideoPageOpen(NativeExpressADView nativeExpressADView2) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public final void onVideoPause(NativeExpressADView nativeExpressADView2) {
                WMLogUtil.d(WMLogUtil.TAG, "-----------onVideoPause---------");
                WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                if (nativeADMediaListener2 != null) {
                    nativeADMediaListener2.onVideoPause();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public final void onVideoReady(NativeExpressADView nativeExpressADView2, long j10) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public final void onVideoStart(NativeExpressADView nativeExpressADView2) {
                WMLogUtil.d(WMLogUtil.TAG, "-----------onVideoStart---------");
                WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                if (nativeADMediaListener2 != null) {
                    nativeADMediaListener2.onVideoStart();
                }
            }
        });
    }
}
