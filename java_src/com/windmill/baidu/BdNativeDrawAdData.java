package com.windmill.baidu;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.baidu.mobads.sdk.api.FeedPortraitVideoView;
import com.baidu.mobads.sdk.api.IFeedPortraitListener;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.XAdNativeResponse;
import com.czhj.sdk.common.utils.ImageManager;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import com.windmill.sdk.natives.WMNativePrivacyInfo;
import com.windmill.sdk.natives.WMVideoOption;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class BdNativeDrawAdData extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WMNativeAdData.NativeAdInteractionListener f85905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    WMCustomNativeAdapter f85906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    WMVideoOption f85907c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private NativeResponse f85908d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WMNativeAdData.NativeADMediaListener f85909e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WMNativeAdData.DislikeInteractionCallback f85910f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap f85911g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WMNativeAdData.AppDownloadListener f85912h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map<String, Object> f85913i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private FeedPortraitVideoView f85914j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private WMNativeAdData.AdShakeViewListener f85915k;

    static class AdShakeViewListenerWrapper implements NativeResponse.AdShakeViewListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WMNativeAdData.AdShakeViewListener f85925a;

        private AdShakeViewListenerWrapper(WMNativeAdData.AdShakeViewListener adShakeViewListener) {
            this.f85925a = adShakeViewListener;
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdShakeViewListener
        public void onDismiss() {
            WMNativeAdData.AdShakeViewListener adShakeViewListener = this.f85925a;
            if (adShakeViewListener != null) {
                adShakeViewListener.onDismiss();
            }
        }

        /* synthetic */ AdShakeViewListenerWrapper(WMNativeAdData.AdShakeViewListener adShakeViewListener, byte b10) {
            this(adShakeViewListener);
        }
    }

    public BdNativeDrawAdData(Context context, NativeResponse nativeResponse, WMCustomNativeAdapter wMCustomNativeAdapter, Map<String, Object> map) {
        this.f85908d = nativeResponse;
        this.f85906b = wMCustomNativeAdapter;
        this.f85913i = map;
        if (context == null || nativeResponse == null) {
            return;
        }
        ImageManager.with(context).getBitmap(this.f85908d.getBaiduLogoUrl(), new ImageManager.BitmapLoadedListener() { // from class: com.windmill.baidu.BdNativeDrawAdData.1
            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public final void onBitmapLoadFailed() {
            }

            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public final void onBitmapLoaded(Bitmap bitmap) {
                BdNativeDrawAdData.this.f85911g = bitmap;
            }
        });
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        if (this.f85908d == null || list.isEmpty()) {
            return;
        }
        String imageUrl = this.f85908d.getImageUrl();
        if (!TextUtils.isEmpty(imageUrl)) {
            ImageManager.with(context).load(imageUrl).placeholder(i10).error(i10).into(list.get(0));
            return;
        }
        List<String> multiPicUrls = this.f85908d.getMultiPicUrls();
        if (multiPicUrls == null || multiPicUrls.size() <= 0) {
            return;
        }
        int iMin = Math.min(list.size(), multiPicUrls.size());
        for (int i11 = 0; i11 < iMin; i11++) {
            String str = multiPicUrls.get(i11);
            if (!TextUtils.isEmpty(str)) {
                ImageManager.with(context).load(str).placeholder(i10).error(i10).into(list.get(i11));
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, ViewGroup viewGroup) {
        if (this.f85908d != null) {
            if (viewGroup != null) {
                FeedPortraitVideoView feedPortraitVideoView = new FeedPortraitVideoView(viewGroup.getContext());
                this.f85914j = feedPortraitVideoView;
                WMVideoOption wMVideoOption = this.f85907c;
                if (wMVideoOption != null) {
                    feedPortraitVideoView.setShowProgress(wMVideoOption.isNeedProgressBar());
                } else {
                    feedPortraitVideoView.setShowProgress(true);
                }
                this.f85914j.setProgressBackgroundColor(-16777216);
                this.f85914j.setProgressBarColor(-1);
                this.f85914j.setProgressHeightInDp(1);
                this.f85914j.setFeedPortraitListener(new IFeedPortraitListener() { // from class: com.windmill.baidu.BdNativeDrawAdData.6
                    @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
                    public void pauseBtnClick() {
                        WMLogUtil.d(WMLogUtil.TAG, "----------pauseBtnClick()---------");
                    }

                    @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
                    public void playCompletion() {
                        WMLogUtil.d(WMLogUtil.TAG, "---------playCompletion----------");
                        if (BdNativeDrawAdData.this.f85909e != null) {
                            BdNativeDrawAdData.this.f85909e.onVideoCompleted();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
                    public void playError() {
                        WMLogUtil.d(WMLogUtil.TAG, "----------playError()---------");
                        if (BdNativeDrawAdData.this.f85909e != null) {
                            BdNativeDrawAdData.this.f85909e.onVideoError(WindMillError.ERROR_AD_PLAY);
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
                    public void playPause() {
                        WMLogUtil.d(WMLogUtil.TAG, "----------------playPause()-------------");
                        if (BdNativeDrawAdData.this.f85909e != null) {
                            BdNativeDrawAdData.this.f85909e.onVideoPause();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
                    public void playRenderingStart() {
                        WMLogUtil.d(WMLogUtil.TAG, "------------playRenderingStart()-----------");
                        if (BdNativeDrawAdData.this.f85909e != null) {
                            BdNativeDrawAdData.this.f85909e.onVideoStart();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
                    public void playResume() {
                        WMLogUtil.d(WMLogUtil.TAG, "------------playResume()------------");
                        if (BdNativeDrawAdData.this.f85909e != null) {
                            BdNativeDrawAdData.this.f85909e.onVideoResume();
                        }
                    }
                });
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                viewGroup.removeAllViews();
                viewGroup.addView(this.f85914j, layoutParams);
            }
            if (this.f85914j != null) {
                Map<String, Object> map = this.f85913i;
                if (map != null) {
                    Object obj = map.get(WMConstants.AUTO_PLAY_MUTED);
                    Object obj2 = this.f85913i.get("showDownloadDialog");
                    if (obj == null || !obj.equals("0")) {
                        this.f85914j.setVideoMute(true);
                    } else {
                        this.f85914j.setVideoMute(false);
                    }
                    if (obj2 == null || !obj2.equals("1")) {
                        this.f85914j.setUseDownloadFrame(false);
                    } else {
                        this.f85914j.setUseDownloadFrame(true);
                    }
                }
                this.f85914j.setAdData((XAdNativeResponse) this.f85908d);
                this.f85914j.play();
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
        NativeResponse nativeResponse = this.f85908d;
        if (nativeResponse != null) {
            nativeResponse.registerViewForInteraction(view, list, list2, new NativeResponse.AdInteractionListener() { // from class: com.windmill.baidu.BdNativeDrawAdData.2
                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void adActReward(int i10) {
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void adActRewardSuccess() {
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onADExposed() {
                    if (BdNativeDrawAdData.this.f85905a != null && BdNativeDrawAdData.this.f85906b != null) {
                        BdNativeDrawAdData.this.f85905a.onADExposed(BdNativeDrawAdData.this.f85906b.getAdInFo(BdNativeDrawAdData.this));
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "onADExposed:" + BdNativeDrawAdData.this.f85908d.getTitle());
                    if (BdNativeDrawAdData.this.f85906b != null) {
                        BdNativeDrawAdData.this.f85906b.callNativeAdShow(BdNativeDrawAdData.this);
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onADExposureFailed(int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "onADExposureFailed:".concat(String.valueOf(i10)));
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onADStatusChanged() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADStatusChanged()");
                    if (BdNativeDrawAdData.this.f85908d.getAdActionType() != 2 || BdNativeDrawAdData.this.f85912h == null) {
                        return;
                    }
                    int downloadStatus = BdNativeDrawAdData.this.f85908d.getDownloadStatus();
                    if (downloadStatus >= 0 && downloadStatus <= 100) {
                        BdNativeDrawAdData.this.f85912h.onDownloadActive(100L, downloadStatus, "", "");
                        return;
                    }
                    if (downloadStatus == 101) {
                        BdNativeDrawAdData.this.f85912h.onDownloadFinished(100L, "", "");
                        return;
                    }
                    if (downloadStatus == 102) {
                        BdNativeDrawAdData.this.f85912h.onDownloadPaused(100L, 50L, "", "");
                        return;
                    }
                    if (downloadStatus == 103) {
                        BdNativeDrawAdData.this.f85912h.onInstalled("", "");
                    } else if (downloadStatus == 104) {
                        BdNativeDrawAdData.this.f85912h.onDownloadFailed(100L, 1L, "", "");
                    } else {
                        BdNativeDrawAdData.this.f85912h.onIdle();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onAdClick() {
                    if (BdNativeDrawAdData.this.f85905a != null && BdNativeDrawAdData.this.f85906b != null) {
                        BdNativeDrawAdData.this.f85905a.onADClicked(BdNativeDrawAdData.this.f85906b.getAdInFo(BdNativeDrawAdData.this));
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "onAdClick:" + BdNativeDrawAdData.this.f85908d.getTitle());
                    if (BdNativeDrawAdData.this.f85906b != null) {
                        BdNativeDrawAdData.this.f85906b.callNativeAdClick(BdNativeDrawAdData.this);
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onAdUnionClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "onAdUnionClick()");
                }
            });
            this.f85908d.setAdPrivacyListener(new NativeResponse.AdDownloadWindowListener() { // from class: com.windmill.baidu.BdNativeDrawAdData.3
                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdDownloadWindowListener
                public void adDownloadWindowClose() {
                    WMLogUtil.d(WMLogUtil.TAG, "adDownloadWindowClose");
                    if (BdNativeDrawAdData.this.f85914j != null) {
                        BdNativeDrawAdData.this.f85914j.resume();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdDownloadWindowListener
                public void adDownloadWindowShow() {
                    WMLogUtil.d(WMLogUtil.TAG, "AdDownloadWindowShow");
                    if (BdNativeDrawAdData.this.f85914j != null) {
                        BdNativeDrawAdData.this.f85914j.pause();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdPrivacyListener
                public void onADFunctionClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADFunctionClick");
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdPrivacyListener
                public void onADPermissionClose() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADPermissionClose");
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdPrivacyListener
                public void onADPermissionShow() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADPermissionShow");
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdPrivacyListener
                public void onADPrivacyClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADPrivacyClick");
                }
            });
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.baidu.BdNativeDrawAdData.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        if (BdNativeDrawAdData.this.f85910f != null) {
                            BdNativeDrawAdData.this.f85910f.onSelected(0, "baidu", true);
                        }
                    }
                });
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
        FeedPortraitVideoView feedPortraitVideoView = this.f85914j;
        if (feedPortraitVideoView != null) {
            feedPortraitVideoView.stop();
        }
        this.f85908d = null;
        this.f85905a = null;
        this.f85909e = null;
        this.f85910f = null;
        this.f85912h = null;
        this.f85915k = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return this.f85911g;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        return 4;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.AppInfo getAppInfo() {
        NativeResponse nativeResponse = this.f85908d;
        if (nativeResponse != null) {
            return new WMNativePrivacyInfo(nativeResponse.getBrandName(), this.f85908d.getAppVersion(), this.f85908d.getAppSize(), this.f85908d.getAppPackage(), this.f85908d.getPublisher(), this.f85908d.getAppPrivacyLink(), "", this.f85908d.getAppPermissionLink(), this.f85908d.getAppFunctionLink());
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        NativeResponse nativeResponse = this.f85908d;
        if (nativeResponse == null) {
            return "查看详情";
        }
        String actButtonString = nativeResponse.getActButtonString();
        if (this.f85908d.getAdActionType() != 2) {
            return !TextUtils.isEmpty(actButtonString) ? actButtonString : "查看详情";
        }
        int downloadStatus = this.f85908d.getDownloadStatus();
        if (downloadStatus >= 0 && downloadStatus <= 100) {
            return "下载中：" + downloadStatus + "%";
        }
        if (downloadStatus == 101) {
            return "点击安装";
        }
        if (downloadStatus == 102) {
            return "继续下载";
        }
        if (downloadStatus == 103) {
            return "点击启动";
        }
        if (downloadStatus == 104) {
            return "重新下载";
        }
        return !TextUtils.isEmpty(actButtonString) ? actButtonString : "点击下载";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.CustomizeVideo getCustomizeVideo() {
        final NativeResponse.CustomizeMediaPlayer customizeMediaPlayer;
        NativeResponse nativeResponse = this.f85908d;
        return (nativeResponse == null || (customizeMediaPlayer = nativeResponse.getCustomizeMediaPlayer()) == null) ? super.getCustomizeVideo() : new WMNativeAdData.CustomizeVideo() { // from class: com.windmill.baidu.BdNativeDrawAdData.7
            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final String getVideoUrl() {
                return customizeMediaPlayer.getVideoUrl();
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoCompleted() {
                customizeMediaPlayer.reportVideoReplay();
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoError(long j10, int i10, int i11) {
                customizeMediaPlayer.reportPlayError(0);
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoPause(long j10) {
                customizeMediaPlayer.reportVideoPause(0, NativeResponse.VideoReason.OTHER_REASON);
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoPreload() {
                customizeMediaPlayer.reportPlayerReady();
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoResume(long j10) {
                customizeMediaPlayer.reportVideoResume(0);
            }

            @Override // com.windmill.sdk.natives.WMNativeAdData.CustomizeVideo
            public final void reportVideoStart() {
                customizeMediaPlayer.reportVideoShow();
                customizeMediaPlayer.reportVideoStart(true);
            }
        };
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getDesc() {
        NativeResponse nativeResponse = this.f85908d;
        return nativeResponse != null ? nativeResponse.getDesc() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        NativeResponse nativeResponse = this.f85908d;
        return nativeResponse != null ? nativeResponse.getIconUrl() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        if (this.f85908d == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String imageUrl = this.f85908d.getImageUrl();
        if (!TextUtils.isEmpty(imageUrl)) {
            arrayList.add(a(imageUrl));
        } else if (this.f85908d.getMultiPicUrls() != null) {
            for (int i10 = 0; i10 < this.f85908d.getMultiPicUrls().size(); i10++) {
                arrayList.add(a(this.f85908d.getMultiPicUrls().get(i10)));
            }
        }
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<String> getImageUrlList() {
        NativeResponse nativeResponse = this.f85908d;
        if (nativeResponse == null) {
            return null;
        }
        String imageUrl = nativeResponse.getImageUrl();
        if (TextUtils.isEmpty(imageUrl)) {
            return this.f85908d.getMultiPicUrls();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(imageUrl);
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getInteractionType() {
        NativeResponse nativeResponse = this.f85908d;
        if (nativeResponse == null) {
            return 0;
        }
        int adActionType = nativeResponse.getAdActionType();
        if (adActionType != 1) {
            if (adActionType == 2) {
                return 1;
            }
            if (adActionType != 3) {
                return 0;
            }
        }
        return 2;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getNetworkId() {
        WMCustomNativeAdapter wMCustomNativeAdapter = this.f85906b;
        if (wMCustomNativeAdapter != null) {
            return wMCustomNativeAdapter.getChannelId();
        }
        return 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f85908d;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        NativeResponse nativeResponse = this.f85908d;
        return nativeResponse != null ? nativeResponse.getTitle() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final long getVideoDuration() {
        NativeResponse nativeResponse = this.f85908d;
        return nativeResponse != null ? ((long) nativeResponse.getDuration()) * 1000 : super.getVideoDuration();
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
    public final void pauseVideo() {
        FeedPortraitVideoView feedPortraitVideoView = this.f85914j;
        if (feedPortraitVideoView != null) {
            feedPortraitVideoView.pause();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View renderShakeView(int i10, int i11, WMNativeAdData.AdShakeViewListener adShakeViewListener) {
        this.f85915k = adShakeViewListener;
        NativeResponse nativeResponse = this.f85908d;
        if (nativeResponse != null) {
            return nativeResponse.renderShakeView(i10, i11, new AdShakeViewListenerWrapper(adShakeViewListener, (byte) 0));
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void resumeVideo() {
        FeedPortraitVideoView feedPortraitVideoView = this.f85914j;
        if (feedPortraitVideoView != null) {
            feedPortraitVideoView.resume();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null) {
            this.f85910f = dislikeInteractionCallback;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
        if (appDownloadListener != null) {
            this.f85912h = appDownloadListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f85905a = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener != null) {
            this.f85909e = nativeADMediaListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaViewOption(WMVideoOption wMVideoOption) {
        this.f85907c = wMVideoOption;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setVideoMute(boolean z10) {
        FeedPortraitVideoView feedPortraitVideoView = this.f85914j;
        if (feedPortraitVideoView != null) {
            feedPortraitVideoView.setVideoMute(z10);
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void startVideo() {
        FeedPortraitVideoView feedPortraitVideoView = this.f85914j;
        if (feedPortraitVideoView != null) {
            feedPortraitVideoView.play();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void stopVideo() {
        FeedPortraitVideoView feedPortraitVideoView = this.f85914j;
        if (feedPortraitVideoView != null) {
            feedPortraitVideoView.stop();
        }
    }

    private WMImage a(final String str) {
        return new WMImage() { // from class: com.windmill.baidu.BdNativeDrawAdData.5
            @Override // com.windmill.sdk.natives.WMImage
            public final int getHeight() {
                return BdNativeDrawAdData.this.f85908d.getMainPicHeight();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final String getImageUrl() {
                return str;
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final int getWidth() {
                return BdNativeDrawAdData.this.f85908d.getMainPicWidth();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final boolean isValid() {
                return true;
            }
        };
    }
}
