package com.byazt.ts;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.byazt.jzl.a;
import com.byazt.nr.m;
import com.bytedance.component.sdk.annotation.RequiresApi;
import java.io.FileDescriptor;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 357, 13})
public class tt extends com.byazt.ts.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f20385a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Surface f20386n;
    public volatile boolean sp;
    public final MediaPlayer tt;
    public com.byazt.gn.c uj;
    public final c ve;

    @com.byazt.zqa.c(c = {0, 1, 357, 194})
    private static class c implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WeakReference<tt> f20387c;

        public c(tt ttVar) {
            this.f20387c = new WeakReference<>(ttVar);
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
            try {
                tt ttVar = this.f20387c.get();
                if (ttVar != null) {
                    ttVar.c(i10);
                }
            } catch (Throwable th) {
                com.byazt.lt.tt.ve("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onBufferingUpdate error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            try {
                tt ttVar = this.f20387c.get();
                if (ttVar != null) {
                    ttVar.ve();
                }
            } catch (Throwable th) {
                com.byazt.lt.tt.ve("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onCompletion error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
            try {
                com.byazt.lt.tt.c("CSJ_VIDEO", "onError: ", Integer.valueOf(i10), Integer.valueOf(i11));
                tt ttVar = this.f20387c.get();
                return ttVar != null && ttVar.c(i10, i11);
            } catch (Throwable th) {
                com.byazt.lt.tt.ve("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onError error: ", th);
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
            try {
                com.byazt.lt.tt.c("CSJ_VIDEO", "onInfo: ");
                tt ttVar = this.f20387c.get();
                return ttVar != null && ttVar.tt(i10, i11);
            } catch (Throwable th) {
                com.byazt.lt.tt.ve("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onInfo error: ", th);
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            try {
                tt ttVar = this.f20387c.get();
                if (ttVar != null) {
                    ttVar.tt();
                }
            } catch (Throwable th) {
                com.byazt.lt.tt.ve("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onPrepared error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            try {
                tt ttVar = this.f20387c.get();
                if (ttVar != null) {
                    ttVar.uj();
                }
            } catch (Throwable th) {
                com.byazt.lt.tt.ve("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onSeekComplete error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
            try {
                tt ttVar = this.f20387c.get();
                if (ttVar != null) {
                    ttVar.c(i10, i11, 1, 1);
                }
            } catch (Throwable th) {
                com.byazt.lt.tt.ve("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onVideoSizeChanged error: ", th);
            }
        }
    }

    public tt() {
        MediaPlayer mediaPlayer;
        Object obj = new Object();
        this.f20385a = obj;
        synchronized (obj) {
            mediaPlayer = new MediaPlayer();
            this.tt = mediaPlayer;
        }
        c(mediaPlayer);
        try {
            mediaPlayer.setAudioStreamType(3);
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("CSJ_VIDEO", "setAudioStreamType error: ", th);
        }
        this.ve = new c(this);
        nu();
    }

    private void c(MediaPlayer mediaPlayer) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        try {
            Class<?> cls = Class.forName("android.media.MediaTimeProvider");
            Class<?> cls2 = Class.forName("android.media.SubtitleController");
            Class<?> cls3 = Class.forName("android.media.SubtitleController$Anchor");
            Object objNewInstance = cls2.getConstructor(Context.class, cls, Class.forName("android.media.SubtitleController$Listener")).newInstance(com.byazt.oy.tt.getContext(), null, null);
            Field declaredField = cls2.getDeclaredField("mHandler");
            declaredField.setAccessible(true);
            try {
                declaredField.set(objNewInstance, new Handler());
                declaredField.setAccessible(false);
                mediaPlayer.getClass().getMethod("setSubtitleAnchor", cls2, cls3).invoke(mediaPlayer, objNewInstance, null);
            } catch (Throwable th) {
                try {
                    com.byazt.lt.tt.ve("CSJ_VIDEO", "subtitleInstance error: ", th);
                } finally {
                    declaredField.setAccessible(false);
                }
            }
        } catch (Throwable th2) {
            com.byazt.lt.tt.ve("CSJ_VIDEO", "setSubtitleController error: ", th2);
        }
    }

    private void m() {
        com.byazt.gn.c cVar;
        if (Build.VERSION.SDK_INT < 23 || (cVar = this.uj) == null) {
            return;
        }
        try {
            cVar.close();
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("CSJ_VIDEO", "releaseMediaDataSource error: ", th);
        }
        this.uj = null;
    }

    private void nu() {
        this.tt.setOnPreparedListener(this.ve);
        this.tt.setOnBufferingUpdateListener(this.ve);
        this.tt.setOnCompletionListener(this.ve);
        this.tt.setOnSeekCompleteListener(this.ve);
        this.tt.setOnVideoSizeChangedListener(this.ve);
        this.tt.setOnErrorListener(this.ve);
        this.tt.setOnInfoListener(this.ve);
    }

    private void rh() {
        try {
            Surface surface = this.f20386n;
            if (surface != null) {
                surface.release();
                this.f20386n = null;
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.ts.ve
    public void a() throws Throwable {
        this.tt.stop();
    }

    @Override // com.byazt.ts.ve
    public long da() {
        try {
            return this.tt.getDuration();
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("CSJ_VIDEO", "getDuration error: ", th);
            return 0L;
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        rh();
    }

    @Override // com.byazt.ts.ve
    public long i() {
        try {
            return this.tt.getCurrentPosition();
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("CSJ_VIDEO", "getCurrentPosition error: ", th);
            return 0L;
        }
    }

    @Override // com.byazt.ts.ve
    public void n() throws Throwable {
        this.tt.start();
    }

    @Override // com.byazt.ts.ve
    public void sl() throws Throwable {
        synchronized (this.f20385a) {
            if (!this.sp) {
                this.tt.release();
                this.sp = true;
                rh();
                m();
                c();
                nu();
            }
        }
    }

    @Override // com.byazt.ts.ve
    public void sp() throws Throwable {
        this.tt.pause();
    }

    @Override // com.byazt.ts.ve
    public void t() throws Throwable {
        try {
            this.tt.reset();
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("CSJ_VIDEO", "reset error: ", th);
        }
        m();
        c();
        nu();
    }

    @Override // com.byazt.ts.ve
    public void tt(boolean z10) throws Throwable {
        this.tt.setScreenOnWhilePlaying(z10);
    }

    @Override // com.byazt.ts.ve
    public int u() {
        MediaPlayer mediaPlayer = this.tt;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.byazt.ts.ve
    public void uj(boolean z10) throws Throwable {
        MediaPlayer mediaPlayer = this.tt;
        if (mediaPlayer == null) {
            return;
        }
        if (z10) {
            mediaPlayer.setVolume(0.0f, 0.0f);
        } else {
            mediaPlayer.setVolume(1.0f, 1.0f);
        }
    }

    @Override // com.byazt.ts.ve
    public void ve(boolean z10) throws Throwable {
        this.tt.setLooping(z10);
    }

    @Override // com.byazt.ts.ve
    public void x() {
        MediaPlayer mediaPlayer = this.tt;
        if (mediaPlayer != null) {
            mediaPlayer.prepareAsync();
        }
    }

    @Override // com.byazt.ts.ve
    public int yp() {
        MediaPlayer mediaPlayer = this.tt;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.byazt.ts.ve
    public boolean z() {
        MediaPlayer mediaPlayer = this.tt;
        if (mediaPlayer != null) {
            return mediaPlayer.isLooping();
        }
        return false;
    }

    @Override // com.byazt.ts.ve
    public void n(boolean z10) {
        try {
            MediaPlayer mediaPlayer = this.tt;
            if (mediaPlayer != null) {
                mediaPlayer.setLooping(z10);
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @Override // com.byazt.ts.ve
    public void c(SurfaceHolder surfaceHolder) throws Throwable {
        synchronized (this.f20385a) {
            try {
                if (!this.sp && surfaceHolder != null && surfaceHolder.getSurface() != null && this.f20382c) {
                    this.tt.setDisplay(surfaceHolder);
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
    }

    @Override // com.byazt.ts.ve
    @TargetApi(14)
    public void c(Surface surface) {
        rh();
        this.f20386n = surface;
        this.tt.setSurface(surface);
    }

    @Override // com.byazt.ts.ve
    @RequiresApi(api = 23)
    public void c(com.byazt.oy.c cVar) throws Throwable {
        if (Build.VERSION.SDK_INT >= 23) {
            this.tt.setPlaybackParams(this.tt.getPlaybackParams().setSpeed(cVar.c()));
        }
    }

    @Override // com.byazt.ts.ve
    public void c(String str) throws Throwable {
        Uri uri = Uri.parse(str);
        if ("file".equalsIgnoreCase(uri.getScheme())) {
            this.tt.setDataSource(uri.getPath());
        } else {
            this.tt.setDataSource(str);
        }
    }

    @Override // com.byazt.ts.ve
    public void c(FileDescriptor fileDescriptor) throws Throwable {
        this.tt.setDataSource(fileDescriptor);
    }

    @Override // com.byazt.ts.ve
    @RequiresApi(api = 23)
    public synchronized void c(a aVar, com.byazt.jzl.tt ttVar) {
        this.uj = com.byazt.gn.c.c(com.byazt.oy.tt.getContext(), ttVar, aVar);
        com.byazt.yqr.ve.c(aVar);
        this.tt.setDataSource(this.uj);
    }

    @Override // com.byazt.ts.ve
    public void c(long j10, int i10) throws Throwable {
        if (Build.VERSION.SDK_INT < 26) {
            this.tt.seekTo((int) j10);
            return;
        }
        if (i10 == 0) {
            this.tt.seekTo((int) j10, 0);
            return;
        }
        if (i10 == 1) {
            this.tt.seekTo((int) j10, 1);
            return;
        }
        if (i10 == 2) {
            this.tt.seekTo((int) j10, 2);
        } else if (i10 == 3) {
            this.tt.seekTo((int) j10, 3);
        } else {
            this.tt.seekTo((int) j10);
        }
    }
}
