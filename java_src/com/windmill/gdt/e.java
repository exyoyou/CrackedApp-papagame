package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.CustomizeVideo;
import com.qq.e.ads.nativ.MediaView;
import com.qq.e.ads.nativ.NativeADEventListener;
import com.qq.e.ads.nativ.NativeADMediaListener;
import com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import com.qq.e.comm.util.AdError;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdMediaListenerWrapper;
import com.windmill.sdk.natives.WMNativeAdRender;
import com.windmill.sdk.natives.WMNativePrivacyInfo;
import com.windmill.sdk.natives.WMVideoOption;
import com.windmill.sdk.utils.ViewUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class e extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public NativeUnifiedADData f86106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    WeakReference<Activity> f86107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    WMVideoOption f86108c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f86109d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private NativeAdContainer f86110e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WMNativeAdData.DislikeInteractionCallback f86111f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WMNativeAdData.AppDownloadListener f86112g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WMCustomNativeAdapter f86113h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map<String, Object> f86114i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f86115j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private WMNativeAdMediaListenerWrapper f86116k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private FrameLayout.LayoutParams f86117l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private WMNativeAdMediaListenerWrapper.IVideoInfoFormChannel f86118m = new WMNativeAdMediaListenerWrapper.IVideoInfoFormChannel() { // from class: com.windmill.gdt.e.4
        @Override // com.windmill.sdk.natives.WMNativeAdMediaListenerWrapper.IVideoInfoFormChannel
        public final long getVideoDuration() {
            NativeUnifiedADData nativeUnifiedADData = e.this.f86106a;
            if (nativeUnifiedADData == null) {
                return -1L;
            }
            return nativeUnifiedADData.getVideoDuration();
        }

        @Override // com.windmill.sdk.natives.WMNativeAdMediaListenerWrapper.IVideoInfoFormChannel
        public final long getVideoProgress() {
            NativeUnifiedADData nativeUnifiedADData = e.this.f86106a;
            if (nativeUnifiedADData == null) {
                return -1L;
            }
            return nativeUnifiedADData.getVideoCurrentPosition();
        }
    };

    public e(NativeUnifiedADData nativeUnifiedADData, WMCustomNativeAdapter wMCustomNativeAdapter, Map<String, Object> map, boolean z10) {
        WMNativeAdMediaListenerWrapper wMNativeAdMediaListenerWrapper = new WMNativeAdMediaListenerWrapper(this);
        this.f86116k = wMNativeAdMediaListenerWrapper;
        wMNativeAdMediaListenerWrapper.setVideoInfoFormChannel(this.f86118m);
        this.f86106a = nativeUnifiedADData;
        this.f86113h = wMCustomNativeAdapter;
        this.f86114i = map;
        this.f86115j = z10;
    }

    private WMImage a(final String str) {
        return new WMImage() { // from class: com.windmill.gdt.e.3
            @Override // com.windmill.sdk.natives.WMImage
            public final int getHeight() {
                return e.this.f86106a.getPictureHeight();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final String getImageUrl() {
                return str;
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final int getWidth() {
                return e.this.f86106a.getPictureWidth();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final boolean isValid() {
                return true;
            }
        };
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        if (this.f86106a == null || list.isEmpty()) {
            return;
        }
        this.f86106a.bindImageViews(list, i10);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, ViewGroup viewGroup) {
        MediaView mediaView;
        if (this.f86106a != null) {
            if (viewGroup != null) {
                mediaView = new MediaView(context);
                mediaView.setBackgroundColor(-16777216);
                ViewGroup.LayoutParams layoutParams = mediaView.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = this.f86115j ? new ViewGroup.LayoutParams(-1, -1) : new ViewGroup.LayoutParams(-1, -2);
                }
                viewGroup.removeAllViews();
                viewGroup.addView(mediaView, layoutParams);
            } else {
                mediaView = null;
            }
            VideoOption.Builder builder = new VideoOption.Builder();
            WMVideoOption wMVideoOption = this.f86108c;
            if (wMVideoOption != null) {
                builder.setNeedCoverImage(wMVideoOption.isNeedCoverImage());
                builder.setNeedProgressBar(this.f86108c.isNeedProgressBar());
                builder.setEnableDetailPage(this.f86108c.isEnableDetailPage());
                builder.setEnableUserControl(this.f86108c.isEnableUserControl());
            } else {
                builder.setNeedCoverImage(true);
                builder.setNeedProgressBar(true);
                builder.setEnableDetailPage(true);
                builder.setEnableUserControl(true);
            }
            Map<String, Object> map = this.f86114i;
            if (map != null) {
                Object obj = map.get(WMConstants.AUTO_PLAY_POLICY);
                Object obj2 = this.f86114i.get(WMConstants.AUTO_PLAY_MUTED);
                Object obj3 = this.f86114i.get(WMConstants.DETAIL_PAGE_MUTED);
                if (!TextUtils.isEmpty((CharSequence) obj)) {
                    if (obj.equals(t7.a.f97141e)) {
                        builder.setAutoPlayPolicy(0);
                    } else if (obj.equals("ALWAYS")) {
                        builder.setAutoPlayPolicy(1);
                    } else if (obj.equals("NEVER")) {
                        builder.setAutoPlayPolicy(2);
                    }
                }
                if (!TextUtils.isEmpty((CharSequence) obj2)) {
                    if (obj2.equals("1")) {
                        builder.setAutoPlayMuted(true);
                    } else if (obj2.equals("0")) {
                        builder.setAutoPlayMuted(false);
                    }
                }
                if (!TextUtils.isEmpty((CharSequence) obj3)) {
                    if (obj3.equals("1")) {
                        builder.setDetailPageMuted(true);
                    } else if (obj3.equals("0")) {
                        builder.setDetailPageMuted(false);
                    }
                }
            }
            this.f86106a.bindMediaView(mediaView, builder.build(), new NativeADMediaListener() { // from class: com.windmill.gdt.e.5
                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoClicked() {
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoCompleted() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoCompleted: ");
                    if (e.this.f86116k != null) {
                        e.this.f86116k.onVideoCompleted();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoError(AdError adError) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoError: ");
                    if (e.this.f86116k != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                        windMillError.setMessage(adError.getErrorCode() + ":" + adError.getErrorMsg());
                        e.this.f86116k.onVideoError(windMillError);
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoInit() {
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoLoaded(int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoLoaded: ");
                    if (e.this.f86116k != null) {
                        e.this.f86116k.onVideoLoad();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoLoading() {
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoPause() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPause: ");
                    if (e.this.f86116k != null) {
                        e.this.f86116k.onVideoPause();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoReady() {
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoResume() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoResume: ");
                    if (e.this.f86116k != null) {
                        e.this.f86116k.onVideoResume();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoStart() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoStart");
                    if (e.this.f86116k != null) {
                        e eVar = e.this;
                        if (eVar.f86106a != null) {
                            eVar.f86116k.onVideoStart(e.this.f86106a.getVideoDuration());
                        }
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoStop() {
                }
            });
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
        NativeAdContainer nativeAdContainer;
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData != null && (nativeAdContainer = this.f86110e) != null) {
            nativeUnifiedADData.bindAdToView(context, nativeAdContainer, this.f86117l, list, list2);
            this.f86106a.setNativeAdEventListener(new NativeADEventListener() { // from class: com.windmill.gdt.e.1
                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public final void onADClicked() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADClicked: ");
                    if (e.this.f86109d != null && e.this.f86113h != null) {
                        e.this.f86109d.onADClicked(e.this.f86113h.getAdInFo(e.this));
                    }
                    if (e.this.f86113h != null) {
                        e.this.f86113h.callNativeAdClick(e.this);
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public final void onADError(AdError adError) {
                    WMLogUtil.d(WMLogUtil.TAG, "onADError: ");
                    if (e.this.f86109d != null && e.this.f86113h != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                        windMillError.setMessage(adError.getErrorCode() + ":" + adError.getErrorMsg());
                        e.this.f86109d.onADError(e.this.f86113h.getAdInFo(e.this), windMillError);
                    }
                    if (e.this.f86113h != null) {
                        e.this.f86113h.callNativeAdShowError(e.this, new WMAdapterError(adError.getErrorCode(), adError.getErrorMsg()));
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public final void onADExposed() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADExposed: ");
                    if (e.this.f86109d != null && e.this.f86113h != null) {
                        e.this.f86109d.onADExposed(e.this.f86113h.getAdInFo(e.this));
                    }
                    if (e.this.f86113h != null) {
                        e.this.f86113h.callNativeAdShow(e.this);
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public final void onADStatusChanged() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADStatusChanged: ");
                    e eVar = e.this;
                    if (eVar.f86106a == null || eVar.f86112g == null) {
                        return;
                    }
                    int appStatus = e.this.f86106a.getAppStatus();
                    if (appStatus == 0) {
                        e.this.f86112g.onIdle();
                        return;
                    }
                    if (appStatus == 1) {
                        e.this.f86112g.onInstalled("", "");
                        return;
                    }
                    if (appStatus == 4) {
                        e.this.f86112g.onDownloadActive(1000L, 500L, "", "");
                        return;
                    }
                    if (appStatus == 8) {
                        e.this.f86112g.onDownloadFinished(1000L, "", "");
                    } else if (appStatus == 16) {
                        e.this.f86112g.onDownloadFailed(1000L, 500L, "", "");
                    } else {
                        if (appStatus != 32) {
                            return;
                        }
                        e.this.f86112g.onDownloadPaused(1000L, 500L, "", "");
                    }
                }
            });
        }
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.gdt.e.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    if (e.this.f86111f != null) {
                        e.this.f86111f.onSelected(0, MediationConstant.ADN_GDT, true);
                    }
                }
            });
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void connectAdToView(Activity activity, WMNativeAdContainer wMNativeAdContainer, WMNativeAdRender wMNativeAdRender) {
        this.f86107b = new WeakReference<>(activity);
        if (wMNativeAdContainer != null) {
            this.f86110e = new NativeAdContainer(activity);
            wMNativeAdContainer.removeAllViews();
            wMNativeAdContainer.addView(this.f86110e, new ViewGroup.LayoutParams(-1, -2));
        }
        if (wMNativeAdRender != null) {
            View viewCreateView = wMNativeAdRender.createView(activity, getAdPatternType());
            this.f86110e.removeAllViews();
            this.f86110e.addView(viewCreateView, new ViewGroup.LayoutParams(-1, -2));
            wMNativeAdRender.renderAdView(viewCreateView, this);
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void destroy() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.destroy();
        }
        this.f86109d = null;
        NativeAdContainer nativeAdContainer = this.f86110e;
        if (nativeAdContainer != null) {
            ViewUtil.removeChildFromParent(nativeAdContainer);
            this.f86110e = null;
        }
        this.f86111f = null;
        this.f86112g = null;
        this.f86113h = null;
        WMNativeAdMediaListenerWrapper wMNativeAdMediaListenerWrapper = this.f86116k;
        if (wMNativeAdMediaListenerWrapper != null) {
            wMNativeAdMediaListenerWrapper.destroy();
            this.f86116k = null;
        }
        this.f86118m = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData == null) {
            return 0;
        }
        int adPatternType = nativeUnifiedADData.getAdPatternType();
        if (adPatternType == 4 || adPatternType == 1) {
            return 2;
        }
        if (adPatternType == 3) {
            return 3;
        }
        return adPatternType == 2 ? 4 : 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.AppInfo getAppInfo() {
        NativeUnifiedADAppMiitInfo appMiitInfo;
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData == null || (appMiitInfo = nativeUnifiedADData.getAppMiitInfo()) == null) {
            return null;
        }
        return new WMNativePrivacyInfo(appMiitInfo.getAppName(), appMiitInfo.getVersionName(), appMiitInfo.getPackageSizeBytes(), "", appMiitInfo.getAuthorName(), appMiitInfo.getPrivacyAgreement(), "", appMiitInfo.getPermissionsUrl(), appMiitInfo.getDescriptionUrl());
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData == null) {
            return "查看详情";
        }
        if (nativeUnifiedADData.isWeChatCanvasAd()) {
            return "去微信看看";
        }
        if (!this.f86106a.isAppAd()) {
            return "浏览";
        }
        int appStatus = this.f86106a.getAppStatus();
        if (appStatus == 0) {
            return "下载";
        }
        if (appStatus == 1) {
            return "启动";
        }
        if (appStatus == 4) {
            return "下载中...";
        }
        if (appStatus == 8) {
            return "安装";
        }
        if (appStatus != 16) {
            return appStatus != 32 ? "查看详情" : "下载";
        }
        return "下载失败,重新下载";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.CustomizeVideo getCustomizeVideo() {
        final CustomizeVideo customizeVideo;
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        return (nativeUnifiedADData == null || (customizeVideo = nativeUnifiedADData.getCustomizeVideo()) == null) ? super.getCustomizeVideo() : new WMNativeAdData.CustomizeVideo() { // from class: com.windmill.gdt.e.6
            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final String getVideoUrl() {
                return customizeVideo.getVideoUrl();
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoCompleted() {
                customizeVideo.reportVideoCompleted();
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoError(long j10, int i10, int i11) {
                customizeVideo.reportVideoError(j10, i10, i11);
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoPause(long j10) {
                customizeVideo.reportVideoPause(j10);
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoPreload() {
                customizeVideo.reportVideoPreload();
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoResume(long j10) {
                customizeVideo.reportVideoResume(j10);
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoStart() {
                customizeVideo.reportVideoStart();
            }
        };
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getDesc() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        return nativeUnifiedADData != null ? nativeUnifiedADData.getDesc() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        return nativeUnifiedADData != null ? nativeUnifiedADData.getIconUrl() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        if (this.f86106a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(this.f86106a.getImgUrl())) {
            arrayList.add(a(this.f86106a.getImgUrl()));
        } else if (this.f86106a.getImgList() != null) {
            for (int i10 = 0; i10 < this.f86106a.getImgList().size(); i10++) {
                arrayList.add(a(this.f86106a.getImgList().get(i10)));
            }
        }
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<String> getImageUrlList() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData == null) {
            return null;
        }
        if (TextUtils.isEmpty(nativeUnifiedADData.getImgUrl())) {
            return this.f86106a.getImgList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f86106a.getImgUrl());
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getInteractionType() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData != null) {
            return nativeUnifiedADData.isAppAd() ? 1 : 2;
        }
        return 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getNetworkId() {
        WMCustomNativeAdapter wMCustomNativeAdapter = this.f86113h;
        if (wMCustomNativeAdapter != null) {
            return wMCustomNativeAdapter.getChannelId();
        }
        return 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f86106a;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        return nativeUnifiedADData != null ? nativeUnifiedADData.getTitle() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final long getVideoDuration() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        return nativeUnifiedADData != null ? nativeUnifiedADData.getVideoDuration() : super.getVideoDuration();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isExpressAd() {
        return false;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isNativeDrawAd() {
        return this.f86115j;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isReady() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData != null) {
            return nativeUnifiedADData.isValid();
        }
        return false;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void pauseVideo() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.pauseVideo();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void resumeVideo() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.resumeVideo();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setAdLogoParams(FrameLayout.LayoutParams layoutParams) {
        this.f86117l = layoutParams;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null) {
            this.f86111f = dislikeInteractionCallback;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
        if (appDownloadListener != null) {
            this.f86112g = appDownloadListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f86109d = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener != null) {
            WMNativeAdMediaListenerWrapper wMNativeAdMediaListenerWrapper = this.f86116k;
            if (wMNativeAdMediaListenerWrapper == null) {
                this.f86116k = new WMNativeAdMediaListenerWrapper(this, nativeADMediaListener);
            } else {
                wMNativeAdMediaListenerWrapper.setNativeADMediaListener(nativeADMediaListener);
            }
            this.f86116k.setVideoInfoFormChannel(this.f86118m);
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaViewOption(WMVideoOption wMVideoOption) {
        this.f86108c = wMVideoOption;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setVideoMute(boolean z10) {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.setVideoMute(z10);
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setVideoProgressUpdateInterval(int i10) {
        if (this.f86116k == null) {
            this.f86116k = new WMNativeAdMediaListenerWrapper(this);
        }
        this.f86116k.setVideoProgressUpdateInterval(i10);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void startVideo() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.startVideo();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void stopVideo() {
        NativeUnifiedADData nativeUnifiedADData = this.f86106a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.stopVideo();
        }
    }
}
