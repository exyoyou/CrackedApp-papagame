package com.windmill.sdk.natives;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.models.AdInfo;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class WMNativeAdData {
    private long expiredTime;
    private long time;

    public interface AdShakeViewListener {
        void onDismiss();
    }

    public interface AppDownloadListener {
        void onDownloadActive(long totalBytes, long currBytes, String fileName, String appName);

        void onDownloadFailed(long totalBytes, long currBytes, String fileName, String appName);

        void onDownloadFinished(long totalBytes, String fileName, String appName);

        void onDownloadPaused(long totalBytes, long currBytes, String fileName, String appName);

        void onIdle();

        void onInstalled(String fileName, String appName);
    }

    public interface AppInfo {
        String getAppName();

        String getAppPackageName();

        long getAppPackageSize();

        String getAppVersion();

        String getDeveloperName();

        String getFunctionDescUrl();

        String getPermissionInfo();

        String getPermissionInfoUrl();

        String getPrivacyUrl();
    }

    public interface CustomizeVideo {
        String getVideoUrl();

        void reportVideoCompleted();

        void reportVideoError(long var1, int var2, int var3);

        void reportVideoPause(long var1);

        void reportVideoPreload();

        void reportVideoResume(long var1);

        void reportVideoStart();
    }

    public interface DislikeInteractionCallback {
        void onCancel();

        void onSelected(int position, String value, boolean enforce);

        void onShow();
    }

    public interface NativeADMediaListener {
        void onVideoCompleted();

        void onVideoError(WindMillError error);

        void onVideoLoad();

        void onVideoPause();

        void onVideoResume();

        void onVideoStart();
    }

    public interface NativeADMediaListenerExt extends NativeADMediaListener {
        void onVideoProgressUpdate(long current, long duration);
    }

    public interface NativeAdInteractionListener {
        void onADClicked(AdInfo adInfo);

        void onADError(AdInfo adInfo, WindMillError error);

        void onADExposed(AdInfo adInfo);

        void onADRenderSuccess(AdInfo adInfo, View view, float width, float height);
    }

    public abstract void bindImageViews(Context context, List<ImageView> imageViews, int defaultImageRes);

    public abstract void bindMediaView(Context context, ViewGroup mediaLayout);

    public abstract void bindViewForInteraction(Context context, View view, List<View> clickableViews, List<View> creativeViewList, View disLikeView);

    public abstract void connectAdToView(Activity activity, WMNativeAdContainer adContainer, WMNativeAdRender adRender);

    public abstract void destroy();

    public View getAdChoice() {
        return null;
    }

    public abstract Bitmap getAdLogo();

    public abstract int getAdPatternType();

    public View getAppDownloadButton(Context context) {
        return null;
    }

    public AppInfo getAppInfo() {
        return null;
    }

    public abstract String getCTAText();

    public CustomizeVideo getCustomizeVideo() {
        return null;
    }

    public abstract String getDesc();

    public abstract View getExpressAdView();

    public abstract String getIconUrl();

    public abstract List<WMImage> getImageList();

    @Deprecated
    public abstract List<String> getImageUrlList();

    public abstract int getInteractionType();

    public View getInteractionWidgetView(int width, int height, int actionType, final AdShakeViewListener listener) {
        return null;
    }

    public Map<String, String> getMediaExtraOption() {
        return null;
    }

    public ViewGroup getNativeAdContainer(Context context) {
        return null;
    }

    public abstract int getNetworkId();

    public Object getOriginNativeAdData() {
        return null;
    }

    public long getReadTime() {
        return this.time;
    }

    public abstract String getTitle();

    public WMImage getVideoCoverImage() {
        return null;
    }

    public long getVideoDuration() {
        return -1L;
    }

    public int getVideoHeight() {
        return 0;
    }

    public int getVideoWidth() {
        return 0;
    }

    public abstract boolean isExpressAd();

    public abstract boolean isNativeDrawAd();

    public boolean isReady() {
        return this.expiredTime == 0 || System.currentTimeMillis() - this.time < this.expiredTime;
    }

    public void pauseVideo() {
    }

    public void registerViewBidder(WMViewBinder viewBinder) {
    }

    public abstract void render();

    public View renderShakeView(int width, int height, AdShakeViewListener listener) {
        return null;
    }

    public void resumeVideo() {
    }

    public void setAdLogoParams(FrameLayout.LayoutParams adLogoParams) {
    }

    public void setCloseViewPosition(int position) {
    }

    public abstract void setDislikeInteractionCallback(Activity activity, DislikeInteractionCallback dislikeInteractionCallback);

    public abstract void setDownloadListener(AppDownloadListener appDownloadListener);

    public void setExpired_time(long expiredTime) {
        this.expiredTime = expiredTime;
    }

    public abstract void setInteractionListener(NativeAdInteractionListener adInteractionListener);

    public abstract void setMediaListener(NativeADMediaListener nativeADMediaListener);

    public void setMediaViewOption(WMVideoOption videoOption) {
    }

    public void setReadyTime(long readyTime) {
        this.time = readyTime;
    }

    public void setVideoMute(boolean isMute) {
    }

    public void setVideoProgressUpdateInterval(int intervalMs) {
    }

    public void startVideo() {
    }

    public void stopVideo() {
    }

    public View getInteractionWidgetView(ViewGroup widgetViewGroup, int width, int height, int actionType, final AdShakeViewListener listener) {
        return null;
    }
}
