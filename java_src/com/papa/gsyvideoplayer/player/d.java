package com.papa.gsyvideoplayer.player;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import com.papa.gsyvideoplayer.utils.o;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkLibLoader;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class d extends com.papa.gsyvideoplayer.player.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f76778e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static IjkLibLoader f76779f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IjkMediaPlayer f76780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<com.papa.gsyvideoplayer.model.c> f76781c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Surface f76782d;

    class a implements IjkMediaPlayer.OnNativeInvokeListener {
        a() {
        }

        @Override // tv.danmaku.ijk.media.player.IjkMediaPlayer.OnNativeInvokeListener
        public boolean onNativeInvoke(int i10, Bundle bundle) {
            return true;
        }
    }

    public static IjkLibLoader l() {
        return f76779f;
    }

    public static int m() {
        return f76778e;
    }

    private void o(IjkMediaPlayer ijkMediaPlayer, List<com.papa.gsyvideoplayer.model.c> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (com.papa.gsyvideoplayer.model.c cVar : list) {
            if (cVar.e() == 0) {
                ijkMediaPlayer.setOption(cVar.a(), cVar.b(), cVar.c());
            } else {
                ijkMediaPlayer.setOption(cVar.a(), cVar.b(), cVar.d());
            }
        }
    }

    public static void p(IjkLibLoader ijkLibLoader) {
        f76779f = ijkLibLoader;
    }

    public static void q(int i10) {
        f76778e = i10;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void a(float f10, boolean z10) {
        if (f10 > 0.0f) {
            try {
                IjkMediaPlayer ijkMediaPlayer = this.f76780b;
                if (ijkMediaPlayer != null) {
                    ijkMediaPlayer.setSpeed(f10);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (z10) {
                com.papa.gsyvideoplayer.model.c cVar = new com.papa.gsyvideoplayer.model.c(4, "soundtouch", 1);
                List<com.papa.gsyvideoplayer.model.c> listN = n();
                if (listN != null) {
                    listN.add(cVar);
                } else {
                    listN = new ArrayList<>();
                    listN.add(cVar);
                }
                r(listN);
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void c(float f10, boolean z10) {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.setSpeed(f10);
            this.f76780b.setOption(4, "soundtouch", z10 ? 1L : 0L);
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public long d() {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getTcpSpeed();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int f() {
        return -1;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public boolean g() {
        return true;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public long getCurrentPosition() {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public long getDuration() {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getDuration();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public IMediaPlayer getMediaPlayer() {
        return this.f76780b;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoHeight() {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoSarDen() {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getVideoSarDen();
        }
        return 1;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoSarNum() {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getVideoSarNum();
        }
        return 1;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public int getVideoWidth() {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void h(Context context, Message message, List<com.papa.gsyvideoplayer.model.c> list, com.papa.gsyvideoplayer.cache.b bVar) {
        IjkMediaPlayer ijkMediaPlayer = f76779f == null ? new IjkMediaPlayer() : new IjkMediaPlayer(f76779f);
        this.f76780b = ijkMediaPlayer;
        ijkMediaPlayer.setAudioStreamType(3);
        this.f76780b.setOnNativeInvokeListener(new a());
        com.papa.gsyvideoplayer.model.a aVar = (com.papa.gsyvideoplayer.model.a) message.obj;
        String strE = aVar.e();
        try {
            if (com.papa.gsyvideoplayer.utils.f.h()) {
                com.papa.gsyvideoplayer.utils.c.h("enable mediaCodec");
                this.f76780b.setOption(4, "mediacodec", 1L);
                this.f76780b.setOption(4, "mediacodec-auto-rotate", 1L);
                this.f76780b.setOption(4, "mediacodec-handle-resolution-change", 1L);
            }
            if (aVar.f() && bVar != null) {
                bVar.g(context, this.f76780b, strE, aVar.b(), aVar.a());
            } else if (TextUtils.isEmpty(strE)) {
                this.f76780b.setDataSource(strE, aVar.b());
            } else {
                Uri uri = Uri.parse(strE);
                if (uri.getScheme().equals(com.facebook.common.util.f.f26954h)) {
                    this.f76780b.setDataSource(o.a(context, uri));
                } else if (uri.getScheme().equals("content")) {
                    try {
                        this.f76780b.setDataSource(context.getContentResolver().openFileDescriptor(uri, "r").getFileDescriptor());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else {
                    this.f76780b.setDataSource(strE, aVar.b());
                }
            }
            this.f76780b.setLooping(aVar.g());
            if (aVar.d() != 1.0f && aVar.d() > 0.0f) {
                this.f76780b.setSpeed(aVar.d());
            }
            IjkMediaPlayer.native_setLogLevel(f76778e);
            o(this.f76780b, list);
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        e(aVar);
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void i(Message message) {
        IjkMediaPlayer ijkMediaPlayer;
        Object obj = message.obj;
        if (obj == null && (ijkMediaPlayer = this.f76780b) != null) {
            ijkMediaPlayer.setSurface(null);
            return;
        }
        Surface surface = (Surface) obj;
        this.f76782d = surface;
        if (this.f76780b == null || !surface.isValid()) {
            return;
        }
        this.f76780b.setSurface(surface);
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public boolean isPlaying() {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.isPlaying();
        }
        return false;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void j(boolean z10) {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            if (z10) {
                ijkMediaPlayer.setVolume(0.0f, 0.0f);
            } else {
                ijkMediaPlayer.setVolume(1.0f, 1.0f);
            }
        }
    }

    public List<com.papa.gsyvideoplayer.model.c> n() {
        return this.f76781c;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void pause() {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.pause();
        }
    }

    public void r(List<com.papa.gsyvideoplayer.model.c> list) {
        this.f76781c = list;
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void release() {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.release();
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void releaseSurface() {
        if (this.f76782d != null) {
            this.f76782d = null;
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void seekTo(long j10) {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.seekTo(j10);
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void start() {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.start();
        }
    }

    @Override // com.papa.gsyvideoplayer.player.c
    public void stop() {
        IjkMediaPlayer ijkMediaPlayer = this.f76780b;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.stop();
        }
    }
}
