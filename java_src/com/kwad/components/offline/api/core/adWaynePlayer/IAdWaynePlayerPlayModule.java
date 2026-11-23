package com.kwad.components.offline.api.core.adWaynePlayer;

import android.view.Surface;
import android.view.SurfaceHolder;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdWaynePlayerPlayModule {

    public interface OnBufferingUpdateListener {
        void onBufferingUpdate(int i10);
    }

    public interface OnCompletionListener {
        void onCompletion();
    }

    public interface OnErrorListener {
        boolean onError(int i10, int i11);
    }

    public interface OnInfoListener {
        boolean onInfo(int i10, int i11);
    }

    public interface OnPreparedListener {
        void onPrepared();
    }

    public interface OnPreparingListener {
        void onPreparing();
    }

    public interface OnSeekCompleteListener {
        void onSeekComplete();
    }

    public interface OnVideoSizeChangedListener {
        void onVideoSizeChanged(int i10, int i11);
    }

    public interface OnVseReportListener {
        void onVseReport(String str, String str2);
    }

    int getAudioSessionId();

    String getCurrentPlayingUrl();

    long getCurrentPosition();

    long getDuration();

    int getVideoHeight();

    int getVideoWidth();

    boolean isLooping();

    boolean isPlaying();

    boolean isWaynePlayerReady();

    void pause();

    boolean prepareAsync();

    void release();

    void reset();

    void seekTo(long j10);

    void setAudioStreamType(int i10);

    void setClickCoordForOpaque(float f10, float f11);

    void setDataSource(String str, boolean z10);

    void setDisplay(SurfaceHolder surfaceHolder);

    void setLooping(boolean z10);

    void setOnBufferingUpdateListener(OnBufferingUpdateListener onBufferingUpdateListener);

    void setOnCompletionListener(OnCompletionListener onCompletionListener);

    void setOnErrorListener(OnErrorListener onErrorListener);

    void setOnInfoListener(OnInfoListener onInfoListener);

    void setOnPreparedListener(OnPreparedListener onPreparedListener);

    void setOnSeekCompleteListener(OnSeekCompleteListener onSeekCompleteListener);

    void setOnVideoSizeChangedListener(OnVideoSizeChangedListener onVideoSizeChangedListener);

    void setOnVseReportListener(OnVseReportListener onVseReportListener);

    void setScreenOnWhilePlaying(boolean z10);

    void setSpeed(float f10);

    void setSurface(Surface surface);

    void setVolume(float f10, float f11);

    void start();

    void stop();
}
