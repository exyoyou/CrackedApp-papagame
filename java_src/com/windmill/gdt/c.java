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
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import com.windmill.sdk.natives.WMNativePrivacyInfo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class c extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NativeUnifiedADData f86088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f86089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NativeAdContainer f86090c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WMNativeAdData.NativeADMediaListener f86091d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WeakReference<Activity> f86092e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WMNativeAdData.DislikeInteractionCallback f86093f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WMNativeAdData.AppDownloadListener f86094g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f86095h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map<String, Object> f86096i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f86097j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private FrameLayout.LayoutParams f86098k;

    public c(NativeUnifiedADData nativeUnifiedADData, int i10, Map<String, Object> map) {
        Object obj;
        NativeUnifiedADData nativeUnifiedADData2;
        this.f86088a = nativeUnifiedADData;
        this.f86095h = i10;
        this.f86096i = map;
        if (map == null || (obj = map.get("showDownloadDialog")) == null || !obj.equals("1") || (nativeUnifiedADData2 = this.f86088a) == null) {
            return;
        }
        nativeUnifiedADData2.setDownloadConfirmListener(GDTAdapterProxy.DOWNLOAD_CONFIRM_LISTENER);
    }

    private WMImage a(final String str) {
        return new WMImage() { // from class: com.windmill.gdt.c.3
            @Override // com.windmill.sdk.natives.WMImage
            public final int getHeight() {
                return c.this.f86088a.getPictureHeight();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final String getImageUrl() {
                return str;
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final int getWidth() {
                return c.this.f86088a.getPictureWidth();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final boolean isValid() {
                return true;
            }
        };
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        if (this.f86088a == null || list.isEmpty()) {
            return;
        }
        this.f86088a.bindImageViews(list, i10);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, ViewGroup viewGroup) {
        MediaView mediaView;
        if (this.f86088a != null) {
            if (viewGroup != null) {
                mediaView = new MediaView(context);
                mediaView.setBackgroundColor(-16777216);
                ViewGroup.LayoutParams layoutParams = mediaView.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = this.f86097j ? new ViewGroup.LayoutParams(-1, -1) : new ViewGroup.LayoutParams(-1, -2);
                }
                viewGroup.removeAllViews();
                viewGroup.addView(mediaView, layoutParams);
            } else {
                mediaView = null;
            }
            VideoOption.Builder builder = new VideoOption.Builder();
            builder.setNeedCoverImage(true);
            builder.setNeedProgressBar(true);
            builder.setEnableDetailPage(true);
            builder.setEnableUserControl(true);
            Map<String, Object> map = this.f86096i;
            if (map != null) {
                Object obj = map.get(WMConstants.AUTO_PLAY_POLICY);
                Object obj2 = this.f86096i.get(WMConstants.AUTO_PLAY_MUTED);
                Object obj3 = this.f86096i.get(WMConstants.DETAIL_PAGE_MUTED);
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
            this.f86088a.bindMediaView(mediaView, builder.build(), new NativeADMediaListener() { // from class: com.windmill.gdt.c.4
                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoClicked() {
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoCompleted() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoCompleted: ");
                    if (c.this.f86091d != null) {
                        c.this.f86091d.onVideoCompleted();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoError(AdError adError) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoError: ");
                    if (c.this.f86091d != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                        windMillError.setMessage(adError.getErrorCode() + ":" + adError.getErrorMsg());
                        c.this.f86091d.onVideoError(windMillError);
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoInit() {
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoLoaded(int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoLoaded: ");
                    if (c.this.f86091d != null) {
                        c.this.f86091d.onVideoLoad();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoLoading() {
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoPause() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoPause: ");
                    if (c.this.f86091d != null) {
                        c.this.f86091d.onVideoPause();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoReady() {
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoResume() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoResume: ");
                    if (c.this.f86091d != null) {
                        c.this.f86091d.onVideoResume();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADMediaListener
                public final void onVideoStart() {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoStart");
                    if (c.this.f86091d != null) {
                        c.this.f86091d.onVideoStart();
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
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        if (nativeUnifiedADData != null && (nativeAdContainer = this.f86090c) != null) {
            nativeUnifiedADData.bindAdToView(context, nativeAdContainer, this.f86098k, list, list2);
            this.f86088a.setNativeAdEventListener(new NativeADEventListener() { // from class: com.windmill.gdt.c.1
                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public final void onADClicked() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADClicked: ");
                    if (c.this.f86089b != null) {
                        c.this.f86089b.onADClicked(null);
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public final void onADError(AdError adError) {
                    WMLogUtil.d(WMLogUtil.TAG, "onADError: ");
                    if (c.this.f86089b != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                        windMillError.setMessage(adError.getErrorCode() + ":" + adError.getErrorMsg());
                        c.this.f86089b.onADError(null, windMillError);
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public final void onADExposed() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADExposed: ");
                    if (c.this.f86089b != null) {
                        c.this.f86089b.onADExposed(null);
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public final void onADStatusChanged() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADStatusChanged: ");
                    if (c.this.f86088a == null || c.this.f86094g == null) {
                        return;
                    }
                    int appStatus = c.this.f86088a.getAppStatus();
                    if (appStatus == 0) {
                        c.this.f86094g.onIdle();
                        return;
                    }
                    if (appStatus == 1) {
                        c.this.f86094g.onInstalled("", "");
                        return;
                    }
                    if (appStatus == 4) {
                        c.this.f86094g.onDownloadActive(1000L, 500L, "", "");
                        return;
                    }
                    if (appStatus == 8) {
                        c.this.f86094g.onDownloadFinished(1000L, "", "");
                    } else if (appStatus == 16) {
                        c.this.f86094g.onDownloadFailed(1000L, 500L, "", "");
                    } else {
                        if (appStatus != 32) {
                            return;
                        }
                        c.this.f86094g.onDownloadPaused(1000L, 500L, "", "");
                    }
                }
            });
        }
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.gdt.c.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    if (c.this.f86093f != null) {
                        c.this.f86093f.onSelected(0, MediationConstant.ADN_GDT, true);
                    }
                }
            });
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void connectAdToView(Activity activity, WMNativeAdContainer wMNativeAdContainer, WMNativeAdRender wMNativeAdRender) {
        this.f86092e = new WeakReference<>(activity);
        if (wMNativeAdContainer != null) {
            this.f86090c = new NativeAdContainer(activity);
            wMNativeAdContainer.removeAllViews();
            wMNativeAdContainer.addView(this.f86090c, new ViewGroup.LayoutParams(-1, -2));
        }
        if (wMNativeAdRender != null) {
            View viewCreateView = wMNativeAdRender.createView(activity, getAdPatternType());
            this.f86090c.removeAllViews();
            this.f86090c.addView(viewCreateView, new ViewGroup.LayoutParams(-1, -2));
            wMNativeAdRender.renderAdView(viewCreateView, this);
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void destroy() {
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.destroy();
        }
        if (this.f86089b != null) {
            this.f86089b = null;
        }
        this.f86091d = null;
        this.f86093f = null;
        this.f86094g = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
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
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        if (nativeUnifiedADData == null || (appMiitInfo = nativeUnifiedADData.getAppMiitInfo()) == null) {
            return null;
        }
        return new WMNativePrivacyInfo(appMiitInfo.getAppName(), appMiitInfo.getVersionName(), appMiitInfo.getPackageSizeBytes(), "", appMiitInfo.getAuthorName(), appMiitInfo.getPrivacyAgreement(), "", appMiitInfo.getPermissionsUrl(), appMiitInfo.getDescriptionUrl());
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        if (nativeUnifiedADData == null) {
            return "获取详情";
        }
        if (nativeUnifiedADData.isWeChatCanvasAd()) {
            return "去微信看看";
        }
        if (!this.f86088a.isAppAd()) {
            return "浏览";
        }
        int appStatus = this.f86088a.getAppStatus();
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
            return appStatus != 32 ? "获取详情" : "下载";
        }
        return "下载失败,重新下载";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.CustomizeVideo getCustomizeVideo() {
        final CustomizeVideo customizeVideo;
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        return (nativeUnifiedADData == null || (customizeVideo = nativeUnifiedADData.getCustomizeVideo()) == null) ? super.getCustomizeVideo() : new WMNativeAdData.CustomizeVideo() { // from class: com.windmill.gdt.c.5
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
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        return nativeUnifiedADData != null ? nativeUnifiedADData.getDesc() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        return nativeUnifiedADData != null ? nativeUnifiedADData.getIconUrl() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        if (this.f86088a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(this.f86088a.getImgUrl())) {
            arrayList.add(a(this.f86088a.getImgUrl()));
        } else if (this.f86088a.getImgList() != null) {
            for (int i10 = 0; i10 < this.f86088a.getImgList().size(); i10++) {
                arrayList.add(a(this.f86088a.getImgList().get(i10)));
            }
        }
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<String> getImageUrlList() {
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        if (nativeUnifiedADData == null) {
            return null;
        }
        if (TextUtils.isEmpty(nativeUnifiedADData.getImgUrl())) {
            return this.f86088a.getImgList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f86088a.getImgUrl());
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getInteractionType() {
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        if (nativeUnifiedADData != null) {
            return nativeUnifiedADData.isAppAd() ? 1 : 2;
        }
        return 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final ViewGroup getNativeAdContainer(Context context) {
        if (this.f86090c == null) {
            this.f86090c = new NativeAdContainer(context);
        }
        return this.f86090c;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getNetworkId() {
        return this.f86095h;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f86088a;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        return nativeUnifiedADData != null ? nativeUnifiedADData.getTitle() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isExpressAd() {
        return false;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isNativeDrawAd() {
        return this.f86097j;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void pauseVideo() {
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.pauseVideo();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void resumeVideo() {
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.resumeVideo();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setAdLogoParams(FrameLayout.LayoutParams layoutParams) {
        this.f86098k = layoutParams;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null) {
            this.f86093f = dislikeInteractionCallback;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
        if (appDownloadListener != null) {
            this.f86094g = appDownloadListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f86089b = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener != null) {
            this.f86091d = nativeADMediaListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setVideoMute(boolean z10) {
        super.setVideoMute(z10);
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.setVideoMute(z10);
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void startVideo() {
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.startVideo();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void stopVideo() {
        NativeUnifiedADData nativeUnifiedADData = this.f86088a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.stopVideo();
        }
    }

    public final void a(Activity activity) {
        NativeUnifiedADData nativeUnifiedADData;
        WMLogUtil.d(WMLogUtil.TAG, "---------resume----------");
        WeakReference<Activity> weakReference = this.f86092e;
        if (weakReference == null || !activity.equals(weakReference.get()) || (nativeUnifiedADData = this.f86088a) == null) {
            return;
        }
        nativeUnifiedADData.resume();
    }
}
