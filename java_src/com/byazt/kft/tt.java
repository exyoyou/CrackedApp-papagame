package com.byazt.kft;

import android.graphics.SurfaceTexture;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import com.byazt.fk.sp;
import com.byazt.fk.u;
import com.byazt.fk.ve;
import com.byazt.ga.LottieAnimationView;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 13})
public class tt implements sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f16238a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final sp f16241i;
    public final com.byazt.jr.tt sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public LottieAnimationView f16243t;
    public final int tt;
    public boolean uj;
    public final int ve;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16239c = "UpieVideoPlayer";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16242n = 0;
    public volatile boolean sp = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile boolean f16244x = false;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Map<sp.c, sp.c> f16240da = new ConcurrentHashMap();

    public tt(sp spVar, com.byazt.cph.c cVar, com.byazt.jzl.tt ttVar, com.byazt.jr.tt ttVar2) {
        this.f16241i = spVar;
        this.tt = cVar.uj();
        this.ve = cVar.n();
        this.sl = ttVar2;
        if (ttVar2 instanceof UpieVideoView) {
            LottieAnimationView lottieAnimationView = ((UpieVideoView) ttVar2).getLottieAnimationView();
            this.f16243t = lottieAnimationView;
            if (lottieAnimationView != null) {
                lottieAnimationView.setVideoStats(ttVar);
            }
        }
        c(cVar.c());
    }

    public static /* synthetic */ int c(tt ttVar) {
        int i10 = ttVar.f16242n;
        ttVar.f16242n = i10 + 1;
        return i10;
    }

    @Override // com.byazt.fk.sp
    public void addIVideoPlayerCallback(final sp.c cVar) {
        if (cVar == null) {
            return;
        }
        sp.c cVar2 = new sp.c() { // from class: com.byazt.kft.tt.5
            @Override // com.byazt.fk.sp.c
            public void onBufferEnd(sp spVar, int i10) {
                cVar.onBufferEnd(tt.this, i10);
            }

            @Override // com.byazt.fk.sp.c
            public void onBufferStart(sp spVar, int i10, int i11, int i12) {
                cVar.onBufferStart(tt.this, i10, i11, i12);
            }

            @Override // com.byazt.fk.sp.c
            public void onBufferingUpdate(sp spVar, int i10) {
                cVar.onBufferingUpdate(tt.this, i10);
            }

            @Override // com.byazt.fk.sp.c
            public void onCompletion(sp spVar) {
                cVar.onCompletion(tt.this);
            }

            @Override // com.byazt.fk.sp.c
            public void onError(sp spVar, ve veVar) {
                tt.this.c(veVar);
            }

            @Override // com.byazt.fk.sp.c
            public void onMonitorLog(sp spVar, JSONObject jSONObject, String str) {
                cVar.onMonitorLog(tt.this, jSONObject, str);
            }

            @Override // com.byazt.fk.sp.c
            public void onPause(sp spVar) {
                cVar.onPause(tt.this);
            }

            @Override // com.byazt.fk.sp.c
            public void onPlayPositionUpdate(sp spVar, long j10, long j11) {
                cVar.onPlayPositionUpdate(tt.this, j10, j11);
            }

            @Override // com.byazt.fk.sp.c
            public void onPrepared(sp spVar) {
                com.byazt.qk.tt.c(new Runnable() { // from class: com.byazt.kft.tt.5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        tt.this.f16244x = true;
                        if (!tt.this.sp) {
                            tt.this.f16241i.pause();
                        }
                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                        cVar.onPrepared(tt.this);
                        tt.this.c();
                    }
                });
            }

            @Override // com.byazt.fk.sp.c
            public void onRelease(sp spVar) {
                cVar.onRelease(tt.this);
            }

            @Override // com.byazt.fk.sp.c
            public void onRenderStart(sp spVar, final long j10) {
                com.byazt.qk.tt.c(new Runnable() { // from class: com.byazt.kft.tt.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                        cVar.onRenderStart(tt.this, j10);
                    }
                });
            }

            @Override // com.byazt.fk.sp.c
            public void onResume(sp spVar) {
                cVar.onResume(tt.this);
            }

            @Override // com.byazt.fk.sp.c
            public void onSeekCompletion(sp spVar, boolean z10) {
                cVar.onSeekCompletion(tt.this, z10);
            }

            @Override // com.byazt.fk.sp.c
            public void onStart(sp spVar) {
                cVar.onStart(tt.this);
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.byazt.fk.sp.c
            public void onVideoSizeChanged(sp spVar, int i10, int i11) {
                sp.c cVar3 = cVar;
                tt ttVar = tt.this;
                cVar3.onVideoSizeChanged(ttVar, ttVar.tt, tt.this.ve);
            }
        };
        this.f16240da.put(cVar, cVar2);
        this.f16241i.addIVideoPlayerCallback(cVar2);
    }

    @Override // com.byazt.fk.sp
    public int getBufferCount() {
        return this.f16241i.getBufferCount();
    }

    @Override // com.byazt.fk.sp
    public String getCodec() {
        return "";
    }

    @Override // com.byazt.fk.sp
    public long getCurrentPosition() {
        return this.f16241i.getCurrentPosition();
    }

    @Override // com.byazt.fk.sp
    public SurfaceHolder getSurfaceHolder() {
        return this.f16241i.getSurfaceHolder();
    }

    @Override // com.byazt.fk.sp
    public SurfaceTexture getSurfaceTexture() {
        return this.f16241i.getSurfaceTexture();
    }

    @Override // com.byazt.fk.sp
    public long getTotalBufferTime() {
        return this.f16241i.getTotalBufferTime();
    }

    @Override // com.byazt.fk.sp
    public int getUpdateProgressInterval() {
        return this.f16241i.getUpdateProgressInterval();
    }

    @Override // com.byazt.fk.sp
    public long getVideoDuration() {
        return this.f16241i.getVideoDuration();
    }

    @Override // com.byazt.fk.sp
    public int getVideoHeight() {
        return this.ve;
    }

    @Override // com.byazt.fk.sp
    public int getVideoWidth() {
        return this.tt;
    }

    @Override // com.byazt.fk.sp
    public boolean isCompleted() {
        boolean z10 = !this.uj && this.f16241i.isCompleted();
        m.c("UpieVideoPlayer", "--==--isCompleted: " + z10 + ",      errorInvoked: " + this.uj);
        return z10;
    }

    @Override // com.byazt.fk.sp
    public boolean isFirstFrameSuccess() {
        return this.f16241i.isFirstFrameSuccess();
    }

    @Override // com.byazt.fk.sp
    public boolean isLooping() {
        return this.f16241i.isLooping();
    }

    @Override // com.byazt.fk.sp
    public boolean isPaused() {
        boolean z10 = !this.uj && this.f16241i.isPaused();
        m.c("UpieVideoPlayer", "--==--isPaused: " + z10 + ",      errorInvoked: " + this.uj);
        return z10;
    }

    @Override // com.byazt.fk.sp
    public boolean isPlaying() {
        boolean z10 = !this.uj && this.f16241i.isPlaying();
        m.c("UpieVideoPlayer", "--==--isPlaying: " + z10 + ",      errorInvoked: " + this.uj);
        return z10;
    }

    @Override // com.byazt.fk.sp
    public boolean isPrepared() {
        boolean z10 = !this.uj && this.f16241i.isPrepared();
        m.c("UpieVideoPlayer", "--==--isPrepared: " + z10 + ",     errorInvoked: " + this.uj);
        return z10;
    }

    @Override // com.byazt.fk.sp
    public boolean isReleased() {
        boolean z10 = !this.uj && this.f16241i.isReleased();
        m.c("UpieVideoPlayer", "--==--isReleased: " + z10 + ",      errorInvoked: " + this.uj);
        return z10;
    }

    @Override // com.byazt.fk.sp
    public boolean isStarted() {
        boolean z10 = !this.uj && this.f16241i.isStarted();
        m.c("UpieVideoPlayer", "--==--isStarted: " + z10 + ",      errorInvoked: " + this.uj);
        return z10;
    }

    @Override // com.byazt.fk.sp
    public void pause() {
        m.c("UpieVideoPlayer", "--==--pause");
        this.f16241i.pause();
        LottieAnimationView lottieAnimationView = this.f16243t;
        if (lottieAnimationView != null) {
            lottieAnimationView.sp();
        }
        com.byazt.jr.tt ttVar = this.sl;
        if (ttVar instanceof UpieVideoView) {
            ((UpieVideoView) ttVar).tt();
        }
    }

    @Override // com.byazt.fk.sp
    public void play() {
        m.c("UpieVideoPlayer", "--==--play");
        this.f16241i.play();
        LottieAnimationView lottieAnimationView = this.f16243t;
        if (lottieAnimationView != null) {
            lottieAnimationView.tt();
        }
        com.byazt.jr.tt ttVar = this.sl;
        if (ttVar instanceof UpieVideoView) {
            ((UpieVideoView) ttVar).c();
        }
    }

    @Override // com.byazt.fk.sp
    public void release() {
        m.c("UpieVideoPlayer", "--==--release");
        this.f16241i.release();
        LottieAnimationView lottieAnimationView = this.f16243t;
        if (lottieAnimationView != null) {
            lottieAnimationView.a();
        }
        com.byazt.jr.tt ttVar = this.sl;
        if (ttVar instanceof UpieVideoView) {
            ((UpieVideoView) ttVar).tt();
        }
    }

    @Override // com.byazt.fk.sp
    public void removeIVideoPlayerCallback(sp.c cVar) {
        sp.c cVarRemove = this.f16240da.remove(cVar);
        if (cVarRemove != null) {
            this.f16241i.removeIVideoPlayerCallback(cVarRemove);
        }
    }

    @Override // com.byazt.fk.sp
    public void reset() {
        m.c("UpieVideoPlayer", "--==--reset");
        this.f16241i.reset();
        LottieAnimationView lottieAnimationView = this.f16243t;
        if (lottieAnimationView != null) {
            lottieAnimationView.sp();
            this.f16243t.setProgress(0.0f);
        }
        com.byazt.jr.tt ttVar = this.sl;
        if (ttVar instanceof UpieVideoView) {
            ((UpieVideoView) ttVar).tt();
        }
    }

    @Override // com.byazt.fk.sp
    public void restart() {
        m.c("UpieVideoPlayer", "--==--restart");
        this.f16241i.restart();
        LottieAnimationView lottieAnimationView = this.f16243t;
        if (lottieAnimationView != null) {
            lottieAnimationView.a();
            this.f16243t.setProgress(0.0f);
            this.f16243t.c();
        }
        com.byazt.jr.tt ttVar = this.sl;
        if (ttVar instanceof UpieVideoView) {
            ((UpieVideoView) ttVar).c();
        }
    }

    @Override // com.byazt.fk.sp
    public void seekTo(long j10) {
        m.c("UpieVideoPlayer", "--==--seekTo: ".concat(String.valueOf(j10)));
        this.f16241i.seekTo(j10);
        c(j10);
    }

    @Override // com.byazt.fk.sp
    public void setDataSource(u uVar) {
        m.c("UpieVideoPlayer", "--==--setDataSource: ".concat(String.valueOf(uVar)));
        this.f16241i.setDataSource(uVar);
    }

    @Override // com.byazt.fk.sp
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.f16241i.setDisplay(surfaceHolder);
    }

    @Override // com.byazt.fk.sp
    public void setLoop(boolean z10) {
        this.f16241i.setLoop(z10);
    }

    @Override // com.byazt.fk.sp
    public void setPlaySpeedRatio(float f10) {
        this.f16241i.setPlaySpeedRatio(f10);
        LottieAnimationView lottieAnimationView = this.f16243t;
        if (lottieAnimationView != null) {
            lottieAnimationView.setSpeed(f10);
        }
    }

    @Override // com.byazt.fk.sp
    public void setQuietPlay(boolean z10) {
        m.c("UpieVideoPlayer", "--==--isMute: ".concat(String.valueOf(z10)));
        this.f16241i.setQuietPlay(z10);
    }

    @Override // com.byazt.fk.sp
    public void setSeekMode(int i10) {
        m.c("UpieVideoPlayer", "--==--setSeekMode: ".concat(String.valueOf(i10)));
        this.f16241i.setSeekMode(i10);
    }

    @Override // com.byazt.fk.sp
    public void setSurface(SurfaceTexture surfaceTexture) {
        this.f16241i.setSurface(surfaceTexture);
    }

    @Override // com.byazt.fk.sp
    public void setSurfaceValid(boolean z10) {
        this.f16241i.setSurfaceValid(z10);
    }

    @Override // com.byazt.fk.sp
    public void setUpdateProgressInterval(int i10) {
        this.f16241i.setUpdateProgressInterval(i10);
    }

    @Override // com.byazt.fk.sp
    public void start(boolean z10, long j10, boolean z11) {
        m.c("UpieVideoPlayer", "--==--start: " + z10 + ", " + j10 + ", " + z11);
        this.f16241i.start(z10, j10, z11);
        this.f16238a = j10;
        com.byazt.jr.tt ttVar = this.sl;
        if (ttVar instanceof UpieVideoView) {
            ((UpieVideoView) ttVar).c();
        }
    }

    @Override // com.byazt.fk.sp
    public void stop() {
        m.c("UpieVideoPlayer", "--==--stop");
        this.f16241i.stop();
        LottieAnimationView lottieAnimationView = this.f16243t;
        if (lottieAnimationView != null) {
            lottieAnimationView.sp();
        }
        com.byazt.jr.tt ttVar = this.sl;
        if (ttVar instanceof UpieVideoView) {
            ((UpieVideoView) ttVar).tt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final String str) {
        if (TextUtils.isEmpty(str)) {
            c(new com.byazt.jzl.ve(60008, 10000, "lottieJsonUrl为空"));
        } else {
            com.byazt.qk.tt.ve(new Runnable() { // from class: com.byazt.kft.tt.1
                @Override // java.lang.Runnable
                public void run() {
                    String strC = com.byazt.cph.tt.c().c(str);
                    if (TextUtils.isEmpty(strC)) {
                        com.byazt.cph.tt.c().c(str, new com.byazt.cph.tt.c<String>() { // from class: com.byazt.kft.tt.1.1
                            @Override // com.byazt.cph.tt.c
                            public void c(String str2) {
                                m.c("UpieVideoPlayer", "--==-- lottie load jsonStr ok");
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                tt.this.c(str2, str);
                            }

                            @Override // com.byazt.cph.tt.c
                            public void c(int i10, String str2) {
                                m.c("UpieVideoPlayer", "--==-- lottie jsonStr load fail: " + i10 + ", " + str2);
                                if (i10 == 10006) {
                                    tt.this.c(new com.byazt.jzl.ve(60008, i10, str2));
                                    return;
                                }
                                tt.c(tt.this);
                                if (tt.this.f16242n <= 3) {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    tt.this.c(str);
                                } else {
                                    tt.this.c(new com.byazt.jzl.ve(60008, i10, str2));
                                }
                            }
                        });
                    } else {
                        m.c("UpieVideoPlayer", "--==-- lottie use cache ok");
                        tt.this.c(strC, str);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final ve veVar) {
        com.byazt.qk.tt.tt(new Runnable() { // from class: com.byazt.kft.tt.2
            @Override // java.lang.Runnable
            public void run() {
                if (tt.this.uj) {
                    return;
                }
                tt.this.uj = true;
                m.c("UpieVideoPlayer", "--==--play err, code: " + veVar.getCode() + ", extra: " + veVar.getExtraCode() + ", msg: " + veVar.getMsg());
                Iterator it2 = tt.this.f16240da.entrySet().iterator();
                while (it2.hasNext()) {
                    ((sp.c) ((Map.Entry) it2.next()).getKey()).onError(tt.this, veVar);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final String str, final String str2) {
        com.byazt.qk.tt.c(new Runnable() { // from class: com.byazt.kft.tt.3
            @Override // java.lang.Runnable
            public void run() {
                tt.this.sp = true;
                if (tt.this.f16243t != null) {
                    tt.this.f16243t.c(str, str2);
                }
                tt.this.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        com.byazt.qk.tt.tt(new Runnable() { // from class: com.byazt.kft.tt.4
            @Override // java.lang.Runnable
            public void run() {
                if (tt.this.f16244x && tt.this.sp) {
                    tt.this.f16241i.play();
                    if (tt.this.f16243t != null) {
                        tt.this.f16243t.c();
                        if (tt.this.f16238a > 0) {
                            tt ttVar = tt.this;
                            ttVar.c(ttVar.f16238a);
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j10) {
        LottieAnimationView lottieAnimationView = this.f16243t;
        if (lottieAnimationView != null) {
            long duration = lottieAnimationView.getDuration();
            if (duration <= 0) {
                duration = getVideoDuration();
            }
            if (duration > 0) {
                this.f16243t.setProgress((j10 % duration) / duration);
            }
        }
    }
}
