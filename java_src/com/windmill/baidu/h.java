package com.windmill.baidu;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.baidu.mobads.sdk.api.INativeVideoListener;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.XNativeView;
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
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class h extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WMVideoOption f85972a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NativeResponse f85973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f85974c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WMCustomNativeAdapter f85975d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WMNativeAdData.NativeADMediaListener f85976e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WMNativeAdData.DislikeInteractionCallback f85977f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap f85978g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WMNativeAdData.AppDownloadListener f85979h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private XNativeView f85980i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Map<String, Object> f85981j;

    public h(Context context, NativeResponse nativeResponse, WMCustomNativeAdapter wMCustomNativeAdapter, Map<String, Object> map) {
        this.f85973b = nativeResponse;
        this.f85975d = wMCustomNativeAdapter;
        this.f85981j = map;
        if (context == null || nativeResponse == null) {
            return;
        }
        ImageManager.with(context).getBitmap(this.f85973b.getBaiduLogoUrl(), new ImageManager.BitmapLoadedListener() { // from class: com.windmill.baidu.h.1
            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public final void onBitmapLoadFailed() {
            }

            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public final void onBitmapLoaded(Bitmap bitmap) {
                h.this.f85978g = bitmap;
            }
        });
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        if (this.f85973b == null || list.isEmpty()) {
            return;
        }
        String imageUrl = this.f85973b.getImageUrl();
        if (!TextUtils.isEmpty(imageUrl)) {
            ImageManager.with(context).load(imageUrl).placeholder(i10).error(i10).into(list.get(0));
            return;
        }
        List<String> multiPicUrls = this.f85973b.getMultiPicUrls();
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
        if (this.f85973b != null) {
            if (viewGroup != null) {
                XNativeView xNativeView = new XNativeView(context);
                this.f85980i = xNativeView;
                xNativeView.setBackgroundColor(-16777216);
                ViewGroup.LayoutParams layoutParams = this.f85980i.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = new ViewGroup.LayoutParams(-1, -2);
                }
                viewGroup.removeAllViews();
                viewGroup.addView(this.f85980i, layoutParams);
            }
            XNativeView xNativeView2 = this.f85980i;
            if (xNativeView2 != null) {
                WMVideoOption wMVideoOption = this.f85972a;
                if (wMVideoOption != null) {
                    xNativeView2.setShowProgress(wMVideoOption.isNeedProgressBar());
                } else {
                    xNativeView2.setShowProgress(true);
                }
                this.f85980i.setProgressBarColor(-7829368);
                this.f85980i.setProgressBackgroundColor(-16777216);
                this.f85980i.setProgressHeightInDp(1);
                this.f85980i.setNativeItem(this.f85973b);
                Map<String, Object> map = this.f85981j;
                if (map != null) {
                    Object obj = map.get(WMConstants.AUTO_PLAY_MUTED);
                    Object obj2 = this.f85981j.get("showDownloadDialog");
                    if (obj == null || !obj.equals("0")) {
                        this.f85980i.setVideoMute(true);
                    } else {
                        this.f85980i.setVideoMute(false);
                    }
                    if (obj2 == null || !obj2.equals("1")) {
                        this.f85980i.setUseDownloadFrame(false);
                    } else {
                        this.f85980i.setUseDownloadFrame(true);
                    }
                }
                this.f85980i.setNativeViewClickListener(new XNativeView.INativeViewClickListener() { // from class: com.windmill.baidu.BdNativeAdData$8
                    @Override // com.baidu.mobads.sdk.api.XNativeView.INativeViewClickListener
                    public void onNativeViewClick(XNativeView xNativeView3) {
                        WMLogUtil.d(WMLogUtil.TAG, "onNativeViewClick:".concat(String.valueOf(xNativeView3)));
                    }
                });
                this.f85980i.setNativeVideoListener(new INativeVideoListener() { // from class: com.windmill.baidu.BdNativeAdData$9
                    @Override // com.baidu.mobads.sdk.api.INativeVideoListener
                    public void onCompletion() {
                        WMLogUtil.d(WMLogUtil.TAG, "onCompletion");
                        if (this.f85902a.f85976e != null) {
                            this.f85902a.f85976e.onVideoCompleted();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.INativeVideoListener
                    public void onError() {
                        WMLogUtil.d(WMLogUtil.TAG, "onError()");
                        if (this.f85902a.f85976e != null) {
                            this.f85902a.f85976e.onVideoError(WindMillError.ERROR_AD_PLAY);
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.INativeVideoListener
                    public void onPause() {
                        WMLogUtil.d(WMLogUtil.TAG, "onPause()");
                        if (this.f85902a.f85976e != null) {
                            this.f85902a.f85976e.onVideoPause();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.INativeVideoListener
                    public void onRenderingStart() {
                        WMLogUtil.d(WMLogUtil.TAG, "onRenderingStart()");
                        if (this.f85902a.f85976e != null) {
                            this.f85902a.f85976e.onVideoStart();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.INativeVideoListener
                    public void onResume() {
                        WMLogUtil.d(WMLogUtil.TAG, "onResume()");
                        if (this.f85902a.f85976e != null) {
                            this.f85902a.f85976e.onVideoResume();
                        }
                    }
                });
                this.f85980i.render();
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
        NativeResponse nativeResponse = this.f85973b;
        if (nativeResponse != null) {
            nativeResponse.registerViewForInteraction(view, list, list2, new NativeResponse.AdInteractionListener() { // from class: com.windmill.baidu.BdNativeAdData$2
                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void adActReward(int i10) {
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void adActRewardSuccess() {
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onADExposed() {
                    if (this.f85895a.f85974c != null && this.f85895a.f85975d != null) {
                        this.f85895a.f85974c.onADExposed(this.f85895a.f85975d.getAdInFo(this.f85895a));
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "onADExposed:" + this.f85895a.f85973b.getTitle());
                    if (this.f85895a.f85975d != null) {
                        this.f85895a.f85975d.callNativeAdShow(this.f85895a);
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onADExposureFailed(int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "onADExposureFailed:".concat(String.valueOf(i10)));
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onADStatusChanged() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADStatusChanged()");
                    if (this.f85895a.f85973b.getAdActionType() != 2 || this.f85895a.f85979h == null) {
                        return;
                    }
                    int downloadStatus = this.f85895a.f85973b.getDownloadStatus();
                    if (downloadStatus >= 0 && downloadStatus <= 100) {
                        this.f85895a.f85979h.onDownloadActive(100L, downloadStatus, "", "");
                        return;
                    }
                    if (downloadStatus == 101) {
                        this.f85895a.f85979h.onDownloadFinished(100L, "", "");
                        return;
                    }
                    if (downloadStatus == 102) {
                        this.f85895a.f85979h.onDownloadPaused(100L, 50L, "", "");
                        return;
                    }
                    if (downloadStatus == 103) {
                        this.f85895a.f85979h.onInstalled("", "");
                    } else if (downloadStatus == 104) {
                        this.f85895a.f85979h.onDownloadFailed(100L, 1L, "", "");
                    } else {
                        this.f85895a.f85979h.onIdle();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onAdClick() {
                    if (this.f85895a.f85974c != null && this.f85895a.f85975d != null) {
                        this.f85895a.f85974c.onADClicked(this.f85895a.f85975d.getAdInFo(this.f85895a));
                    }
                    WMLogUtil.d(WMLogUtil.TAG, "onAdClick:" + this.f85895a.f85973b.getTitle());
                    if (this.f85895a.f85975d != null) {
                        this.f85895a.f85975d.callNativeAdClick(this.f85895a);
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onAdUnionClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "onAdUnionClick()");
                }
            });
            this.f85973b.setAdPrivacyListener(new NativeResponse.AdDownloadWindowListener() { // from class: com.windmill.baidu.BdNativeAdData$3
                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdDownloadWindowListener
                public void adDownloadWindowClose() {
                    WMLogUtil.d(WMLogUtil.TAG, "adDownloadWindowClose");
                    if (this.f85896a.f85980i != null) {
                        this.f85896a.f85980i.resume();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdDownloadWindowListener
                public void adDownloadWindowShow() {
                    WMLogUtil.d(WMLogUtil.TAG, "AdDownloadWindowShow");
                    if (this.f85896a.f85980i != null) {
                        this.f85896a.f85980i.pause();
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
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.baidu.h.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        if (h.this.f85977f != null) {
                            h.this.f85977f.onSelected(0, "baidu", true);
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
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return this.f85978g;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        NativeResponse nativeResponse = this.f85973b;
        if (nativeResponse == null) {
            return 1;
        }
        if (nativeResponse.getMaterialType() == NativeResponse.MaterialType.VIDEO) {
            return 4;
        }
        if (!TextUtils.isEmpty(this.f85973b.getImageUrl())) {
            return 2;
        }
        List<String> multiPicUrls = this.f85973b.getMultiPicUrls();
        return (multiPicUrls == null || multiPicUrls.isEmpty()) ? 1 : 3;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.AppInfo getAppInfo() {
        NativeResponse nativeResponse = this.f85973b;
        if (nativeResponse != null) {
            return new WMNativePrivacyInfo(nativeResponse.getBrandName(), this.f85973b.getAppVersion(), this.f85973b.getAppSize(), this.f85973b.getAppPackage(), this.f85973b.getPublisher(), this.f85973b.getAppPrivacyLink(), "", this.f85973b.getAppPermissionLink(), this.f85973b.getAppFunctionLink());
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        NativeResponse nativeResponse = this.f85973b;
        if (nativeResponse == null) {
            return "查看详情";
        }
        String actButtonString = nativeResponse.getActButtonString();
        if (this.f85973b.getAdActionType() != 2) {
            return !TextUtils.isEmpty(actButtonString) ? actButtonString : "查看详情";
        }
        int downloadStatus = this.f85973b.getDownloadStatus();
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
        NativeResponse nativeResponse = this.f85973b;
        return (nativeResponse == null || (customizeMediaPlayer = nativeResponse.getCustomizeMediaPlayer()) == null) ? super.getCustomizeVideo() : new WMNativeAdData.CustomizeVideo() { // from class: com.windmill.baidu.h.2
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
        NativeResponse nativeResponse = this.f85973b;
        return nativeResponse != null ? nativeResponse.getDesc() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        NativeResponse nativeResponse = this.f85973b;
        return nativeResponse != null ? nativeResponse.getIconUrl() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        if (this.f85973b == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String imageUrl = this.f85973b.getImageUrl();
        if (!TextUtils.isEmpty(imageUrl)) {
            arrayList.add(a(imageUrl));
        } else if (this.f85973b.getMultiPicUrls() != null) {
            for (int i10 = 0; i10 < this.f85973b.getMultiPicUrls().size(); i10++) {
                arrayList.add(a(this.f85973b.getMultiPicUrls().get(i10)));
            }
        }
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<String> getImageUrlList() {
        NativeResponse nativeResponse = this.f85973b;
        if (nativeResponse == null) {
            return null;
        }
        String imageUrl = nativeResponse.getImageUrl();
        if (TextUtils.isEmpty(imageUrl)) {
            return this.f85973b.getMultiPicUrls();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(imageUrl);
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getInteractionType() {
        NativeResponse nativeResponse = this.f85973b;
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
    public final View getInteractionWidgetView(int i10, int i11, int i12, final WMNativeAdData.AdShakeViewListener adShakeViewListener) {
        NativeResponse nativeResponse = this.f85973b;
        if (nativeResponse != null) {
            return nativeResponse.renderShakeView(i10, i11, new NativeResponse.AdShakeViewListener() { // from class: com.windmill.baidu.BdNativeAdData$7
                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdShakeViewListener
                public void onDismiss() {
                    WMNativeAdData.AdShakeViewListener adShakeViewListener2 = adShakeViewListener;
                    if (adShakeViewListener2 != null) {
                        adShakeViewListener2.onDismiss();
                    }
                }
            });
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getNetworkId() {
        WMCustomNativeAdapter wMCustomNativeAdapter = this.f85975d;
        if (wMCustomNativeAdapter != null) {
            return wMCustomNativeAdapter.getChannelId();
        }
        return 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f85973b;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        NativeResponse nativeResponse = this.f85973b;
        return nativeResponse != null ? nativeResponse.getTitle() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final long getVideoDuration() {
        NativeResponse nativeResponse = this.f85973b;
        return nativeResponse != null ? ((long) nativeResponse.getDuration()) * 1000 : super.getVideoDuration();
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
    public final void pauseVideo() {
        XNativeView xNativeView = this.f85980i;
        if (xNativeView != null) {
            xNativeView.pause();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View renderShakeView(int i10, int i11, final WMNativeAdData.AdShakeViewListener adShakeViewListener) {
        NativeResponse nativeResponse = this.f85973b;
        if (nativeResponse != null) {
            return nativeResponse.renderShakeView(i10, i11, new NativeResponse.AdShakeViewListener() { // from class: com.windmill.baidu.BdNativeAdData$6
                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdShakeViewListener
                public void onDismiss() {
                    WMNativeAdData.AdShakeViewListener adShakeViewListener2 = adShakeViewListener;
                    if (adShakeViewListener2 != null) {
                        adShakeViewListener2.onDismiss();
                    }
                }
            });
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void resumeVideo() {
        XNativeView xNativeView = this.f85980i;
        if (xNativeView != null) {
            xNativeView.resume();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null) {
            this.f85977f = dislikeInteractionCallback;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
        if (appDownloadListener != null) {
            this.f85979h = appDownloadListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f85974c = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener != null) {
            this.f85976e = nativeADMediaListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaViewOption(WMVideoOption wMVideoOption) {
        this.f85972a = wMVideoOption;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setVideoMute(boolean z10) {
        XNativeView xNativeView = this.f85980i;
        if (xNativeView != null) {
            xNativeView.setVideoMute(z10);
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void startVideo() {
        try {
            XNativeView xNativeView = this.f85980i;
            if (xNativeView != null) {
                Method declaredMethod = xNativeView.getClass().getDeclaredMethod("play", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(this.f85980i, new Object[0]);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void stopVideo() {
        XNativeView xNativeView = this.f85980i;
        if (xNativeView != null) {
            xNativeView.stop();
        }
    }

    private WMImage a(final String str) {
        return new WMImage() { // from class: com.windmill.baidu.h.4
            @Override // com.windmill.sdk.natives.WMImage
            public final int getHeight() {
                return h.this.f85973b.getMainPicHeight();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final String getImageUrl() {
                return str;
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final int getWidth() {
                return h.this.f85973b.getMainPicWidth();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final boolean isValid() {
                return true;
            }
        };
    }
}
