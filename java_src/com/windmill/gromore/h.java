package com.windmill.gromore;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.ComplianceInfo;
import com.bytedance.sdk.openadsdk.TTAdDislike;
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
import com.windmill.sdk.natives.WMViewBinder;
import com.windmill.sdk.utils.UIUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class h extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WMViewBinder f86264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TTFeedAd f86265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f86266c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f86267d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View.OnClickListener f86268e;

    public h(TTFeedAd tTFeedAd, int i10) {
        this.f86265b = tTFeedAd;
        this.f86267d = i10;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        TTImage tTImage;
        if (this.f86265b == null || list.isEmpty()) {
            return;
        }
        int imageMode = this.f86265b.getImageMode();
        if (imageMode == 2 || imageMode == 3 || imageMode == 16) {
            WMLogUtil.i("-------GroNS");
            if (this.f86265b.getImageList() == null || this.f86265b.getImageList().isEmpty() || (tTImage = this.f86265b.getImageList().get(0)) == null || TextUtils.isEmpty(tTImage.getImageUrl())) {
                return;
            }
            ImageManager.with(context).load(tTImage.getImageUrl()).placeholder(i10).error(i10).into(list.get(0));
            return;
        }
        if (this.f86265b.getImageMode() != 4 || this.f86265b.getImageList() == null) {
            return;
        }
        int iMin = Math.min(list.size(), this.f86265b.getImageList().size());
        for (int i11 = 0; i11 < iMin; i11++) {
            TTImage tTImage2 = this.f86265b.getImageList().get(i11);
            if (tTImage2 != null && !TextUtils.isEmpty(tTImage2.getImageUrl())) {
                ImageManager.with(context).load(tTImage2.getImageUrl()).placeholder(i10).error(i10).into(list.get(i11));
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, final ViewGroup viewGroup) {
        if (this.f86265b == null || viewGroup == null) {
            return;
        }
        viewGroup.post(new Runnable() { // from class: com.windmill.gromore.h.1
            @Override // java.lang.Runnable
            public final void run() {
                int width = viewGroup.getWidth();
                UIUtils.setViewSize(viewGroup, width, (int) (((double) width) / (((double) h.this.f86265b.getAdViewWidth()) / ((double) h.this.f86265b.getAdViewHeight()))));
                View adView = h.this.f86265b.getAdView();
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

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
        TTFeedAd tTFeedAd = this.f86265b;
        if (tTFeedAd != null) {
            tTFeedAd.registerViewForInteraction((ViewGroup) view, list, list2, null, new TTNativeAd.AdInteractionListener() { // from class: com.windmill.gromore.h.2
                @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
                public final void onAdClicked(View view3, TTNativeAd tTNativeAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "----------onAdClicked-----------");
                    if (h.this.f86266c != null) {
                        h.this.f86266c.onADClicked(null);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
                public final void onAdCreativeClick(View view3, TTNativeAd tTNativeAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "----------onAdCreativeClick-----------");
                    if (h.this.f86266c != null) {
                        h.this.f86266c.onADClicked(null);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
                public final void onAdShow(TTNativeAd tTNativeAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onAdShow-----------");
                    if (h.this.f86266c != null) {
                        h.this.f86266c.onADExposed(null);
                    }
                }
            });
            if (view2 != null) {
                view2.setOnClickListener(this.f86268e);
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void connectAdToView(Activity activity, WMNativeAdContainer wMNativeAdContainer, WMNativeAdRender wMNativeAdRender) {
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
        TTFeedAd tTFeedAd = this.f86265b;
        if (tTFeedAd != null) {
            tTFeedAd.destroy();
        }
        this.f86266c = null;
        this.f86268e = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        TTFeedAd tTFeedAd = this.f86265b;
        if (tTFeedAd != null) {
            return tTFeedAd.getAdLogo();
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        TTFeedAd tTFeedAd = this.f86265b;
        if (tTFeedAd == null) {
            return 0;
        }
        int i10 = 2;
        if (tTFeedAd.getImageMode() == 2) {
            return 1;
        }
        if (this.f86265b.getImageMode() != 3 && this.f86265b.getImageMode() != 16) {
            i10 = 4;
            if (this.f86265b.getImageMode() == 4) {
                return 3;
            }
            if (this.f86265b.getImageMode() != 5 && this.f86265b.getImageMode() != 15) {
                return 0;
            }
        }
        return i10;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.AppInfo getAppInfo() {
        ComplianceInfo complianceInfo;
        TTFeedAd tTFeedAd = this.f86265b;
        if (tTFeedAd == null || (complianceInfo = tTFeedAd.getComplianceInfo()) == null) {
            return null;
        }
        return new WMNativePrivacyInfo(complianceInfo.getAppName(), complianceInfo.getAppVersion(), this.f86265b.getAppSize(), "", complianceInfo.getDeveloperName(), complianceInfo.getPrivacyUrl(), a(complianceInfo.getPermissionsMap()), complianceInfo.getPermissionUrl(), complianceInfo.getFunctionDescUrl());
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        TTFeedAd tTFeedAd = this.f86265b;
        if (tTFeedAd == null) {
            return "";
        }
        int interactionType = tTFeedAd.getInteractionType();
        if (interactionType == 2 || interactionType == 3) {
            return "查看详情";
        }
        if (interactionType != 4) {
            return interactionType != 5 ? this.f86265b.getButtonText() : "立即拨打";
        }
        return "开始下载";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.CustomizeVideo getCustomizeVideo() {
        final TTFeedAd.CustomizeVideo customVideo;
        TTFeedAd tTFeedAd = this.f86265b;
        return (tTFeedAd == null || (customVideo = tTFeedAd.getCustomVideo()) == null) ? super.getCustomizeVideo() : new WMNativeAdData.CustomizeVideo() { // from class: com.windmill.gromore.h.7
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
        TTFeedAd tTFeedAd = this.f86265b;
        return tTFeedAd != null ? tTFeedAd.getDescription() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        TTImage icon;
        TTFeedAd tTFeedAd = this.f86265b;
        return (tTFeedAd == null || (icon = tTFeedAd.getIcon()) == null || TextUtils.isEmpty(icon.getImageUrl())) ? "" : icon.getImageUrl();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        if (this.f86265b == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<TTImage> imageList = this.f86265b.getImageList();
        if (imageList == null || imageList.size() <= 0) {
            return null;
        }
        for (int i10 = 0; i10 < imageList.size(); i10++) {
            final TTImage tTImage = imageList.get(i10);
            if (tTImage != null) {
                arrayList.add(new WMImage() { // from class: com.windmill.gromore.h.3
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
        TTFeedAd tTFeedAd = this.f86265b;
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
        TTFeedAd tTFeedAd = this.f86265b;
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
        return this.f86267d;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f86265b;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        TTFeedAd tTFeedAd = this.f86265b;
        return tTFeedAd != null ? tTFeedAd.getTitle() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getVideoHeight() {
        TTFeedAd tTFeedAd = this.f86265b;
        return tTFeedAd != null ? tTFeedAd.getAdViewHeight() : super.getVideoHeight();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getVideoWidth() {
        TTFeedAd tTFeedAd = this.f86265b;
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
    public final void registerViewBidder(WMViewBinder wMViewBinder) {
        this.f86264a = wMViewBinder;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, final WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        TTFeedAd tTFeedAd;
        final TTAdDislike dislikeDialog;
        if (activity == null || (tTFeedAd = this.f86265b) == null || (dislikeDialog = tTFeedAd.getDislikeDialog(activity)) == null) {
            return;
        }
        dislikeDialog.setDislikeInteractionCallback(new TTAdDislike.DislikeInteractionCallback() { // from class: com.windmill.gromore.h.5
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
        this.f86268e = new View.OnClickListener() { // from class: com.windmill.gromore.h.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TTAdDislike tTAdDislike = dislikeDialog;
                if (tTAdDislike != null) {
                    tTAdDislike.showDislikeDialog();
                    return;
                }
                WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                if (dislikeInteractionCallback2 != null) {
                    dislikeInteractionCallback2.onSelected(0, "gromore", true);
                }
            }
        };
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f86266c = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(final WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        TTFeedAd tTFeedAd = this.f86265b;
        if (tTFeedAd != null) {
            tTFeedAd.setVideoAdListener(new TTFeedAd.VideoAdListener() { // from class: com.windmill.gromore.h.4
                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onProgressUpdate(long j10, long j11) {
                    WMLogUtil.d(WMLogUtil.TAG, "onProgressUpdate current:" + j10 + " duration:" + j11);
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdComplete(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdComplete");
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoCompleted();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdContinuePlay(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdContinuePlay:" + tTFeedAd2.getTitle());
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoResume();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdPaused(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdPaused:" + tTFeedAd2.getTitle());
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoPause();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdStartPlay(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdStartPlay:" + tTFeedAd2.getTitle());
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoStart();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoError(int i10, int i11) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoError:" + i10 + ":" + i11);
                    if (nativeADMediaListener != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                        windMillError.setMessage(i10 + "-" + i11);
                        nativeADMediaListener.onVideoError(windMillError);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoLoad(TTFeedAd tTFeedAd2) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoLoad:" + tTFeedAd2.getTitle());
                    WMNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                    if (nativeADMediaListener2 != null) {
                        nativeADMediaListener2.onVideoLoad();
                    }
                }
            });
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
