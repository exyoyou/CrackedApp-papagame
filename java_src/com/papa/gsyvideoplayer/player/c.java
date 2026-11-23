package com.papa.gsyvideoplayer.player;

import android.content.Context;
import android.os.Message;
import java.util.List;
import tv.danmaku.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes2.dex */
public interface c {
    void a(float f10, boolean z10);

    void c(float f10, boolean z10);

    long d();

    int f();

    boolean g();

    long getCurrentPosition();

    long getDuration();

    IMediaPlayer getMediaPlayer();

    int getVideoHeight();

    int getVideoSarDen();

    int getVideoSarNum();

    int getVideoWidth();

    void h(Context context, Message message, List<com.papa.gsyvideoplayer.model.c> list, com.papa.gsyvideoplayer.cache.b bVar);

    void i(Message message);

    boolean isPlaying();

    void j(boolean z10);

    void pause();

    void release();

    void releaseSurface();

    void seekTo(long j10);

    void start();

    void stop();
}
