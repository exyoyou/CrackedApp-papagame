package com.byazt.ir;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.byazt.dna.qp;
import com.byazt.fk.sp;
import com.byazt.fk.u;
import com.byazt.gqp.m;
import com.byazt.gqp.t;
import com.byazt.gqp.yp;
import com.byazt.jzl.ve;
import com.byazt.nr.d;
import com.byazt.nys.PluginConstants;
import com.byazt.oy.tt;
import com.byazt.ut.uj;
import com.bykv.vk.component.ttvideo.ILiveListener;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.ILiveSettingBundle;
import com.bykv.vk.component.ttvideo.INetworkClient;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.VideoLiveManager;
import com.bykv.vk.component.ttvideo.log.LiveError;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME, 20})
public class c implements sp, qp.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f15486a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ILivePlayer f15487c;
    public boolean cu;
    public long gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile u f15490h;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f15493n;
    public long nu;
    public JSONObject or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public SurfaceTexture f15495p;
    public boolean qp;
    public volatile boolean sp;
    public int uj;
    public final Context ve;
    public SurfaceHolder yv;
    public final List<WeakReference<sp.c>> tt = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public AtomicBoolean f15498x = new AtomicBoolean(false);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AtomicBoolean f15491i = new AtomicBoolean(false);

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile boolean f15489da = false;
    public volatile boolean sl = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile boolean f15496t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile boolean f15497u = false;
    public volatile boolean yp = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile boolean f15499z = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile boolean f15492m = true;
    public long rh = 0;
    public long my = 0;
    public final int gt = 0;
    public int rl = 0;
    public long qy = 0;
    public long gr = 0;
    public volatile boolean zm = false;
    public volatile int md = 200;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f15488d = 0;
    public final ArrayList<Runnable> eo = new ArrayList<>();

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public final Runnable f15500zb = new Runnable() { // from class: com.byazt.ir.c.1
        @Override // java.lang.Runnable
        public void run() {
            sp.c cVar;
            long currentPosition = c.this.getCurrentPosition();
            c.this.gr += (long) c.this.md;
            if (c.this.getVideoDuration() > 0 && c.this.f15488d != currentPosition) {
                if (tt.uj()) {
                    com.byazt.lt.tt.c("TTLiveVideoPlayer", "run: lastCur = " + c.this.f15488d + "  currentPosition=" + currentPosition);
                }
                c cVar2 = c.this;
                cVar2.c(currentPosition, cVar2.getVideoDuration());
            }
            c.this.f15488d = currentPosition;
            if (c.this.getCurrentPosition() >= c.this.gu) {
                c.this.f15497u = true;
                c.this.release();
                for (WeakReference weakReference : c.this.tt) {
                    if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                        cVar.onCompletion(c.this);
                    }
                }
            }
            if (c.this.f15497u) {
                c cVar3 = c.this;
                cVar3.c(cVar3.getVideoDuration(), c.this.getVideoDuration());
            } else if (c.this.f15486a != null) {
                c.this.f15486a.postDelayed(this, c.this.md);
            }
        }
    };

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public final ILiveListener f15494nb = new ILiveListener() { // from class: com.byazt.ir.c.7
        public boolean tt = false;

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onAbrSwitch(String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onAudioRenderStall(int i10) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onCacheFileCompletion() {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onCompletion() {
            sp.c cVar;
            if (c.this.f15486a == null) {
                return;
            }
            c.this.f15486a.removeCallbacks(c.this.f15500zb);
            for (WeakReference weakReference : c.this.tt) {
                if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                    cVar.onBufferStart(c.this, -1, -1, -1);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onError(LiveError liveError) {
            sp.c cVar;
            if (liveError != null) {
                if (this.tt) {
                    return;
                }
                this.tt = true;
                ve veVar = new ve(liveError.code, 0, liveError.getInfoJSON());
                for (WeakReference weakReference : c.this.tt) {
                    if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                        cVar.onError(c.this, veVar);
                    }
                }
            }
            c.this.f15492m = true;
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onFirstFrame(boolean z10) {
            sp.c cVar;
            sp.c cVar2;
            if (c.this.f15486a == null) {
                return;
            }
            c.this.zm = true;
            c.this.f15486a.removeCallbacks(c.this.f15500zb);
            if (c.this.gu > 0) {
                c.this.f15486a.postDelayed(c.this.f15500zb, c.this.md);
            }
            c.this.f15492m = false;
            if (!z10) {
                com.byazt.lt.tt.tt("TTLiveVideoPlayer", "onFirstFrame-> not first frame , isFirstFrame=".concat(String.valueOf(z10)));
                for (WeakReference weakReference : c.this.tt) {
                    if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                        cVar.onBufferEnd(c.this, -1);
                    }
                }
                return;
            }
            c.this.rh = System.currentTimeMillis() - c.this.nu;
            for (WeakReference weakReference2 : c.this.tt) {
                if (weakReference2 != null && (cVar2 = (sp.c) weakReference2.get()) != null) {
                    c cVar3 = c.this;
                    cVar2.onRenderStart(cVar3, cVar3.rh);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onMonitorLog(JSONObject jSONObject, String str) {
            sp.c cVar;
            for (WeakReference weakReference : c.this.tt) {
                if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                    cVar.onMonitorLog(c.this, jSONObject, str);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onPrepared() {
            sp.c cVar;
            com.byazt.lt.tt.c("TTLiveVideoPlayer", "onPrepared.....");
            c.this.yp = true;
            for (WeakReference weakReference : c.this.tt) {
                if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                    cVar.onPrepared(c.this);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onReportALog(int i10, String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onResolutionDegrade(String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onSeiUpdate(String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onStallEnd() {
            sp.c cVar;
            if (c.this.f15486a == null) {
                return;
            }
            if (c.this.gu > 0) {
                c.this.f15486a.postDelayed(c.this.f15500zb, c.this.md);
            }
            c.this.my += System.currentTimeMillis() - c.this.qy;
            for (WeakReference weakReference : c.this.tt) {
                if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                    cVar.onBufferEnd(c.this, -1);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onStallStart() {
            sp.c cVar;
            if (c.this.f15486a == null) {
                return;
            }
            c.nu(c.this);
            c.this.qy = System.currentTimeMillis();
            c.this.f15486a.removeCallbacks(c.this.f15500zb);
            for (WeakReference weakReference : c.this.tt) {
                if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                    cVar.onBufferStart(c.this, -1, -1, -1);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onVideoRenderStall(int i10) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onVideoSizeChanged(int i10, int i11) {
            sp.c cVar;
            c.this.uj = i10;
            c.this.f15493n = i11;
            for (WeakReference weakReference : c.this.tt) {
                if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                    cVar.onVideoSizeChanged(c.this, i10, i11);
                }
            }
        }
    };

    /* JADX INFO: renamed from: com.byazt.ir.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME, 44})
    public static class C0346c implements INetworkClient {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final t f15509c;

        public C0346c() {
            t.c cVarTt = tt.ve().tt();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            this.f15509c = cVarTt.c(10L, timeUnit).tt(10L, timeUnit).ve(10L, timeUnit).c();
        }

        @Override // com.bykv.vk.component.ttvideo.INetworkClient
        public INetworkClient.Result doPost(String str, String str2) {
            return null;
        }

        @Override // com.bykv.vk.component.ttvideo.INetworkClient
        public INetworkClient.Result doRequest(String str, String str2) {
            String str3;
            String strTt;
            String str4 = null;
            String string = null;
            JSONObject jSONObject = null;
            try {
                try {
                    m mVarTt = this.f15509c.c(new yp.c().c(str).tt(u.c.f97430f, str2).tt()).tt();
                    if (mVarTt.uj()) {
                        strTt = mVarTt.a().tt();
                        try {
                            string = mVarTt.sp().toString();
                            jSONObject = new JSONObject(strTt);
                        } catch (JSONException e10) {
                            e = e10;
                            String str5 = string;
                            str4 = strTt;
                            str3 = str5;
                            return INetworkClient.Result.newBuilder().setBody(str4).setHeader(str3).setException(e).build();
                        }
                    } else {
                        strTt = null;
                    }
                    return INetworkClient.Result.newBuilder().setResponse(jSONObject).setBody(strTt).build();
                } catch (JSONException e11) {
                    e = e11;
                    str3 = null;
                }
            } catch (IOException e12) {
                return INetworkClient.Result.newBuilder().setException(e12).build();
            } catch (Exception e13) {
                return INetworkClient.Result.newBuilder().setException(e13).build();
            }
        }
    }

    public c(Context context, boolean z10, long j10, JSONObject jSONObject, Looper looper) {
        this.f15486a = null;
        this.sp = false;
        this.gu = 0L;
        this.ve = context;
        this.or = jSONObject;
        this.gu = j10 > 0 ? j10 * 1000 : -1L;
        if (looper != null) {
            this.f15486a = new d(looper, this);
            this.sp = true;
        } else if (this.f15486a == null) {
            this.f15486a = ((qp) uj.getService("thread_service")).obtainHandler(this, "tt-live-video-player");
        }
        c(z10);
    }

    public static /* synthetic */ int nu(c cVar) {
        int i10 = cVar.rl;
        cVar.rl = i10 + 1;
        return i10;
    }

    @Override // com.byazt.fk.sp
    public void addIVideoPlayerCallback(sp.c cVar) {
        if (cVar == null) {
            return;
        }
        for (WeakReference<sp.c> weakReference : this.tt) {
            if (weakReference != null && weakReference.get() == cVar) {
                return;
            }
        }
        this.tt.add(new WeakReference<>(cVar));
    }

    @Override // com.byazt.fk.sp
    public int getBufferCount() {
        return this.rl;
    }

    @Override // com.byazt.fk.sp
    public String getCodec() {
        return "";
    }

    @Override // com.byazt.fk.sp
    public long getCurrentPosition() {
        return this.gr;
    }

    @Override // com.byazt.fk.sp
    public SurfaceHolder getSurfaceHolder() {
        return this.yv;
    }

    @Override // com.byazt.fk.sp
    public SurfaceTexture getSurfaceTexture() {
        return this.f15495p;
    }

    @Override // com.byazt.fk.sp
    public long getTotalBufferTime() {
        return this.my;
    }

    @Override // com.byazt.fk.sp
    public int getUpdateProgressInterval() {
        return this.md;
    }

    @Override // com.byazt.fk.sp
    public long getVideoDuration() {
        return this.gu;
    }

    @Override // com.byazt.fk.sp
    public int getVideoHeight() {
        return this.f15493n;
    }

    @Override // com.byazt.fk.sp
    public int getVideoWidth() {
        return this.uj;
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        sp.c cVar;
        sp.c cVar2;
        try {
            switch (message.what) {
                case 100:
                    for (WeakReference<sp.c> weakReference : this.tt) {
                        if (weakReference != null && (cVar = weakReference.get()) != null) {
                            cVar.onStart(this);
                        }
                    }
                    play();
                    this.f15499z = true;
                    return;
                case 101:
                    ILivePlayer iLivePlayer = this.f15487c;
                    if (iLivePlayer != null) {
                        try {
                            iLivePlayer.stop();
                            for (WeakReference<sp.c> weakReference2 : this.tt) {
                                if (weakReference2 != null && (cVar2 = weakReference2.get()) != null) {
                                    cVar2.onPause(this);
                                }
                            }
                        } catch (Throwable th) {
                            com.byazt.lt.tt.c("TTLiveVideoPlayer", "pause: catch exception:", th);
                        }
                        this.f15492m = true;
                        return;
                    }
                    return;
                case 102:
                    ILivePlayer iLivePlayer2 = this.f15487c;
                    if (iLivePlayer2 != null) {
                        try {
                            iLivePlayer2.reset();
                            break;
                        } catch (Throwable th2) {
                            com.byazt.lt.tt.c("TTLiveVideoPlayer", "reset: catch exception:", th2);
                        }
                        this.f15492m = true;
                        return;
                    }
                    return;
                case 103:
                    ILivePlayer iLivePlayer3 = this.f15487c;
                    if (iLivePlayer3 != null) {
                        try {
                            iLivePlayer3.release();
                            break;
                        } catch (Throwable th3) {
                            com.byazt.lt.tt.c("TTLiveVideoPlayer", "release: catch exception:", th3);
                        }
                        this.sl = true;
                        this.f15492m = true;
                        return;
                    }
                    return;
                case 104:
                case 106:
                case 108:
                case 109:
                default:
                    return;
                case 105:
                    ILivePlayer iLivePlayer4 = this.f15487c;
                    if (iLivePlayer4 != null) {
                        try {
                            iLivePlayer4.stop();
                            break;
                        } catch (Throwable th4) {
                            com.byazt.lt.tt.c("TTLiveVideoPlayer", "stop: catch exception:", th4);
                        }
                        this.f15492m = true;
                        return;
                    }
                    return;
                case 107:
                    if (this.f15487c == null || this.f15490h == null) {
                        return;
                    }
                    String url = this.f15490h.getUrl();
                    c(url);
                    this.f15487c.setStreamInfo(url);
                    this.f15489da = true;
                    com.byazt.lt.tt.c("TTLiveVideoPlayer", "set Datasource:" + this.f15489da);
                    this.rl = 0;
                    return;
                case 110:
                    ILivePlayer iLivePlayer5 = this.f15487c;
                    if (iLivePlayer5 != null) {
                        SurfaceHolder surfaceHolder = (SurfaceHolder) message.obj;
                        iLivePlayer5.setSurfaceHolder(surfaceHolder);
                        this.f15487c.setSurface(surfaceHolder.getSurface());
                        this.f15491i.set(true);
                        if (this.f15498x.get()) {
                            c();
                            return;
                        }
                        return;
                    }
                    return;
                case 111:
                    ILivePlayer iLivePlayer6 = this.f15487c;
                    if (iLivePlayer6 != null) {
                        iLivePlayer6.setSurface(new Surface(this.f15495p));
                        this.f15491i.set(true);
                        if (this.f15498x.get()) {
                            c();
                            return;
                        }
                        return;
                    }
                    return;
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
        e10.getMessage();
    }

    @Override // com.byazt.fk.sp
    public boolean isCompleted() {
        com.byazt.lt.tt.tt("TTLiveVideoPlayer", "TTLiveVideoPlayer...isCompleted......isComplete....=" + this.f15497u);
        return this.f15497u;
    }

    @Override // com.byazt.fk.sp
    public boolean isFirstFrameSuccess() {
        return this.zm;
    }

    @Override // com.byazt.fk.sp
    public boolean isLooping() {
        com.byazt.lt.tt.c("TTLiveVideoPlayer", "isLooping: live is invalid ");
        return false;
    }

    @Override // com.byazt.fk.sp
    public boolean isPaused() {
        return this.f15492m;
    }

    @Override // com.byazt.fk.sp
    public boolean isPlaying() {
        ILivePlayer iLivePlayer = this.f15487c;
        if (iLivePlayer == null) {
            return false;
        }
        try {
            return iLivePlayer.isPlaying();
        } catch (Throwable th) {
            com.byazt.lt.tt.c("TTLiveVideoPlayer", "isPlaying: catch exception:", th);
            return false;
        }
    }

    @Override // com.byazt.fk.sp
    public boolean isPrepared() {
        return this.yp;
    }

    @Override // com.byazt.fk.sp
    public boolean isReleased() {
        return this.sl;
    }

    @Override // com.byazt.fk.sp
    public boolean isStarted() {
        return this.f15499z;
    }

    @Override // com.byazt.fk.sp
    public void pause() {
        com.byazt.lt.tt.tt("TTLiveVideoPlayer", "TTLiveVideoPlayer...pause......pause....currentPosition=" + getCurrentPosition());
        Handler handler = this.f15486a;
        if (handler != null) {
            handler.removeCallbacks(this.f15500zb);
            handler.sendEmptyMessage(101);
        }
    }

    @Override // com.byazt.fk.sp
    public void play() {
        Handler handler = this.f15486a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.byazt.ir.c.5
                @Override // java.lang.Runnable
                public void run() {
                    sp.c cVar;
                    if (c.this.f15487c == null || c.this.isPlaying()) {
                        return;
                    }
                    try {
                        c.this.f15487c.play();
                        c cVar2 = c.this;
                        cVar2.setQuietPlay(cVar2.qp);
                        for (WeakReference weakReference : c.this.tt) {
                            if (weakReference != null && (cVar = (sp.c) weakReference.get()) != null) {
                                cVar.onResume(c.this);
                            }
                        }
                    } catch (Throwable th) {
                        com.byazt.lt.tt.c("TTLiveVideoPlayer", "play: catch exception", th);
                    }
                    c.this.f15492m = false;
                }
            });
        }
    }

    @Override // com.byazt.fk.sp
    public void release() {
        Handler handler = this.f15486a;
        if (handler != null) {
            handler.removeCallbacks(this.f15500zb);
            handler.sendEmptyMessage(103);
            ve();
        }
        com.byazt.lt.tt.tt("TTLiveVideoPlayer", "TTLiveVideoPlayer...release......release....");
    }

    @Override // com.byazt.fk.sp
    public void removeIVideoPlayerCallback(sp.c cVar) {
        if (cVar == null) {
            return;
        }
        Iterator<WeakReference<sp.c>> it2 = this.tt.iterator();
        while (it2.hasNext()) {
            WeakReference<sp.c> next = it2.next();
            if (next != null && next.get() == cVar) {
                it2.remove();
            }
        }
    }

    @Override // com.byazt.fk.sp
    public void reset() {
        uj();
        Handler handler = this.f15486a;
        com.byazt.lt.tt.tt("TTLiveVideoPlayer", "TTLiveVideoPlayer...reset......reset....");
        if (handler != null) {
            handler.removeCallbacks(this.f15500zb);
            handler.sendEmptyMessage(102);
        }
    }

    @Override // com.byazt.fk.sp
    public void restart() {
        this.rl = 0;
        this.my = 0L;
        this.qy = 0L;
        start(true, 0L, false);
    }

    @Override // com.byazt.fk.sp
    public void seekTo(long j10) {
    }

    @Override // com.byazt.fk.sp
    public void setDataSource(u uVar) {
        if (uVar == null) {
            return;
        }
        this.f15490h = uVar;
        com.byazt.lt.tt.c("TTLiveVideoPlayer", "setDataSource: model = " + uVar.getUrl());
        Handler handler = this.f15486a;
        if (handler != null) {
            handler.sendEmptyMessage(107);
        }
    }

    @Override // com.byazt.fk.sp
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.yv = surfaceHolder;
        com.byazt.lt.tt.tt("TTLiveVideoPlayer", "TTLiveVideoPlayer...SurfaceHolder......".concat(String.valueOf(surfaceHolder)));
        Handler handler = this.f15486a;
        if (handler != null) {
            handler.obtainMessage(110, surfaceHolder).sendToTarget();
        }
    }

    @Override // com.byazt.fk.sp
    public void setLoop(boolean z10) {
        com.byazt.lt.tt.c("TTLiveVideoPlayer", "setLoop: live is invalid ");
    }

    @Override // com.byazt.fk.sp
    public void setPlaySpeedRatio(float f10) {
    }

    @Override // com.byazt.fk.sp
    public void setQuietPlay(boolean z10) {
        this.qp = z10;
        if (this.f15487c != null) {
            com.byazt.lt.tt.tt("TTLiveVideoPlayer", "TTLiveVideoPlayer...setQuietPlay......isMute=".concat(String.valueOf(z10)));
            try {
                this.f15487c.setMute(Boolean.valueOf(z10));
            } catch (Throwable th) {
                com.byazt.lt.tt.c("TTLiveVideoPlayer", "setMute: catch exception:", th);
            }
        }
    }

    @Override // com.byazt.fk.sp
    public void setSeekMode(int i10) {
    }

    @Override // com.byazt.fk.sp
    public void setSurface(SurfaceTexture surfaceTexture) {
        this.f15495p = surfaceTexture;
        Handler handler = this.f15486a;
        if (handler != null) {
            handler.obtainMessage(111, surfaceTexture).sendToTarget();
        }
        com.byazt.lt.tt.tt("TTLiveVideoPlayer", "setSurface...surface=");
    }

    @Override // com.byazt.fk.sp
    public void setSurfaceValid(boolean z10) {
        this.f15496t = z10;
    }

    @Override // com.byazt.fk.sp
    public void setUpdateProgressInterval(int i10) {
        this.md = i10;
    }

    @Override // com.byazt.fk.sp
    public void start(boolean z10, final long j10, final boolean z11) {
        Handler handler;
        if (this.f15491i.get() && this.f15489da && this.f15487c != null) {
            this.gr = j10;
            this.nu = System.currentTimeMillis();
            setQuietPlay(z11);
            Handler handler2 = this.f15486a;
            if (handler2 != null) {
                handler2.sendEmptyMessage(100);
            }
            com.byazt.nr.m.tt("TTLiveVideoPlayer", "TTLiveVideoPlayer...play......");
        } else {
            c(new Runnable() { // from class: com.byazt.ir.c.3
                @Override // java.lang.Runnable
                public void run() {
                    c.this.gr = j10;
                    c.this.nu = System.currentTimeMillis();
                    c.this.setQuietPlay(z11);
                    if (c.this.f15486a != null) {
                        c.this.f15486a.sendEmptyMessage(100);
                    }
                }
            });
        }
        this.f15498x.set(true);
        if (!this.f15491i.get() || (handler = this.f15486a) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.byazt.ir.c.4
            @Override // java.lang.Runnable
            public void run() {
                c.this.c();
            }
        });
    }

    @Override // com.byazt.fk.sp
    public void stop() {
        com.byazt.lt.tt.tt("TTLiveVideoPlayer", "TTLiveVideoPlayer...stop......stop....currentPosition=" + getCurrentPosition());
        Handler handler = this.f15486a;
        if (handler != null) {
            handler.removeCallbacks(this.f15500zb);
            handler.sendEmptyMessage(105);
        }
    }

    private void uj() {
        this.f15489da = false;
        this.f15497u = false;
        this.yp = false;
        this.f15499z = false;
        this.f15492m = true;
    }

    private void ve() {
        Handler handler = this.f15486a;
        if (handler == null || handler.getLooper() == null) {
            return;
        }
        this.f15486a.post(new Runnable() { // from class: com.byazt.ir.c.6
            @Override // java.lang.Runnable
            public void run() {
                if (c.this.f15486a == null || c.this.f15486a.getLooper() == null) {
                    return;
                }
                try {
                    c.this.f15495p = null;
                    c.this.yv = null;
                    if (c.this.sp) {
                        c.this.f15486a.removeCallbacksAndMessages(null);
                    } else {
                        ((qp) uj.getService("thread_service")).recycleHandler(c.this.f15486a);
                    }
                    c.this.f15486a = null;
                } catch (Throwable unused) {
                }
            }
        });
    }

    private synchronized void tt() {
        if (this.cu) {
            return;
        }
        this.cu = true;
        Iterator it2 = new ArrayList(this.eo).iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        this.eo.clear();
        this.cu = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j10, long j11) {
        sp.c cVar;
        for (WeakReference<sp.c> weakReference : this.tt) {
            if (weakReference != null && (cVar = weakReference.get()) != null) {
                cVar.onPlayPositionUpdate(this, j10, j11);
            }
        }
    }

    private void c(final boolean z10) {
        Handler handler = this.f15486a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.byazt.ir.c.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ILiveSettingBundle iLiveSettingBundle = new ILiveSettingBundle() { // from class: com.byazt.ir.c.2.1
                            /* JADX WARN: Code duplicated, block: B:13:0x002c  */
                            /* JADX WARN: Code duplicated, block: B:14:0x002f  */
                            @Override // com.bykv.vk.component.ttvideo.ILiveSettingBundle
                            public <T> T getSettingsValueForKey(String str, T t10) {
                                Object objValueOf;
                                str.hashCode();
                                if (str.equals("live_enable_close_play_retry")) {
                                    if (t10.getClass() == Integer.class) {
                                        objValueOf = Integer.valueOf("1");
                                    }
                                    return t10.getClass() == Boolean.class ? (T) Boolean.TRUE : (T) objValueOf;
                                }
                                if (!str.equals("live_sdk_cancel_sdk_dns_fail_retry")) {
                                    return t10;
                                }
                                objValueOf = t10;
                                if (t10.getClass() == Boolean.class) {
                                }
                            }
                        };
                        c cVar = c.this;
                        cVar.f15487c = VideoLiveManager.newBuilder(cVar.ve).setProjectKey("pangle_ad_live").setNetworkClient(new C0346c()).setForceHttpDns(false).setForceTTNetHttpDns(false).setSettingsBundle(iLiveSettingBundle).setPlayerType(1).setListener(c.this.f15494nb).build();
                        c.this.f15487c.setIntOption(69, z10 ? 1 : 0);
                        c.this.f15487c.setStringOption(72, com.byazt.nys.tt.c(c.this.ve, null).getAbsolutePath() + "/pangle_live/");
                    } catch (Exception e10) {
                        com.byazt.lt.tt.ve("TTLiveVideoPlayer", e10.getMessage());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c() {
        ArrayList<Runnable> arrayList = this.eo;
        if (arrayList != null && !arrayList.isEmpty()) {
            tt();
        }
    }

    private synchronized void c(Runnable runnable) {
        this.eo.add(runnable);
    }

    private void c(String str) {
        String str2 = LiveConfigKey.LOW;
        try {
            JSONObject jSONObject = this.or;
            if (jSONObject == null) {
                return;
            }
            com.byazt.lt.tt.c("TTLiveVideoPlayer", "live ".concat(String.valueOf(jSONObject)));
            int iOptInt = jSONObject.optInt("enable");
            String strOptString = jSONObject.optString("appids");
            if (iOptInt == 1 && !TextUtils.isEmpty(strOptString)) {
                JSONObject jSONObject2 = new JSONObject(str);
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("common");
                JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("data");
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject2 != null) {
                    String strOptString2 = jSONObjectOptJSONObject.optString(PluginConstants.KEY_APP_ID);
                    com.byazt.lt.tt.c("TTLiveVideoPlayer", "api ".concat(String.valueOf(strOptString2)));
                    if (strOptString.contains(strOptString2)) {
                        if (jSONObjectOptJSONObject2.optJSONObject(LiveConfigKey.UHD) != null) {
                            str2 = LiveConfigKey.UHD;
                        } else if (jSONObjectOptJSONObject2.optJSONObject(LiveConfigKey.HIGH) != null) {
                            str2 = LiveConfigKey.HIGH;
                        } else if (jSONObjectOptJSONObject2.optJSONObject(LiveConfigKey.STANDARD) != null) {
                            str2 = LiveConfigKey.STANDARD;
                        } else if (jSONObjectOptJSONObject2.optJSONObject(LiveConfigKey.LOW) == null) {
                            str2 = null;
                        }
                        if (TextUtils.isEmpty(str2)) {
                            return;
                        }
                        com.byazt.lt.tt.c("TTLiveVideoPlayer", "update reso:".concat(String.valueOf(str2)));
                        this.f15487c.setStringOption(43, str2);
                    }
                }
            }
        } catch (Exception e10) {
            com.byazt.lt.tt.c("TTLiveVideoPlayer", "updateStream: catch exception:", e10.getMessage());
        }
    }
}
