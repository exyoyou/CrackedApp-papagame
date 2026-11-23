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
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import com.windmill.sdk.natives.WMNativePrivacyInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class f extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NativeResponse f85957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f85958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMNativeAdData.NativeADMediaListener f85959c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WMNativeAdData.DislikeInteractionCallback f85960d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Bitmap f85961e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WMNativeAdData.AppDownloadListener f85962f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private XNativeView f85963g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Map<String, Object> f85964h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f85965i;

    public f(Context context, NativeResponse nativeResponse, int i10, Map<String, Object> map) {
        this.f85957a = nativeResponse;
        this.f85965i = i10;
        this.f85964h = map;
        if (context == null || nativeResponse == null) {
            return;
        }
        ImageManager.with(context).getBitmap(this.f85957a.getBaiduLogoUrl(), new ImageManager.BitmapLoadedListener() { // from class: com.windmill.baidu.f.1
            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public final void onBitmapLoadFailed() {
            }

            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public final void onBitmapLoaded(Bitmap bitmap) {
                f.this.f85961e = bitmap;
            }
        });
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        if (this.f85957a == null || list.isEmpty()) {
            return;
        }
        String imageUrl = this.f85957a.getImageUrl();
        if (!TextUtils.isEmpty(imageUrl)) {
            ImageManager.with(context).load(imageUrl).placeholder(i10).error(i10).into(list.get(0));
            return;
        }
        List<String> multiPicUrls = this.f85957a.getMultiPicUrls();
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
        if (this.f85957a != null) {
            if (viewGroup != null) {
                XNativeView xNativeView = new XNativeView(context);
                this.f85963g = xNativeView;
                xNativeView.setBackgroundColor(-16777216);
                ViewGroup.LayoutParams layoutParams = this.f85963g.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = new ViewGroup.LayoutParams(-1, -2);
                }
                viewGroup.removeAllViews();
                viewGroup.addView(this.f85963g, layoutParams);
            }
            XNativeView xNativeView2 = this.f85963g;
            if (xNativeView2 != null) {
                xNativeView2.setShowProgress(true);
                this.f85963g.setProgressBarColor(-7829368);
                this.f85963g.setProgressBackgroundColor(-16777216);
                this.f85963g.setProgressHeightInDp(1);
                this.f85963g.setNativeItem(this.f85957a);
                Map<String, Object> map = this.f85964h;
                if (map != null) {
                    Object obj = map.get(WMConstants.AUTO_PLAY_MUTED);
                    Object obj2 = this.f85964h.get("showDownloadDialog");
                    if (obj == null || !obj.equals("0")) {
                        this.f85963g.setVideoMute(true);
                    } else {
                        this.f85963g.setVideoMute(false);
                    }
                    if (obj2 == null || !obj2.equals("1")) {
                        this.f85963g.setUseDownloadFrame(false);
                    } else {
                        this.f85963g.setUseDownloadFrame(true);
                    }
                }
                this.f85963g.setNativeViewClickListener(new XNativeView.INativeViewClickListener() { // from class: com.windmill.baidu.BdNSIAdData$7
                    @Override // com.baidu.mobads.sdk.api.XNativeView.INativeViewClickListener
                    public void onNativeViewClick(XNativeView xNativeView3) {
                        WMLogUtil.d(WMLogUtil.TAG, "onNativeViewClick:".concat(String.valueOf(xNativeView3)));
                    }
                });
                this.f85963g.setNativeVideoListener(new INativeVideoListener() { // from class: com.windmill.baidu.BdNSIAdData$8
                    @Override // com.baidu.mobads.sdk.api.INativeVideoListener
                    public void onCompletion() {
                        WMLogUtil.d(WMLogUtil.TAG, "onCompletion");
                        if (this.f85893a.f85959c != null) {
                            this.f85893a.f85959c.onVideoCompleted();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.INativeVideoListener
                    public void onError() {
                        WMLogUtil.d(WMLogUtil.TAG, "onError()");
                        if (this.f85893a.f85959c != null) {
                            this.f85893a.f85959c.onVideoError(WindMillError.ERROR_AD_PLAY);
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.INativeVideoListener
                    public void onPause() {
                        WMLogUtil.d(WMLogUtil.TAG, "onPause()");
                        if (this.f85893a.f85959c != null) {
                            this.f85893a.f85959c.onVideoPause();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.INativeVideoListener
                    public void onRenderingStart() {
                        WMLogUtil.d(WMLogUtil.TAG, "onRenderingStart()");
                        if (this.f85893a.f85959c != null) {
                            this.f85893a.f85959c.onVideoStart();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.INativeVideoListener
                    public void onResume() {
                        WMLogUtil.d(WMLogUtil.TAG, "onResume()");
                        if (this.f85893a.f85959c != null) {
                            this.f85893a.f85959c.onVideoResume();
                        }
                    }
                });
                this.f85963g.render();
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
        NativeResponse nativeResponse = this.f85957a;
        if (nativeResponse != null) {
            nativeResponse.registerViewForInteraction(view, list, list2, new NativeResponse.AdInteractionListener() { // from class: com.windmill.baidu.BdNSIAdData$2
                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void adActReward(int i10) {
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void adActRewardSuccess() {
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onADExposed() {
                    if (this.f85888a.f85958b != null) {
                        this.f85888a.f85958b.onADExposed(null);
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onADExposureFailed(int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "onADExposureFailed:".concat(String.valueOf(i10)));
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onADStatusChanged() {
                    WMLogUtil.d(WMLogUtil.TAG, "onADStatusChanged()");
                    if (this.f85888a.f85957a.getAdActionType() != 2 || this.f85888a.f85962f == null) {
                        return;
                    }
                    int downloadStatus = this.f85888a.f85957a.getDownloadStatus();
                    if (downloadStatus >= 0 && downloadStatus <= 100) {
                        this.f85888a.f85962f.onDownloadActive(100L, downloadStatus, "", "");
                        return;
                    }
                    if (downloadStatus == 101) {
                        this.f85888a.f85962f.onDownloadFinished(100L, "", "");
                        return;
                    }
                    if (downloadStatus == 102) {
                        this.f85888a.f85962f.onDownloadPaused(100L, 50L, "", "");
                        return;
                    }
                    if (downloadStatus == 103) {
                        this.f85888a.f85962f.onInstalled("", "");
                    } else if (downloadStatus == 104) {
                        this.f85888a.f85962f.onDownloadFailed(100L, 1L, "", "");
                    } else {
                        this.f85888a.f85962f.onIdle();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onAdClick() {
                    if (this.f85888a.f85958b != null) {
                        this.f85888a.f85958b.onADClicked(null);
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
                public void onAdUnionClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "onAdUnionClick()");
                }
            });
            this.f85957a.setAdPrivacyListener(new NativeResponse.AdDownloadWindowListener() { // from class: com.windmill.baidu.BdNSIAdData$3
                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdDownloadWindowListener
                public void adDownloadWindowClose() {
                    WMLogUtil.d(WMLogUtil.TAG, "adDownloadWindowClose");
                    if (this.f85889a.f85963g != null) {
                        this.f85889a.f85963g.resume();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.NativeResponse.AdDownloadWindowListener
                public void adDownloadWindowShow() {
                    WMLogUtil.d(WMLogUtil.TAG, "AdDownloadWindowShow");
                    if (this.f85889a.f85963g != null) {
                        this.f85889a.f85963g.pause();
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
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.baidu.f.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        if (f.this.f85960d != null) {
                            f.this.f85960d.onSelected(0, "baidu", true);
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
        if (this.f85958b != null) {
            this.f85958b = null;
        }
        this.f85959c = null;
        this.f85960d = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return this.f85961e;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        NativeResponse nativeResponse = this.f85957a;
        if (nativeResponse == null) {
            return 1;
        }
        if (nativeResponse.getMaterialType() == NativeResponse.MaterialType.VIDEO) {
            return 4;
        }
        if (!TextUtils.isEmpty(this.f85957a.getImageUrl())) {
            return 2;
        }
        List<String> multiPicUrls = this.f85957a.getMultiPicUrls();
        return (multiPicUrls == null || multiPicUrls.isEmpty()) ? 1 : 3;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.AppInfo getAppInfo() {
        NativeResponse nativeResponse = this.f85957a;
        if (nativeResponse != null) {
            return new WMNativePrivacyInfo(nativeResponse.getBrandName(), this.f85957a.getAppVersion(), this.f85957a.getAppSize(), this.f85957a.getAppPackage(), this.f85957a.getPublisher(), this.f85957a.getAppPrivacyLink(), "", this.f85957a.getAppPermissionLink(), this.f85957a.getAppFunctionLink());
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        NativeResponse nativeResponse = this.f85957a;
        if (nativeResponse == null) {
            return "获取详情";
        }
        String actButtonString = nativeResponse.getActButtonString();
        if (this.f85957a.getAdActionType() != 2) {
            return !TextUtils.isEmpty(actButtonString) ? actButtonString : "获取详情";
        }
        int downloadStatus = this.f85957a.getDownloadStatus();
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
        NativeResponse nativeResponse = this.f85957a;
        return (nativeResponse == null || (customizeMediaPlayer = nativeResponse.getCustomizeMediaPlayer()) == null) ? super.getCustomizeVideo() : new WMNativeAdData.CustomizeVideo() { // from class: com.windmill.baidu.f.4
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
        NativeResponse nativeResponse = this.f85957a;
        return nativeResponse != null ? nativeResponse.getDesc() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        NativeResponse nativeResponse = this.f85957a;
        return nativeResponse != null ? nativeResponse.getIconUrl() : "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        if (this.f85957a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String imageUrl = this.f85957a.getImageUrl();
        if (!TextUtils.isEmpty(imageUrl)) {
            arrayList.add(a(imageUrl));
        } else if (this.f85957a.getMultiPicUrls() != null) {
            for (int i10 = 0; i10 < this.f85957a.getMultiPicUrls().size(); i10++) {
                arrayList.add(a(this.f85957a.getMultiPicUrls().get(i10)));
            }
        }
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<String> getImageUrlList() {
        NativeResponse nativeResponse = this.f85957a;
        if (nativeResponse == null) {
            return null;
        }
        String imageUrl = nativeResponse.getImageUrl();
        if (TextUtils.isEmpty(imageUrl)) {
            return this.f85957a.getMultiPicUrls();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(imageUrl);
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getInteractionType() {
        NativeResponse nativeResponse = this.f85957a;
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
        return this.f85965i;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f85957a;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        NativeResponse nativeResponse = this.f85957a;
        return nativeResponse != null ? nativeResponse.getTitle() : "";
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
        XNativeView xNativeView = this.f85963g;
        if (xNativeView != null) {
            xNativeView.pause();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View renderShakeView(int i10, int i11, final WMNativeAdData.AdShakeViewListener adShakeViewListener) {
        NativeResponse nativeResponse = this.f85957a;
        if (nativeResponse != null) {
            return nativeResponse.renderShakeView(i10, i11, new NativeResponse.AdShakeViewListener() { // from class: com.windmill.baidu.BdNSIAdData$6
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
        XNativeView xNativeView = this.f85963g;
        if (xNativeView != null) {
            xNativeView.resume();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null) {
            this.f85960d = dislikeInteractionCallback;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
        if (appDownloadListener != null) {
            this.f85962f = appDownloadListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f85958b = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener != null) {
            this.f85959c = nativeADMediaListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setVideoMute(boolean z10) {
        XNativeView xNativeView = this.f85963g;
        if (xNativeView != null) {
            xNativeView.setVideoMute(z10);
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void startVideo() {
        XNativeView xNativeView = this.f85963g;
        if (xNativeView != null) {
            xNativeView.render();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void stopVideo() {
        XNativeView xNativeView = this.f85963g;
        if (xNativeView != null) {
            xNativeView.stop();
        }
    }

    private WMImage a(final String str) {
        return new WMImage() { // from class: com.windmill.baidu.f.3
            @Override // com.windmill.sdk.natives.WMImage
            public final int getHeight() {
                return f.this.f85957a.getMainPicHeight();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final String getImageUrl() {
                return str;
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final int getWidth() {
                return f.this.f85957a.getMainPicWidth();
            }

            @Override // com.windmill.sdk.natives.WMImage
            public final boolean isValid() {
                return true;
            }
        };
    }
}
