package fm.jiecao.jcvideoplayer_lib;

import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import android.view.TextureView;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class b implements TextureView.SurfaceTextureListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnVideoSizeChangedListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f91273h = "JieCaoVideoPlayer";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static b f91274i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static JCResizeTextureView f91275j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static SurfaceTexture f91276k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f91277l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static boolean f91278m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static Map<String, String> f91279n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f91280o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f91281p = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MediaPlayer f91282b = new MediaPlayer();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f91283c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f91284d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    HandlerThread f91285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    g f91286f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Handler f91287g;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (fm.jiecao.jcvideoplayer_lib.f.b() != null) {
                fm.jiecao.jcvideoplayer_lib.f.b().p();
            }
        }
    }

    /* JADX INFO: renamed from: fm.jiecao.jcvideoplayer_lib.b$b, reason: collision with other inner class name */
    class RunnableC1163b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f91289b;

        RunnableC1163b(int i10) {
            this.f91289b = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (fm.jiecao.jcvideoplayer_lib.f.b() != null) {
                fm.jiecao.jcvideoplayer_lib.f.b().setBufferProgress(this.f91289b);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (fm.jiecao.jcvideoplayer_lib.f.b() != null) {
                fm.jiecao.jcvideoplayer_lib.f.b().u();
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f91292b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f91293c;

        d(int i10, int i11) {
            this.f91292b = i10;
            this.f91293c = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (fm.jiecao.jcvideoplayer_lib.f.b() != null) {
                fm.jiecao.jcvideoplayer_lib.f.b().r(this.f91292b, this.f91293c);
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f91295b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f91296c;

        e(int i10, int i11) {
            this.f91295b = i10;
            this.f91296c = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (fm.jiecao.jcvideoplayer_lib.f.b() != null) {
                fm.jiecao.jcvideoplayer_lib.f.b().t(this.f91295b, this.f91296c);
            }
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (fm.jiecao.jcvideoplayer_lib.f.b() != null) {
                fm.jiecao.jcvideoplayer_lib.f.b().E();
            }
        }
    }

    public class g extends Handler {
        public g(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i10 = message.what;
            if (i10 != 0) {
                if (i10 != 2) {
                    return;
                }
                b.this.f91282b.release();
                return;
            }
            try {
                b bVar = b.this;
                bVar.f91283c = 0;
                bVar.f91284d = 0;
                bVar.f91282b.release();
                b.this.f91282b = new MediaPlayer();
                b.this.f91282b.setAudioStreamType(3);
                b.this.f91282b.setLooping(b.f91278m);
                b bVar2 = b.this;
                bVar2.f91282b.setOnPreparedListener(bVar2);
                b bVar3 = b.this;
                bVar3.f91282b.setOnCompletionListener(bVar3);
                b bVar4 = b.this;
                bVar4.f91282b.setOnBufferingUpdateListener(bVar4);
                b.this.f91282b.setScreenOnWhilePlaying(true);
                b bVar5 = b.this;
                bVar5.f91282b.setOnSeekCompleteListener(bVar5);
                b bVar6 = b.this;
                bVar6.f91282b.setOnErrorListener(bVar6);
                b bVar7 = b.this;
                bVar7.f91282b.setOnInfoListener(bVar7);
                b bVar8 = b.this;
                bVar8.f91282b.setOnVideoSizeChangedListener(bVar8);
                b.this.f91282b.setVolume(0.0f, 0.0f);
                MediaPlayer.class.getDeclaredMethod("setDataSource", String.class, Map.class).invoke(b.this.f91282b, b.f91277l, b.f91279n);
                b.this.f91282b.prepareAsync();
                b.this.f91282b.setSurface(new Surface(b.f91276k));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public b() {
        HandlerThread handlerThread = new HandlerThread(f91273h);
        this.f91285e = handlerThread;
        handlerThread.start();
        this.f91286f = new g(this.f91285e.getLooper());
        this.f91287g = new Handler();
    }

    public static b b() {
        if (f91274i == null) {
            f91274i = new b();
        }
        return f91274i;
    }

    public Point a() {
        if (this.f91283c == 0 || this.f91284d == 0) {
            return null;
        }
        return new Point(this.f91283c, this.f91284d);
    }

    public void c() {
        d();
        Message message = new Message();
        message.what = 0;
        this.f91286f.sendMessage(message);
    }

    public void d() {
        Message message = new Message();
        message.what = 2;
        this.f91286f.sendMessage(message);
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
        this.f91287g.post(new RunnableC1163b(i10));
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.f91287g.post(new a());
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
        this.f91287g.post(new d(i10, i11));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
        this.f91287g.post(new e(i10, i11));
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.f91282b.start();
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        this.f91287g.post(new c());
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onSurfaceTextureAvailable [");
        sb2.append(fm.jiecao.jcvideoplayer_lib.f.b().hashCode());
        sb2.append("] ");
        SurfaceTexture surfaceTexture2 = f91276k;
        if (surfaceTexture2 != null) {
            f91275j.setSurfaceTexture(surfaceTexture2);
        } else {
            f91276k = surfaceTexture;
            c();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return f91276k == null;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onSurfaceTextureSizeChanged [");
        sb2.append(fm.jiecao.jcvideoplayer_lib.f.b().hashCode());
        sb2.append("] ");
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
        this.f91283c = i10;
        this.f91284d = i11;
        this.f91287g.post(new f());
    }
}
