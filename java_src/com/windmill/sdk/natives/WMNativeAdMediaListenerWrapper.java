package com.windmill.sdk.natives;

import android.os.Handler;
import android.os.Looper;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public class WMNativeAdMediaListenerWrapper {
    private static final int DEFAULT_UPDATE_INTERVAL = 1000;
    private static final int MIN_UPDATE_INTERVAL = 500;
    private WeakReference<WMNativeAdData> adDataRef;
    private Handler handler;
    private WMNativeAdData.NativeADMediaListener nativeADMediaListener;
    private Runnable progressRunnable;
    private IVideoInfoFormChannel videoInfoFormChannel;
    private final AtomicReference<PlayState> playState = new AtomicReference<>(PlayState.IDLE);
    private final AtomicBoolean isDestroyed = new AtomicBoolean(false);
    private final AtomicLong videoDuration = new AtomicLong(-1);
    private final AtomicLong currentPosition = new AtomicLong(0);
    private final AtomicLong startTime = new AtomicLong(0);
    private final AtomicLong accumulatedPauseTime = new AtomicLong(0);
    private final AtomicLong lastPauseTime = new AtomicLong(0);
    private int progressUpdateInterval = 1000;
    private boolean isChannelSelfUpdateProgress = false;
    private boolean isChannelSelfInterFaceUpdateProgress = false;
    private long lastNotifiedPosition = -1;

    public interface IVideoInfoFormChannel {
        long getVideoDuration();

        long getVideoProgress();
    }

    private enum PlayState {
        IDLE,
        PLAYING,
        PAUSED,
        COMPLETED
    }

    public WMNativeAdMediaListenerWrapper(WMNativeAdData adData) {
        init(adData, null);
    }

    private void init(WMNativeAdData adData, WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        this.adDataRef = new WeakReference<>(adData);
        this.nativeADMediaListener = nativeADMediaListener;
        this.handler = new Handler(Looper.getMainLooper());
        initProgressRunnable();
    }

    private void initProgressRunnable() {
        this.progressRunnable = new Runnable() { // from class: com.windmill.sdk.natives.WMNativeAdMediaListenerWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                PlayState playState;
                boolean z10 = WMNativeAdMediaListenerWrapper.this.isDestroyed.get();
                PlayState playState2 = (PlayState) WMNativeAdMediaListenerWrapper.this.playState.get();
                if (z10 || playState2 != (playState = PlayState.PLAYING)) {
                    WMLogUtil.d("WMNativeAdMediaListenerWrapper initProgressRunnable destroyed: " + z10 + ", currentState: " + playState2);
                    return;
                }
                long j10 = WMNativeAdMediaListenerWrapper.this.videoDuration.get();
                if (j10 <= 0) {
                    WMLogUtil.e("WMNativeAdMediaListenerWrapper updateProgress duration is invalid: " + j10);
                    return;
                }
                try {
                    WMNativeAdMediaListenerWrapper.this.updateProgress();
                    if (WMNativeAdMediaListenerWrapper.this.isDestroyed.get() || WMNativeAdMediaListenerWrapper.this.playState.get() != playState) {
                        return;
                    }
                    WMNativeAdMediaListenerWrapper.this.handler.postDelayed(this, WMNativeAdMediaListenerWrapper.this.progressUpdateInterval);
                } catch (Exception e10) {
                    WMLogUtil.e("WMNativeAdMediaListenerWrapper progress update is abnormal: " + e10.getMessage());
                    WMNativeAdMediaListenerWrapper.this.stopProgressUpdate();
                    WMNativeAdMediaListenerWrapper.this.playState.set(PlayState.IDLE);
                }
            }
        };
    }

    private void notifyProgressUpdate(long current, long duration) {
        WMLogUtil.d("WMNativeAdMediaListenerWrapper notifyProgressUpdate called, current: " + current + ", duration: " + duration + ", isChannelSelfUpdateProgress: " + this.isChannelSelfUpdateProgress + ", isChannelSelfInterFaceUpdateProgress: " + this.isChannelSelfInterFaceUpdateProgress);
        WMNativeAdData.NativeADMediaListener nativeADMediaListener = this.nativeADMediaListener;
        if (nativeADMediaListener == null || current == this.lastNotifiedPosition) {
            return;
        }
        this.lastNotifiedPosition = current;
        if (nativeADMediaListener instanceof WMNativeAdData.NativeADMediaListenerExt) {
            ((WMNativeAdData.NativeADMediaListenerExt) nativeADMediaListener).onVideoProgressUpdate(current, duration);
        }
    }

    private void resetState() {
        this.currentPosition.set(0L);
        this.accumulatedPauseTime.set(0L);
        this.lastPauseTime.set(0L);
        this.playState.set(PlayState.IDLE);
        this.videoDuration.set(-1L);
    }

    private void startProgressUpdate() {
        long j10 = this.videoDuration.get();
        if (j10 > 0) {
            stopProgressUpdate();
            this.handler.post(this.progressRunnable);
        } else {
            WMLogUtil.e("WMNativeAdMediaListenerWrapper updateProgress duration is invalid: " + j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopProgressUpdate() {
        this.handler.removeCallbacks(this.progressRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgress() {
        this.playState.get();
        if (this.isChannelSelfUpdateProgress) {
            notifyProgressUpdate(this.currentPosition.get(), this.videoDuration.get());
            return;
        }
        long j10 = this.videoDuration.get();
        IVideoInfoFormChannel iVideoInfoFormChannel = this.videoInfoFormChannel;
        if (iVideoInfoFormChannel != null) {
            long videoDuration = iVideoInfoFormChannel.getVideoDuration();
            if (videoDuration > 0) {
                this.videoDuration.set(videoDuration);
                j10 = videoDuration;
            }
            long videoProgress = this.videoInfoFormChannel.getVideoProgress();
            if (videoProgress >= 0) {
                this.currentPosition.set(videoProgress);
                if (videoProgress >= j10) {
                    this.playState.set(PlayState.COMPLETED);
                }
                notifyProgressUpdate(videoProgress, j10);
            }
        }
    }

    public void destroy() {
        WMLogUtil.d("WMNativeAdMediaListenerWrapper destroy called");
        if (this.isDestroyed.compareAndSet(false, true)) {
            stopProgressUpdate();
            this.nativeADMediaListener = null;
            this.adDataRef.clear();
            this.handler.removeCallbacksAndMessages(null);
            this.progressRunnable = null;
            this.videoInfoFormChannel = null;
        }
    }

    public long getCurrentPosition() {
        return this.currentPosition.get();
    }

    public long getVideoDuration() {
        return this.videoDuration.get();
    }

    public boolean isCompleted() {
        return this.playState.get() == PlayState.COMPLETED;
    }

    public boolean isDestroyed() {
        return this.isDestroyed.get();
    }

    public boolean isPaused() {
        return this.playState.get() == PlayState.PAUSED;
    }

    public boolean isPlaying() {
        return this.playState.get() == PlayState.PLAYING;
    }

    public void onVideoCompleted() {
        WMLogUtil.d("WMNativeAdMediaListenerWrapper onVideoCompleted called");
        PlayState playState = this.playState.get();
        PlayState playState2 = PlayState.COMPLETED;
        if (playState != playState2) {
            this.playState.set(playState2);
            stopProgressUpdate();
            if (this.currentPosition.get() != this.videoDuration.get()) {
                this.currentPosition.set(this.videoDuration.get());
                notifyProgressUpdate(this.currentPosition.get(), this.videoDuration.get());
            }
            WMNativeAdData.NativeADMediaListener nativeADMediaListener = this.nativeADMediaListener;
            if (nativeADMediaListener != null) {
                nativeADMediaListener.onVideoCompleted();
            }
        }
    }

    public void onVideoError(WindMillError windMillError) {
        WMLogUtil.d("WMNativeAdMediaListenerWrapper onVideoError called");
        WMNativeAdData.NativeADMediaListener nativeADMediaListener = this.nativeADMediaListener;
        if (nativeADMediaListener != null) {
            nativeADMediaListener.onVideoError(windMillError);
        }
        this.playState.set(PlayState.IDLE);
        stopProgressUpdate();
    }

    public void onVideoLoad() {
        WMLogUtil.d("WMNativeAdMediaListenerWrapper onVideoLoad called");
        WMNativeAdData.NativeADMediaListener nativeADMediaListener = this.nativeADMediaListener;
        if (nativeADMediaListener != null) {
            nativeADMediaListener.onVideoLoad();
        }
    }

    public void onVideoPause() {
        WMLogUtil.d("WMNativeAdMediaListenerWrapper onVideoPause called");
        WMNativeAdData.NativeADMediaListener nativeADMediaListener = this.nativeADMediaListener;
        if (nativeADMediaListener != null) {
            nativeADMediaListener.onVideoPause();
        }
        if (this.isChannelSelfUpdateProgress || this.isChannelSelfInterFaceUpdateProgress) {
            this.playState.set(PlayState.PAUSED);
            stopProgressUpdate();
        }
    }

    public void onVideoProgressUpdate(long currentVideoPosition, long duration) {
        if (this.videoDuration.get() != duration) {
            this.videoDuration.set(duration);
            startProgressUpdate();
        }
        this.currentPosition.set(currentVideoPosition);
        this.playState.set(PlayState.PLAYING);
        this.isChannelSelfUpdateProgress = true;
    }

    public void onVideoResume() {
        WMLogUtil.d("WMNativeAdMediaListenerWrapper onVideoResume called");
        WMNativeAdData.NativeADMediaListener nativeADMediaListener = this.nativeADMediaListener;
        if (nativeADMediaListener != null) {
            nativeADMediaListener.onVideoResume();
        }
        if (this.isChannelSelfUpdateProgress || this.isChannelSelfInterFaceUpdateProgress) {
            this.playState.set(PlayState.PLAYING);
            startProgressUpdate();
        }
    }

    public void onVideoStart(long videoDuration) {
        PlayState playState = this.playState.get();
        if (playState == PlayState.IDLE || playState == PlayState.COMPLETED) {
            resetState();
        }
        this.videoDuration.set(videoDuration);
        WMLogUtil.d("WMNativeAdMediaListenerWrapper onVideoStart called: videoDuration=" + videoDuration);
        WMNativeAdData.NativeADMediaListener nativeADMediaListener = this.nativeADMediaListener;
        if (nativeADMediaListener != null) {
            nativeADMediaListener.onVideoStart();
        }
        if (this.isChannelSelfUpdateProgress || this.isChannelSelfInterFaceUpdateProgress) {
            this.playState.set(PlayState.PLAYING);
            startProgressUpdate();
            return;
        }
        PlayState playState2 = PlayState.PLAYING;
        if (playState != playState2) {
            if (playState == PlayState.PAUSED) {
                onVideoResume();
                return;
            }
            this.playState.set(playState2);
            this.startTime.set(System.currentTimeMillis());
            startProgressUpdate();
        }
    }

    public void setNativeADMediaListener(WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        this.nativeADMediaListener = nativeADMediaListener;
    }

    public void setVideoInfoFormChannel(IVideoInfoFormChannel videoInfoFormChannel) {
        this.isChannelSelfInterFaceUpdateProgress = videoInfoFormChannel != null;
        this.videoInfoFormChannel = videoInfoFormChannel;
    }

    public void setVideoProgressUpdateInterval(int intervalMs) {
        if (intervalMs <= 500) {
            this.progressUpdateInterval = 500;
        } else {
            this.progressUpdateInterval = intervalMs;
        }
    }

    public WMNativeAdMediaListenerWrapper(WMNativeAdData adData, WMNativeAdData.NativeADMediaListener nativeADMediaListener) {
        init(adData, nativeADMediaListener);
    }
}
