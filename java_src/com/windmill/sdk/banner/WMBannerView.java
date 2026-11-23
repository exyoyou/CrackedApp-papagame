package com.windmill.sdk.banner;

import android.app.Activity;
import android.util.AttributeSet;
import android.view.View;
import com.windmill.sdk.WMAdFilter;
import com.windmill.sdk.WMAdSourceStatusListener;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.models.AdInfo;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public final class WMBannerView extends b {
    public WMBannerView(final Activity context) {
        super(context);
    }

    @Override // com.windmill.sdk.banner.b
    public /* bridge */ /* synthetic */ List checkValidAdCaches() {
        return super.checkValidAdCaches();
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.common.j.a
    public /* bridge */ /* synthetic */ void checkVisibleStart() throws Throwable {
        super.checkVisibleStart();
    }

    @Override // com.windmill.sdk.banner.b
    public /* bridge */ /* synthetic */ void destroy() {
        super.destroy();
    }

    @Override // com.windmill.sdk.banner.b
    public /* bridge */ /* synthetic */ void disableAutoScroll() throws Throwable {
        super.disableAutoScroll();
    }

    @Override // com.windmill.sdk.banner.b
    public /* bridge */ /* synthetic */ Activity getActivity() {
        return super.getActivity();
    }

    @Override // com.windmill.sdk.banner.b
    public /* bridge */ /* synthetic */ String getLoadFailMessages() {
        return super.getLoadFailMessages();
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.banner.a.InterfaceC1078a
    public /* bridge */ /* synthetic */ void inVisible() throws Throwable {
        super.inVisible();
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.common.j.a
    public /* bridge */ /* synthetic */ boolean isCanRefresh() {
        return super.isCanRefresh();
    }

    @Override // com.windmill.sdk.banner.b
    public /* bridge */ /* synthetic */ boolean isReady() {
        return super.isReady();
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.banner.a.InterfaceC1078a
    public /* bridge */ /* synthetic */ boolean isViewAttached() {
        return super.isViewAttached();
    }

    @Override // com.windmill.sdk.banner.b
    public /* bridge */ /* synthetic */ void loadAd(final WMBannerAdRequest request) throws Throwable {
        super.loadAd(request);
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.common.j.b
    public /* bridge */ /* synthetic */ void onAdAutoRefreshFail(WindMillError error, String placementId) {
        super.onAdAutoRefreshFail(error, placementId);
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.common.j.b
    public /* bridge */ /* synthetic */ void onAdAutoRefreshed(AdInfo adInfo, View bannerView) throws Throwable {
        super.onAdAutoRefreshed(adInfo, bannerView);
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.common.j.b
    public /* bridge */ /* synthetic */ void onAdClicked(AdInfo adInfo) {
        super.onAdClicked(adInfo);
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.common.j.b
    public /* bridge */ /* synthetic */ void onAdClosed(AdInfo adInfo) {
        super.onAdClosed(adInfo);
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.common.j.b
    public /* bridge */ /* synthetic */ void onAdLoadError(WindMillError error, String placementId) {
        super.onAdLoadError(error, placementId);
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.common.j.b
    public /* bridge */ /* synthetic */ void onAdLoadSuccess(View bannerView, String placementId) throws Throwable {
        super.onAdLoadSuccess(bannerView, placementId);
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.common.j.b
    public /* bridge */ /* synthetic */ void onAdShown(AdInfo adInfo) {
        super.onAdShown(adInfo);
    }

    @Override // com.windmill.sdk.banner.b, android.view.View
    public /* bridge */ /* synthetic */ void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
    }

    @Override // com.windmill.sdk.banner.b, android.view.View
    public /* bridge */ /* synthetic */ void onStartTemporaryDetach() throws Throwable {
        super.onStartTemporaryDetach();
    }

    @Override // com.windmill.sdk.banner.b, android.view.View
    public /* bridge */ /* synthetic */ void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.common.k
    public /* bridge */ /* synthetic */ void setActivityChannelFilterList(Set channelIds) {
        super.setActivityChannelFilterList(channelIds);
    }

    @Override // com.windmill.sdk.banner.b
    public /* bridge */ /* synthetic */ void setAdListener(WMBannerAdListener listener) {
        super.setAdListener(listener);
    }

    @Override // com.windmill.sdk.banner.b
    public /* bridge */ /* synthetic */ void setAdSourceStatusListener(WMAdSourceStatusListener listener) {
        super.setAdSourceStatusListener(listener);
    }

    @Override // com.windmill.sdk.banner.b
    public /* bridge */ /* synthetic */ void setAutoAnimation(boolean anima) {
        super.setAutoAnimation(anima);
    }

    @Override // com.windmill.sdk.banner.b
    public /* bridge */ /* synthetic */ void setAutoScroll() throws Throwable {
        super.setAutoScroll();
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.common.k
    public /* bridge */ /* synthetic */ void setCustomGroup(HashMap customGroup) {
        super.setCustomGroup(customGroup);
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.common.k
    public /* bridge */ /* synthetic */ void setFilter(WMAdFilter filter) {
        super.setFilter(filter);
    }

    @Override // com.windmill.sdk.banner.b, com.windmill.sdk.banner.a.InterfaceC1078a
    public /* bridge */ /* synthetic */ void visible() throws Throwable {
        super.visible();
    }

    public WMBannerView(final Activity context, final AttributeSet attrs) {
        super(context, attrs);
    }

    public WMBannerView(final Activity context, final AttributeSet attrs, final int defStyle) {
        super(context, attrs, defStyle);
    }
}
