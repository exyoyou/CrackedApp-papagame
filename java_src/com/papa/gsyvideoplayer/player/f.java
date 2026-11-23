package com.papa.gsyvideoplayer.player;

import android.content.Context;
import android.media.PlaybackParams;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Build;
import android.os.Message;
import android.view.Surface;
import com.kwad.sdk.core.video.a.g;
import java.util.List;
import tv.danmaku.ijk.media.player.AndroidMediaPlayer;
import tv.danmaku.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class f extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f76785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AndroidMediaPlayer f76786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Surface f76787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f76788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f76789f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f76790g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f76791h = false;

    private long l(Context context) {
        if (context == null) {
            return 0L;
        }
        long totalRxBytes = TrafficStats.getUidRxBytes(context.getApplicationInfo().uid) == -1 ? 0L : TrafficStats.getTotalRxBytes() / 1024;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = jCurrentTimeMillis - this.f76790g;
        if (j10 == 0) {
            return j10;
        }
        long j11 = ((totalRxBytes - this.f76789f) * 1000) / j10;
        this.f76790g = jCurrentTimeMillis;
        this.f76789f = totalRxBytes;
        return j11;
    }

    private void m(float f10) {
        AndroidMediaPlayer androidMediaPlayer;
        if (this.f76788e || (androidMediaPlayer = this.f76786c) == null || androidMediaPlayer.getInternalMediaPlayer() == null || !this.f76786c.isPlayable()) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                g.a();
                PlaybackParams playbackParamsA = com.bykv.vk.component.ttvideo.player.f.a();
                playbackParamsA.setSpeed(f10);
                this.f76786c.getInternalMediaPlayer().setPlaybackParams(playbackParamsA);
            } else {
                com.papa.gsyvideoplayer.utils.c.e(" not support setSpeed");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void a(float f10, boolean z10) {
        m(f10);
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void c(float f10, boolean z10) {
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public long d() {
        if (this.f76786c != null) {
            return l(this.f76785b);
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int f() {
        return -1;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public boolean g() {
        return false;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public long getCurrentPosition() {
        AndroidMediaPlayer androidMediaPlayer = this.f76786c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public long getDuration() {
        AndroidMediaPlayer androidMediaPlayer = this.f76786c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getDuration();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public IMediaPlayer getMediaPlayer() {
        return this.f76786c;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoHeight() {
        AndroidMediaPlayer androidMediaPlayer = this.f76786c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoSarDen() {
        AndroidMediaPlayer androidMediaPlayer = this.f76786c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoSarDen();
        }
        return 1;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoSarNum() {
        AndroidMediaPlayer androidMediaPlayer = this.f76786c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoSarNum();
        }
        return 1;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoWidth() {
        AndroidMediaPlayer androidMediaPlayer = this.f76786c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void h(Context context, Message message, List<com.papa.gsyvideoplayer.model.c> list, com.papa.gsyvideoplayer.cache.b bVar) {
        this.f76785b = context.getApplicationContext();
        AndroidMediaPlayer androidMediaPlayer = new AndroidMediaPlayer();
        this.f76786c = androidMediaPlayer;
        androidMediaPlayer.setAudioStreamType(3);
        this.f76788e = false;
        com.papa.gsyvideoplayer.model.a aVar = (com.papa.gsyvideoplayer.model.a) message.obj;
        try {
            if (!aVar.f() || bVar == null) {
                this.f76786c.setDataSource(context, Uri.parse(aVar.e()), aVar.b());
            } else {
                bVar.g(context, this.f76786c, aVar.e(), aVar.b(), aVar.a());
            }
            this.f76786c.setLooping(aVar.g());
            if (aVar.d() != 1.0f && aVar.d() > 0.0f) {
                m(aVar.d());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        e(aVar);
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void i(Message message) {
        AndroidMediaPlayer androidMediaPlayer;
        Object obj = message.obj;
        if (obj == null && (androidMediaPlayer = this.f76786c) != null && !this.f76788e) {
            androidMediaPlayer.setSurface(null);
            return;
        }
        if (obj != null) {
            Surface surface = (Surface) obj;
            this.f76787d = surface;
            if (this.f76786c != null && surface.isValid() && !this.f76788e) {
                this.f76786c.setSurface(surface);
            }
            if (this.f76791h) {
                return;
            }
            pause();
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public boolean isPlaying() {
        AndroidMediaPlayer androidMediaPlayer = this.f76786c;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.isPlaying();
        }
        return false;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void j(boolean z10) {
        try {
            AndroidMediaPlayer androidMediaPlayer = this.f76786c;
            if (androidMediaPlayer != null && !this.f76788e) {
                if (z10) {
                    androidMediaPlayer.setVolume(0.0f, 0.0f);
                } else {
                    androidMediaPlayer.setVolume(1.0f, 1.0f);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void pause() {
        AndroidMediaPlayer androidMediaPlayer = this.f76786c;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.pause();
            this.f76791h = false;
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void release() {
        AndroidMediaPlayer androidMediaPlayer = this.f76786c;
        if (androidMediaPlayer != null) {
            this.f76788e = true;
            androidMediaPlayer.release();
        }
        this.f76789f = 0L;
        this.f76790g = 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void releaseSurface() {
        if (this.f76787d != null) {
            this.f76787d = null;
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void seekTo(long j10) {
        AndroidMediaPlayer androidMediaPlayer = this.f76786c;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.seekTo(j10);
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void start() {
        AndroidMediaPlayer androidMediaPlayer = this.f76786c;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.start();
            this.f76791h = true;
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void stop() {
        AndroidMediaPlayer androidMediaPlayer = this.f76786c;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.stop();
            this.f76791h = false;
        }
    }
}
