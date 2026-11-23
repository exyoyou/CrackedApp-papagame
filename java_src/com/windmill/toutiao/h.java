package com.windmill.toutiao;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.ComplianceInfo;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTImage;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.czhj.sdk.common.utils.ImageManager;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdMediaListenerWrapper;
import com.windmill.sdk.natives.WMNativeAdRender;
import com.windmill.sdk.natives.WMNativePrivacyInfo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes8.dex */
public final class h extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TTDrawFeedAd f87785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f87786b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TTNativeAd.AdInteractionListener f87788d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f87789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View.OnClickListener f87790f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private WMNativeAdMediaListenerWrapper f87793i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private WeakReference<Activity> f87794j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<TTFeedAd, TTAppDownloadListener> f87787c = new WeakHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f87791g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f87792h = -1;

    public h(TTDrawFeedAd tTDrawFeedAd, final WMCustomNativeAdapter wMCustomNativeAdapter) {
        this.f87788d = null;
        this.f87789e = 0;
        this.f87785a = tTDrawFeedAd;
        if (wMCustomNativeAdapter != null) {
            this.f87789e = wMCustomNativeAdapter.getChannelId();
        }
        this.f87793i = new WMNativeAdMediaListenerWrapper(this);
        this.f87788d = new TTNativeAd.AdInteractionListener() { // from class: com.windmill.toutiao.h.1
            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            public final void onAdClicked(View view, TTNativeAd tTNativeAd) {
                if (h.this.f87786b != null && wMCustomNativeAdapter != null) {
                    h.this.f87786b.onADClicked(wMCustomNativeAdapter.getAdInFo(h.this));
                }
                if (tTNativeAd != null) {
                    WMLogUtil.d(WMLogUtil.TAG, "onAdClicked:" + tTNativeAd.getTitle());
                }
                WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                if (wMCustomNativeAdapter2 != null) {
                    wMCustomNativeAdapter2.callNativeAdClick(h.this);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            public final void onAdCreativeClick(View view, TTNativeAd tTNativeAd) {
                if (h.this.f87786b != null && wMCustomNativeAdapter != null) {
                    h.this.f87786b.onADClicked(wMCustomNativeAdapter.getAdInFo(h.this));
                }
                if (tTNativeAd != null) {
                    WMLogUtil.d(WMLogUtil.TAG, "onAdCreativeClick:" + tTNativeAd.getTitle());
                }
                WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                if (wMCustomNativeAdapter2 != null) {
                    wMCustomNativeAdapter2.callNativeAdClick(h.this);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            public final void onAdShow(TTNativeAd tTNativeAd) {
                if (h.this.f87786b != null && wMCustomNativeAdapter != null) {
                    h.this.f87786b.onADExposed(wMCustomNativeAdapter.getAdInFo(h.this));
                }
                if (tTNativeAd != null) {
                    WMLogUtil.d(WMLogUtil.TAG, "onAdShow:" + tTNativeAd.getTitle());
                }
                WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                if (wMCustomNativeAdapter2 != null) {
                    wMCustomNativeAdapter2.callNativeAdShow(h.this);
                }
            }
        };
        TTDrawFeedAd tTDrawFeedAd2 = this.f87785a;
        if (tTDrawFeedAd2 != null) {
            tTDrawFeedAd2.setCanInterruptVideoPlay(true);
            this.f87785a.setDrawVideoListener(new TTDrawFeedAd.DrawVideoListener() { // from class: com.windmill.toutiao.h.2
                @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd.DrawVideoListener
                public final void onClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "onClick()");
                }

                @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd.DrawVideoListener
                public final void onClickRetry() {
                    WMLogUtil.d(WMLogUtil.TAG, "onAdClicked()");
                }
            });
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        TTImage tTImage;
        if (this.f87785a == null || list.isEmpty()) {
            return;
        }
        int imageMode = this.f87785a.getImageMode();
        if (imageMode == 2 || imageMode == 3 || imageMode == 16) {
            if (this.f87785a.getImageList() == null || (tTImage = this.f87785a.getImageList().get(0)) == null || !tTImage.isValid()) {
                return;
            }
            ImageManager.with(context).load(tTImage.getImageUrl()).placeholder(i10).error(i10).into(list.get(0));
            return;
        }
        if (this.f87785a.getImageMode() != 4 || this.f87785a.getImageList() == null) {
            return;
        }
        int iMin = Math.min(list.size(), this.f87785a.getImageList().size());
        for (int i11 = 0; i11 < iMin; i11++) {
            TTImage tTImage2 = this.f87785a.getImageList().get(i11);
            if (tTImage2 != null && tTImage2.isValid()) {
                ImageManager.with(context).load(tTImage2.getImageUrl()).placeholder(i10).error(i10).into(list.get(i11));
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, final ViewGroup viewGroup) {
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        if (tTDrawFeedAd != null) {
            tTDrawFeedAd.setVideoAdListener(new TTFeedAd.VideoAdListener() { // from class: com.windmill.toutiao.h.4
                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onProgressUpdate(long j10, long j11) {
                    h.this.f87791g = j10;
                    h.this.f87792h = j11;
                    WMLogUtil.d(WMLogUtil.TAG, "onProgressUpdate current:" + j10 + " duration:" + j11);
                    if (h.this.f87793i != null) {
                        h.this.f87793i.onVideoProgressUpdate(j10, j11);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdComplete(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdComplete");
                    if (h.this.f87793i != null) {
                        h.this.f87793i.onVideoCompleted();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdContinuePlay(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdContinuePlay:" + tTFeedAd.getTitle());
                    if (h.this.f87793i != null) {
                        h.this.f87793i.onVideoResume();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdPaused(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdPaused:" + tTFeedAd.getTitle());
                    if (h.this.f87793i != null) {
                        h.this.f87793i.onVideoPause();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdStartPlay(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdStartPlay:" + tTFeedAd.getTitle());
                    if (h.this.f87793i == null || h.this.f87785a == null) {
                        return;
                    }
                    h.this.f87793i.onVideoStart((long) (h.this.f87785a.getVideoDuration() * 1000.0d));
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoError(int i10, int i11) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoError:" + i10 + ":" + i11);
                    if (h.this.f87793i != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                        windMillError.setMessage(i10 + "-" + i11);
                        h.this.f87793i.onVideoError(windMillError);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoLoad(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoLoad:" + tTFeedAd.getTitle());
                    if (h.this.f87793i != null) {
                        h.this.f87793i.onVideoLoad();
                    }
                }
            });
            if (viewGroup != null) {
                this.f87785a.getAdView().getLayoutParams();
                viewGroup.post(new Runnable() { // from class: com.windmill.toutiao.h.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        int width = viewGroup.getWidth();
                        h.a(viewGroup, width, (int) (((double) width) / (((double) h.this.f87785a.getAdViewWidth()) / ((double) h.this.f87785a.getAdViewHeight()))));
                        View adView = h.this.f87785a.getAdView();
                        if (adView != null) {
                            if (adView.getParent() != null && (adView.getParent() instanceof ViewGroup)) {
                                ((ViewGroup) adView.getParent()).removeView(adView);
                            }
                            if (adView.getParent() == null) {
                                viewGroup.removeAllViews();
                                viewGroup.addView(adView);
                            }
                        }
                    }
                });
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
        WeakReference<Activity> weakReference;
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        if (tTDrawFeedAd != null) {
            tTDrawFeedAd.registerViewForInteraction((ViewGroup) view, list, list2, view2, this.f87788d);
            if (this.f87785a.getInteractionType() == 4 && (weakReference = this.f87794j) != null && weakReference.get() != null) {
                this.f87785a.setActivityForDownloadApp(this.f87794j.get());
            }
            if (view2 != null) {
                view2.setOnClickListener(this.f87790f);
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void connectAdToView(Activity activity, WMNativeAdContainer wMNativeAdContainer, WMNativeAdRender wMNativeAdRender) {
        this.f87794j = new WeakReference<>(activity);
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
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        if (tTDrawFeedAd != null) {
            tTDrawFeedAd.destroy();
        }
        this.f87788d = null;
        this.f87790f = null;
        this.f87786b = null;
        WMNativeAdMediaListenerWrapper wMNativeAdMediaListenerWrapper = this.f87793i;
        if (wMNativeAdMediaListenerWrapper != null) {
            wMNativeAdMediaListenerWrapper.destroy();
            this.f87793i = null;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        if (tTDrawFeedAd != null) {
            return tTDrawFeedAd.getAdLogo();
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        if (tTDrawFeedAd == null) {
            return 0;
        }
        int i10 = 2;
        if (tTDrawFeedAd.getImageMode() == 2) {
            return 1;
        }
        if (this.f87785a.getImageMode() != 3 && this.f87785a.getImageMode() != 16) {
            i10 = 4;
            if (this.f87785a.getImageMode() == 4) {
                return 3;
            }
            if (this.f87785a.getImageMode() != 5 && this.f87785a.getImageMode() != 15) {
                return 0;
            }
        }
        return i10;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.AppInfo getAppInfo() {
        ComplianceInfo complianceInfo;
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        if (tTDrawFeedAd == null || (complianceInfo = tTDrawFeedAd.getComplianceInfo()) == null) {
            return null;
        }
        return new WMNativePrivacyInfo(complianceInfo.getAppName(), complianceInfo.getAppVersion(), this.f87785a.getAppSize(), "", complianceInfo.getDeveloperName(), complianceInfo.getPrivacyUrl(), a(complianceInfo.getPermissionsMap()), complianceInfo.getPermissionUrl(), complianceInfo.getFunctionDescUrl());
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        if (tTDrawFeedAd == null) {
            return "";
        }
        int interactionType = tTDrawFeedAd.getInteractionType();
        if (interactionType == 2 || interactionType == 3) {
            return "查看详情";
        }
        if (interactionType != 4) {
            return interactionType != 5 ? this.f87785a.getButtonText() : "立即拨打";
        }
        return "开始下载";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.CustomizeVideo getCustomizeVideo() {
        final TTFeedAd.CustomizeVideo customVideo;
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        return (tTDrawFeedAd == null || (customVideo = tTDrawFeedAd.getCustomVideo()) == null) ? super.getCustomizeVideo() : new WMNativeAdData.CustomizeVideo() { // from class: com.windmill.toutiao.h.9
            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final String getVideoUrl() {
                return customVideo.getVideoUrl();
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoCompleted() {
                customVideo.reportVideoFinish();
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoError(long j10, int i10, int i11) {
                customVideo.reportVideoError(j10, i10, i11);
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoPause(long j10) {
                customVideo.reportVideoPause(j10);
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoPreload() {
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoResume(long j10) {
                customVideo.reportVideoContinue(j10);
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoStart() {
                customVideo.reportVideoStart();
            }
        };
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getDesc() {
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        return tTDrawFeedAd != null ? tTDrawFeedAd.getDescription() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        if (tTDrawFeedAd != null) {
            return tTDrawFeedAd.getAdView();
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        TTImage icon;
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        return (tTDrawFeedAd == null || (icon = tTDrawFeedAd.getIcon()) == null || !icon.isValid()) ? "" : icon.getImageUrl();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        List<TTImage> imageList;
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        if (tTDrawFeedAd == null || (imageList = tTDrawFeedAd.getImageList()) == null || imageList.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < imageList.size(); i10++) {
            final TTImage tTImage = imageList.get(i10);
            if (tTImage != null) {
                arrayList.add(new WMImage() { // from class: com.windmill.toutiao.h.3
                    @Override // com.windmill.sdk.natives.WMImage
                    public final int getHeight() {
                        return tTImage.getHeight();
                    }

                    @Override // com.windmill.sdk.natives.WMImage
                    public final String getImageUrl() {
                        return tTImage.getImageUrl();
                    }

                    @Override // com.windmill.sdk.natives.WMImage
                    public final int getWidth() {
                        return tTImage.getWidth();
                    }

                    @Override // com.windmill.sdk.natives.WMImage
                    public final boolean isValid() {
                        return tTImage.isValid();
                    }
                });
            }
        }
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<String> getImageUrlList() {
        List<TTImage> imageList;
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        if (tTDrawFeedAd == null || (imageList = tTDrawFeedAd.getImageList()) == null || imageList.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < imageList.size(); i10++) {
            TTImage tTImage = imageList.get(i10);
            if (!TextUtils.isEmpty(tTImage.getImageUrl())) {
                arrayList.add(tTImage.getImageUrl());
            }
        }
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getInteractionType() {
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
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
        return this.f87789e;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f87785a;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        return tTDrawFeedAd != null ? tTDrawFeedAd.getTitle() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final long getVideoDuration() {
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        if (tTDrawFeedAd == null) {
            return super.getVideoDuration();
        }
        double videoDuration = tTDrawFeedAd.getVideoDuration();
        return (long) (videoDuration <= 0.0d ? this.f87792h : videoDuration * 1000.0d);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getVideoHeight() {
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        return tTDrawFeedAd != null ? tTDrawFeedAd.getAdViewHeight() : super.getVideoHeight();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getVideoWidth() {
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        return tTDrawFeedAd != null ? tTDrawFeedAd.getAdViewWidth() : super.getVideoWidth();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isExpressAd() {
        return false;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isNativeDrawAd() {
        return true;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, final WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        if (activity != null) {
            final TTAdDislike dislikeDialog = this.f87785a.getDislikeDialog(activity);
            if (dislikeDialog != null) {
                dislikeDialog.setDislikeInteractionCallback(new TTAdDislike.DislikeInteractionCallback() { // from class: com.windmill.toutiao.h.6
                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public final void onCancel() {
                        WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                        if (dislikeInteractionCallback2 != null) {
                            dislikeInteractionCallback2.onCancel();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public final void onSelected(int i10, String str, boolean z10) {
                        WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                        if (dislikeInteractionCallback2 != null) {
                            dislikeInteractionCallback2.onSelected(i10, str, z10);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public final void onShow() {
                        WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                        if (dislikeInteractionCallback2 != null) {
                            dislikeInteractionCallback2.onShow();
                        }
                    }
                });
            }
            this.f87790f = new View.OnClickListener() { // from class: com.windmill.toutiao.h.7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TTAdDislike tTAdDislike = dislikeDialog;
                    if (tTAdDislike != null) {
                        tTAdDislike.showDislikeDialog();
                        return;
                    }
                    WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                    if (dislikeInteractionCallback2 != null) {
                        dislikeInteractionCallback2.onSelected(0, "csj", true);
                    }
                }
            };
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(final WMNativeAdData.AppDownloadListener appDownloadListener) {
        TTDrawFeedAd tTDrawFeedAd = this.f87785a;
        if (tTDrawFeedAd == null || tTDrawFeedAd.getInteractionType() != 4) {
            return;
        }
        WeakReference<Activity> weakReference = this.f87794j;
        if (weakReference != null && weakReference.get() != null) {
            this.f87785a.setActivityForDownloadApp(this.f87794j.get());
        }
        TTAppDownloadListener tTAppDownloadListener = new TTAppDownloadListener() { // from class: com.windmill.toutiao.h.8
            private boolean a() {
                return h.this.f87787c.get(h.this.f87785a) == this;
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            @SuppressLint({"SetTextI18n"})
            public final void onDownloadActive(long j10, long j11, String str, String str2) {
                WMNativeAdData.AppDownloadListener appDownloadListener2;
                if (a() && (appDownloadListener2 = appDownloadListener) != null) {
                    appDownloadListener2.onDownloadActive(j10, j11, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public final void onDownloadFailed(long j10, long j11, String str, String str2) {
                WMNativeAdData.AppDownloadListener appDownloadListener2;
                if (a() && (appDownloadListener2 = appDownloadListener) != null) {
                    appDownloadListener2.onDownloadFailed(j10, j11, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public final void onDownloadFinished(long j10, String str, String str2) {
                WMNativeAdData.AppDownloadListener appDownloadListener2;
                if (a() && (appDownloadListener2 = appDownloadListener) != null) {
                    appDownloadListener2.onDownloadFinished(j10, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            @SuppressLint({"SetTextI18n"})
            public final void onDownloadPaused(long j10, long j11, String str, String str2) {
                WMNativeAdData.AppDownloadListener appDownloadListener2;
                if (a() && (appDownloadListener2 = appDownloadListener) != null) {
                    appDownloadListener2.onDownloadPaused(j10, j11, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public final void onIdle() {
                WMNativeAdData.AppDownloadListener appDownloadListener2;
                if (a() && (appDownloadListener2 = appDownloadListener) != null) {
                    appDownloadListener2.onIdle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public final void onInstalled(String str, String str2) {
                WMNativeAdData.AppDownloadListener appDownloadListener2;
                if (a() && (appDownloadListener2 = appDownloadListener) != null) {
                    appDownloadListener2.onInstalled(str, str2);
                }
            }
        };
        this.f87785a.setDownloadListener(tTAppDownloadListener);
        this.f87787c.put(this.f87785a, tTAppDownloadListener);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f87786b = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener != null) {
            WMNativeAdMediaListenerWrapper wMNativeAdMediaListenerWrapper = this.f87793i;
            if (wMNativeAdMediaListenerWrapper == null) {
                this.f87793i = new WMNativeAdMediaListenerWrapper(this, nativeADMediaListener);
            } else {
                wMNativeAdMediaListenerWrapper.setNativeADMediaListener(nativeADMediaListener);
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setVideoProgressUpdateInterval(int i10) {
        if (this.f87793i == null) {
            this.f87793i = new WMNativeAdMediaListenerWrapper(this);
        }
        this.f87793i.setVideoProgressUpdateInterval(i10);
    }

    private static String a(Map<String, String> map) {
        if (map == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb2.append(entry.getKey() + ", " + entry.getValue());
        }
        return sb2.toString();
    }

    public static void a(View view, int i10, int i11) {
        ViewGroup.LayoutParams layoutParams;
        if (view.getParent() instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view.getLayoutParams();
            layoutParams2.width = i10;
            layoutParams2.height = i11;
            layoutParams = layoutParams2;
        } else {
            if (!(view.getParent() instanceof RelativeLayout)) {
                if (view.getParent() instanceof LinearLayout) {
                    LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view.getLayoutParams();
                    layoutParams3.width = i10;
                    layoutParams3.height = i11;
                    view.setLayoutParams(layoutParams3);
                    view.requestLayout();
                    return;
                }
                return;
            }
            RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams4.width = i10;
            layoutParams4.height = i11;
            layoutParams = layoutParams4;
        }
        view.setLayoutParams(layoutParams);
        view.requestLayout();
    }
}
