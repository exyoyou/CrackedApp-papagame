package com.byazt.fk;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public interface sp {

    public interface c {
        void onBufferEnd(sp spVar, int i10);

        void onBufferStart(sp spVar, int i10, int i11, int i12);

        void onBufferingUpdate(sp spVar, int i10);

        void onCompletion(sp spVar);

        void onError(sp spVar, ve veVar);

        void onMonitorLog(sp spVar, JSONObject jSONObject, String str);

        void onPause(sp spVar);

        void onPlayPositionUpdate(sp spVar, long j10, long j11);

        void onPrepared(sp spVar);

        void onRelease(sp spVar);

        void onRenderStart(sp spVar, long j10);

        void onResume(sp spVar);

        void onSeekCompletion(sp spVar, boolean z10);

        void onStart(sp spVar);

        void onVideoSizeChanged(sp spVar, int i10, int i11);
    }

    void addIVideoPlayerCallback(c cVar);

    int getBufferCount();

    String getCodec();

    long getCurrentPosition();

    SurfaceHolder getSurfaceHolder();

    SurfaceTexture getSurfaceTexture();

    long getTotalBufferTime();

    int getUpdateProgressInterval();

    long getVideoDuration();

    int getVideoHeight();

    int getVideoWidth();

    boolean isCompleted();

    boolean isFirstFrameSuccess();

    boolean isLooping();

    boolean isPaused();

    boolean isPlaying();

    boolean isPrepared();

    boolean isReleased();

    boolean isStarted();

    void pause();

    void play();

    void release();

    void removeIVideoPlayerCallback(c cVar);

    void reset();

    void restart();

    void seekTo(long j10);

    void setDataSource(u uVar);

    void setDisplay(SurfaceHolder surfaceHolder);

    void setLoop(boolean z10);

    void setPlaySpeedRatio(float f10);

    void setQuietPlay(boolean z10);

    void setSeekMode(int i10);

    void setSurface(SurfaceTexture surfaceTexture);

    void setSurfaceValid(boolean z10);

    void setUpdateProgressInterval(int i10);

    void start(boolean z10, long j10, boolean z11);

    void stop();
}
