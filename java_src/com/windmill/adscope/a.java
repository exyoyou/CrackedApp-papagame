package com.windmill.adscope;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public final class a extends WMNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WMNativeAdData.NativeAdInteractionListener f85831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    WMNativeAdData.DislikeInteractionCallback f85832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f85833c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WMCustomNativeAdapter f85834d;

    public a(View view, WMCustomNativeAdapter wMCustomNativeAdapter) {
        this.f85833c = view;
        this.f85834d = wMCustomNativeAdapter;
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
        this.f85831a = null;
        this.f85832b = null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Bitmap getAdLogo() {
        return null;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getAdPatternType() {
        return 0;
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
        View view = this.f85833c;
        if (view != null) {
            return view;
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
        return 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final int getNetworkId() {
        WMCustomNativeAdapter wMCustomNativeAdapter = this.f85834d;
        if (wMCustomNativeAdapter != null) {
            return wMCustomNativeAdapter.getChannelId();
        }
        return 0;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final Object getOriginNativeAdData() {
        return this.f85833c;
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
        WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener;
        if (this.f85833c == null || (nativeAdInteractionListener = this.f85831a) == null) {
            return;
        }
        AdInfo adInFo = this.f85834d.getAdInFo(this);
        View view = this.f85833c;
        nativeAdInteractionListener.onADRenderSuccess(adInFo, view, view.getWidth(), this.f85833c.getHeight());
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDislikeInteractionCallback(Activity activity, WMNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null) {
            this.f85832b = dislikeInteractionCallback;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setDownloadListener(WMNativeAdData.AppDownloadListener appDownloadListener) {
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setInteractionListener(WMNativeAdData.NativeAdInteractionListener nativeAdInteractionListener) {
        if (nativeAdInteractionListener != null) {
            this.f85831a = nativeAdInteractionListener;
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData
    public final void setMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
    }
}
