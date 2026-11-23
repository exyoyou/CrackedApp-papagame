package com.kwad.components.offline.api.core.imageplayer;

import android.content.Context;
import android.widget.FrameLayout;
import com.kwad.components.offline.api.core.video.listener.OfflineMediaPlayStateListener;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IImagePlayer {
    void destroy();

    FrameLayout getImagePlayerView(Context context);

    void pause();

    void play();

    void prepareToPlay();

    void registerMediaPlayStateListener(OfflineMediaPlayStateListener offlineMediaPlayStateListener);

    void resume();

    void setDuration(long j10);

    void setEnableCache(boolean z10);

    void setHorizontalGravity(int i10);

    void setImageResize(int i10);

    void setRadius(float f10, float f11, float f12, float f13);

    void setSpeed(float f10);

    void setURLs(List<String> list);

    void setVerticalGravity(int i10);

    void stop();

    void unregisterMediaPlayStateListener(OfflineMediaPlayStateListener offlineMediaPlayStateListener);
}
