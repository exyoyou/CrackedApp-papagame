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
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationAdEcpmInfo;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
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
import com.windmill.sdk.natives.WMViewBinder;
import com.windmill.sdk.utils.UIUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class j extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TTFeedAd f86283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    WMViewBinder f86284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f86285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TTNativeAd.AdInteractionListener f86286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f86287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View.OnClickListener f86288f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private q f86289g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f86290h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f86291i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private WMNativeAdMediaListenerWrapper f86292j = new WMNativeAdMediaListenerWrapper(this);

    public j(TTFeedAd tTFeedAd, final WMCustomNativeAdapter wMCustomNativeAdapter, final q qVar) {
        this.f86287e = 0;
        this.f86289g = qVar;
        this.f86283a = tTFeedAd;
        if (wMCustomNativeAdapter != null) {
            this.f86287e = wMCustomNativeAdapter.getChannelId();
        }
        this.f86286d = new TTNativeAd.AdInteractionListener() { // from class: com.windmill.gromore.j.1
            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            public final void onAdClicked(View view, TTNativeAd tTNativeAd) {
                WMLogUtil.d(AnonymousClass1.class.getSimpleName() + "----------onAdClicked-----------");
                if (j.this.f86285c != null && wMCustomNativeAdapter != null) {
                    j.this.f86285c.onADClicked(wMCustomNativeAdapter.getAdInFo(j.this));
                }
                if (wMCustomNativeAdapter != null) {
                    TTFeedAd tTFeedAd2 = j.this.f86283a;
                    if (tTFeedAd2 != null && tTFeedAd2.getMediationManager() != null) {
                        wMCustomNativeAdapter.setGroEcpm(n.a(j.this.f86283a.getMediationManager().getShowEcpm()));
                    }
                    wMCustomNativeAdapter.callNativeAdClick(j.this);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            public final void onAdCreativeClick(View view, TTNativeAd tTNativeAd) {
                WMLogUtil.d(AnonymousClass1.class.getSimpleName() + "------onAdCreativeClick-----------");
                if (j.this.f86285c != null && wMCustomNativeAdapter != null) {
                    j.this.f86285c.onADClicked(wMCustomNativeAdapter.getAdInFo(j.this));
                }
                if (wMCustomNativeAdapter != null) {
                    TTFeedAd tTFeedAd2 = j.this.f86283a;
                    if (tTFeedAd2 != null && tTFeedAd2.getMediationManager() != null) {
                        wMCustomNativeAdapter.setGroEcpm(n.a(j.this.f86283a.getMediationManager().getShowEcpm()));
                    }
                    wMCustomNativeAdapter.callNativeAdClick(j.this);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            public final void onAdShow(TTNativeAd tTNativeAd) {
                MediationAdEcpmInfo showEcpm;
                WMLogUtil.d(AnonymousClass1.class.getSimpleName() + "------onAdShow---");
                MediationNativeManager mediationManager = j.this.f86283a.getMediationManager();
                if (mediationManager != null && (showEcpm = mediationManager.getShowEcpm()) != null) {
                    HashMap map = new HashMap();
                    map.put(MediationConstant.KEY_ADN_NAME, showEcpm.getSdkName());
                    map.put("adnNetworkRitId", showEcpm.getSlotId());
                    map.put("adnEcpm", showEcpm.getEcpm());
                    if (wMCustomNativeAdapter.getAdInFo(j.this) != null) {
                        wMCustomNativeAdapter.getAdInFo(j.this).fillNetWorkOption(map);
                    }
                }
                if (j.this.f86285c != null && wMCustomNativeAdapter != null) {
                    j.this.f86285c.onADExposed(wMCustomNativeAdapter.getAdInFo(j.this));
                }
                if (wMCustomNativeAdapter != null) {
                    TTFeedAd tTFeedAd2 = j.this.f86283a;
                    if (tTFeedAd2 != null && tTFeedAd2.getMediationManager() != null) {
                        wMCustomNativeAdapter.setGroEcpm(n.a(j.this.f86283a.getMediationManager().getShowEcpm()));
                    }
                    wMCustomNativeAdapter.callNativeAdShow(j.this);
                    c.a(wMCustomNativeAdapter, qVar);
                }
            }
        };
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        TTImage tTImage;
        if (this.f86283a == null || list.isEmpty()) {
            return;
        }
        int imageMode = this.f86283a.getImageMode();
        if (imageMode == 2 || imageMode == 3 || imageMode == 16) {
            if (this.f86283a.getImageList() == null || this.f86283a.getImageList().isEmpty() || (tTImage = this.f86283a.getImageList().get(0)) == null || TextUtils.isEmpty(tTImage.getImageUrl())) {
                return;
            }
            ImageManager.with(context).load(tTImage.getImageUrl()).placeholder(i10).error(i10).into(list.get(0));
            return;
        }
        if (this.f86283a.getImageMode() != 4 || this.f86283a.getImageList() == null) {
            return;
        }
        int iMin = Math.min(list.size(), this.f86283a.getImageList().size());
        for (int i11 = 0; i11 < iMin; i11++) {
            TTImage tTImage2 = this.f86283a.getImageList().get(i11);
            if (tTImage2 != null && !TextUtils.isEmpty(tTImage2.getImageUrl())) {
                ImageManager.with(context).load(tTImage2.getImageUrl()).placeholder(i10).error(i10).into(list.get(i11));
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, final ViewGroup viewGroup) {
        if (this.f86283a == null || viewGroup == null) {
            return;
        }
        viewGroup.post(new Runnable() { // from class: com.windmill.gromore.j.2
            @Override // java.lang.Runnable
            public final void run() {
                int width = viewGroup.getWidth();
                UIUtils.setViewSize(viewGroup, width, (int) (((double) width) / (((double) j.this.f86283a.getAdViewWidth()) / ((double) j.this.f86283a.getAdViewHeight()))));
                View adView = j.this.f86283a.getAdView();
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
        TTFeedAd tTFeedAd = this.f86283a;
        if (tTFeedAd != null) {
            tTFeedAd.registerViewForInteraction((ViewGroup) view, list, list2, null, this.f86286d);
            if (view2 != null) {
                view2.setOnClickListener(this.f86288f);
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
        TTFeedAd tTFeedAd = this.f86283a;
        if (tTFeedAd != null) {
            tTFeedAd.destroy();
        }
        this.f86285c = null;
        this.f86288f = null;
        this.f86286d = null;
        WMNativeAdMediaListenerWrapper wMNativeAdMediaListenerWrapper = this.f86292j;
        if (wMNativeAdMediaListenerWrapper != null) {
            wMNativeAdMediaListenerWrapper.destroy();
            this.f86292j = null;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        TTFeedAd tTFeedAd = this.f86283a;
        if (tTFeedAd != null) {
            return tTFeedAd.getAdLogo();
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        TTFeedAd tTFeedAd = this.f86283a;
        if (tTFeedAd == null) {
            return 0;
        }
        int i10 = 2;
        if (tTFeedAd.getImageMode() == 2) {
            return 1;
        }
        if (this.f86283a.getImageMode() != 3 && this.f86283a.getImageMode() != 16) {
            i10 = 4;
            if (this.f86283a.getImageMode() == 4) {
                return 3;
            }
            if (this.f86283a.getImageMode() != 5 && this.f86283a.getImageMode() != 15) {
                return 0;
            }
        }
        return i10;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.AppInfo getAppInfo() {
        ComplianceInfo complianceInfo;
        TTFeedAd tTFeedAd = this.f86283a;
        if (tTFeedAd == null || (complianceInfo = tTFeedAd.getComplianceInfo()) == null) {
            return null;
        }
        return new WMNativePrivacyInfo(complianceInfo.getAppName(), complianceInfo.getAppVersion(), this.f86283a.getAppSize(), "", complianceInfo.getDeveloperName(), complianceInfo.getPrivacyUrl(), a(complianceInfo.getPermissionsMap()), complianceInfo.getPermissionUrl(), complianceInfo.getFunctionDescUrl());
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        TTFeedAd tTFeedAd = this.f86283a;
        if (tTFeedAd == null) {
            return "";
        }
        int interactionType = tTFeedAd.getInteractionType();
        if (interactionType == 2 || interactionType == 3) {
            return "查看详情";
        }
        if (interactionType != 4) {
            return interactionType != 5 ? this.f86283a.getButtonText() : "立即拨打";
        }
        return "开始下载";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.CustomizeVideo getCustomizeVideo() {
        final TTFeedAd.CustomizeVideo customVideo;
        TTFeedAd tTFeedAd = this.f86283a;
        return (tTFeedAd == null || (customVideo = tTFeedAd.getCustomVideo()) == null) ? super.getCustomizeVideo() : new WMNativeAdData.CustomizeVideo() { // from class: com.windmill.gromore.j.7
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
        TTFeedAd tTFeedAd = this.f86283a;
        return tTFeedAd != null ? tTFeedAd.getDescription() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        TTImage icon;
        TTFeedAd tTFeedAd = this.f86283a;
        return (tTFeedAd == null || (icon = tTFeedAd.getIcon()) == null || TextUtils.isEmpty(icon.getImageUrl())) ? "" : icon.getImageUrl();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        if (this.f86283a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<TTImage> imageList = this.f86283a.getImageList();
        if (imageList == null || imageList.size() <= 0) {
            return null;
        }
        for (int i10 = 0; i10 < imageList.size(); i10++) {
            final TTImage tTImage = imageList.get(i10);
            if (tTImage != null) {
                arrayList.add(new WMImage() { // from class: com.windmill.gromore.j.3
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
        TTFeedAd tTFeedAd = this.f86283a;
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
        TTFeedAd tTFeedAd = this.f86283a;
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
        return this.f86287e;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f86283a;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        TTFeedAd tTFeedAd = this.f86283a;
        return tTFeedAd != null ? tTFeedAd.getTitle() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final long getVideoDuration() {
        TTFeedAd tTFeedAd = this.f86283a;
        if (tTFeedAd == null) {
            return super.getVideoDuration();
        }
        double videoDuration = tTFeedAd.getVideoDuration();
        return (long) (videoDuration <= 0.0d ? this.f86291i : videoDuration * 1000.0d);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getVideoHeight() {
        TTFeedAd tTFeedAd = this.f86283a;
        return tTFeedAd != null ? tTFeedAd.getAdViewHeight() : super.getVideoHeight();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getVideoWidth() {
        TTFeedAd tTFeedAd = this.f86283a;
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
        this.f86284b = wMViewBinder;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, final WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        TTFeedAd tTFeedAd;
        final TTAdDislike dislikeDialog;
        if (activity == null || (tTFeedAd = this.f86283a) == null || (dislikeDialog = tTFeedAd.getDislikeDialog(activity)) == null) {
            return;
        }
        dislikeDialog.setDislikeInteractionCallback(new TTAdDislike.DislikeInteractionCallback() { // from class: com.windmill.gromore.j.5
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
        this.f86288f = new View.OnClickListener() { // from class: com.windmill.gromore.j.6
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
            this.f86285c = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (this.f86283a != null) {
            if (nativeADMediaListener != null) {
                WMNativeAdMediaListenerWrapper wMNativeAdMediaListenerWrapper = this.f86292j;
                if (wMNativeAdMediaListenerWrapper == null) {
                    this.f86292j = new WMNativeAdMediaListenerWrapper(this, nativeADMediaListener);
                } else {
                    wMNativeAdMediaListenerWrapper.setNativeADMediaListener(nativeADMediaListener);
                }
            }
            this.f86283a.setVideoAdListener(new TTFeedAd.VideoAdListener() { // from class: com.windmill.gromore.j.4
                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onProgressUpdate(long j10, long j11) {
                    WMLogUtil.d(WMLogUtil.TAG, "onProgressUpdate current:" + j10 + " duration:" + j11);
                    j.this.f86290h = j10;
                    j.this.f86291i = j11;
                    if (j.this.f86292j != null) {
                        j.this.f86292j.onVideoProgressUpdate(j10, j11);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdComplete(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdComplete");
                    if (j.this.f86292j != null) {
                        j.this.f86292j.onVideoCompleted();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdContinuePlay(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdContinuePlay:" + tTFeedAd.getTitle());
                    if (j.this.f86292j != null) {
                        j.this.f86292j.onVideoResume();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdPaused(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdPaused:" + tTFeedAd.getTitle());
                    if (j.this.f86292j != null) {
                        j.this.f86292j.onVideoPause();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoAdStartPlay(TTFeedAd tTFeedAd) {
                    TTFeedAd tTFeedAd2;
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoAdStartPlay:" + tTFeedAd.getTitle());
                    if (j.this.f86292j == null || (tTFeedAd2 = j.this.f86283a) == null) {
                        return;
                    }
                    j.this.f86292j.onVideoStart((long) (tTFeedAd2.getVideoDuration() * 1000.0d));
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoError(int i10, int i11) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoError:" + i10 + ":" + i11);
                    if (j.this.f86292j != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                        windMillError.setMessage(i10 + "-" + i11);
                        j.this.f86292j.onVideoError(windMillError);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
                public final void onVideoLoad(TTFeedAd tTFeedAd) {
                    WMLogUtil.d(WMLogUtil.TAG, "onVideoLoad:" + tTFeedAd.getTitle());
                    if (j.this.f86292j != null) {
                        j.this.f86292j.onVideoLoad();
                    }
                }
            });
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setVideoProgressUpdateInterval(int i10) {
        if (this.f86292j == null) {
            this.f86292j = new WMNativeAdMediaListenerWrapper(this);
        }
        this.f86292j.setVideoProgressUpdateInterval(i10);
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
