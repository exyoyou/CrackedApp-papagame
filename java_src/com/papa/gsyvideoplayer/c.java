package com.papa.gsyvideoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c implements IMediaPlayer.OnPreparedListener, IMediaPlayer.OnCompletionListener, IMediaPlayer.OnBufferingUpdateListener, IMediaPlayer.OnSeekCompleteListener, IMediaPlayer.OnErrorListener, IMediaPlayer.OnVideoSizeChangedListener, IMediaPlayer.OnInfoListener, com.papa.gsyvideoplayer.cache.b.a, com.papa.gsyvideoplayer.video.base.a {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static String f76711t = "GSYVideoBaseManager";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected static final int f76712u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected static final int f76713v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected static final int f76714w = 2;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected static final int f76715x = 3;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected static final int f76716y = -192;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f76717a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected i f76718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Handler f76719c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected WeakReference<v7.a> f76720d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected WeakReference<v7.a> f76721e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected com.papa.gsyvideoplayer.player.b f76722f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected List<com.papa.gsyvideoplayer.model.c> f76723g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected com.papa.gsyvideoplayer.player.c f76725i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected com.papa.gsyvideoplayer.cache.b f76726j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected int f76729m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f76731o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected boolean f76734r;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected String f76724h = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f76727k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected int f76728l = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected int f76730n = -22;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected int f76732p = AVMDLDataLoader.KeyIsLiveSetLoaderType;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f76733q = true;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Runnable f76735s = new h();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.E();
            if (c.this.w() != null) {
                c.this.w().onPrepared();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.E();
            if (c.this.w() != null) {
                c.this.w().onAutoCompletion();
            }
        }
    }

    /* JADX INFO: renamed from: com.papa.gsyvideoplayer.c$c, reason: collision with other inner class name */
    class RunnableC0993c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f76738b;

        RunnableC0993c(int i10) {
            this.f76738b = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.w() != null) {
                int i10 = this.f76738b;
                c cVar = c.this;
                if (i10 > cVar.f76731o) {
                    cVar.w().onBufferingUpdate(this.f76738b);
                } else {
                    cVar.w().onBufferingUpdate(c.this.f76731o);
                }
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.E();
            if (c.this.w() != null) {
                c.this.w().onSeekComplete();
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f76741b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f76742c;

        e(int i10, int i11) {
            this.f76741b = i10;
            this.f76742c = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.E();
            if (c.this.w() != null) {
                c.this.w().onError(this.f76741b, this.f76742c);
            }
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f76744b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f76745c;

        f(int i10, int i11) {
            this.f76744b = i10;
            this.f76745c = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            if (cVar.f76734r) {
                int i10 = this.f76744b;
                if (i10 == 701) {
                    cVar.b0();
                } else if (i10 == 702) {
                    cVar.E();
                }
            }
            if (c.this.w() != null) {
                c.this.w().onInfo(this.f76744b, this.f76745c);
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.w() != null) {
                c.this.w().onVideoSizeChanged();
            }
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f76720d != null) {
                com.papa.gsyvideoplayer.utils.c.e("time out for error listener");
                c.this.w().onError(c.f76716y, c.f76716y);
            }
        }
    }

    private class i extends Handler {
        i(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i10 = message.what;
            if (i10 == 0) {
                c.this.R(message);
                return;
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                c.this.U(message);
                return;
            }
            com.papa.gsyvideoplayer.player.c cVar = c.this.f76725i;
            if (cVar != null) {
                cVar.release();
            }
            com.papa.gsyvideoplayer.cache.b bVar = c.this.f76726j;
            if (bVar != null) {
                bVar.release();
            }
            c cVar2 = c.this;
            cVar2.f76731o = 0;
            cVar2.W(cVar2.f76733q);
            c.this.E();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(Message message) {
        try {
            this.f76727k = 0;
            this.f76728l = 0;
            com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
            if (cVar != null) {
                cVar.release();
            }
            this.f76725i = M();
            com.papa.gsyvideoplayer.cache.b bVarI = I();
            this.f76726j = bVarI;
            if (bVarI != null) {
                bVarI.i(this);
            }
            com.papa.gsyvideoplayer.player.c cVar2 = this.f76725i;
            if (cVar2 instanceof com.papa.gsyvideoplayer.player.a) {
                ((com.papa.gsyvideoplayer.player.a) cVar2).k(this.f76722f);
            }
            this.f76725i.h(this.f76717a, message, this.f76723g, this.f76726j);
            W(this.f76733q);
            IMediaPlayer mediaPlayer = this.f76725i.getMediaPlayer();
            mediaPlayer.setOnCompletionListener(this);
            mediaPlayer.setOnBufferingUpdateListener(this);
            mediaPlayer.setScreenOnWhilePlaying(true);
            mediaPlayer.setOnPreparedListener(this);
            mediaPlayer.setOnSeekCompleteListener(this);
            mediaPlayer.setOnErrorListener(this);
            mediaPlayer.setOnInfoListener(this);
            mediaPlayer.setOnVideoSizeChangedListener(this);
            mediaPlayer.prepareAsync();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(Message message) {
        com.papa.gsyvideoplayer.player.c cVar;
        if (message.obj == null || (cVar = this.f76725i) == null) {
            return;
        }
        cVar.releaseSurface();
    }

    private void a0(Message message) {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            cVar.i(message);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public boolean A() {
        com.papa.gsyvideoplayer.cache.b bVar = this.f76726j;
        return bVar != null && bVar.f();
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void B(int i10) {
        this.f76729m = i10;
    }

    protected void E() {
        com.papa.gsyvideoplayer.utils.c.e("cancelTimeOutBuffer");
        if (this.f76734r) {
            this.f76719c.removeCallbacks(this.f76735s);
        }
    }

    public void F(Context context) {
        G(context, null, null);
    }

    public void G(Context context, @Nullable File file, @Nullable String str) {
        com.papa.gsyvideoplayer.cache.b bVar = this.f76726j;
        if (bVar != null) {
            bVar.e(context, file, str);
        } else if (I() != null) {
            I().e(context, file, str);
        }
    }

    public void H(Context context) {
        this.f76717a = context.getApplicationContext();
    }

    protected com.papa.gsyvideoplayer.cache.b I() {
        return com.papa.gsyvideoplayer.cache.a.a();
    }

    public com.papa.gsyvideoplayer.cache.b J() {
        return this.f76726j;
    }

    public com.papa.gsyvideoplayer.player.c K() {
        return this.f76725i;
    }

    public List<com.papa.gsyvideoplayer.model.c> L() {
        return this.f76723g;
    }

    protected com.papa.gsyvideoplayer.player.c M() {
        return com.papa.gsyvideoplayer.player.e.a();
    }

    public com.papa.gsyvideoplayer.player.b N() {
        return this.f76722f;
    }

    public int O() {
        return this.f76732p;
    }

    protected void P() {
        this.f76718b = new i(Looper.getMainLooper());
        this.f76719c = new Handler();
    }

    public void Q(Context context) {
        this.f76717a = context.getApplicationContext();
    }

    public boolean S() {
        return this.f76733q;
    }

    public boolean T() {
        return this.f76734r;
    }

    protected void V(Message message) {
        this.f76718b.sendMessage(message);
    }

    public void W(boolean z10) {
        this.f76733q = z10;
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            cVar.j(z10);
        }
    }

    public void X(List<com.papa.gsyvideoplayer.model.c> list) {
        this.f76723g = list;
    }

    public void Y(com.papa.gsyvideoplayer.player.b bVar) {
        this.f76722f = bVar;
    }

    public void Z(int i10, boolean z10) {
        this.f76732p = i10;
        this.f76734r = z10;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void a(float f10, boolean z10) {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            cVar.a(f10, z10);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public boolean b(Context context, File file, String str) {
        if (I() != null) {
            return I().b(context, file, str);
        }
        return false;
    }

    protected void b0() {
        com.papa.gsyvideoplayer.utils.c.e("startTimeOutBuffer");
        this.f76719c.postDelayed(this.f76735s, this.f76732p);
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void c(float f10, boolean z10) {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            cVar.c(f10, z10);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public long d() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            return cVar.d();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void e(Context context, File file, String str) {
        G(context, file, str);
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int f() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            return cVar.f();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public boolean g() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            return cVar.g();
        }
        return false;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public long getCurrentPosition() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            return cVar.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int getCurrentVideoHeight() {
        return this.f76728l;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int getCurrentVideoWidth() {
        return this.f76727k;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public long getDuration() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            return cVar.getDuration();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int getVideoHeight() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            return cVar.getVideoHeight();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int getVideoSarDen() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            return cVar.getVideoSarDen();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int getVideoSarNum() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            return cVar.getVideoSarNum();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int getVideoWidth() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            return cVar.getVideoWidth();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.cache.b.a
    public void h(File file, String str, int i10) {
        this.f76731o = i10;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void i(String str) {
        this.f76724h = str;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public boolean isPlaying() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            return cVar.isPlaying();
        }
        return false;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int j() {
        return this.f76729m;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void k(String str, Map<String, String> map, boolean z10, float f10, boolean z11, File file, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Message message = new Message();
        message.what = 0;
        message.obj = new com.papa.gsyvideoplayer.model.a(str, map, z10, f10, z11, file, str2);
        V(message);
        if (this.f76734r) {
            b0();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int l() {
        return this.f76730n;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public v7.a m() {
        WeakReference<v7.a> weakReference = this.f76721e;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int n() {
        return 10001;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void o(int i10) {
        this.f76728l = i10;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i10) {
        this.f76719c.post(new RunnableC0993c(i10));
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
    public void onCompletion(IMediaPlayer iMediaPlayer) {
        this.f76719c.post(new b());
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
    public boolean onError(IMediaPlayer iMediaPlayer, int i10, int i11) {
        this.f76719c.post(new e(i10, i11));
        return true;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    public boolean onInfo(IMediaPlayer iMediaPlayer, int i10, int i11) {
        this.f76719c.post(new f(i10, i11));
        return false;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
    public void onPrepared(IMediaPlayer iMediaPlayer) {
        this.f76719c.post(new a());
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(IMediaPlayer iMediaPlayer) {
        this.f76719c.post(new d());
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i10, int i11, int i12, int i13) {
        this.f76727k = iMediaPlayer.getVideoWidth();
        this.f76728l = iMediaPlayer.getVideoHeight();
        this.f76719c.post(new g());
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public com.papa.gsyvideoplayer.player.c p() {
        return this.f76725i;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void pause() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            cVar.pause();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void q(Surface surface) {
        Message message = new Message();
        message.what = 1;
        message.obj = surface;
        a0(message);
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void r(int i10) {
        this.f76727k = i10;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public String s() {
        return this.f76724h;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void seekTo(long j10) {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            cVar.seekTo(j10);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void start() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            cVar.start();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void stop() {
        com.papa.gsyvideoplayer.player.c cVar = this.f76725i;
        if (cVar != null) {
            cVar.stop();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void t(Surface surface) {
        Message message = new Message();
        message.what = 3;
        message.obj = surface;
        V(message);
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void u(String str, Map<String, String> map, boolean z10, float f10, boolean z11, File file) {
        k(str, map, z10, f10, z11, file, null);
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void v(int i10) {
        this.f76730n = i10;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public v7.a w() {
        WeakReference<v7.a> weakReference = this.f76720d;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void x(v7.a aVar) {
        if (aVar == null) {
            this.f76720d = null;
        } else {
            this.f76720d = new WeakReference<>(aVar);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void y() {
        Message message = new Message();
        message.what = 2;
        V(message);
        this.f76724h = "";
        this.f76730n = -22;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void z(v7.a aVar) {
        if (aVar == null) {
            this.f76721e = null;
        } else {
            this.f76721e = new WeakReference<>(aVar);
        }
    }
}
