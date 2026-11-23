package com.haima.hmcp.rtmp.widgets;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.haima.hmcp.listeners.FrameCaptureCallback;
import com.haima.hmcp.listeners.IRenderViewBase;
import tv.haima.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes5.dex */
public interface IRenderView extends IRenderViewBase {
    public static final int AR_16_9_FIT_PARENT = 4;
    public static final int AR_4_3_FIT_PARENT = 5;
    public static final int AR_ASPECT_FILL_PARENT = 1;
    public static final int AR_ASPECT_FIT_PARENT = 0;
    public static final int AR_ASPECT_WRAP_CONTENT = 2;
    public static final int AR_MATCH_PARENT = 3;

    public interface IRenderCallback {
        void onSurfaceChanged(@NonNull ISurfaceHolder iSurfaceHolder, int i10, int i11, int i12);

        void onSurfaceCreated(@NonNull ISurfaceHolder iSurfaceHolder, int i10, int i11);

        void onSurfaceDestroyed(@NonNull ISurfaceHolder iSurfaceHolder);
    }

    public interface ISurfaceHolder {
        void bindToMediaPlayer(IMediaPlayer iMediaPlayer, SurfaceTexture surfaceTexture);

        @NonNull
        IRenderView getRenderView();

        @Nullable
        SurfaceHolder getSurfaceHolder();

        @Nullable
        SurfaceTexture getSurfaceTexture();

        @Nullable
        Surface openSurface();
    }

    void addRenderCallback(@NonNull IRenderCallback iRenderCallback);

    void frameCapture(FrameCaptureCallback frameCaptureCallback);

    void removeRenderCallback(@NonNull IRenderCallback iRenderCallback);

    void requestLayout();

    void setAspectRatio(int i10);

    void setVideoSampleAspectRatio(int i10, int i11);

    void setVideoSize(int i10, int i11);

    boolean shouldWaitForResize();
}
