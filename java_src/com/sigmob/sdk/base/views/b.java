package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
public class b extends RelativeLayout implements MediaPlayer.OnBufferingUpdateListener, SurfaceHolder.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79941a = "AdVideoPlayer";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MediaPlayer f79942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SurfaceHolder f79943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SurfaceView f79944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f79945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f79946f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f79947g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f79948h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f79949i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private a f79950j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private MediaPlayer.OnPreparedListener f79951k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final ExecutorService f79952l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Handler f79953m;

    /* JADX INFO: renamed from: com.sigmob.sdk.base.views.b$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f79954a;

        static {
            int[] iArr = new int[a.values().length];
            f79954a = iArr;
            try {
                iArr[a.FIT_SCREEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79954a[a.FILL_SCREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f79954a[a.ORIGINAL_SIZE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f79954a[a.STRETCH_FILL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum a {
        FIT_SCREEN,
        FILL_SCREEN,
        ORIGINAL_SIZE,
        STRETCH_FILL
    }

    public b(Context context) {
        super(context);
        this.f79946f = "";
        this.f79947g = 0;
        this.f79948h = 0;
        this.f79950j = a.FIT_SCREEN;
        this.f79952l = Executors.newSingleThreadExecutor();
        this.f79953m = new Handler(Looper.getMainLooper());
        a(context);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0056  */
    /* JADX WARN: Code duplicated, block: B:25:0x005b  */
    private void h() {
        int i10;
        int i11;
        int iMin;
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth == 0 || measuredHeight == 0 || (i10 = this.f79947g) <= 0 || (i11 = this.f79948h) <= 0) {
            return;
        }
        float f10 = i10 / i11;
        float f11 = measuredWidth;
        float f12 = measuredHeight;
        float f13 = f11 / f12;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f79944d.getLayoutParams();
        int i12 = AnonymousClass1.f79954a[this.f79950j.ordinal()];
        if (i12 != 1) {
            if (i12 != 2) {
                if (i12 != 3) {
                    layoutParams.width = measuredWidth;
                    layoutParams.height = measuredHeight;
                } else {
                    layoutParams.width = Math.min(this.f79947g, measuredWidth);
                    iMin = Math.min(this.f79948h, measuredHeight);
                    layoutParams.height = iMin;
                }
            } else if (f10 > f13) {
                layoutParams.height = measuredHeight;
                layoutParams.width = (int) (f12 * f10);
            } else {
                layoutParams.width = measuredWidth;
                iMin = (int) (f11 / f10);
                layoutParams.height = iMin;
            }
        } else if (f10 > f13) {
            layoutParams.width = measuredWidth;
            iMin = (int) (f11 / f10);
            layoutParams.height = iMin;
        } else {
            layoutParams.height = measuredHeight;
            layoutParams.width = (int) (f12 * f10);
        }
        layoutParams.addRule(13);
        layoutParams.leftMargin = 0;
        layoutParams.topMargin = 0;
        this.f79944d.setLayoutParams(layoutParams);
    }

    private void i() {
        String str = this.f79946f;
        if (str == null || str.isEmpty()) {
            return;
        }
        try {
            this.f79942b.reset();
            this.f79942b.setDataSource(this.f79946f);
            this.f79942b.prepareAsync();
        } catch (Exception e10) {
            com.sigmob.sdk.base.utils.k.f(f79941a, "play: error = " + e10.getMessage(), new Object[0]);
        }
    }

    public void d() {
        MediaPlayer mediaPlayer = this.f79942b;
        if (mediaPlayer != null) {
            mediaPlayer.start();
        }
        com.sigmob.sdk.videoplayer.c.f(getContext());
    }

    public void e() {
        MediaPlayer mediaPlayer = this.f79942b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.stop();
    }

    public void f() {
        MediaPlayer mediaPlayer = this.f79942b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.pause();
    }

    public boolean g() {
        MediaPlayer mediaPlayer = this.f79942b;
        return mediaPlayer != null && mediaPlayer.isPlaying();
    }

    public ImageView getBackgroundImageView() {
        return this.f79945e;
    }

    public a getScaleMode() {
        return this.f79950j;
    }

    public int getVideoHeight() {
        return this.f79948h;
    }

    public int getVideoWidth() {
        return this.f79947g;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mp, int percent) {
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed) {
            h();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        h();
    }

    @Override // android.view.View
    public void setBackgroundColor(int color) {
        ImageView imageView = this.f79945e;
        if (imageView == null) {
            return;
        }
        imageView.setBackgroundColor(color);
    }

    public void setBackgroundImage(Bitmap bitmap) {
        ImageView imageView = this.f79945e;
        if (imageView == null || bitmap == null) {
            return;
        }
        imageView.setImageBitmap(bitmap);
    }

    @Override // android.view.View
    public void setBackgroundResource(int resId) {
        ImageView imageView = this.f79945e;
        if (imageView == null) {
            return;
        }
        imageView.setImageResource(resId);
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener listener) {
        this.f79951k = listener;
    }

    public void setOnSeekCompleteListener(MediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.f79942b.setOnSeekCompleteListener(onSeekCompleteListener);
    }

    public void setScaleMode(a scaleMode) {
        if (this.f79950j == scaleMode) {
            return;
        }
        this.f79950j = scaleMode;
        requestLayout();
    }

    public void setVideoPath(String videoPath) {
        this.f79946f = videoPath;
        if (this.f79942b == null) {
            return;
        }
        i();
    }

    public void setVolume(float volume) {
        MediaPlayer mediaPlayer = this.f79942b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setVolume(volume, volume);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        requestLayout();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder holder) {
        MediaPlayer mediaPlayer = this.f79942b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setDisplay(holder);
        String str = this.f79946f;
        if (str == null || str.isEmpty()) {
            return;
        }
        i();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder holder) {
        MediaPlayer mediaPlayer = this.f79942b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setDisplay(null);
    }

    public void a() {
        MediaPlayer mediaPlayer = this.f79942b;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return;
        }
        this.f79942b.pause();
        this.f79949i = this.f79942b.getCurrentPosition();
        com.sigmob.sdk.videoplayer.c.g(getContext());
    }

    public void b() {
        MediaPlayer mediaPlayer = this.f79942b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.seekTo(this.f79949i);
        this.f79942b.start();
        com.sigmob.sdk.videoplayer.c.f(getContext());
    }

    public void c() {
        MediaPlayer mediaPlayer = this.f79942b;
        if (mediaPlayer == null) {
            return;
        }
        if (mediaPlayer.isPlaying()) {
            this.f79942b.stop();
        }
        this.f79942b.reset();
        this.f79942b.release();
        this.f79942b = null;
        this.f79952l.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final String str) {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                mediaMetadataRetriever.setDataSource(str);
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(0L, 2);
                if (frameAtTime == null) {
                    com.sigmob.sdk.base.utils.k.e(f79941a, "extractVideoFirstFrame: Failed to retrieve the first frame of the video(%s).", str);
                } else {
                    com.sigmob.sdk.base.blurkit.a.a(getContext());
                    final Bitmap bitmapA = com.sigmob.sdk.base.blurkit.a.a().a(frameAtTime, 25, 1.0f);
                    this.f79953m.post(new Runnable() { // from class: com.sigmob.sdk.base.views.g0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f80018b.a(bitmapA, str);
                        }
                    });
                }
                mediaMetadataRetriever.release();
            } catch (Throwable th) {
                try {
                    mediaMetadataRetriever.release();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e10) {
            com.sigmob.sdk.base.utils.k.f(f79941a, "extractVideoFirstFrame: error = " + e10.getMessage(), new Object[0]);
        }
    }

    public void a(int position) {
        MediaPlayer mediaPlayer = this.f79942b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.seekTo(position);
    }

    public void a(int width, int height) {
        this.f79947g = width;
        this.f79948h = height;
    }

    private void a(Context context) {
        this.f79945e = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f79945e.setLayoutParams(layoutParams);
        this.f79945e.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f79945e.setBackgroundColor(-16777216);
        addView(this.f79945e);
        this.f79944d = new SurfaceView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(13);
        this.f79944d.setLayoutParams(layoutParams2);
        addView(this.f79944d);
        SurfaceHolder holder = this.f79944d.getHolder();
        this.f79943c = holder;
        holder.addCallback(this);
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.f79942b = mediaPlayer;
        mediaPlayer.setLooping(true);
        this.f79942b.setOnBufferingUpdateListener(this);
        this.f79942b.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.sigmob.sdk.base.views.f0
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer2) {
                this.f80017b.a(mediaPlayer2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Bitmap bitmap, String str) {
        this.f79945e.setImageBitmap(bitmap);
        com.sigmob.sdk.base.utils.k.b(f79941a, "extractVideoFirstFrame: Successfully captured the first frame of the video(%s).", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    public /* synthetic */ void a(MediaPlayer mediaPlayer) {
        this.f79947g = mediaPlayer.getVideoWidth();
        this.f79948h = mediaPlayer.getVideoHeight();
        int i10 = AnonymousClass1.f79954a[this.f79950j.ordinal()];
        if (i10 == 1) {
            this.f79942b.setVideoScalingMode(1);
        } else if (i10 == 2 || i10 == 3) {
            this.f79942b.setVideoScalingMode(2);
        } else if (i10 == 4) {
            this.f79942b.setVideoScalingMode(1);
        }
        requestLayout();
        invalidate();
        MediaPlayer.OnPreparedListener onPreparedListener = this.f79951k;
        if (onPreparedListener == null) {
            return;
        }
        onPreparedListener.onPrepared(mediaPlayer);
    }

    private void a(final String videoPath) {
        if (videoPath == null || videoPath.isEmpty() || videoPath.startsWith("http://") || videoPath.startsWith("https://")) {
            return;
        }
        this.f79952l.execute(new Runnable() { // from class: com.sigmob.sdk.base.views.h0
            @Override // java.lang.Runnable
            public final void run() {
                this.f80103b.b(videoPath);
            }
        });
    }

    public void a(boolean mute) {
        MediaPlayer mediaPlayer = this.f79942b;
        if (mediaPlayer == null) {
            return;
        }
        float f10 = mute ? 0.0f : 1.0f;
        mediaPlayer.setVolume(f10, f10);
    }
}
