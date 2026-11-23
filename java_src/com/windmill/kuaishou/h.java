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
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
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
public final class h extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public KsNativeAd f86468a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f86469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f86470c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<KsNativeAd, KsAppDownloadListener> f86471d = new WeakHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WMNativeAdData.NativeADMediaListener f86472e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WMNativeAdData.DislikeInteractionCallback f86473f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private KsNativeAd.AdInteractionListener f86474g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Bitmap f86475h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private WeakReference<View> f86476i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f86477j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f86478k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private WeakReference<Activity> f86479l;

    public h(KsNativeAd ksNativeAd, final WMCustomNativeAdapter wMCustomNativeAdapter, Map<String, Object> map) {
        this.f86469b = false;
        this.f86477j = false;
        this.f86468a = ksNativeAd;
        if (wMCustomNativeAdapter != null) {
            this.f86478k = wMCustomNativeAdapter.getChannelId();
        }
        if (map != null) {
            try {
                Object obj = map.get(WMConstants.AUTO_PLAY_MUTED);
                if (obj == null || !obj.equals("0")) {
                    this.f86469b = false;
                } else {
                    this.f86469b = true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (map != null) {
            Object obj2 = map.get("showDownloadDialog");
            if (obj2 == null || !obj2.equals("1")) {
                this.f86477j = false;
            } else {
                this.f86477j = true;
            }
        }
        if (ksNativeAd != null) {
            ImageManager.with(WindMillAd.sharedAds().getContext()).getBitmap(ksNativeAd.getAdSourceLogoUrl(0), new ImageManager.BitmapLoadedListener() { // from class: com.windmill.kuaishou.h.1
                @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                public final void onBitmapLoadFailed() {
                }

                @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                public final void onBitmapLoaded(Bitmap bitmap) {
                    h.this.f86475h = bitmap;
                }
            });
        }
        this.f86474g = new KsNativeAd.AdInteractionListener() { // from class: com.windmill.kuaishou.h.2
            @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
            public final boolean handleDownloadDialog(DialogInterface.OnClickListener onClickListener) {
                return false;
            }

            @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
            public final void onAdClicked(View view, KsNativeAd ksNativeAd2) {
                if (ksNativeAd2 != null) {
                    WMLogUtil.d(WMLogUtil.TAG, "onAdClicked:" + ksNativeAd2.getAppName());
                }
                if (h.this.f86470c != null && wMCustomNativeAdapter != null) {
                    h.this.f86470c.onADClicked(wMCustomNativeAdapter.getAdInFo(h.this));
                }
                WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                if (wMCustomNativeAdapter2 != null) {
                    wMCustomNativeAdapter2.callNativeAdClick(h.this);
                }
            }

            @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
            public final void onAdShow(KsNativeAd ksNativeAd2) {
                if (ksNativeAd2 != null) {
                    WMLogUtil.d(WMLogUtil.TAG, "onAdShow:" + ksNativeAd2.getAppName());
                }
                if (h.this.f86470c != null && wMCustomNativeAdapter != null) {
                    h.this.f86470c.onADExposed(wMCustomNativeAdapter.getAdInFo(h.this));
                }
                WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                if (wMCustomNativeAdapter2 != null) {
                    wMCustomNativeAdapter2.callNativeAdShow(h.this);
                }
            }

            @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
            public final void onDownloadTipsDialogDismiss() {
            }

            @Override // com.kwad.sdk.api.KsNativeAd.AdInteractionListener
            public final void onDownloadTipsDialogShow() {
            }
        };
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        KsImage ksImage;
        if (this.f86468a == null || list.isEmpty()) {
            return;
        }
        if (this.f86468a.getMaterialType() == 2) {
            if (this.f86468a.getImageList() == null || (ksImage = this.f86468a.getImageList().get(0)) == null || !ksImage.isValid()) {
                return;
            }
            ImageManager.with(context).load(ksImage.getImageUrl()).placeholder(i10).error(i10).into(list.get(0));
            return;
        }
        if (this.f86468a.getMaterialType() != 3 || this.f86468a.getImageList() == null) {
            return;
        }
        int iMin = Math.min(list.size(), this.f86468a.getImageList().size());
        for (int i11 = 0; i11 < iMin; i11++) {
            KsImage ksImage2 = this.f86468a.getImageList().get(i11);
            if (ksImage2 != null && ksImage2.isValid()) {
                ImageManager.with(context).load(ksImage2.getImageUrl()).placeholder(i10).error(i10).into(list.get(i11));
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, ViewGroup viewGroup) {
        WeakReference<View> weakReference;
        View view;
        KsNativeAd ksNativeAd = this.f86468a;
        if (ksNativeAd != null) {
            ksNativeAd.setVideoPlayListener(new KsNativeAd.VideoPlayListener() { // from class: com.windmill.kuaishou.h.5
                @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                public final void onVideoPlayComplete() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayComplete");
                    if (h.this.f86472e != null) {
                        h.this.f86472e.onVideoCompleted();
                    }
                }

                @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                public final void onVideoPlayError(int i10, int i11) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayError:" + i10 + ":" + i11);
                    if (h.this.f86472e != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                        windMillError.setMessage(i10 + "-" + i11);
                        h.this.f86472e.onVideoError(windMillError);
                    }
                }

                @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                public final void onVideoPlayPause() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayPause");
                    if (h.this.f86472e != null) {
                        h.this.f86472e.onVideoPause();
                    }
                }

                @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                public final void onVideoPlayReady() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayReady");
                    if (h.this.f86472e != null) {
                        h.this.f86472e.onVideoLoad();
                    }
                }

                @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                public final void onVideoPlayResume() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayResume");
                    if (h.this.f86472e != null) {
                        h.this.f86472e.onVideoResume();
                    }
                }

                @Override // com.kwad.sdk.api.KsNativeAd.VideoPlayListener
                public final void onVideoPlayStart() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPlayStart");
                    if (h.this.f86472e != null) {
                        h.this.f86472e.onVideoStart();
                    }
                }
            });
            if (viewGroup == null || (weakReference = this.f86476i) == null || (view = weakReference.get()) == null) {
                return;
            }
            if (view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            viewGroup.removeAllViews();
            viewGroup.addView(view, new ViewGroup.LayoutParams(-1, -2));
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
        View view3;
        int i10;
        View view4;
        int i11;
        if (this.f86468a != null) {
            HashMap map = new HashMap();
            if (list != null && list.size() > 0) {
                for (int i12 = 0; i12 < list.size(); i12++) {
                    if (this.f86477j) {
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
                    if (this.f86477j) {
                        view3 = list2.get(i13);
                        i10 = 2;
                    } else {
                        view3 = list2.get(i13);
                        i10 = 3;
                    }
                    map.put(view3, i10);
                }
            }
            WeakReference<Activity> weakReference = this.f86479l;
            Activity activity = (weakReference == null || weakReference.get() == null) ? context instanceof Activity ? (Activity) context : null : this.f86479l.get();
            View videoView = this.f86468a.getVideoView(context, new KsAdVideoPlayConfig.Builder().videoSoundEnable(this.f86469b).dataFlowAutoStart(true).build());
            if (videoView != null) {
                this.f86476i = new WeakReference<>(videoView);
            }
            if (activity != null) {
                if (videoView != null) {
                    map.put(videoView, this.f86477j ? 2 : 3);
                }
                this.f86468a.registerViewForInteraction(activity, (ViewGroup) view, map, this.f86474g);
            } else {
                if (videoView != null) {
                    list.add(videoView);
                }
                this.f86468a.registerViewForInteraction((ViewGroup) view, list, this.f86474g);
            }
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.kuaishou.h.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view5) {
                        if (h.this.f86473f != null) {
                            h.this.f86473f.onSelected(0, MediationConstant.ADN_KS, true);
                        }
                    }
                });
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void connectAdToView(Activity activity, WMNativeAdContainer wMNativeAdContainer, WMNativeAdRender wMNativeAdRender) {
        this.f86479l = new WeakReference<>(activity);
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
        this.f86468a = null;
        Bitmap bitmap = this.f86475h;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f86475h.recycle();
        }
        this.f86475h = null;
        this.f86472e = null;
        this.f86474g = null;
        this.f86473f = null;
        Map<KsNativeAd, KsAppDownloadListener> map = this.f86471d;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return this.f86475h;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        KsNativeAd ksNativeAd = this.f86468a;
        if (ksNativeAd == null) {
            return 0;
        }
        if (ksNativeAd.getMaterialType() == 2) {
            return 2;
        }
        if (this.f86468a.getMaterialType() == 3) {
            return 3;
        }
        return (this.f86468a.getMaterialType() == 1 || this.f86468a.getMaterialType() == 8) ? 4 : 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.AppInfo getAppInfo() {
        KsNativeAd ksNativeAd = this.f86468a;
        if (ksNativeAd != null) {
            return new WMNativePrivacyInfo(ksNativeAd.getAppName(), this.f86468a.getAppVersion(), this.f86468a.getAppPackageSize(), this.f86468a.getAppPackageName(), this.f86468a.getCorporationName(), this.f86468a.getAppPrivacyUrl(), this.f86468a.getPermissionInfo(), this.f86468a.getPermissionInfoUrl(), this.f86468a.getIntroductionInfoUrl());
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        KsNativeAd ksNativeAd = this.f86468a;
        if (ksNativeAd == null) {
            return "";
        }
        if (TextUtils.isEmpty(ksNativeAd.getActionDescription())) {
            return this.f86468a.getInteractionType() == 1 ? "立即下载" : "查看详情";
        }
        return this.f86468a.getActionDescription();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.CustomizeVideo getCustomizeVideo() {
        return this.f86468a != null ? new WMNativeAdData.CustomizeVideo() { // from class: com.windmill.kuaishou.h.8
            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final String getVideoUrl() {
                KsNativeAd ksNativeAd = h.this.f86468a;
                if (ksNativeAd != null) {
                    return ksNativeAd.getVideoUrl();
                }
                return null;
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoCompleted() {
                KsNativeAd ksNativeAd = h.this.f86468a;
                if (ksNativeAd != null) {
                    ksNativeAd.reportAdVideoPlayEnd();
                }
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
                KsNativeAd ksNativeAd = h.this.f86468a;
                if (ksNativeAd != null) {
                    ksNativeAd.reportAdVideoPlayStart();
                }
            }
        } : super.getCustomizeVideo();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getDesc() {
        KsNativeAd ksNativeAd = this.f86468a;
        return ksNativeAd != null ? ksNativeAd.getAdDescription() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        KsNativeAd ksNativeAd = this.f86468a;
        return ksNativeAd != null ? ksNativeAd.getAppIconUrl() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        if (this.f86468a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<KsImage> imageList = this.f86468a.getImageList();
        if (imageList == null || imageList.size() <= 0) {
            return null;
        }
        for (int i10 = 0; i10 < imageList.size(); i10++) {
            final KsImage ksImage = imageList.get(i10);
            if (ksImage != null) {
                arrayList.add(new WMImage() { // from class: com.windmill.kuaishou.h.4
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
        KsNativeAd ksNativeAd = this.f86468a;
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
        KsNativeAd ksNativeAd = this.f86468a;
        if (ksNativeAd != null) {
            return ksNativeAd.getInteractionType() == 1 ? 1 : 2;
        }
        return 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getNetworkId() {
        return this.f86478k;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f86468a;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        KsNativeAd ksNativeAd = this.f86468a;
        if (ksNativeAd != null) {
            return ksNativeAd.getInteractionType() == 1 ? this.f86468a.getAppName() : this.f86468a.getProductName();
        }
        return "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMImage getVideoCoverImage() {
        KsImage videoCoverImage;
        KsNativeAd ksNativeAd = this.f86468a;
        if (ksNativeAd == null || (videoCoverImage = ksNativeAd.getVideoCoverImage()) == null) {
            return super.getVideoCoverImage();
        }
        final int height = videoCoverImage.getHeight();
        final int width = videoCoverImage.getWidth();
        final String imageUrl = videoCoverImage.getImageUrl();
        final boolean zIsValid = videoCoverImage.isValid();
        return new WMImage() { // from class: com.windmill.kuaishou.h.7
            @Override // com.windmill.sdk.natives.WMImage
            public final int getHeight() {
                return height;
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final String getImageUrl() {
                return imageUrl;
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final int getWidth() {
                return width;
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final boolean isValid() {
                return zIsValid;
            }
        };
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final long getVideoDuration() {
        KsNativeAd ksNativeAd = this.f86468a;
        return ksNativeAd != null ? ((long) ksNativeAd.getVideoDuration()) * 1000 : super.getVideoDuration();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getVideoHeight() {
        KsNativeAd ksNativeAd = this.f86468a;
        return ksNativeAd != null ? ksNativeAd.getVideoHeight() : super.getVideoHeight();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getVideoWidth() {
        KsNativeAd ksNativeAd = this.f86468a;
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
            this.f86473f = dislikeInteractionCallback;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(final WMNativeAdData.AppDownloadListener appDownloadListener) {
        KsNativeAd ksNativeAd = this.f86468a;
        if (ksNativeAd == null || ksNativeAd.getInteractionType() != 1) {
            return;
        }
        KsAppDownloadListener ksAppDownloadListener = new KsAppDownloadListener() { // from class: com.windmill.kuaishou.h.6
            private boolean a() {
                return h.this.f86471d != null && h.this.f86471d.get(h.this.f86468a) == this;
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
        this.f86468a.setDownloadListener(ksAppDownloadListener);
        this.f86471d.put(this.f86468a, ksAppDownloadListener);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f86470c = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener != null) {
            this.f86472e = nativeADMediaListener;
        }
    }
}
