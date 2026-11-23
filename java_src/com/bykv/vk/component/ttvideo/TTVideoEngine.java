package com.bykv.vk.component.ttvideo;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader;
import com.bykv.vk.component.ttvideo.log.d;
import com.bykv.vk.component.ttvideo.log.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.component.ttvideo.player.TTPlayerConfiger;
import com.bykv.vk.component.ttvideo.utils.EngineThreadPool;
import com.bykv.vk.component.ttvideo.utils.Error;
import com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog;
import com.kuaishou.weapon.p0.t;
import java.io.FileDescriptor;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class TTVideoEngine implements com.bykv.vk.component.ttvideo.log.a, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {
    public static final int ENGINE_STATE_ERROR = 4;
    public static final int ENGINE_STATE_PLAYER_RUNNING = 3;
    public static final int ENGINE_STATE_RELEASE = 5;
    public static final int ENGINE_STATE_UNKNOWN = 0;
    public static final int LOAD_STATE_ERROR = 3;
    public static final int LOAD_STATE_PLAYABLE = 1;
    public static final int LOAD_STATE_STALLED = 2;
    public static final int LOAD_STATE_UNKNOWN = 0;
    public static final int PLAYBACK_STATE_ERROR = 3;
    public static final int PLAYBACK_STATE_PAUSED = 2;
    public static final int PLAYBACK_STATE_PLAYING = 1;
    public static final int PLAYBACK_STATE_STOPPED = 0;
    public static final int PLAYER_BUFFERING_DATA_OF_MILLISECONDS = 118;
    public static final int PLAYER_BUFFERING_TIMEOUT = 11;
    public static final int PLAYER_MAX_BUFFERING_DATA_OF_MILLISECONDS = 202;
    public static final int PLAYER_NETWORK_TIMEOUT = 12;
    public static final int PLAYER_OPTION_ENABLE_DATALOADER = 160;
    public static final int PLAYER_OPTION_NOTIFY_BUFFERING_DIRECTLY = 322;
    public static final int PLAYER_OPTION_OUTPUT_LOG = 472;
    public static final int PLAYER_TIME_BASE = 1000000;
    public static final int PLAYER_TYPE_OS = 1;
    public static final int PLAYER_TYPE_OWN = 0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static boolean f23193l0;
    VideoEngineSimpleCallback B;
    SeekCompletionListener C;
    private final Context D;
    private Surface E;
    private SurfaceHolder F;
    private final com.bykv.vk.component.ttvideo.log.b G;
    private MediaPlayer H;
    private Handler I;
    private boolean K;
    private final com.bykv.vk.component.ttvideo.utils.a W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f23194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f23196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f23198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f23200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f23202e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private long f23203e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private long f23205f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private FileDescriptor f23207g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f23208h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private com.bykv.vk.component.ttvideo.b f23209h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f23210i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f23212j;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f23219o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f23220p;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f23224t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f23226v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f23228x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f23229y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f23230z;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f23204f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f23206g = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f23214k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f23216l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f23217m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f23218n = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f23221q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f23222r = 30;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f23223s = 5000;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f23225u = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f23227w = true;
    private final HashMap<String, String> A = new HashMap<>();
    private int J = 0;
    private float L = -1.0f;
    private boolean M = false;
    private String N = "";
    private boolean O = false;
    private String P = "";
    private int Q = 0;
    private boolean R = false;
    private Error S = null;
    private boolean T = false;
    private boolean U = false;
    private int V = -1;
    private boolean X = false;
    private final Map<String, String> Y = new HashMap();
    private final List<String> Z = new ArrayList();

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private String f23195a0 = null;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private boolean f23197b0 = false;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private long f23199c0 = 0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private int f23201d0 = -1;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private int f23211i0 = 0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private int f23213j0 = 0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private int f23215k0 = 5000;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MediaPlayer f23231a;

        a(TTVideoEngine tTVideoEngine, MediaPlayer mediaPlayer) {
            this.f23231a = mediaPlayer;
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaPlayer mediaPlayer = this.f23231a;
            if (mediaPlayer != null) {
                try {
                    mediaPlayer.release();
                } catch (Exception e10) {
                    TTVideoEngineLog.i("TTVideoEngine", "release Exception " + e10);
                }
            }
        }
    }

    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            VideoEngineSimpleCallback videoEngineSimpleCallback;
            super.handleMessage(message);
            if (message.what == 10) {
                String str = (String) message.obj;
                long j10 = message.arg1;
                if (TTVideoEngine.this.f23196b == 5 || !TTVideoEngine.this.Y.containsKey(str) || (videoEngineSimpleCallback = TTVideoEngine.this.B) == null) {
                    return;
                }
                videoEngineSimpleCallback.onMDLHitCache(str, j10);
            }
        }
    }

    private static class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<String, String> f23233a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference<TTVideoEngine> f23234b;

        public c(TTVideoEngine tTVideoEngine, Map<String, String> map) {
            this.f23234b = new WeakReference<>(tTVideoEngine);
            this.f23233a = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            Map<String, String> map;
            TTVideoEngine tTVideoEngine = this.f23234b.get();
            if (tTVideoEngine == null || tTVideoEngine.f23196b == 5 || (map = this.f23233a) == null || map.size() <= 0) {
                return;
            }
            for (String str : this.f23233a.keySet()) {
                String str2 = this.f23233a.get(str);
                long cacheFileSizeByFilePath = !TextUtils.isEmpty(str2) ? TTVideoEngine.getCacheFileSizeByFilePath(str, str2) : TTVideoEngine.getCacheFileSize(str);
                if (tTVideoEngine.I != null) {
                    int i10 = (int) cacheFileSizeByFilePath;
                    tTVideoEngine.I.sendMessage(Message.obtain(tTVideoEngine.I, 10, i10, i10, str));
                }
            }
        }
    }

    public TTVideoEngine(Context context, int i10) {
        TTVideoEngineLog.i("TTVideoEngine", "init, type:" + i10 + ", context:" + context + ", this:" + this);
        this.D = context;
        this.f23230z = i10;
        this.f23224t = f23193l0;
        this.G = new d(context, this);
        this.W = new com.bykv.vk.component.ttvideo.utils.a();
        e.instance.a(context);
    }

    public static void addTask(PreloaderURLItem preloaderURLItem) {
        DataLoaderHelper.getDataLoader().addTask(preloaderURLItem);
    }

    public static void cancelAllPreloadTasks() {
        DataLoaderHelper.getDataLoader().cancelAllTasks();
    }

    public static void cancelPreloadTask(String str) {
        DataLoaderHelper.getDataLoader().cancelTask(str);
    }

    public static void clearAllCaches() {
        DataLoaderHelper.getDataLoader().clearAllCaches();
    }

    public static void closeDataLoader() {
        DataLoaderHelper.getDataLoader().close();
    }

    private void d() {
        DataLoaderHelper.getDataLoader()._addEngine(this, this.f23195a0);
    }

    private void e() {
        DataLoaderHelper.getDataLoader()._removeEngine(this, this.f23195a0);
        Iterator<String> it2 = this.Y.keySet().iterator();
        while (it2.hasNext()) {
            DataLoaderHelper.getDataLoader()._removePlayTask(it2.next());
        }
        n();
    }

    private int f() {
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer == null) {
            return 0;
        }
        return mediaPlayer.getCurrentPosition();
    }

    public static void forceRemoveCacheFile(String str) {
        DataLoaderHelper.getDataLoader().removeCacheFile(str, true);
    }

    private void g() {
        if (this.I != null) {
            return;
        }
        this.I = new b(getLooper());
    }

    public static long getCacheFileSize(String str) {
        return DataLoaderHelper.getDataLoader().getCacheSize(str);
    }

    public static long getCacheFileSizeByFilePath(String str, String str2) {
        return DataLoaderHelper.getDataLoader().getCacheSizeByFilePath(str, str2);
    }

    public static DataLoaderHelper.DataLoaderCacheInfo getCacheInfoByFilePath(String str, String str2) {
        return DataLoaderHelper.getDataLoader().getCacheInfoByFilePath(str, str2);
    }

    public static String getEngineVersion() {
        return "1.0.2";
    }

    public static Looper getLooper() {
        return Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper();
    }

    private void h() {
        if (this.G != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f23199c0 = jCurrentTimeMillis;
            this.G.a(jCurrentTimeMillis, (String) null);
        }
    }

    private void i() {
        if (this.f23194a) {
            return;
        }
        this.G.a();
        this.f23194a = true;
    }

    private void j() {
        com.bykv.vk.component.ttvideo.utils.a aVar = this.W;
        if (aVar != null) {
            aVar.a();
        }
        if (this.M || this.O || this.f23207g0 != null) {
            h();
            b(this.M ? this.N : this.P);
            a(this.M ? this.N : this.P, this.A);
        }
    }

    private void k() {
        TTVideoEngineLog.i("TTVideoEngine", "start to render,this:".concat(String.valueOf(this)));
        if (this.T) {
            e(1);
        }
        i();
        if (!this.f23219o) {
            this.f23219o = true;
        }
        this.f23197b0 = true;
        a(1, -1);
        com.bykv.vk.component.ttvideo.utils.a aVar = this.W;
        if (aVar != null) {
            aVar.d();
        }
        if (this.R) {
            if (this.f23202e != 0 && isSystemPlayer()) {
                a(this.f23202e);
            }
            this.R = false;
        }
        if (this.J != 0 && isSystemPlayer()) {
            a(this.J);
        }
        this.J = 0;
        this.Q = 0;
        if (this.B != null) {
            TTVideoEngineLog.i("TTVideoEngine", "notify render start");
            this.B.onRenderStart(this);
        }
    }

    private void l() {
        if (p()) {
            if (this.M || this.O || this.f23207g0 != null) {
                h();
                a(this.M ? this.N : this.P, this.A);
                return;
            }
            return;
        }
        if (this.X || (this.f23214k == 0 && this.f23199c0 == 0)) {
            h();
            com.bykv.vk.component.ttvideo.utils.a aVar = this.W;
            if (aVar != null) {
                aVar.a();
            }
        }
        o();
    }

    private void m() {
        TTVideoEngineLog.i("TTVideoEngine", "reset, this:".concat(String.valueOf(this)));
        this.T = false;
        this.U = false;
        this.f23208h = false;
        this.A.clear();
        a(true, 6);
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer != null) {
            mediaPlayer.setSurface(null);
            this.H.reset();
        }
        this.f23194a = false;
        this.f23219o = false;
        this.f23220p = false;
        this.R = false;
        this.G.reset();
    }

    private void n() {
        this.Y.clear();
        this.f23195a0 = null;
    }

    private void o() {
        TTVideoEngineLog.i("TTVideoEngine", "_resumeVideo, shouldplay:" + this.T + ", mediaplayer:" + this.H + ", prepared:" + this.f23208h);
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer == null || !this.T) {
            return;
        }
        mediaPlayer.setScreenOnWhilePlaying(this.f23227w);
        int i10 = this.f23228x;
        if (i10 != 0) {
            this.H.setWakeMode(this.D, i10);
        }
        if (!this.f23208h) {
            this.f23210i = false;
            return;
        }
        this.H.setIntOption(100, this.J);
        this.H.start();
        com.bykv.vk.component.ttvideo.utils.a aVar = this.W;
        if (aVar != null && this.f23194a) {
            aVar.d();
        }
        if (this.H.getIntOption(62, -100) == 0 && !this.f23219o && (this.f23214k == 0 || this.X)) {
            k();
        } else {
            e(1);
        }
    }

    private boolean p() {
        int i10 = this.f23214k;
        if ((i10 == 0 || i10 == 3) && !this.f23208h) {
            return true;
        }
        return (this.H == null || !isSystemPlayer() || this.f23208h) ? false : true;
    }

    public static void removeCacheFile(String str) {
        DataLoaderHelper.getDataLoader().removeCacheFile(str, false);
    }

    public static void setCacheInfoLists(String[] strArr, long[] jArr) {
        DataLoaderHelper.getDataLoader().setCacheInfoLists(strArr, jArr);
    }

    public static void setIntValue(int i10, int i11) {
        DataLoaderHelper.getDataLoader().setIntValue(i10, i11);
    }

    public static void setStringValue(int i10, String str) {
        DataLoaderHelper.getDataLoader().setStringValue(i10, str);
    }

    public static void setVideoEventUploader(VideoEventEngineUploader videoEventEngineUploader) {
        TTVideoEngineLog.i("TTVideoEngine", "setVideoEventUploader uploader");
        e.instance.a(videoEventEngineUploader);
        DataLoaderHelper.getDataLoader().setEngineUploader(videoEventEngineUploader);
    }

    public static void startDataLoader(Context context) {
        DataLoaderHelper.getDataLoader().setContext(context);
        DataLoaderHelper.getDataLoader().start();
        f23193l0 = true;
    }

    public int getBufferingType() {
        return this.V;
    }

    public int getCurrentPlaybackTime() {
        TTVideoEngineLog.i("TTVideoEngine", "getCurrentPlaybackTime state:" + this.f23196b);
        int i10 = this.f23196b;
        if (i10 == 3) {
            return f();
        }
        if (i10 == 4) {
            return this.f23202e;
        }
        return -1;
    }

    public int getCurrentPlaybackTimeAsync() {
        return isSystemPlayer() ? getCurrentPlaybackTime() : this.f23201d0;
    }

    public int getDuration() {
        return this.f23217m;
    }

    public int getLoadState() {
        return this.f23216l;
    }

    public int getLoadedProgress() {
        return this.f23218n;
    }

    public int getPlaybackState() {
        return this.f23214k;
    }

    public boolean isLooping() {
        return this.f23226v;
    }

    public boolean isMute() {
        MediaPlayer mediaPlayer = this.H;
        return mediaPlayer != null ? mediaPlayer.isMute() : this.K;
    }

    public boolean isSystemPlayer() {
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer == null) {
            return this.f23230z == 1;
        }
        return mediaPlayer.isOSPlayer();
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
        if (this.M) {
            i10 = 100;
        }
        this.f23218n = i10;
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onBufferingUpdate(this, i10);
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        TTVideoEngineLog.i("TTVideoEngine", "receive onCompletion,this:".concat(String.valueOf(this)));
        if (!this.f23226v) {
            this.X = true;
            e(0);
            com.bykv.vk.component.ttvideo.utils.a aVar = this.W;
            if (aVar != null) {
                aVar.e();
                this.G.b(this.W.b());
            }
            this.G.a(3);
            this.f23194a = false;
            this.f23219o = false;
            this.f23220p = false;
            this.f23202e = 0;
            this.R = false;
            this.f23212j = false;
        }
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onCompletion(this);
        }
        if (mediaPlayer != null && mediaPlayer.isOSPlayer()) {
            this.f23208h = false;
        }
        this.J = 0;
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
        com.bykv.vk.component.ttvideo.utils.a aVar = this.W;
        if (aVar != null) {
            aVar.e();
        }
        e(3);
        a(3, -1);
        Error error = new Error((mediaPlayer == null || !mediaPlayer.isOSPlayer()) ? Error.VideoOwnPlayer : Error.VideoOSPlayer, i10, i11, null);
        this.S = error;
        b(error);
        return true;
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
        if (i10 == -268435438) {
            TTVideoEngineLog.i("TTVideoEngine", "player position update ".concat(String.valueOf(i11)));
            this.f23201d0 = i11;
        } else if (i10 == 3) {
            TTVideoEngineLog.i("TTVideoEngine", "player callback render start");
            k();
        } else if (i10 == 801) {
            c(false);
        } else if (i10 == 251658248) {
            d(i11);
        } else if (i10 == 251658252) {
            c();
        } else if (i10 == 701) {
            c(i11);
        } else if (i10 == 702) {
            b(i11);
        }
        return false;
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        TTVideoEngineLog.i("TTVideoEngine", "onPrepared");
        if (this.U) {
            return;
        }
        if (mediaPlayer == null) {
            TTVideoEngineLog.e("TTVideoEngine", "onPrepared mediaPlayer is null!");
            return;
        }
        TTVideoEngineLog.i("TTVideoEngine", "onPrepared videoCodecId " + mediaPlayer.getIntOption(141, -1));
        this.S = null;
        int duration = mediaPlayer.getDuration();
        this.f23217m = duration;
        this.f23208h = true;
        this.G.e(duration);
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onPrepared(this);
        }
        if ((this.f23210i || !this.T) && this.f23204f) {
            return;
        }
        mediaPlayer.start();
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        c(true);
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
        TTVideoEngineLog.i("TTVideoEngine", "video size changed = " + i10 + ", " + i11);
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onVideoSizeChanged(this, i10, i11);
        }
    }

    public void pause() {
        TTVideoEngineLog.i("TTVideoEngine", "pause, ".concat(String.valueOf(this)));
        this.T = false;
        if (!this.f23208h) {
            this.f23210i = true;
            e(2);
            return;
        }
        if (this.H != null) {
            TTVideoEngineLog.i("TTVideoEngine", "player will pause");
            this.H.pause();
            e(2);
        }
        com.bykv.vk.component.ttvideo.utils.a aVar = this.W;
        if (aVar != null) {
            aVar.e();
        }
    }

    public void play() {
        TTVideoEngineLog.i("TTVideoEngine", "play, ".concat(String.valueOf(this)));
        if (this.f23196b == 5) {
            TTVideoEngineLog.e("TTVideoEngine", "already released, return");
            return;
        }
        boolean z10 = true;
        this.T = true;
        this.U = false;
        this.f23200d = false;
        if (!this.f23204f && this.f23199c0 <= 0 && !this.f23208h) {
            z10 = false;
        }
        a(z10);
        this.X = false;
    }

    public void prepare() {
        TTVideoEngineLog.i("TTVideoEngine", "prepare, ".concat(String.valueOf(this)));
        this.f23204f = false;
        this.T = false;
        this.U = false;
        this.f23200d = false;
        a(false);
        this.X = false;
    }

    public void release() {
        TTVideoEngineLog.i("TTVideoEngine", "release, ".concat(String.valueOf(this)));
        this.U = true;
        this.T = false;
        a(false, 1);
        MediaPlayer mediaPlayer = this.H;
        this.H = null;
        if (mediaPlayer != null) {
            EngineThreadPool.a().execute(new a(this, mediaPlayer));
        }
        e();
        this.f23196b = 5;
    }

    public void reset() {
        b();
    }

    public void seekTo(int i10, SeekCompletionListener seekCompletionListener) {
        TTVideoEngineLog.i("TTVideoEngine", "seek to time:".concat(String.valueOf(i10)));
        this.C = seekCompletionListener;
        a(i10);
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j10, long j11) {
        this.f23203e0 = j10;
        this.f23205f0 = j11;
        b();
        this.f23207g0 = fileDescriptor;
    }

    public void setDirectURL(String str) {
        a(str);
    }

    public void setDirectUrlUseDataLoader(String str, String str2) {
        setDirectUrlUseDataLoader(str, str2, this.f23229y);
    }

    public void setIntOption(int i10, int i11) {
        MediaPlayer mediaPlayer;
        int i12;
        if (i10 == 11) {
            this.f23222r = i11;
            mediaPlayer = this.H;
            if (mediaPlayer != null) {
                i12 = 81;
                mediaPlayer.setIntOption(i12, i11);
            }
        } else if (i10 == 12) {
            this.f23223s = i11;
            MediaPlayer mediaPlayer2 = this.H;
            if (mediaPlayer2 != null) {
                mediaPlayer2.setIntOption(9, 1000000 * i11);
            }
        } else if (i10 == 118) {
            this.f23213j0 = i11;
            mediaPlayer = this.H;
            if (mediaPlayer != null) {
                i12 = 86;
                mediaPlayer.setIntOption(i12, i11);
            }
        } else if (i10 == 160) {
            this.f23224t = i11 > 0;
        } else if (i10 == 202) {
            this.f23215k0 = i11;
            mediaPlayer = this.H;
            if (mediaPlayer != null) {
                i12 = 110;
                mediaPlayer.setIntOption(i12, i11);
            }
        } else if (i10 == 322) {
            this.f23211i0 = i11;
            mediaPlayer = this.H;
            if (mediaPlayer != null) {
                i12 = 211;
                mediaPlayer.setIntOption(i12, i11);
            }
        } else if (i10 == 472) {
            this.f23221q = i11;
            MediaPlayer mediaPlayer3 = this.H;
            if (mediaPlayer3 != null) {
                mediaPlayer3.setIntOption(223, i11);
            }
            DataLoaderHelper.getDataLoader().setIntValue(512, i11);
        }
        TTVideoEngineLog.i("TTVideoEngine", "set int option key:" + i10 + " value:" + i11);
    }

    public void setIsMute(boolean z10) {
        TTVideoEngineLog.i("TTVideoEngine", String.format("setIsMute:%s", Boolean.valueOf(z10)));
        this.K = z10;
        b(z10);
    }

    public void setLocalURL(String str) {
        if (str != null && !str.equals(this.N)) {
            TTVideoEngineLog.i("TTVideoEngine", String.format("set local url:%s", str));
            b();
        }
        this.f23212j = false;
        this.M = true;
        this.N = str;
    }

    public void setLooping(boolean z10) {
        TTVideoEngineLog.i("TTVideoEngine", "setLooping:".concat(String.valueOf(z10)));
        this.f23226v = z10;
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer != null) {
            mediaPlayer.setLooping(z10);
        }
    }

    public void setMaxRetryCount(int i10) {
        this.f23225u = i10;
    }

    public void setScreenOnWhilePlaying(boolean z10) {
        TTVideoEngineLog.i("TTVideoEngine", "setScreenOnWhilePlaying:".concat(String.valueOf(z10)));
        this.f23227w = z10;
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer != null) {
            mediaPlayer.setScreenOnWhilePlaying(z10);
        }
    }

    public void setStartTime(int i10) {
        TTVideoEngineLog.i("TTVideoEngine", "setStartTime:".concat(String.valueOf(i10)));
        this.J = i10;
    }

    public void setSurface(Surface surface) {
        TTVideoEngineLog.i("TTVideoEngine", "setSurface surface:" + surface + ", pre-surface:" + this.E + ", this:" + this);
        a(surface);
    }

    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        Surface surface;
        TTVideoEngineLog.i("TTVideoEngine", "setSurfaceHolder = " + surfaceHolder + ", this:" + this);
        this.F = surfaceHolder;
        if (surfaceHolder == null) {
            surface = null;
        } else {
            com.bykv.vk.component.ttvideo.b bVar = new com.bykv.vk.component.ttvideo.b(this);
            this.f23209h0 = bVar;
            this.F.addCallback(bVar);
            surface = this.F.getSurface();
        }
        a(surface);
    }

    public void setTrackVolume(float f10) {
        TTVideoEngineLog.i("TTVideoEngine", "setTrackVolume ".concat(String.valueOf(f10)));
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer == null) {
            return;
        }
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        this.L = f10;
        mediaPlayer.setVolume(f10, f10);
    }

    public void setVideoEngineSimpleCallback(VideoEngineSimpleCallback videoEngineSimpleCallback) {
        this.B = videoEngineSimpleCallback;
    }

    public void setWakeMode(int i10) {
        TTVideoEngineLog.i("TTVideoEngine", "setWakeMode:".concat(String.valueOf(i10)));
        this.f23228x = i10;
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer != null) {
            mediaPlayer.setWakeMode(this.D, i10);
        }
    }

    public void start() {
        TTVideoEngineLog.i("TTVideoEngine", "start, ".concat(String.valueOf(this)));
        this.T = true;
        this.U = false;
        this.f23200d = false;
        a(true);
        this.X = false;
    }

    public void stop() {
        TTVideoEngineLog.i("TTVideoEngine", "stop, ".concat(String.valueOf(this)));
        this.T = false;
        this.f23197b0 = false;
        this.U = true;
        a(true, 0);
        e();
    }

    @Override // com.bykv.vk.component.ttvideo.log.a
    public Map versionInfo() {
        HashMap map = new HashMap();
        String value = TTPlayerConfiger.getValue(14, "");
        TTVideoEngineLog.i("TTVideoEngine", "SDK version:1.0.2, player version:".concat(String.valueOf(value)));
        map.put(t.f74899x, value);
        map.put("sdk_version", "1.0.2");
        map.put(x.a.f97582j, "5.6");
        return map;
    }

    private String a(String str, String str2, long j10, String[] strArr, String str3) {
        String str_proxyUrl = DataLoaderHelper.getDataLoader()._proxyUrl(str, str2, j10, strArr, str3);
        if (!TextUtils.isEmpty(str_proxyUrl)) {
            TTVideoEngineLog.i("TTVideoEngine", "_mdlUrl get proxyUrl: key = " + str + ", videoId = " + str2);
            if (TextUtils.isEmpty(str2)) {
                str2 = str;
            }
            this.f23195a0 = str2;
            if (!TextUtils.isEmpty(str)) {
                this.Y.put(str, str3);
            }
            d();
        }
        return str_proxyUrl;
    }

    private void b() {
        this.M = false;
        this.O = false;
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer != null && mediaPlayer.getPlayerType() == 0) {
            this.H.release();
            this.H = null;
        }
        m();
        this.f23196b = 0;
        this.Q = 0;
        this.P = null;
        this.N = null;
        this.f23229y = null;
        this.f23207g0 = null;
        this.f23197b0 = false;
        this.f23194a = false;
        this.f23219o = false;
        this.f23220p = false;
        this.W.c();
        this.X = false;
        this.f23199c0 = 0L;
        this.f23201d0 = -1;
        this.Z.clear();
        this.f23200d = false;
        this.f23206g = true;
        this.f23202e = 0;
    }

    private void c() {
        TTVideoEngineLog.i("TTVideoEngine", "_audioRenderStart, this:".concat(String.valueOf(this)));
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer == null) {
            return;
        }
        if (!this.f23220p) {
            this.f23220p = true;
        }
        if (!this.f23194a && mediaPlayer.getIntOption(62, -100) == 0 && !this.f23210i && this.T && this.f23204f) {
            k();
        }
    }

    private void d(int i10) {
        TTVideoEngineLog.i("TTVideoEngine", "render seek complete:".concat(String.valueOf(i10)));
        this.G.a();
        if (this.f23198c) {
            this.f23198c = false;
        }
        if (this.B != null) {
            TTVideoEngineLog.i("TTVideoEngine", "render seek complete call back ".concat(String.valueOf(i10)));
            this.B.onRenderSeekComplete(i10);
        }
    }

    private void e(int i10) {
        if (this.f23214k != i10) {
            TTVideoEngineLog.i("TTVideoEngine", "playback state changed prev:" + this.f23214k + ", new:" + i10);
            this.f23214k = i10;
            VideoEngineSimpleCallback videoEngineSimpleCallback = this.B;
            if (videoEngineSimpleCallback != null) {
                videoEngineSimpleCallback.onPlaybackStateChanged(this, i10);
            }
        }
    }

    public void setDirectUrlUseDataLoader(String str, String str2, String str3) {
        setDirectUrlUseDataLoader(str, str2, str3, (String) null);
    }

    private void b(int i10) {
        TTVideoEngineLog.i("TTVideoEngine", "buffering end,this:" + this + ", code:" + i10);
        com.bykv.vk.component.ttvideo.utils.a aVar = this.W;
        if (aVar != null && this.f23194a) {
            aVar.d();
        }
        this.V = -1;
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onBufferEnd(i10);
        }
        a(1, i10);
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
    private void c(int i10) {
        TTVideoEngineLog.i("TTVideoEngine", "buffering start,this:" + this + ", code:" + i10);
        com.bykv.vk.component.ttvideo.utils.a aVar = this.W;
        if (aVar != null) {
            aVar.e();
        }
        boolean z10 = this.f23197b0;
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onBufferStart(i10, z10 ? 1 : 0, 0);
        }
        a(2, i10);
    }

    void a() {
        if (this.B != null) {
            TTVideoEngineLog.i("TTVideoEngine", "notify cache end. source id: " + this.f23195a0);
            this.B.onUseMDLCacheEnd();
        }
    }

    public void setDirectUrlUseDataLoader(String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        setDirectUrlUseDataLoader(new String[]{str}, str2, str3, str4);
    }

    private void b(Error error) {
        TTVideoEngineLog.i("TTVideoEngine", "videoEngine failed:" + error.toString());
        if (this.f23200d) {
            this.f23196b = 0;
            return;
        }
        int iF = f();
        if (!this.R) {
            int i10 = this.J;
            if (i10 != 0) {
                this.f23202e = i10;
                this.J = 0;
            } else if (!isSystemPlayer() || (isSystemPlayer() && this.f23208h)) {
                int i11 = this.f23217m;
                if (i11 <= 0 || iF - i11 <= -1000) {
                    this.f23202e = iF;
                } else {
                    this.f23202e = 0;
                }
            }
        }
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer != null && mediaPlayer.isOSPlayer()) {
            this.H.release();
            this.H = null;
            this.f23204f = true;
            a(error);
            return;
        }
        this.f23196b = 4;
        if (this.Q >= this.f23225u) {
            TTVideoEngineLog.e("TTVideoEngine", "videoEngine retry failed");
            a(error);
            return;
        }
        if (error.notNeedRetry()) {
            TTVideoEngineLog.e("TTVideoEngine", "not need retry");
            a(error);
            return;
        }
        this.R = true;
        if (this.Q == this.f23225u - 1 || error.needFallbackOS()) {
            MediaPlayer mediaPlayer2 = this.H;
            if (mediaPlayer2 != null) {
                mediaPlayer2.release();
                this.H = null;
            }
            this.f23230z = 1;
        }
        this.G.a(error, 0, 0);
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onRetry(this.f23230z);
        }
        this.Q++;
        a(this.M ? this.N : this.P, this.A);
    }

    private void c(boolean z10) {
        TTVideoEngineLog.i("TTVideoEngine", "seek complete");
        com.bykv.vk.component.ttvideo.utils.a aVar = this.W;
        if (aVar != null && z10 && this.f23194a) {
            aVar.d();
        }
        SeekCompletionListener seekCompletionListener = this.C;
        if (seekCompletionListener != null) {
            seekCompletionListener.onCompletion(z10);
            this.C = null;
        }
    }

    void a(int i10) {
        com.bykv.vk.component.ttvideo.utils.a aVar;
        TTVideoEngineLog.i("TTVideoEngine", "_seekTo:".concat(String.valueOf(i10)));
        if (this.H == null || !this.f23212j) {
            c(false);
            return;
        }
        if (!this.f23198c && (aVar = this.W) != null) {
            aVar.e();
        }
        this.f23198c = true;
        this.H.seekTo(i10);
    }

    public void setDirectUrlUseDataLoader(String[] strArr, String str, String str2, String str3) {
        if (strArr == null || strArr.length == 0 || TextUtils.isEmpty(strArr[0])) {
            TTVideoEngineLog.e("TTVideoEngine", "invalid urls list, it is empty");
            return;
        }
        this.f23229y = str2;
        if (TextUtils.isEmpty(str) || !this.f23224t) {
            a(strArr[0]);
            return;
        }
        n();
        TTVideoEngineLog.i("TTVideoEngine", "setDirectUrlUseDataLoader key:" + str + ", videoId:" + str2 + ", filePath:" + str3);
        String strA = a(str, str2, 0L, strArr, str3);
        if (!this.Z.contains(str)) {
            this.Z.add(str);
        }
        if (TextUtils.isEmpty(strA)) {
            setDirectURL(strArr[0]);
        } else {
            setDirectURL(strA);
        }
    }

    private void a(int i10, int i11) {
        if (this.f23216l != i10) {
            TTVideoEngineLog.i("TTVideoEngine", "load state changed prev:" + this.f23216l + ", new:" + i10);
            if (i10 == 2 && this.f23194a && !this.f23198c && this.f23216l != 3) {
                this.V = i11;
            }
            this.f23216l = i10;
            VideoEngineSimpleCallback videoEngineSimpleCallback = this.B;
            if (videoEngineSimpleCallback != null) {
                if (this.T || i10 != 3) {
                    videoEngineSimpleCallback.onLoadStateChanged(this, i10);
                }
            }
        }
    }

    private void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f23206g) {
            this.f23206g = false;
            this.G.a(str, "");
        }
        this.G.a(str);
    }

    void a(Surface surface) {
        TTVideoEngineLog.i("TTVideoEngine", "_doSetPlayerSurface surface:" + surface + ", pre-surface:" + this.E + ", this:" + this);
        this.E = surface;
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer != null) {
            mediaPlayer.setSurface(surface);
        }
    }

    void b(boolean z10) {
        MediaPlayer mediaPlayer = this.H;
        if (mediaPlayer != null) {
            mediaPlayer.setIsMute(z10);
        }
    }

    private void a(Error error) {
        com.bykv.vk.component.ttvideo.utils.a aVar = this.W;
        if (aVar != null) {
            this.G.b(aVar.b());
        }
        this.G.a(error, 0);
        this.f23212j = false;
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onError(error);
        }
        this.Q = 0;
    }

    void a(String str) {
        if (str != null && !str.equals(this.P)) {
            TTVideoEngineLog.i("TTVideoEngine", String.format("set direct url:%s", str));
            b();
        }
        this.f23212j = false;
        this.O = true;
        this.P = str;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x01ac  */
    private void a(String str, HashMap map) {
        Surface surface;
        VideoEngineSimpleCallback videoEngineSimpleCallback;
        String str2 = Error.VideoOSPlayer;
        if (this.U) {
            TTVideoEngineLog.w("TTVideoEngine", "_playInternal should stop");
            return;
        }
        if (this.H != null && isSystemPlayer()) {
            this.H.release();
            this.H = null;
            this.f23197b0 = false;
        }
        b(str);
        if (this.H == null) {
            MediaPlayer mediaPlayerA = com.bykv.vk.component.ttvideo.a.a(this.D, this.f23230z);
            this.H = mediaPlayerA;
            int playerType = mediaPlayerA.getPlayerType();
            if (playerType == 0) {
                this.f23230z = 1;
            } else if (playerType == 1) {
                this.f23230z = 0;
            }
            this.H.setOnPreparedListener(this);
            this.H.setOnBufferingUpdateListener(this);
            this.H.setOnCompletionListener(this);
            this.H.setOnErrorListener(this);
            this.H.setOnSeekCompleteListener(this);
            this.H.setOnInfoListener(this);
            this.H.setOnVideoSizeChangedListener(this);
            b(this.K);
            this.f23208h = false;
        } else if (this.S != null) {
            TTVideoEngineLog.i("TTVideoEngine", "mediaPlayer reset, surface holder:" + this.F + " ,surface empty:" + this.E);
            this.H.reset();
            this.f23208h = false;
            this.S = null;
        }
        this.H.setIntOption(100, this.J);
        this.H.setIntOption(82, 1);
        this.H.setIntOption(59, 1);
        this.H.setIntOption(97, 1);
        this.H.setIntOption(223, this.f23221q);
        this.H.setIntOption(81, this.f23222r);
        this.H.setIntOption(9, this.f23223s * 1000000);
        this.H.setIntOption(196, !this.f23204f ? 1 : 0);
        this.H.setIntOption(94, 1);
        float f10 = this.L;
        if (f10 >= 0.0f) {
            this.H.setVolume(f10, f10);
        }
        this.H.setIntOption(86, this.f23213j0);
        this.H.setIntOption(110, this.f23215k0);
        this.H.setIntOption(211, this.f23211i0);
        if (this.f23224t) {
            EngineThreadPool.a().execute(new c(this, new HashMap(this.Y)));
        }
        try {
            this.H.setScreenOnWhilePlaying(this.f23227w);
            int i10 = this.f23228x;
            if (i10 != 0) {
                this.H.setWakeMode(this.D, i10);
            }
            this.H.setLooping(this.f23226v);
            FileDescriptor fileDescriptor = this.f23207g0;
            if (fileDescriptor != null) {
                this.H.setDataSource(fileDescriptor, this.f23203e0, this.f23205f0);
            } else {
                if (map == null) {
                    map = new HashMap();
                }
                this.H.setDataSource(this.D, Uri.parse(str), map);
            }
            if (!TextUtils.isEmpty(this.f23229y)) {
                this.H.setStringOption(205, this.f23229y);
            }
            if (this.R) {
                this.H.setIntOption(100, this.f23202e);
            }
            if (this.f23208h) {
                o();
            } else {
                try {
                    if (this.F != null) {
                        if (this.f23209h0 == null) {
                            com.bykv.vk.component.ttvideo.b bVar = new com.bykv.vk.component.ttvideo.b(this);
                            this.f23209h0 = bVar;
                            this.F.addCallback(bVar);
                        }
                        surface = this.F.getSurface();
                    } else {
                        surface = this.E;
                        if (surface != null) {
                        }
                        this.H.prepareAsync();
                        videoEngineSimpleCallback = this.B;
                        if (videoEngineSimpleCallback != null) {
                            videoEngineSimpleCallback.onPrepare(this);
                        }
                    }
                    this.H.prepareAsync();
                    videoEngineSimpleCallback = this.B;
                    if (videoEngineSimpleCallback != null) {
                        videoEngineSimpleCallback.onPrepare(this);
                    }
                } catch (Exception e10) {
                    if (!this.H.isOSPlayer()) {
                        str2 = Error.VideoOwnPlayer;
                    }
                    b(new Error(str2, Error.PlayerStateIllegal, e10.toString()));
                    return;
                }
                a(surface);
            }
            this.f23196b = 3;
        } catch (Throwable th) {
            if (!this.H.isOSPlayer()) {
                str2 = Error.VideoOwnPlayer;
            }
            b(new Error(str2, Error.PlayerStateIllegal, th.toString()));
        }
    }

    void a(boolean z10) {
        TTVideoEngineLog.i("TTVideoEngine", "_play, mState:" + this.f23196b + ", byPlay:" + z10 + ", this:" + this);
        this.f23212j = true;
        this.f23210i = false;
        g();
        if (z10) {
            this.G.d(10);
        }
        int i10 = this.f23196b;
        if (i10 != 0) {
            if (i10 == 3) {
                l();
                return;
            } else if (i10 != 4) {
                return;
            }
        }
        j();
    }

    private void a(boolean z10, int i10) {
        com.bykv.vk.component.ttvideo.utils.a aVar;
        TTVideoEngineLog.i("TTVideoEngine", "_stop, mState:" + this.f23196b + ", this:" + this);
        int i11 = this.f23196b;
        if (i11 == 0 || i11 == 3) {
            this.f23200d = true;
        }
        if (this.H != null && z10 && !isSystemPlayer() && this.f23208h) {
            this.H.stop();
        }
        com.bykv.vk.component.ttvideo.utils.a aVar2 = this.W;
        if (aVar2 != null) {
            aVar2.e();
        }
        if (this.f23214k != 0 && (aVar = this.W) != null) {
            this.G.b(aVar.b());
        }
        this.G.c(i10);
        e(0);
        this.f23194a = false;
        this.f23219o = false;
        this.f23220p = false;
        this.f23199c0 = 0L;
        this.Q = 0;
    }
}
