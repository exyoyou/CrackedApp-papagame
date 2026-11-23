package com.windmill.baidu;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.baidu.mobads.sdk.api.ExpressResponse;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class b extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExpressResponse f85945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WMNativeAdData.NativeAdInteractionListener f85946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMCustomNativeAdapter f85947c;

    public b(ExpressResponse expressResponse, final WMCustomNativeAdapter wMCustomNativeAdapter) {
        this.f85945a = expressResponse;
        this.f85947c = wMCustomNativeAdapter;
        if (expressResponse != null) {
            expressResponse.setInteractionListener(new ExpressResponse.ExpressInteractionListener() { // from class: com.windmill.baidu.BdExpressAdData$1
                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
                public void onAdClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "----------onAdClicked-----------");
                    if (this.f85846b.f85946b != null && wMCustomNativeAdapter != null) {
                        this.f85846b.f85946b.onADClicked(wMCustomNativeAdapter.getAdInFo(this.f85846b));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdClick(this.f85846b);
                    }
                }

                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
                public void onAdExposed() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onAdExposed-----------");
                    if (this.f85846b.f85946b != null && wMCustomNativeAdapter != null) {
                        this.f85846b.f85946b.onADExposed(wMCustomNativeAdapter.getAdInFo(this.f85846b));
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdShow(this.f85846b);
                    }
                }

                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
                public void onAdRenderFail(View view, String str, int i10) {
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onAdRenderFail-----------:" + str + ":" + i10);
                    if (this.f85846b.f85946b != null && wMCustomNativeAdapter != null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_ADAPTER_PLAY;
                        windMillError.setMessage("code : " + i10 + " msg : " + str);
                        this.f85846b.f85946b.onADError(wMCustomNativeAdapter.getAdInFo(this.f85846b), windMillError);
                    }
                    WMCustomNativeAdapter wMCustomNativeAdapter2 = wMCustomNativeAdapter;
                    if (wMCustomNativeAdapter2 != null) {
                        wMCustomNativeAdapter2.callNativeAdShowError(this.f85846b, new WMAdapterError(i10, "bd onRenderFail:".concat(String.valueOf(str))));
                    }
                }

                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
                public void onAdRenderSuccess(View view, float f10, float f11) {
                    WMLogUtil.d(WMLogUtil.TAG, "-------------onRenderSuccess-----------:" + f10 + ":" + f11);
                    if (this.f85846b.f85946b == null || wMCustomNativeAdapter == null) {
                        return;
                    }
                    this.f85846b.f85946b.onADRenderSuccess(wMCustomNativeAdapter.getAdInFo(this.f85846b), view, f10, f11);
                }

                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
                public void onAdUnionClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onAdUnionClick-----------");
                }
            });
            this.f85945a.setAdPrivacyListener(new ExpressResponse.ExpressAdDownloadWindowListener() { // from class: com.windmill.baidu.BdExpressAdData$2
                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressAdDownloadWindowListener
                public void adDownloadWindowClose() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------adDownloadWindowClose-----------");
                }

                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressAdDownloadWindowListener
                public void adDownloadWindowShow() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------adDownloadWindowShow-----------");
                }

                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressAdDownloadWindowListener
                public void onADFunctionClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onADFunctionClick-----------");
                }

                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressAdDownloadWindowListener
                public void onADPermissionClose() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onADPermissionClose-----------");
                }

                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressAdDownloadWindowListener
                public void onADPermissionShow() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onADPermissionShow-----------");
                }

                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressAdDownloadWindowListener
                public void onADPrivacyClick() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onADPrivacyClick-----------");
                }
            });
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindImageViews(Context context, List<ImageView> list, int i10) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindMediaView(Context context, ViewGroup viewGroup) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void bindViewForInteraction(Context context, View view, List<View> list, List<View> list2, View view2) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void connectAdToView(Activity activity, WMNativeAdContainer wMNativeAdContainer, WMNativeAdRender wMNativeAdRender) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void destroy() {
        this.f85946b = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        ExpressResponse expressResponse = this.f85945a;
        return (expressResponse == null || expressResponse.getStyleType() != 41) ? 0 : 4;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getCTAText() {
        return "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getDesc() {
        return "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final View getExpressAdView() {
        ExpressResponse expressResponse = this.f85945a;
        if (expressResponse != null) {
            return expressResponse.getExpressAdView();
        }
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getIconUrl() {
        return "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<WMImage> getImageList() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final List<String> getImageUrlList() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getInteractionType() {
        ExpressResponse expressResponse = this.f85945a;
        if (expressResponse == null) {
            return 0;
        }
        int adActionType = expressResponse.getAdActionType();
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
        WMCustomNativeAdapter wMCustomNativeAdapter = this.f85947c;
        if (wMCustomNativeAdapter != null) {
            return wMCustomNativeAdapter.getChannelId();
        }
        return 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f85945a;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final String getTitle() {
        return "";
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isExpressAd() {
        return true;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final boolean isNativeDrawAd() {
        return false;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void render() {
        ExpressResponse expressResponse = this.f85945a;
        if (expressResponse != null) {
            expressResponse.render();
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, final WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        ExpressResponse expressResponse = this.f85945a;
        if (expressResponse != null) {
            expressResponse.bindInteractionActivity(activity);
            this.f85945a.setAdDislikeListener(new ExpressResponse.ExpressDislikeListener() { // from class: com.windmill.baidu.BdExpressAdData$3
                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressDislikeListener
                public void onDislikeItemClick(String str) {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onDislikeItemClick-----------:".concat(String.valueOf(str)));
                    WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                    if (dislikeInteractionCallback2 != null) {
                        dislikeInteractionCallback2.onSelected(0, str, true);
                    }
                }

                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressDislikeListener
                public void onDislikeWindowClose() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onDislikeWindowClose-----------");
                    WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                    if (dislikeInteractionCallback2 != null) {
                        dislikeInteractionCallback2.onCancel();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressDislikeListener
                public void onDislikeWindowShow() {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onDislikeWindowShow-----------");
                    WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                    if (dislikeInteractionCallback2 != null) {
                        dislikeInteractionCallback2.onShow();
                    }
                }
            });
            this.f85945a.setAdCloseListener(new ExpressResponse.ExpressCloseListener() { // from class: com.windmill.baidu.BdExpressAdData$4
                @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressCloseListener
                public void onAdClose(ExpressResponse expressResponse2) {
                    WMLogUtil.d(WMLogUtil.TAG, "---------------onAdClose-----------");
                    WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback2 = dislikeInteractionCallback;
                    if (dislikeInteractionCallback2 != null) {
                        dislikeInteractionCallback2.onSelected(0, "baidu", true);
                    }
                }
            });
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f85946b = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
    }
}
