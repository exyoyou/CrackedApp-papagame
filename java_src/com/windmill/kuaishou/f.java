package com.windmill.kuaishou;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.common.utils.ImageManager;
import com.kwad.sdk.api.KsAdVideoPlayConfig;
import com.kwad.sdk.api.KsAppDownloadListener;
import com.kwad.sdk.api.KsImage;
import com.kwad.sdk.api.KsNativeAd;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import com.windmill.sdk.natives.WMNativePrivacyInfo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes8.dex */
public final class f extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public KsNativeAd f86442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f86443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f86444c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f86445d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<KsNativeAd, KsAppDownloadListener> f86446e = new WeakHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WMNativeAdData.NativeADMediaListener f86447f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WMNativeAdData.DislikeInteractionCallback f86448g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Bitmap f86449h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f86450i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private WeakReference<View> f86451j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private WeakReference<Activity> f86452k;

    public f(Context context, KsNativeAd ksNativeAd, int i10, Map<String, Object> map) {
        this.f86450i = false;
        this.f86443b = false;
        this.f86442a = ksNativeAd;
        this.f86445d = i10;
        if (map != null) {
            Object obj = map.get("showDownloadDialog");
            if (obj == null || !obj.equals("1")) {
                this.f86450i = false;
            } else {
                this.f86450i = true;
            }
            try {
                Object obj2 = map.get(WMConstants.AUTO_PLAY_MUTED);
                if (obj2 == null || !obj2.equals("0")) {
                    this.f86443b = false;
                } else {
                    this.f86443b = true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (context == null || ksNativeAd == null) {
            return;
        }
        ImageManager.with(context).getBitmap(ksNativeAd.getAdSourceLogoUrl(0), new ImageManager.BitmapLoadedListener() { // from class: com.windmill.kuaishou.f.1
            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public final void onBitmapLoadFailed() {
            }

            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public final void onBitmapLoaded(Bitmap bitmap) {
                f.this.f86449h = bitmap;
            }
        });
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        KsImage ksImage;
        if (this.f86442a == null || list.isEmpty()) {
            return;
        }
        if (this.f86442a.getMaterialType() == 2) {
            if (this.f86442a.getImageList() == null || (ksImage = this.f86442a.getImageList().get(0)) == null || !ksImage.isValid()) {
                return;
            }
            ImageManager.with(context).load(ksImage.getImageUrl()).placeholder(i10).error(i10).into(list.get(0));
            return;
        }
        if (this.f86442a.getMaterialType() != 3 || this.f86442a.getImageList() == null) {
            return;
        }
        int iMin = Math.min(list.size(), this.f86442a.getImageList().size());
        for (int i11 = 0; i11 < iMin; i11++) {
            KsImage ksImage2 = this.f86442a.getImageList().get(i11);
            if (ksImage2 != null && ksImage2.isValid()) {
                ImageManager.with(context).load(ksImage2.getImageUrl()).placeholder(i10).error(i10).into(list.get(i11));
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, final ViewGroup viewGroup) {
        KsNativeAd ksNativeAd = this.f86442a;
        if (ksNativeAd != null) {
            ksNativeAd.setVideoPlayListener(new KsNativeAd.VideoPlayListener() { // from class: com.windmill.kuaishou.f.5
                @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                public final void onVideoPlayComplete() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayComplete");
                    if (f.this.f86447f != null) {
                        f.this.f86447f.onVideoCompleted();
                    }
                }

                @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                public final void onVideoPlayError(int i10, int i11) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayError:" + i10 + ":" + i11);
                    if (f.this.f86447f != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                        windMillError.setMessage(i10 + "-" + i11);
                        f.this.f86447f.onVideoError(windMillError);
                    }
                }

                @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                public final void onVideoPlayPause() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayPause");
                    if (f.this.f86447f != null) {
                        f.this.f86447f.onVideoPause();
                    }
                }

                @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                public final void onVideoPlayReady() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayReady");
                    if (f.this.f86447f != null) {
                        f.this.f86447f.onVideoLoad();
                    }
                }

                @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                public final void onVideoPlayResume() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayResume");
                    if (f.this.f86447f != null) {
                        f.this.f86447f.onVideoResume();
                    }
                }

                @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                public final void onVideoPlayStart() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayStart");
                    if (f.this.f86447f != null) {
                        f.this.f86447f.onVideoStart();
                    }
                }
            });
            if (viewGroup != null) {
                final int videoWidth = this.f86442a.getVideoWidth();
                final int videoHeight = this.f86442a.getVideoHeight();
                viewGroup.post(new Runnable() { // from class: com.windmill.kuaishou.f.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        View view;
                        int width = viewGroup.getWidth();
                        if (f.this.f86451j == null || (view = (View) f.this.f86451j.get()) == null) {
                            return;
                        }
                        if (view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
                            ((ViewGroup) view.getParent()).removeView(view);
                        }
                        viewGroup.removeAllViews();
                        try {
                            if (videoWidth > videoHeight) {
                                viewGroup.addView(view, new ViewGroup.LayoutParams(-1, (width * videoHeight) / videoWidth));
                            } else {
                                viewGroup.addView(view);
                            }
                        } catch (Exception unused) {
                            viewGroup.addView(view, new ViewGroup.LayoutParams(-1, -2));
                        }
                    }
                });
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
        View view3;
        int i10;
        View view4;
        int i11;
        if (this.f86442a != null) {
            HashMap map = new HashMap();
            if (list != null && list.size() > 0) {
                for (int i12 = 0; i12 < list.size(); i12++) {
                    if (this.f86450i) {
                        view4 = list.get(i12);
                        i11 = 2;
                    } else {
                        view4 = list.get(i12);
                        i11 = 1;
                    }
                    map.put(view4, i11);
                }
            }
            if (list2 != null && list2.size() > 0) {
                for (int i13 = 0; i13 < list2.size(); i13++) {
                    if (this.f86450i) {
                        view3 = list2.get(i13);
                        i10 = 2;
                    } else {
                        view3 = list2.get(i13);
                        i10 = 1;
                    }
                    map.put(view3, i10);
                }
            }
            KsNativeAd.AdInteractionListener adInteractionListener = new KsNativeAd.AdInteractionListener() { // from class: com.windmill.kuaishou.f.2
                @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
                public final boolean handleDownloadDialog(DialogInterface.OnClickListener onClickListener) {
                    return false;
                }

                @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
                public final void onAdClicked(View view5, KsNativeAd ksNativeAd) {
                    if (ksNativeAd != null) {
                        WMLogUtil.d(WMLogUtil.TAG, "onAdClicked:" + ksNativeAd.getAppName());
                    }
                    if (f.this.f86444c != null) {
                        f.this.f86444c.onADClicked(null);
                    }
                }

                @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
                public final void onAdShow(KsNativeAd ksNativeAd) {
                    if (ksNativeAd != null) {
                        WMLogUtil.d(WMLogUtil.TAG, "onAdShow:" + ksNativeAd.getAppName());
                    }
                    if (f.this.f86444c != null) {
                        f.this.f86444c.onADExposed(null);
                    }
                }

                @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
                public final void onDownloadTipsDialogDismiss() {
                }

                @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
                public final void onDownloadTipsDialogShow() {
                }
            };
            WeakReference<Activity> weakReference = this.f86452k;
            Activity activity = (weakReference == null || weakReference.get() == null) ? context instanceof Activity ? (Activity) context : null : this.f86452k.get();
            View videoView = this.f86442a.getVideoView(context, new KsAdVideoPlayConfig.Builder().videoSoundEnable(this.f86443b).dataFlowAutoStart(true).build());
            if (activity != null) {
                if (videoView != null) {
                    map.put(videoView, this.f86450i ? 2 : 1);
                }
                this.f86442a.registerViewForInteraction(activity, (ViewGroup) view, map, adInteractionListener);
            } else {
                if (videoView != null) {
                    list.add(videoView);
                }
                this.f86442a.registerViewForInteraction((ViewGroup) view, list, adInteractionListener);
            }
            if (videoView != null) {
                this.f86451j = new WeakReference<>(videoView);
            }
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.kuaishou.f.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view5) {
                        if (f.this.f86448g != null) {
                            f.this.f86448g.onSelected(0, MediationConstant.ADN_KS, true);
                        }
                    }
                });
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void connectAdToView(Activity activity, WMNativeAdContainer wMNativeAdContainer, WMNativeAdRender wMNativeAdRender) {
        this.f86452k = new WeakReference<>(activity);
        if (wMNativeAdRender != null) {
            View viewCreateView = wMNativeAdRender.createView(activity, getAdPatternType());
            wMNativeAdRender.renderAdView(viewCreateView, this);
            if (wMNativeAdContainer != null) {
                wMNativeAdContainer.removeAllViews();
                wMNativeAdContainer.addView(viewCreateView, new ViewGroup.LayoutParams(-1, -2));
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void destroy() {
        Map<KsNativeAd, KsAppDownloadListener> map = this.f86446e;
        if (map != null) {
            map.clear();
        }
        this.f86442a = null;
        this.f86444c = null;
        this.f86448g = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return this.f86449h;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        KsNativeAd ksNativeAd = this.f86442a;
        if (ksNativeAd == null) {
            return 0;
        }
        if (ksNativeAd.getMaterialType() == 2) {
            return 2;
        }
        if (this.f86442a.getMaterialType() == 3) {
            return 3;
        }
        return (this.f86442a.getMaterialType() == 1 || this.f86442a.getMaterialType() == 8) ? 4 : 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.AppInfo getAppInfo() {
        KsNativeAd ksNativeAd = this.f86442a;
        if (ksNativeAd != null) {
            return new WMNativePrivacyInfo(ksNativeAd.getAppName(), this.f86442a.getAppVersion(), this.f86442a.getAppPackageSize(), this.f86442a.getAppPackageName(), this.f86442a.getCorporationName(), this.f86442a.getAppPrivacyUrl(), this.f86442a.getPermissionInfo(), this.f86442a.getPermissionInfoUrl(), this.f86442a.getIntroductionInfoUrl());
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        KsNativeAd ksNativeAd = this.f86442a;
        if (ksNativeAd == null) {
            return "获取详情";
        }
        if (TextUtils.isEmpty(ksNativeAd.getActionDescription())) {
            return this.f86442a.getInteractionType() == 1 ? "立即下载" : "查看详情";
        }
        return this.f86442a.getActionDescription();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.CustomizeVideo getCustomizeVideo() {
        return this.f86442a != null ? new WMNativeAdData.CustomizeVideo() { // from class: com.windmill.kuaishou.f.9
            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final String getVideoUrl() {
                return f.this.f86442a.getVideoUrl();
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoCompleted() {
                f.this.f86442a.reportAdVideoPlayEnd();
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoError(long j10, int i10, int i11) {
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoPause(long j10) {
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoPreload() {
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoResume(long j10) {
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoStart() {
                f.this.f86442a.reportAdVideoPlayStart();
            }
        } : super.getCustomizeVideo();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getDesc() {
        KsNativeAd ksNativeAd = this.f86442a;
        return ksNativeAd != null ? ksNativeAd.getAdDescription() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        KsNativeAd ksNativeAd = this.f86442a;
        return ksNativeAd != null ? ksNativeAd.getAppIconUrl() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        if (this.f86442a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<KsImage> imageList = this.f86442a.getImageList();
        if (imageList == null || imageList.size() <= 0) {
            return null;
        }
        for (int i10 = 0; i10 < imageList.size(); i10++) {
            final KsImage ksImage = imageList.get(i10);
            if (ksImage != null) {
                arrayList.add(new WMImage() { // from class: com.windmill.kuaishou.f.4
                    @Override // com.windmill.sdk.natives.WMImage
                    public final int getHeight() {
                        return ksImage.getHeight();
                    }

                    @Override // com.windmill.sdk.natives.WMImage
                    public final String getImageUrl() {
                        return ksImage.getImageUrl();
                    }

                    @Override // com.windmill.sdk.natives.WMImage
                    public final int getWidth() {
                        return ksImage.getWidth();
                    }

                    @Override // com.windmill.sdk.natives.WMImage
                    public final boolean isValid() {
                        return ksImage.isValid();
                    }
                });
            }
        }
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<String> getImageUrlList() {
        List<KsImage> imageList;
        KsNativeAd ksNativeAd = this.f86442a;
        if (ksNativeAd == null || (imageList = ksNativeAd.getImageList()) == null || imageList.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < imageList.size(); i10++) {
            KsImage ksImage = imageList.get(i10);
            if (!TextUtils.isEmpty(ksImage.getImageUrl())) {
                arrayList.add(ksImage.getImageUrl());
            }
        }
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getInteractionType() {
        KsNativeAd ksNativeAd = this.f86442a;
        if (ksNativeAd != null) {
            return ksNativeAd.getInteractionType() == 1 ? 1 : 2;
        }
        return 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getNetworkId() {
        return this.f86445d;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f86442a;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        KsNativeAd ksNativeAd = this.f86442a;
        if (ksNativeAd != null) {
            return ksNativeAd.getInteractionType() == 1 ? this.f86442a.getAppName() : this.f86442a.getProductName();
        }
        return "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMImage getVideoCoverImage() {
        final KsImage videoCoverImage;
        KsNativeAd ksNativeAd = this.f86442a;
        return (ksNativeAd == null || (videoCoverImage = ksNativeAd.getVideoCoverImage()) == null) ? super.getVideoCoverImage() : new WMImage() { // from class: com.windmill.kuaishou.f.8
            @Override // com.windmill.sdk.natives.WMImage
            public final int getHeight() {
                return videoCoverImage.getHeight();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final String getImageUrl() {
                return videoCoverImage.getImageUrl();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final int getWidth() {
                return videoCoverImage.getWidth();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final boolean isValid() {
                return videoCoverImage.isValid();
            }
        };
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getVideoHeight() {
        KsNativeAd ksNativeAd = this.f86442a;
        return ksNativeAd != null ? ksNativeAd.getVideoHeight() : super.getVideoHeight();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getVideoWidth() {
        KsNativeAd ksNativeAd = this.f86442a;
        return ksNativeAd != null ? ksNativeAd.getVideoWidth() : super.getVideoWidth();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isExpressAd() {
        return false;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isNativeDrawAd() {
        return false;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null) {
            this.f86448g = dislikeInteractionCallback;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(final WMNativeAdData.AppDownloadListener appDownloadListener) {
        KsNativeAd ksNativeAd = this.f86442a;
        if (ksNativeAd == null || ksNativeAd.getInteractionType() != 1) {
            return;
        }
        KsAppDownloadListener ksAppDownloadListener = new KsAppDownloadListener() { // from class: com.windmill.kuaishou.f.7
            private boolean a() {
                return f.this.f86446e.get(f.this.f86442a) == this;
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFailed() {
                WMNativeAdData.AppDownloadListener appDownloadListener2;
                if (a() && (appDownloadListener2 = appDownloadListener) != null) {
                    appDownloadListener2.onDownloadFailed(100L, 50L, "", "");
                }
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFinished() {
                WMNativeAdData.AppDownloadListener appDownloadListener2;
                if (a() && (appDownloadListener2 = appDownloadListener) != null) {
                    appDownloadListener2.onDownloadFinished(100L, "", "");
                }
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadStarted() {
                WMNativeAdData.AppDownloadListener appDownloadListener2;
                if (a() && (appDownloadListener2 = appDownloadListener) != null) {
                    appDownloadListener2.onIdle();
                }
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onIdle() {
                WMNativeAdData.AppDownloadListener appDownloadListener2;
                if (a() && (appDownloadListener2 = appDownloadListener) != null) {
                    appDownloadListener2.onIdle();
                }
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onInstalled() {
                WMNativeAdData.AppDownloadListener appDownloadListener2;
                if (a() && (appDownloadListener2 = appDownloadListener) != null) {
                    appDownloadListener2.onInstalled("", "");
                }
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onProgressUpdate(int i10) {
                WMNativeAdData.AppDownloadListener appDownloadListener2;
                if (a() && (appDownloadListener2 = appDownloadListener) != null) {
                    appDownloadListener2.onDownloadActive(100L, i10, "", "");
                }
            }
        };
        this.f86442a.setDownloadListener(ksAppDownloadListener);
        this.f86446e.put(this.f86442a, ksAppDownloadListener);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f86444c = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener != null) {
            this.f86447f = nativeADMediaListener;
        }
    }
}
