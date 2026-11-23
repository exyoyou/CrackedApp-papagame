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
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import com.windmill.sdk.natives.WMNativePrivacyInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class c extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WindNativeAdData f87616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f87617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f87618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WMNativeAdData.NativeADMediaListener f87619d;

    public c(WindNativeAdData windNativeAdData, int i10) {
        this.f87617b = i10;
        this.f87616a = windNativeAdData;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
        if (this.f87616a == null || list == null || list.isEmpty()) {
            return;
        }
        this.f87616a.bindImageViews(list, i10);
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, ViewGroup viewGroup) {
        WindNativeAdData windNativeAdData = this.f87616a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.bindMediaViewWithoutAppInfo(viewGroup, new WindNativeAdData.NativeADMediaListener() { // from class: com.windmill.sigmob.c.3
            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public final void onVideoCompleted() {
                if (c.this.f87619d == null) {
                    return;
                }
                c.this.f87619d.onVideoCompleted();
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public final void onVideoError(WindAdError windAdError) {
                if (c.this.f87619d == null) {
                    return;
                }
                WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
                windMillError.setMessage(windAdError.toString());
                c.this.f87619d.onVideoError(windMillError);
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public final void onVideoLoad() {
                if (c.this.f87619d == null) {
                    return;
                }
                c.this.f87619d.onVideoLoad();
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public final void onVideoPause() {
                if (c.this.f87619d == null) {
                    return;
                }
                c.this.f87619d.onVideoPause();
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public final void onVideoResume() {
                if (c.this.f87619d == null) {
                    return;
                }
                c.this.f87619d.onVideoResume();
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public final void onVideoStart() {
                if (c.this.f87619d == null) {
                    return;
                }
                c.this.f87619d.onVideoStart();
            }
        });
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
        WindNativeAdData windNativeAdData = this.f87616a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.bindViewForInteraction(view, list, list2, view2, new NativeADEventListener() { // from class: com.windmill.sigmob.c.1
            @Override // com.sigmob.windad.natives.NativeADEventListener
            public final void onAdClicked() {
                if (c.this.f87618c == null) {
                    return;
                }
                c.this.f87618c.onADClicked(null);
            }

            @Override // com.sigmob.windad.natives.NativeADEventListener
            public final void onAdDetailDismiss() {
            }

            @Override // com.sigmob.windad.natives.NativeADEventListener
            public final void onAdDetailShow() {
                if (c.this.f87618c == null) {
                    return;
                }
                c.this.f87618c.onADClicked(null);
            }

            @Override // com.sigmob.windad.natives.NativeADEventListener
            public final void onAdError(WindAdError windAdError) {
                if (c.this.f87618c == null) {
                    return;
                }
                WindMillError windMillError = WindMillError.ERROR_AD_ADAPTER_PLAY;
                windMillError.setMessage(windAdError.getMessage());
                c.this.f87618c.onADError(null, windMillError);
            }

            @Override // com.sigmob.windad.natives.NativeADEventListener
            public final void onAdExposed() {
                if (c.this.f87618c == null) {
                    return;
                }
                c.this.f87618c.onADExposed(null);
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
        WindNativeAdData windNativeAdData = this.f87616a;
        if (windNativeAdData != null) {
            windNativeAdData.destroy();
        }
        if (this.f87618c != null) {
            this.f87618c = null;
        }
        this.f87619d = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        WindNativeAdData windNativeAdData = this.f87616a;
        if (windNativeAdData == null) {
            return null;
        }
        return windNativeAdData.getAdLogo();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        WindNativeAdData windNativeAdData = this.f87616a;
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
        WindNativeAdData windNativeAdData = this.f87616a;
        if (windNativeAdData == null || (adAppInfo = windNativeAdData.getAdAppInfo()) == null) {
            return null;
        }
        return new WMNativePrivacyInfo(adAppInfo.getAppName(), adAppInfo.getVersionName(), adAppInfo.getAppSize(), "", adAppInfo.getAuthorName(), adAppInfo.getPrivacyAgreementUrl(), adAppInfo.getPermissions(), adAppInfo.getPermissionsUrl(), adAppInfo.getDescriptionUrl());
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        WindNativeAdData windNativeAdData = this.f87616a;
        if (windNativeAdData == null) {
            return "获取详情";
        }
        String cTAText = windNativeAdData.getCTAText();
        return TextUtils.isEmpty(cTAText) ? "获取详情" : cTAText;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getDesc() {
        WindNativeAdData windNativeAdData = this.f87616a;
        return windNativeAdData == null ? "" : windNativeAdData.getDesc();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        WindNativeAdData windNativeAdData = this.f87616a;
        return windNativeAdData == null ? "" : windNativeAdData.getIconUrl();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        WindNativeAdData windNativeAdData = this.f87616a;
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
                    arrayList.add(new WMImage() { // from class: com.windmill.sigmob.c.2
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
        WindNativeAdData windNativeAdData = this.f87616a;
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
        WindNativeAdData windNativeAdData = this.f87616a;
        if (windNativeAdData == null) {
            return 0;
        }
        return windNativeAdData.getInteractionType();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Map<String, String> getMediaExtraOption() {
        WindNativeAdData windNativeAdData = this.f87616a;
        if (windNativeAdData == null || windNativeAdData.getSaasOptions() == null) {
            return null;
        }
        return this.f87616a.getSaasOptions();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getNetworkId() {
        return this.f87617b;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f87616a;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        WindNativeAdData windNativeAdData = this.f87616a;
        return windNativeAdData == null ? "" : windNativeAdData.getTitle();
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
        WindNativeAdData windNativeAdData = this.f87616a;
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
        WindNativeAdData windNativeAdData = this.f87616a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.resumeVideo();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, final WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        WindNativeAdData windNativeAdData = this.f87616a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.setDislikeInteractionCallback(activity, new WindNativeAdData.DislikeInteractionCallback() { // from class: com.windmill.sigmob.c.4
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
        this.f87618c = nativeAdInteractionListener;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (nativeADMediaListener == null) {
            return;
        }
        this.f87619d = nativeADMediaListener;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void startVideo() {
        WindNativeAdData windNativeAdData = this.f87616a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.startVideo();
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void stopVideo() {
        WindNativeAdData windNativeAdData = this.f87616a;
        if (windNativeAdData == null) {
            return;
        }
        windNativeAdData.stopVideo();
    }
}
