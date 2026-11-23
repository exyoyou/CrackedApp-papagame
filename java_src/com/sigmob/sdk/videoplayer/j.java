package com.sigmob.sdk.videoplayer;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.logger.SigmobLog;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class j extends i implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f82099f = "VideoPlayerMediaSystem";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MediaPlayer f82100e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f82101g;

    public j(h videoPlayerListener) {
        super(videoPlayerListener);
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void a() {
        Handler handler = this.f82096b;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f82117b.o();
            }
        });
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void b() {
        c();
        this.f82101g = true;
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void c() {
        MediaPlayer mediaPlayer;
        if (this.f82101g && (mediaPlayer = this.f82100e) != null && this.f82095a != null) {
            this.f82101g = false;
            mediaPlayer.setSurface(new Surface(this.f82095a));
            return;
        }
        f();
        this.f82097c = new Handler();
        Handler iOHandler = ThreadPoolFactory.BackgroundThreadPool.getInstance().getIOHandler();
        this.f82096b = iOHandler;
        iOHandler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.s
            @Override // java.lang.Runnable
            public final void run() {
                this.f82114b.p();
            }
        });
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void d() {
        Handler handler = this.f82096b;
        if (handler == null || this.f82100e == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f82120b.n();
            }
        });
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public boolean e() {
        MediaPlayer mediaPlayer = this.f82100e;
        if (mediaPlayer == null) {
            return false;
        }
        return mediaPlayer.isPlaying();
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void f() {
        final MediaPlayer mediaPlayer;
        Handler handler = this.f82096b;
        if (handler == null || (mediaPlayer = this.f82100e) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f82118b.a(mediaPlayer);
            }
        });
        this.f82100e = null;
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public long g() {
        MediaPlayer mediaPlayer = this.f82100e;
        if (mediaPlayer == null) {
            return 0L;
        }
        return mediaPlayer.getCurrentPosition();
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public int h() {
        MediaPlayer mediaPlayer = this.f82100e;
        if (mediaPlayer == null) {
            return 0;
        }
        mediaPlayer.getVideoWidth();
        return 0;
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public int i() {
        MediaPlayer mediaPlayer = this.f82100e;
        if (mediaPlayer == null) {
            return 0;
        }
        mediaPlayer.getVideoHeight();
        return 0;
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public long j() {
        MediaPlayer mediaPlayer = this.f82100e;
        if (mediaPlayer == null) {
            return 0L;
        }
        return mediaPlayer.getDuration();
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, final int percent) {
        Handler handler = this.f82097c;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.t
            @Override // java.lang.Runnable
            public final void run() {
                this.f82115b.a(percent);
            }
        });
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        Handler handler = this.f82097c;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f82123b.l();
            }
        });
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, final int what, final int extra) {
        Handler handler = this.f82097c;
        if (handler == null) {
            return false;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.z
            @Override // java.lang.Runnable
            public final void run() {
                this.f82124b.c(what, extra);
            }
        });
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, final int what, final int extra) {
        Handler handler = this.f82097c;
        if (handler != null && this.f82098d != null) {
            handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.f82110b.b(what, extra);
                }
            });
        }
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        Handler handler = this.f82097c;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.r
            @Override // java.lang.Runnable
            public final void run() {
                this.f82113b.m();
            }
        });
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        Handler handler = this.f82097c;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.a0
            @Override // java.lang.Runnable
            public final void run() {
                this.f82024b.k();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surface, int width, int height) {
        if (this.f82098d == null) {
            return;
        }
        SigmobLog.d("onSurfaceTextureAvailable() called with: surface = [" + surface + "], width = [" + width + "], height = [" + height + "]");
        SurfaceTexture surfaceTexture = this.f82095a;
        if (surfaceTexture != null) {
            this.f82098d.setSurfaceTexture(surfaceTexture);
        } else {
            this.f82095a = surface;
            c();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
        SigmobLog.d("onSurfaceTextureDestroyed() called with: surface = [" + surface + "]");
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
        SigmobLog.d("onSurfaceTextureSizeChanged() called with: surface = [" + surface + "], width = [" + width + "], height = [" + height + "]");
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surface) {
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, final int width, final int height) {
        Handler handler = this.f82097c;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.c0
            @Override // java.lang.Runnable
            public final void run() {
                this.f82032b.a(width, height);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(float f10) {
        MediaPlayer mediaPlayer = this.f82100e;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setVolume(f10, f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        h hVar = this.f82098d;
        if (hVar == null) {
            return;
        }
        hVar.q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        h hVar = this.f82098d;
        if (hVar == null) {
            return;
        }
        hVar.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        if (this.f82098d == null) {
            return;
        }
        SigmobLog.d("VideoPlayerMediaSystem mediaPlayer onPrepared [" + hashCode() + "] ");
        this.f82098d.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        MediaPlayer mediaPlayer = this.f82100e;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.pause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        if (this.f82100e == null) {
            return;
        }
        SigmobLog.d("VideoPlayerMediaSystem mediaPlayer start [" + hashCode() + "] ");
        this.f82100e.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        try {
            g videoPlayerDataSource = this.f82098d.getVideoPlayerDataSource();
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f82100e = mediaPlayer;
            mediaPlayer.setAudioStreamType(3);
            this.f82100e.setLooping(videoPlayerDataSource.f82094e);
            this.f82100e.setOnPreparedListener(this);
            this.f82100e.setOnCompletionListener(this);
            this.f82100e.setOnBufferingUpdateListener(this);
            this.f82100e.setScreenOnWhilePlaying(true);
            this.f82100e.setOnSeekCompleteListener(this);
            this.f82100e.setOnErrorListener(this);
            this.f82100e.setOnInfoListener(this);
            this.f82100e.setOnVideoSizeChangedListener(this);
            MediaPlayer.class.getDeclaredMethod("setDataSource", String.class, Map.class).invoke(this.f82100e, videoPlayerDataSource.a().toString(), videoPlayerDataSource.f82093d);
            this.f82100e.prepareAsync();
            if (this.f82095a != null) {
                this.f82101g = false;
                this.f82100e.setSurface(new Surface(this.f82095a));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f82097c.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.b0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f82025b.q();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        h hVar = this.f82098d;
        if (hVar == null) {
            return;
        }
        hVar.a(0, 0);
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void a(final float leftVolume) {
        Handler handler = this.f82096b;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.x
            @Override // java.lang.Runnable
            public final void run() {
                this.f82121b.c(leftVolume);
            }
        });
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void b(float speed) {
        MediaPlayer mediaPlayer = this.f82100e;
        if (mediaPlayer != null && Build.VERSION.SDK_INT >= 23) {
            PlaybackParams playbackParams = mediaPlayer.getPlaybackParams();
            playbackParams.setSpeed(speed);
            this.f82100e.setPlaybackParams(playbackParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i10) {
        h hVar = this.f82098d;
        if (hVar == null) {
            return;
        }
        hVar.setBufferProgress(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i10, int i11) {
        h hVar = this.f82098d;
        if (hVar == null) {
            return;
        }
        hVar.b(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i10, int i11) {
        h hVar = this.f82098d;
        if (hVar == null) {
            return;
        }
        hVar.a(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i10, int i11) {
        h hVar = this.f82098d;
        if (hVar == null) {
            return;
        }
        hVar.c(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(long j10) {
        try {
            MediaPlayer mediaPlayer = this.f82100e;
            if (mediaPlayer == null) {
                return;
            }
            mediaPlayer.seekTo((int) j10);
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void a(final long time) {
        Handler handler = this.f82096b;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f82108b.b(time);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MediaPlayer mediaPlayer) {
        mediaPlayer.reset();
        mediaPlayer.setSurface(null);
        mediaPlayer.release();
        this.f82096b = null;
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void a(Surface surface) {
        SigmobLog.d("setSurface() called with: surface = [" + surface + "]");
        MediaPlayer mediaPlayer = this.f82100e;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setSurface(surface);
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void a(boolean loop) {
        MediaPlayer mediaPlayer = this.f82100e;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setLooping(loop);
    }
}
