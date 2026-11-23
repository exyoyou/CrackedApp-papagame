package com.windmill.sigmob;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.sigmob.sdk.base.models.SigImage;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.natives.AdAppInfo;
import com.sigmob.windad.natives.NativeADEventListener;
import com.sigmob.windad.natives.WindNativeAdData;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdMediaListenerWrapper;
import com.windmill.sdk.natives.WMNativeAdRender;
import com.windmill.sdk.natives.WMNativePrivacyInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class e extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WindNativeAdData f87626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WMCustomNativeAdapter f87627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f87628c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WMNativeAdMediaListenerWrapper f87629d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WMNativeAdMediaListenerWrapper.IVideoInfoFormChannel f87630e = new WMNativeAdMediaListenerWrapper.IVideoInfoFormChannel() { // from class: com.windmill.sigmob.e.1
        @Override // com.windmill.sdk.natives.WMNativeAdMediaListenerWrapper.IVideoInfoFormChannel
        public final long getVideoDuration() {
            if (e.this.f87626a == null) {
                return -1L;
            }
            return ((long) e.this.f87626a.getVideoDuration()) * 1000;
        }

        @Override // com.windmill.sdk.natives.WMNativeAdMediaListenerWrapper.IVideoInfoFormChannel
        public final long getVideoProgress() {
            if (e.this.f87626a == null) {
                return -1L;
            }
            return ((long) e.this.f87626a.getVideoCurrentPosition()) * 1000;
        }
    };

    public e(WMCustomNativeAdapter wMCustomNativeAdapter, WindNativeAdData windNativeAdData) {
        this.f87627b = wMCustomNativeAdapter;
        this.f87626a = windNativeAdData;
        WMNativeAdMediaListenerWrapper wMNativeAdMediaListenerWrapper = new WMNativeAdMediaListenerWrapper(this);
        this.f87629d = wMNativeAdMediaListenerWrapper;
        wMNativeAdMediaListenerWrapper.setVideoInfoFormChannel(this.f87630e);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        if (this.f87626a == null || list == null || list.isEmpty()) {
            return;
        }
        this.f87626a.bindImageViews(list, i10);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, ViewGroup viewGroup) {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.bindMediaViewWithoutAppInfo(viewGroup, new WindNativeAdData.NativeADMediaListener() { // from class: com.windmill.sigmob.e.4
            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public final void onVideoCompleted() {
                if (e.this.f87629d != null) {
                    e.this.f87629d.onVideoCompleted();
                }
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public final void onVideoError(WindAdError windAdError) {
                WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                windMillError.setMessage(windAdError.toString());
                if (e.this.f87629d != null) {
                    e.this.f87629d.onVideoError(windMillError);
                }
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public final void onVideoLoad() {
                if (e.this.f87629d != null) {
                    e.this.f87629d.onVideoLoad();
                }
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public final void onVideoPause() {
                if (e.this.f87629d != null) {
                    e.this.f87629d.onVideoPause();
                }
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public final void onVideoResume() {
                if (e.this.f87629d != null) {
                    e.this.f87629d.onVideoResume();
                }
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public final void onVideoStart() {
                if (e.this.f87629d == null || e.this.f87626a == null) {
                    return;
                }
                e.this.f87629d.onVideoStart(((long) e.this.f87626a.getVideoDuration()) * 1000);
            }
        });
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.bindViewForInteraction(view, list, list2, view2, new NativeADEventListener() { // from class: com.windmill.sigmob.e.2
            @Override // com.sigmob.windad.natives.NativeADEventListener
            public final void onAdClicked() {
                if (e.this.f87628c != null && e.this.f87627b != null) {
                    e.this.f87628c.onADClicked(e.this.f87627b.getAdInFo(e.this));
                }
                if (e.this.f87627b != null) {
                    e.this.f87627b.callNativeAdClick(e.this);
                }
            }

            @Override // com.sigmob.windad.natives.NativeADEventListener
            public final void onAdDetailDismiss() {
            }

            @Override // com.sigmob.windad.natives.NativeADEventListener
            public final void onAdDetailShow() {
                if (e.this.f87627b == null) {
                    return;
                }
                e.this.f87627b.callNativeAdLangPageShow(e.this);
            }

            @Override // com.sigmob.windad.natives.NativeADEventListener
            public final void onAdError(WindAdError windAdError) {
                if (e.this.f87628c != null && e.this.f87627b != null) {
                    WindMillError windMillError = WindMillError.ERROR_AD_ADAPTER_PLAY;
                    windMillError.setMessage(windAdError.getMessage());
                    e.this.f87628c.onADError(e.this.f87627b.getAdInFo(e.this), windMillError);
                }
                if (e.this.f87627b != null) {
                    e.this.f87627b.callNativeAdShowError(e.this, new WMAdapterError(windAdError.getErrorCode(), windAdError.getMessage()));
                }
            }

            @Override // com.sigmob.windad.natives.NativeADEventListener
            public final void onAdExposed() {
                if (e.this.f87628c != null && e.this.f87627b != null) {
                    e.this.f87628c.onADExposed(e.this.f87627b.getAdInFo(e.this));
                }
                if (e.this.f87627b != null) {
                    e.this.f87627b.callNativeAdShow(e.this);
                }
            }
        });
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void connectAdToView(Activity activity, WMNativeAdContainer wMNativeAdContainer, WMNativeAdRender wMNativeAdRender) {
        if (wMNativeAdRender == null) {
            return;
        }
        View viewCreateView = wMNativeAdRender.createView(activity, getAdPatternType());
        wMNativeAdRender.renderAdView(viewCreateView, this);
        if (wMNativeAdContainer == null) {
            return;
        }
        wMNativeAdContainer.removeAllViews();
        wMNativeAdContainer.addView(viewCreateView, new ViewGroup.LayoutParams(-1, -2));
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void destroy() {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData != null) {
            windNativeAdData.destroy();
        }
        this.f87628c = null;
        WMNativeAdMediaListenerWrapper wMNativeAdMediaListenerWrapper = this.f87629d;
        if (wMNativeAdMediaListenerWrapper != null) {
            wMNativeAdMediaListenerWrapper.destroy();
            this.f87629d = null;
        }
        this.f87630e = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return null;
        }
        return windNativeAdData.getAdLogo();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return 0;
        }
        int adPatternType = windNativeAdData.getAdPatternType();
        if (adPatternType == 1) {
            return 4;
        }
        int i10 = 2;
        if (adPatternType != 2) {
            i10 = 3;
            if (adPatternType != 3) {
                return 0;
            }
        }
        return i10;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final WMNativeAdData.AppInfo getAppInfo() {
        AdAppInfo adAppInfo;
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null || (adAppInfo = windNativeAdData.getAdAppInfo()) == null) {
            return null;
        }
        return new WMNativePrivacyInfo(adAppInfo.getAppName(), adAppInfo.getVersionName(), adAppInfo.getAppSize(), "", adAppInfo.getAuthorName(), adAppInfo.getPrivacyAgreementUrl(), adAppInfo.getPermissions(), adAppInfo.getPermissionsUrl(), adAppInfo.getDescriptionUrl());
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return "";
        }
        String cTAText = windNativeAdData.getCTAText();
        return TextUtils.isEmpty(cTAText) ? "" : cTAText;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getDesc() {
        WindNativeAdData windNativeAdData = this.f87626a;
        return windNativeAdData == null ? "" : windNativeAdData.getDesc();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        WindNativeAdData windNativeAdData = this.f87626a;
        return windNativeAdData == null ? "" : windNativeAdData.getIconUrl();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        WindNativeAdData windNativeAdData = this.f87626a;
        ArrayList arrayList = null;
        if (windNativeAdData == null) {
            return null;
        }
        List<SigImage> imageList = windNativeAdData.getImageList();
        if (imageList != null && !imageList.isEmpty()) {
            arrayList = new ArrayList();
            for (int i10 = 0; i10 < imageList.size(); i10++) {
                final SigImage sigImage = imageList.get(i10);
                if (sigImage != null) {
                    arrayList.add(new WMImage() { // from class: com.windmill.sigmob.e.3
                        @Override // com.windmill.sdk.natives.WMImage
                        public final int getHeight() {
                            return sigImage.getHeight();
                        }

                        @Override // com.windmill.sdk.natives.WMImage
                        public final String getImageUrl() {
                            return sigImage.getImageUrl();
                        }

                        @Override // com.windmill.sdk.natives.WMImage
                        public final int getWidth() {
                            return sigImage.getWidth();
                        }

                        @Override // com.windmill.sdk.natives.WMImage
                        public final boolean isValid() {
                            return true;
                        }
                    });
                }
            }
        }
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<String> getImageUrlList() {
        WindNativeAdData windNativeAdData = this.f87626a;
        ArrayList arrayList = null;
        if (windNativeAdData == null) {
            return null;
        }
        List<SigImage> imageList = windNativeAdData.getImageList();
        if (imageList != null && !imageList.isEmpty()) {
            arrayList = new ArrayList();
            for (int i10 = 0; i10 < imageList.size(); i10++) {
                String imageUrl = imageList.get(i10).getImageUrl();
                if (!TextUtils.isEmpty(imageUrl)) {
                    arrayList.add(imageUrl);
                }
            }
        }
        return arrayList;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getInteractionType() {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return 0;
        }
        return windNativeAdData.getInteractionType();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getInteractionWidgetView(int i10, int i11, int i12, WMNativeAdData.AdShakeViewListener adShakeViewListener) {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Map<String, String> getMediaExtraOption() {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return null;
        }
        return windNativeAdData.getSaasOptions();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getNetworkId() {
        WMCustomNativeAdapter wMCustomNativeAdapter = this.f87627b;
        if (wMCustomNativeAdapter == null) {
            return 0;
        }
        return wMCustomNativeAdapter.getChannelId();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f87626a;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        WindNativeAdData windNativeAdData = this.f87626a;
        return windNativeAdData == null ? "" : windNativeAdData.getTitle();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final long getVideoDuration() {
        WindNativeAdData windNativeAdData = this.f87626a;
        return windNativeAdData == null ? super.getVideoDuration() : ((long) windNativeAdData.getVideoDuration()) * 1000;
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
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.pauseVideo();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void resumeVideo() {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.resumeVideo();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, final WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.setDislikeInteractionCallback(activity, new WindNativeAdData.DislikeInteractionCallback() { // from class: com.windmill.sigmob.e.5
            @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
            public final void onCancel() {
                WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                if (dislikeInteractionCallback2 == null) {
                    return;
                }
                dislikeInteractionCallback2.onCancel();
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
            public final void onSelected(int i10, String str, boolean z10) {
                WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                if (dislikeInteractionCallback2 == null) {
                    return;
                }
                dislikeInteractionCallback2.onSelected(i10, str, z10);
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
            public final void onShow() {
                WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                if (dislikeInteractionCallback2 == null) {
                    return;
                }
                dislikeInteractionCallback2.onShow();
            }
        });
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener == null) {
            return;
        }
        this.f87628c = nativeAdInteractionListener;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener != null) {
            WMNativeAdMediaListenerWrapper wMNativeAdMediaListenerWrapper = this.f87629d;
            if (wMNativeAdMediaListenerWrapper == null) {
                this.f87629d = new WMNativeAdMediaListenerWrapper(this, nativeADMediaListener);
            } else {
                wMNativeAdMediaListenerWrapper.setNativeADMediaListener(nativeADMediaListener);
            }
            this.f87629d.setVideoInfoFormChannel(this.f87630e);
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setVideoMute(boolean z10) {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.setVideoMute(z10);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setVideoProgressUpdateInterval(int i10) {
        if (this.f87629d == null) {
            this.f87629d = new WMNativeAdMediaListenerWrapper(this);
        }
        this.f87629d.setVideoProgressUpdateInterval(i10);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void startVideo() {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.startVideo();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void stopVideo() {
        WindNativeAdData windNativeAdData = this.f87626a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.stopVideo();
    }
}
