package com.byazt.jy;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.core.app.NotificationCompat;
import com.byazt.dna.qp;
import com.byazt.dna.z;
import com.byazt.fk.sp;
import com.byazt.fk.u;
import com.byazt.jzl.ve;
import com.byazt.nr.d;
import com.byazt.nr.m;
import com.byazt.ut.uj;
import com.bykv.vk.component.ttvideo.SeekCompletionListener;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback;
import com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader;
import com.bykv.vk.component.ttvideo.player.TTPlayerClient;
import com.bykv.vk.component.ttvideo.playerwrapper.MediaPlayerWrapper;
import com.bykv.vk.component.ttvideo.utils.Error;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2021, 13})
public class tt implements sp, qp.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f16005c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f16007d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f16008da;
    public volatile Handler gr;
    public int gt;
    public int my;
    public SurfaceHolder qy;
    public SurfaceTexture rl;
    public TTVideoEngine tt;
    public boolean ve = false;
    public boolean uj = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f16012n = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f16006a = false;
    public boolean sp = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f16016x = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f16010i = false;
    public long sl = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f16014t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f16015u = 0;
    public int yp = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16017z = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f16011m = false;
    public AtomicBoolean nu = new AtomicBoolean(false);
    public AtomicBoolean rh = new AtomicBoolean(false);
    public final List<WeakReference<sp.c>> gu = Collections.synchronizedList(new ArrayList());
    public volatile boolean zm = false;
    public volatile int yv = 200;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f16013p = 0;
    public Runnable md = new Runnable() { // from class: com.byazt.jy.tt.1
        @Override // java.lang.Runnable
        public void run() {
            long currentPosition = tt.this.getCurrentPosition();
            if (tt.this.getVideoDuration() > 0) {
                if (tt.this.f16013p != currentPosition) {
                    if (com.byazt.oy.tt.uj()) {
                        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "run: lastCur = ", Long.valueOf(tt.this.f16013p), "  curPosition=", Long.valueOf(currentPosition));
                    }
                    tt ttVar = tt.this;
                    ttVar.c(currentPosition, ttVar.getVideoDuration());
                }
                tt.this.f16013p = currentPosition;
            }
            if (tt.this.f16006a) {
                tt ttVar2 = tt.this;
                ttVar2.c(ttVar2.getVideoDuration(), tt.this.getVideoDuration());
            } else if (tt.this.gr != null) {
                tt.this.gr.postDelayed(this, tt.this.yv);
            }
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList<Runnable> f16009h = new ArrayList<>();

    public tt(Context context, String str) {
        c(context, "vd_".concat(String.valueOf(str)), (Looper) null);
    }

    @Override // com.byazt.fk.sp
    public void addIVideoPlayerCallback(sp.c cVar) {
        if (cVar == null) {
            return;
        }
        for (WeakReference<sp.c> weakReference : this.gu) {
            if (weakReference != null && weakReference.get() == cVar) {
                return;
            }
        }
        this.gu.add(new WeakReference<>(cVar));
    }

    @Override // com.byazt.fk.sp
    public int getBufferCount() {
        return this.f16017z;
    }

    @Override // com.byazt.fk.sp
    public String getCodec() {
        return "";
    }

    @Override // com.byazt.fk.sp
    public long getCurrentPosition() {
        try {
            return this.tt.getCurrentPlaybackTime();
        } catch (Throwable th) {
            com.byazt.lt.tt.tt(th.getMessage());
            return 0L;
        }
    }

    @Override // com.byazt.fk.sp
    public SurfaceHolder getSurfaceHolder() {
        return this.qy;
    }

    @Override // com.byazt.fk.sp
    public SurfaceTexture getSurfaceTexture() {
        return this.rl;
    }

    @Override // com.byazt.fk.sp
    public long getTotalBufferTime() {
        if (this.f16017z == 0) {
            return 0L;
        }
        if (this.f16014t == 0 && this.f16015u != 0) {
            this.f16014t = System.currentTimeMillis() - this.f16015u;
        }
        return this.f16014t;
    }

    @Override // com.byazt.fk.sp
    public int getUpdateProgressInterval() {
        return this.yv;
    }

    @Override // com.byazt.fk.sp
    public long getVideoDuration() {
        return this.tt.getDuration();
    }

    @Override // com.byazt.fk.sp
    public int getVideoHeight() {
        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "getVideoHeight: ");
        return this.gt;
    }

    @Override // com.byazt.fk.sp
    public int getVideoWidth() {
        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "getVideoWidth: ");
        return this.my;
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        sp.c cVar;
        sp.c cVar2;
        int i10 = message.what;
        try {
            if (i10 == 105) {
                TTVideoEngine tTVideoEngine = this.tt;
                if (tTVideoEngine != null) {
                    tTVideoEngine.stop();
                    return;
                }
                return;
            }
            if (i10 == 110) {
                TTVideoEngine tTVideoEngine2 = this.tt;
                if (tTVideoEngine2 != null) {
                    tTVideoEngine2.setSurfaceHolder((SurfaceHolder) message.obj);
                    this.rh.set(true);
                    if (this.nu.get()) {
                        uj();
                        return;
                    }
                    return;
                }
                return;
            }
            if (i10 == 111) {
                if (this.tt != null) {
                    SurfaceTexture surfaceTexture = (SurfaceTexture) message.obj;
                    com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "setSurface: TextureView ");
                    this.tt.setSurface(new Surface(surfaceTexture));
                    this.rh.set(true);
                    if (this.nu.get()) {
                        uj();
                        return;
                    }
                    return;
                }
                return;
            }
            switch (i10) {
                case 100:
                    TTVideoEngine tTVideoEngine3 = this.tt;
                    if (tTVideoEngine3 != null) {
                        tTVideoEngine3.play();
                    }
                    break;
                case 101:
                    if (this.tt != null && this.gr != null) {
                        this.tt.pause();
                        for (WeakReference<sp.c> weakReference : this.gu) {
                            if (weakReference != null && (cVar = weakReference.get()) != null) {
                                cVar.onPause(this);
                            }
                        }
                        this.gr.removeCallbacks(this.md);
                    }
                    break;
                case 102:
                    sp();
                    break;
                case 103:
                    TTVideoEngine tTVideoEngine4 = this.tt;
                    if (tTVideoEngine4 != null) {
                        tTVideoEngine4.release();
                    }
                    this.f16012n = true;
                    for (WeakReference<sp.c> weakReference2 : this.gu) {
                        if (weakReference2 != null && (cVar2 = weakReference2.get()) != null) {
                            cVar2.onRelease(this);
                        }
                    }
                    break;
            }
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.fk.sp
    public boolean isCompleted() {
        return this.f16006a;
    }

    @Override // com.byazt.fk.sp
    public boolean isFirstFrameSuccess() {
        return this.f16011m;
    }

    @Override // com.byazt.fk.sp
    public boolean isLooping() {
        return this.tt.isLooping();
    }

    @Override // com.byazt.fk.sp
    public boolean isPaused() {
        return this.tt.getPlaybackState() == 2;
    }

    @Override // com.byazt.fk.sp
    public boolean isPlaying() {
        return this.tt.getPlaybackState() == 1;
    }

    @Override // com.byazt.fk.sp
    public boolean isPrepared() {
        return this.sp;
    }

    @Override // com.byazt.fk.sp
    public boolean isReleased() {
        return this.f16012n;
    }

    @Override // com.byazt.fk.sp
    public boolean isStarted() {
        return this.f16016x;
    }

    @Override // com.byazt.fk.sp
    public void pause() {
        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "pause: ");
        Handler handler = this.gr;
        if (handler != null) {
            handler.removeMessages(100);
            handler.sendEmptyMessage(101);
        }
    }

    @Override // com.byazt.fk.sp
    public void play() {
        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "play: ");
        Handler handler = this.gr;
        if (handler != null) {
            handler.postDelayed(this.md, this.yv);
            handler.post(new Runnable() { // from class: com.byazt.jy.tt.8
                @Override // java.lang.Runnable
                public void run() {
                    sp.c cVar;
                    try {
                        if (tt.this.tt != null) {
                            tt.this.tt.play();
                            for (WeakReference weakReference : tt.this.gu) {
                                if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                                    cVar.onResume(tt.this);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "play: catch exception:", th);
                    }
                }
            });
        }
    }

    @Override // com.byazt.fk.sp
    public void release() {
        n();
        Handler handler = this.gr;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            handler.sendEmptyMessage(103);
            if (handler.getLooper() != null) {
                handler.post(new Runnable() { // from class: com.byazt.jy.tt.11
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (!tt.this.zm) {
                                ((qp) uj.getService("thread_service")).recycleHandler(tt.this.gr);
                            }
                            tt.this.gr = null;
                        } catch (Throwable th) {
                            com.byazt.lt.tt.tt("CSJ_VIDEO_TTVideo", "release error:", th);
                        }
                    }
                });
            }
        }
    }

    @Override // com.byazt.fk.sp
    public void removeIVideoPlayerCallback(sp.c cVar) {
        if (cVar == null) {
            return;
        }
        Iterator<WeakReference<sp.c>> it2 = this.gu.iterator();
        while (it2.hasNext()) {
            WeakReference<sp.c> next = it2.next();
            if (next != null && next.get() == cVar) {
                it2.remove();
            }
        }
    }

    @Override // com.byazt.fk.sp
    public void reset() {
        tt(new Runnable() { // from class: com.byazt.jy.tt.9
            @Override // java.lang.Runnable
            public void run() {
                if (tt.this.gr != null) {
                    tt.this.gr.sendEmptyMessage(102);
                }
            }
        });
    }

    @Override // com.byazt.fk.sp
    public void restart() {
        TTVideoEngine tTVideoEngine = this.tt;
        boolean zIsMute = tTVideoEngine != null ? tTVideoEngine.isMute() : false;
        this.f16017z = 0;
        this.f16014t = 0L;
        this.f16015u = 0L;
        this.f16006a = false;
        start(true, 0L, zIsMute);
    }

    @Override // com.byazt.fk.sp
    public void seekTo(long j10) {
        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "seekTo: ");
        if (this.uj) {
            this.tt.seekTo((int) j10, new SeekCompletionListener() { // from class: com.byazt.jy.tt.10
                @Override // com.bykv.vk.component.ttvideo.SeekCompletionListener
                public void onCompletion(boolean z10) {
                    sp.c cVar;
                    for (WeakReference weakReference : tt.this.gu) {
                        if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                            cVar.onSeekCompletion(tt.this, z10);
                        }
                    }
                }
            });
        }
    }

    @Override // com.byazt.fk.sp
    public void setDataSource(u uVar) {
        this.tt.setDirectUrlUseDataLoader(uVar.getUrl(), uVar.getFileNameKey(), (String) null, uVar.getCacheParentDir());
        this.ve = true;
        this.f16017z = 0;
        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "TTVideoPlayer setDirectUrlUseDataLoader:  url =", uVar.getUrl(), " isH265=", Boolean.valueOf(uVar.isH265()), " presize=", Integer.valueOf(uVar.getPreloadSize()), " path=", uVar.getCacheParentDir(), " fileName =", uVar.getFileNameKey());
    }

    @Override // com.byazt.fk.sp
    public void setDisplay(final SurfaceHolder surfaceHolder) {
        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "setDisplay:  SurfaceView");
        setSurfaceValid(true);
        this.qy = surfaceHolder;
        tt(new Runnable() { // from class: com.byazt.jy.tt.4
            @Override // java.lang.Runnable
            public void run() {
                if (tt.this.gr != null) {
                    tt.this.gr.obtainMessage(110, surfaceHolder).sendToTarget();
                }
            }
        });
    }

    @Override // com.byazt.fk.sp
    public void setLoop(boolean z10) {
        this.tt.setLooping(z10);
    }

    @Override // com.byazt.fk.sp
    public void setPlaySpeedRatio(float f10) {
    }

    @Override // com.byazt.fk.sp
    public void setQuietPlay(boolean z10) {
        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "setIsMute: ");
        this.tt.setIsMute(z10);
    }

    @Override // com.byazt.fk.sp
    public void setSeekMode(int i10) {
    }

    @Override // com.byazt.fk.sp
    public void setSurface(final SurfaceTexture surfaceTexture) {
        setSurfaceValid(true);
        this.rl = surfaceTexture;
        tt(new Runnable() { // from class: com.byazt.jy.tt.5
            @Override // java.lang.Runnable
            public void run() {
                if (tt.this.gr != null) {
                    tt.this.gr.obtainMessage(111, surfaceTexture).sendToTarget();
                }
            }
        });
    }

    @Override // com.byazt.fk.sp
    public void setSurfaceValid(boolean z10) {
        this.f16010i = z10;
    }

    @Override // com.byazt.fk.sp
    public void setUpdateProgressInterval(int i10) {
        this.yv = i10;
    }

    @Override // com.byazt.fk.sp
    public void start(boolean z10, long j10, boolean z11) {
        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "start: firstSeek:" + j10 + " first:" + z10 + " quiet:" + z11);
        if (this.gr != null) {
            this.gr.postDelayed(this.md, this.yv);
        }
        this.f16008da = System.currentTimeMillis();
        this.tt.setStartTime((int) j10);
        this.tt.setIsMute(z11);
        if (this.rh.get() && this.ve) {
            tt();
        } else {
            com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "seekTo: ", "Can not exec play, please exec setDataSource && setSurface before seek");
            c(new Runnable() { // from class: com.byazt.jy.tt.6
                @Override // java.lang.Runnable
                public void run() {
                    tt.this.tt();
                }
            });
        }
        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "start:end");
        this.nu.set(true);
        if (!this.rh.get() || this.gr == null) {
            return;
        }
        this.gr.post(new Runnable() { // from class: com.byazt.jy.tt.7
            @Override // java.lang.Runnable
            public void run() {
                tt.this.uj();
            }
        });
    }

    @Override // com.byazt.fk.sp
    public void stop() {
        com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "stop: ");
        if (this.gr != null) {
            this.gr.sendEmptyMessage(105);
        }
    }

    private void a() {
        this.tt.setVideoEngineSimpleCallback(new VideoEngineSimpleCallback() { // from class: com.byazt.jy.tt.2
            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onBufferEnd(int i10) {
                sp.c cVar;
                if (tt.this.yp == i10) {
                    tt.this.f16014t += System.currentTimeMillis() - tt.this.f16015u;
                }
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onBufferEnd: code =", Integer.valueOf(i10));
                for (WeakReference weakReference : tt.this.gu) {
                    if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                        cVar.onBufferEnd(tt.this, i10);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onBufferStart(int i10, int i11, int i12) {
                sp.c cVar;
                tt.this.yp = i10;
                tt.this.f16017z++;
                tt.this.f16015u = System.currentTimeMillis();
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onBufferStart: reason =", Integer.valueOf(i10), "  afterFirstFrame =", Integer.valueOf(i11), "  action=", Integer.valueOf(i12));
                for (WeakReference weakReference : tt.this.gu) {
                    if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                        cVar.onBufferStart(tt.this, i10, i11, i12);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onBufferingUpdate(TTVideoEngine tTVideoEngine, int i10) {
                sp.c cVar;
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onBufferingUpdate: percent =", Integer.valueOf(i10));
                for (WeakReference weakReference : tt.this.gu) {
                    if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                        cVar.onBufferingUpdate(tt.this, i10);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onCompletion(TTVideoEngine tTVideoEngine) {
                sp.c cVar;
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onCompletion: ");
                tt.this.f16006a = true;
                if (tt.this.gr != null) {
                    tt.this.gr.removeCallbacks(tt.this.md);
                }
                for (WeakReference weakReference : tt.this.gu) {
                    if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                        cVar.onCompletion(tt.this);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onError(Error error) {
                sp.c cVar;
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onError: ");
                ve veVar = new ve(error.getCode(), error.getInternalCode());
                for (WeakReference weakReference : tt.this.gu) {
                    if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                        cVar.onError(tt.this, veVar);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onLoadStateChanged(TTVideoEngine tTVideoEngine, int i10) {
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onLoadStateChanged: loadState =", Integer.valueOf(i10));
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onMDLHitCache(String str, long j10) {
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onMDLHitCache: MDLPlayTaskKey =", str, " hitCacheSize = ", Long.valueOf(j10));
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onPlaybackStateChanged(TTVideoEngine tTVideoEngine, int i10) {
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onPlaybackStateChanged: playbackState =", Integer.valueOf(i10));
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onPrepare(TTVideoEngine tTVideoEngine) {
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onPrepare: ");
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onPrepared(TTVideoEngine tTVideoEngine) {
                sp.c cVar;
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onPrepared: ");
                tt.this.sp = true;
                for (WeakReference weakReference : tt.this.gu) {
                    if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                        cVar.onPrepared(tt.this);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onRenderSeekComplete(int i10) {
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onRenderSeekComplete: isSeekInCached = ", Integer.valueOf(i10));
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onRenderStart(TTVideoEngine tTVideoEngine) {
                sp.c cVar;
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onRenderStart: ");
                tt.this.sl = System.currentTimeMillis() - tt.this.f16008da;
                for (WeakReference weakReference : tt.this.gu) {
                    if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                        tt ttVar = tt.this;
                        cVar.onRenderStart(ttVar, ttVar.sl);
                    }
                }
                tt.this.f16011m = true;
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onRetry(int i10) {
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onRetry: playType = ", Integer.valueOf(i10));
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onUseMDLCacheEnd() {
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onUseMDLCacheEnd: ");
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onVideoSizeChanged(TTVideoEngine tTVideoEngine, int i10, int i11) {
                sp.c cVar;
                com.byazt.lt.tt.c("CSJ_VIDEO_TTVideo", "onVideoSizeChanged: width = ", Integer.valueOf(i10), " height = ", Integer.valueOf(i11));
                tt.this.my = i10;
                tt.this.gt = i11;
                for (WeakReference weakReference : tt.this.gu) {
                    if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                        cVar.onVideoSizeChanged(tt.this, i10, i11);
                    }
                }
            }
        });
    }

    private void n() {
        ArrayList<Runnable> arrayList = this.f16009h;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.f16009h.clear();
    }

    private void sp() {
        this.ve = false;
        this.uj = false;
        this.f16006a = false;
        this.sp = false;
        this.f16016x = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj() {
        ArrayList<Runnable> arrayList = this.f16009h;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ve();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt() {
        sp.c cVar;
        this.f16016x = true;
        this.uj = true;
        for (WeakReference<sp.c> weakReference : this.gu) {
            if (weakReference != null && (cVar = weakReference.get()) != null) {
                cVar.onStart(this);
            }
        }
        if (this.gr != null) {
            this.gr.sendEmptyMessage(100);
        }
    }

    private void ve() {
        if (this.f16007d) {
            return;
        }
        this.f16007d = true;
        Iterator it2 = new ArrayList(this.f16009h).iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        this.f16009h.clear();
        this.f16007d = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j10, long j11) {
        sp.c cVar;
        for (WeakReference<sp.c> weakReference : this.gu) {
            if (weakReference != null && (cVar = weakReference.get()) != null) {
                cVar.onPlayPositionUpdate(this, j10, j11);
            }
        }
    }

    private void c(Context context, String str, Looper looper) {
        this.tt = c.c(context);
        if (looper != null) {
            this.gr = new d(looper, this);
            this.zm = true;
        } else if (this.gr == null) {
            this.gr = ((qp) uj.getService("thread_service")).obtainHandler(this, "csj_".concat(String.valueOf(str)));
        }
        a();
    }

    private void tt(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (!this.f16012n) {
            runnable.run();
        } else {
            c(runnable);
        }
    }

    private synchronized void c(Runnable runnable) {
        this.f16009h.add(runnable);
    }

    public static boolean c() {
        return f16005c;
    }

    public static void c(Context context, String str, int i10, String[] strArr, long[] jArr, boolean z10) {
        boolean z11;
        try {
            TTPlayerClient.create(new MediaPlayerWrapper(), com.byazt.oy.tt.getContext()).release();
            c.c(context, str, i10, strArr, jArr, new VideoEventEngineUploader() { // from class: com.byazt.jy.tt.3
                @Override // com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader
                public void onEvent(String str2, JSONObject jSONObject) {
                    ((z) uj.getService(NotificationCompat.CATEGORY_EVENT)).onAppLogMiscEvent(str2, jSONObject);
                }
            });
            c.c(z10);
            z11 = true;
        } catch (Throwable unused) {
            z11 = false;
        }
        f16005c = z11;
    }
}
