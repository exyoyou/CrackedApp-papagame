package com.windmill.toutiao;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.ComplianceInfo;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTImage;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.czhj.sdk.common.utils.ImageManager;
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
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes8.dex */
public final class e extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TTFeedAd f87739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f87740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<TTFeedAd, TTAppDownloadListener> f87741c = new WeakHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WMNativeAdData.NativeADMediaListener f87742d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f87743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View.OnClickListener f87744f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WeakReference<Activity> f87745g;

    public e(TTFeedAd tTFeedAd, int i10) {
        this.f87739a = tTFeedAd;
        this.f87743e = i10;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        TTImage tTImage;
        if (this.f87739a == null || list.isEmpty()) {
            return;
        }
        int imageMode = this.f87739a.getImageMode();
        if (imageMode == 2 || imageMode == 3 || imageMode == 16) {
            if (this.f87739a.getImageList() == null || (tTImage = this.f87739a.getImageList().get(0)) == null || !tTImage.isValid()) {
                return;
            }
            ImageManager.with(context).load(tTImage.getImageUrl()).placeholder(i10).error(i10).into(list.get(0));
            return;
        }
        if (this.f87739a.getImageMode() != 4 || this.f87739a.getImageList() == null) {
            return;
        }
        int iMin = Math.min(list.size(), this.f87739a.getImageList().size());
        for (int i11 = 0; i11 < iMin; i11++) {
            TTImage tTImage2 = this.f87739a.getImageList().get(i11);
            if (tTImage2 != null && tTImage2.isValid()) {
                ImageManager.with(context).load(tTImage2.getImageUrl()).placeholder(i10).error(i10).into(list.get(i11));
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, ViewGroup viewGroup) {
        View adView;
        TTFeedAd tTFeedAd = this.f87739a;
        if (tTFeedAd != null) {
            tTFeedAd.setVideoAdListener(new TTFeedAd.VideoAdListener() { // from class: com.windmill.toutiao.e.3
                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onProgressUpdate(long j10, long j11) {
                    WMLogUtil.d(WMLogUtil.TAG, "onProgressUpdate current:" + j10 + " duration:" + j11);
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdComplete(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdComplete");
                    if (e.this.f87742d != null) {
                        e.this.f87742d.onVideoCompleted();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdContinuePlay(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdContinuePlay:" + tTFeedAd2.getTitle());
                    if (e.this.f87742d != null) {
                        e.this.f87742d.onVideoResume();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdPaused(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdPaused:" + tTFeedAd2.getTitle());
                    if (e.this.f87742d != null) {
                        e.this.f87742d.onVideoPause();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdStartPlay(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdStartPlay:" + tTFeedAd2.getTitle());
                    if (e.this.f87742d != null) {
                        e.this.f87742d.onVideoStart();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoError(int i10, int i11) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoError:" + i10 + ":" + i11);
                    if (e.this.f87742d != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                        windMillError.setMessage(i10 + "-" + i11);
                        e.this.f87742d.onVideoError(windMillError);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoLoad(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoLoad:" + tTFeedAd2.getTitle());
                    if (e.this.f87742d != null) {
                        e.this.f87742d.onVideoLoad();
                    }
                }
            });
            if (viewGroup == null || (adView = this.f87739a.getAdView()) == null) {
                return;
            }
            if (adView.getParent() != null && (adView.getParent() instanceof ViewGroup)) {
                ((ViewGroup) adView.getParent()).removeView(adView);
            }
            if (adView.getParent() == null) {
                viewGroup.removeAllViews();
                viewGroup.addView(adView, new ViewGroup.LayoutParams(-1, -2));
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
        WeakReference<Activity> weakReference;
        TTFeedAd tTFeedAd = this.f87739a;
        if (tTFeedAd != null) {
            tTFeedAd.registerViewForInteraction((ViewGroup) view, list, list2, view2, new TTNativeAd.AdInteractionListener() { // from class: com.windmill.toutiao.e.1
                @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
                public final void onAdClicked(View view3, TTNativeAd tTNativeAd) {
                    if (e.this.f87740b != null) {
                        e.this.f87740b.onADClicked(null);
                    }
                    if (tTNativeAd != null) {
                        WMLogUtil.d(WMLogUtil.TAG, "onAdClicked:" + tTNativeAd.getTitle());
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
                public final void onAdCreativeClick(View view3, TTNativeAd tTNativeAd) {
                    if (e.this.f87740b != null) {
                        e.this.f87740b.onADClicked(null);
                    }
                    if (tTNativeAd != null) {
                        WMLogUtil.d(WMLogUtil.TAG, "onAdCreativeClick:" + tTNativeAd.getTitle());
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
                public final void onAdShow(TTNativeAd tTNativeAd) {
                    if (e.this.f87740b != null) {
                        e.this.f87740b.onADExposed(null);
                    }
                    if (tTNativeAd != null) {
                        WMLogUtil.d(WMLogUtil.TAG, "onAdShow:" + tTNativeAd.getTitle());
                    }
                }
            });
            if (this.f87739a.getInteractionType() == 4 && (weakReference = this.f87745g) != null && weakReference.get() != null) {
                this.f87739a.setActivityForDownloadApp(this.f87745g.get());
            }
            if (view2 != null) {
                view2.setOnClickListener(this.f87744f);
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void connectAdToView(Activity activity, WMNativeAdContainer wMNativeAdContainer, WMNativeAdRender wMNativeAdRender) {
        this.f87745g = new WeakReference<>(activity);
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
        TTFeedAd tTFeedAd = this.f87739a;
        if (tTFeedAd != null) {
            tTFeedAd.destroy();
        }
        Map<TTFeedAd, TTAppDownloadListener> map = this.f87741c;
        if (map != null) {
            map.clear();
        }
        this.f87740b = null;
        this.f87742d = null;
        this.f87744f = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        TTFeedAd tTFeedAd = this.f87739a;
        if (tTFeedAd != null) {
            return tTFeedAd.getAdLogo();
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        TTFeedAd tTFeedAd = this.f87739a;
        if (tTFeedAd == null) {
            return 0;
        }
        int i10 = 2;
        if (tTFeedAd.getImageMode() == 2) {
            return 1;
        }
        if (this.f87739a.getImageMode() != 3 && this.f87739a.getImageMode() != 16) {
            i10 = 4;
            if (this.f87739a.getImageMode() == 4) {
                return 3;
            }
            if (this.f87739a.getImageMode() != 5 && this.f87739a.getImageMode() != 15) {
                return 0;
            }
        }
        return i10;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.AppInfo getAppInfo() {
        ComplianceInfo complianceInfo;
        TTFeedAd tTFeedAd = this.f87739a;
        if (tTFeedAd == null || (complianceInfo = tTFeedAd.getComplianceInfo()) == null) {
            return null;
        }
        return new WMNativePrivacyInfo(complianceInfo.getAppName(), complianceInfo.getAppVersion(), this.f87739a.getAppSize(), "", complianceInfo.getDeveloperName(), complianceInfo.getPrivacyUrl(), a(complianceInfo.getPermissionsMap()), complianceInfo.getPermissionUrl(), complianceInfo.getFunctionDescUrl());
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        TTFeedAd tTFeedAd = this.f87739a;
        if (tTFeedAd == null) {
            return "获取详情";
        }
        int interactionType = tTFeedAd.getInteractionType();
        if (interactionType == 2 || interactionType == 3) {
            return "查看详情";
        }
        if (interactionType != 4) {
            return interactionType != 5 ? this.f87739a.getButtonText() : "立即拨打";
        }
        return "开始下载";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.CustomizeVideo getCustomizeVideo() {
        final TTFeedAd.CustomizeVideo customVideo;
        TTFeedAd tTFeedAd = this.f87739a;
        return (tTFeedAd == null || (customVideo = tTFeedAd.getCustomVideo()) == null) ? super.getCustomizeVideo() : new WMNativeAdData.CustomizeVideo() { // from class: com.windmill.toutiao.e.7
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
        TTFeedAd tTFeedAd = this.f87739a;
        return tTFeedAd != null ? tTFeedAd.getDescription() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        TTImage icon;
        TTFeedAd tTFeedAd = this.f87739a;
        return (tTFeedAd == null || (icon = tTFeedAd.getIcon()) == null || !icon.isValid()) ? "" : icon.getImageUrl();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        List<TTImage> imageList;
        TTFeedAd tTFeedAd = this.f87739a;
        if (tTFeedAd == null || (imageList = tTFeedAd.getImageList()) == null || imageList.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < imageList.size(); i10++) {
            final TTImage tTImage = imageList.get(i10);
            if (tTImage != null) {
                arrayList.add(new WMImage() { // from class: com.windmill.toutiao.e.2
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
        TTFeedAd tTFeedAd = this.f87739a;
        if (tTFeedAd == null || (imageList = tTFeedAd.getImageList()) == null || imageList.size() <= 0) {
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
        TTFeedAd tTFeedAd = this.f87739a;
        if (tTFeedAd == null) {
            return 0;
        }
        int interactionType = tTFeedAd.getInteractionType();
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
        return this.f87743e;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f87739a;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        TTFeedAd tTFeedAd = this.f87739a;
        return tTFeedAd != null ? tTFeedAd.getTitle() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getVideoHeight() {
        TTFeedAd tTFeedAd = this.f87739a;
        return tTFeedAd != null ? tTFeedAd.getAdViewHeight() : super.getVideoHeight();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getVideoWidth() {
        TTFeedAd tTFeedAd = this.f87739a;
        return tTFeedAd != null ? tTFeedAd.getAdViewWidth() : super.getVideoWidth();
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
    public final void setDislikeInteractionCallback(Activity activity, final WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        if (activity != null) {
            final TTAdDislike dislikeDialog = this.f87739a.getDislikeDialog(activity);
            if (dislikeDialog != null) {
                dislikeDialog.setDislikeInteractionCallback(new TTAdDislike.DislikeInteractionCallback() { // from class: com.windmill.toutiao.e.4
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
            this.f87744f = new View.OnClickListener() { // from class: com.windmill.toutiao.e.5
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
        TTFeedAd tTFeedAd = this.f87739a;
        if (tTFeedAd == null || tTFeedAd.getInteractionType() != 4) {
            return;
        }
        WeakReference<Activity> weakReference = this.f87745g;
        if (weakReference != null && weakReference.get() != null) {
            this.f87739a.setActivityForDownloadApp(this.f87745g.get());
        }
        TTAppDownloadListener tTAppDownloadListener = new TTAppDownloadListener() { // from class: com.windmill.toutiao.e.6
            private boolean a() {
                return e.this.f87741c.get(e.this.f87739a) == this;
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
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
        this.f87739a.setDownloadListener(tTAppDownloadListener);
        this.f87741c.put(this.f87739a, tTAppDownloadListener);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f87740b = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener != null) {
            this.f87742d = nativeADMediaListener;
        }
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
}
