package com.join.android.app.component.video;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class MyVideoView extends SurfaceView implements MediaController.e {
    private MediaPlayer.OnBufferingUpdateListener A;
    SurfaceHolder.Callback B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f35071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f35072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Uri f35073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f35074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SurfaceHolder f35075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public MediaPlayer f35076g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f35077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f35078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f35079j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f35080k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f35081l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private MediaController f35082m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private MediaPlayer.OnCompletionListener f35083n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private MediaPlayer.OnPreparedListener f35084o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private MediaPlayer.OnBufferingUpdateListener f35085p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f35086q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private MediaPlayer.OnErrorListener f35087r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f35088s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f35089t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private g f35090u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private h f35091v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    MediaPlayer.OnVideoSizeChangedListener f35092w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    MediaPlayer.OnPreparedListener f35093x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private MediaPlayer.OnCompletionListener f35094y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private MediaPlayer.OnErrorListener f35095z;

    class a implements MediaPlayer.OnVideoSizeChangedListener {
        a() {
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mp, int width, int height) {
            MyVideoView.this.f35078i = mp.getVideoWidth();
            MyVideoView.this.f35079j = mp.getVideoHeight();
            if (MyVideoView.this.f35090u != null) {
                MyVideoView.this.f35090u.a();
            }
            if (MyVideoView.this.f35078i != 0) {
                int unused = MyVideoView.this.f35079j;
            }
            MyVideoView.this.getHolder().setFixedSize(MyVideoView.this.f35078i, MyVideoView.this.f35079j);
        }
    }

    class b implements MediaPlayer.OnPreparedListener {
        b() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mp) {
            MyVideoView.this.f35077h = true;
            if (MyVideoView.this.f35084o != null) {
                MyVideoView.this.f35084o.onPrepared(MyVideoView.this.f35076g);
            }
            if (MyVideoView.this.f35082m != null) {
                MyVideoView.this.f35082m.setEnabled(true);
            }
            MyVideoView.this.f35078i = mp.getVideoWidth();
            MyVideoView.this.f35079j = mp.getVideoHeight();
            if (MyVideoView.this.f35078i == 0 || MyVideoView.this.f35079j == 0) {
                if (MyVideoView.this.f35089t != 0) {
                    MyVideoView myVideoView = MyVideoView.this;
                    myVideoView.f35076g.seekTo(myVideoView.f35089t);
                    MyVideoView.this.f35089t = 0;
                }
                if (MyVideoView.this.f35088s) {
                    MyVideoView.this.f35076g.start();
                    MyVideoView.this.f35088s = false;
                    return;
                }
                return;
            }
            MyVideoView.this.getHolder().setFixedSize(MyVideoView.this.f35078i, MyVideoView.this.f35079j);
            if (MyVideoView.this.f35080k == MyVideoView.this.f35078i && MyVideoView.this.f35081l == MyVideoView.this.f35079j) {
                if (MyVideoView.this.f35089t != 0) {
                    MyVideoView myVideoView2 = MyVideoView.this;
                    myVideoView2.f35076g.seekTo(myVideoView2.f35089t);
                    MyVideoView.this.f35089t = 0;
                }
                if (MyVideoView.this.f35088s) {
                    MyVideoView.this.f35076g.start();
                    MyVideoView.this.f35088s = false;
                    if (MyVideoView.this.f35082m != null) {
                        MyVideoView.this.f35082m.show();
                        return;
                    }
                    return;
                }
                if (MyVideoView.this.isPlaying()) {
                    return;
                }
                if ((MyVideoView.this.f35089t != 0 || MyVideoView.this.getCurrentPosition() > 0) && MyVideoView.this.f35082m != null) {
                    MyVideoView.this.f35082m.show(0);
                }
            }
        }
    }

    class c implements MediaPlayer.OnCompletionListener {
        c() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mp) {
            if (MyVideoView.this.f35082m != null) {
                MyVideoView.this.f35082m.hide();
            }
            if (MyVideoView.this.f35083n != null) {
                MyVideoView.this.f35083n.onCompletion(MyVideoView.this.f35076g);
            }
        }
    }

    class d implements MediaPlayer.OnErrorListener {
        d() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mp, int framework_err, int impl_err) {
            String unused = MyVideoView.this.f35071b;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error: ");
            sb2.append(framework_err);
            sb2.append(",");
            sb2.append(impl_err);
            if (MyVideoView.this.f35082m != null) {
                MyVideoView.this.f35082m.hide();
            }
            if ((MyVideoView.this.f35087r == null || !MyVideoView.this.f35087r.onError(MyVideoView.this.f35076g, framework_err, impl_err)) && MyVideoView.this.getWindowToken() != null) {
                MyVideoView.this.f35072c.getResources();
            }
            return true;
        }
    }

    class e implements MediaPlayer.OnBufferingUpdateListener {
        e() {
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mp, int percent) {
            MyVideoView.this.f35086q = percent;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("");
            sb2.append(percent);
            if (MyVideoView.this.f35085p != null) {
                MyVideoView.this.f35085p.onBufferingUpdate(mp, percent);
            }
        }
    }

    class f implements SurfaceHolder.Callback {
        f() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder holder, int format, int w10, int h10) {
            MyVideoView.this.f35080k = w10;
            MyVideoView.this.f35081l = h10;
            MyVideoView myVideoView = MyVideoView.this;
            if (myVideoView.f35076g != null && myVideoView.f35077h && MyVideoView.this.f35078i == w10 && MyVideoView.this.f35079j == h10) {
                if (MyVideoView.this.f35089t != 0) {
                    MyVideoView myVideoView2 = MyVideoView.this;
                    myVideoView2.f35076g.seekTo(myVideoView2.f35089t);
                    MyVideoView.this.f35089t = 0;
                }
                if (MyVideoView.this.f35076g.isPlaying()) {
                    MyVideoView.this.f35076g.start();
                } else {
                    MyVideoView.this.f35076g.pause();
                }
                if (MyVideoView.this.f35082m != null) {
                    MyVideoView.this.f35082m.show();
                }
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder holder) {
            MyVideoView.this.f35075f = holder;
            MyVideoView.this.F();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder holder) {
            MyVideoView.this.f35075f = null;
            if (MyVideoView.this.f35082m != null) {
                MyVideoView.this.f35082m.hide();
            }
            MediaPlayer mediaPlayer = MyVideoView.this.f35076g;
            if (mediaPlayer != null) {
                mediaPlayer.reset();
                MyVideoView.this.f35076g.release();
                MyVideoView.this.f35076g = null;
            }
        }
    }

    public interface g {
        void a();
    }

    public interface h {
        boolean a(boolean flag);
    }

    public MyVideoView(Context context) {
        super(context);
        this.f35071b = getClass().getSimpleName();
        this.f35075f = null;
        this.f35076g = null;
        this.f35092w = new a();
        this.f35093x = new b();
        this.f35094y = new c();
        this.f35095z = new d();
        this.A = new e();
        this.B = new f();
        this.f35072c = context;
        C();
    }

    private void A() {
        MediaController mediaController;
        if (this.f35076g == null || (mediaController = this.f35082m) == null) {
            return;
        }
        mediaController.setMediaPlayer(this);
        this.f35082m.setAnchorView(getParent() instanceof View ? (View) getParent() : this);
        this.f35082m.setEnabled(this.f35077h);
    }

    private void C() {
        this.f35078i = 0;
        this.f35079j = 0;
        getHolder().setFormat(-2);
        getHolder().addCallback(this.B);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        Uri uri;
        if (this.f35073d == null || this.f35075f == null) {
            return;
        }
        Intent intent = new Intent("com.android.music.musicservicecommand");
        intent.putExtra("command", com.sigmob.sdk.base.common.a.f78876j);
        this.f35072c.sendBroadcast(intent);
        MediaPlayer mediaPlayer = this.f35076g;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f35076g.release();
            this.f35076g = null;
        }
        try {
            MediaPlayer mediaPlayer2 = new MediaPlayer();
            this.f35076g = mediaPlayer2;
            mediaPlayer2.setOnPreparedListener(this.f35093x);
            this.f35076g.setOnVideoSizeChangedListener(this.f35092w);
            this.f35077h = false;
            this.f35074e = -1;
            this.f35076g.setOnCompletionListener(this.f35094y);
            this.f35076g.setOnErrorListener(this.f35095z);
            this.f35076g.setOnBufferingUpdateListener(this.A);
            this.f35086q = 0;
            Context context = this.f35072c;
            if (context != null && (uri = this.f35073d) != null) {
                this.f35076g.setDataSource(context, uri);
            }
            this.f35076g.setDisplay(this.f35075f);
            this.f35076g.setAudioStreamType(3);
            this.f35076g.setScreenOnWhilePlaying(true);
            this.f35076g.prepareAsync();
            A();
            requestFocus();
        } catch (IOException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to open content: ");
            sb2.append(this.f35073d);
        } catch (IllegalArgumentException unused2) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unable to open content: ");
            sb3.append(this.f35073d);
        }
    }

    private void J() {
        if (this.f35082m.isShowing()) {
            this.f35082m.hide();
        } else {
            this.f35082m.show();
        }
    }

    public void B() {
        Activity activity = (Activity) this.f35072c;
        if (getResources().getConfiguration().orientation == 1) {
            h hVar = this.f35091v;
            if (hVar == null || !hVar.a(true)) {
                MediaController mediaController = this.f35082m;
                if (mediaController != null) {
                    mediaController.setFullScreen(true);
                }
                activity.setRequestedOrientation(0);
                activity.getWindow().setFlags(1024, 1024);
                return;
            }
            return;
        }
        h hVar2 = this.f35091v;
        if (hVar2 == null || !hVar2.a(false)) {
            MediaController mediaController2 = this.f35082m;
            if (mediaController2 != null) {
                mediaController2.setFullScreen(false);
            }
            activity.setRequestedOrientation(1);
            WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
            attributes.flags &= -1025;
            activity.getWindow().setAttributes(attributes);
            activity.getWindow().clearFlags(512);
        }
    }

    public boolean D() {
        MediaController mediaController = this.f35082m;
        if (mediaController != null) {
            return mediaController.u();
        }
        return getResources().getConfiguration().orientation == 2;
    }

    public boolean E() {
        return this.f35077h;
    }

    public void G() {
        try {
            MediaPlayer mediaPlayer = this.f35076g;
            if (mediaPlayer != null) {
                mediaPlayer.stop();
                this.f35076g.reset();
            }
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public int H(int desiredSize, int measureSpec) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size = View.MeasureSpec.getSize(measureSpec);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? desiredSize : size;
        }
        return Math.min(desiredSize, size);
    }

    public void I() {
        MediaPlayer mediaPlayer = this.f35076g;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f35076g.release();
            this.f35076g = null;
            this.f35077h = false;
            this.f35073d = null;
        }
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public void a(boolean currentFlag) {
        B();
        MediaController mediaController = this.f35082m;
        if (mediaController != null) {
            mediaController.setFullScreen(D());
        }
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public boolean canPause() {
        return false;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public boolean canSeekBackward() {
        return false;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public boolean canSeekForward() {
        return false;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public int getAudioSessionId() {
        return 0;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public int getBufferPercentage() {
        if (this.f35076g != null) {
            return this.f35086q;
        }
        return 0;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public int getCurrentPosition() {
        MediaPlayer mediaPlayer = this.f35076g;
        if (mediaPlayer == null || !this.f35077h) {
            return 0;
        }
        return mediaPlayer.getCurrentPosition();
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public int getDuration() {
        MediaPlayer mediaPlayer = this.f35076g;
        if (mediaPlayer == null || !this.f35077h) {
            this.f35074e = -1;
            return -1;
        }
        int i10 = this.f35074e;
        if (i10 > 0) {
            return i10;
        }
        int duration = mediaPlayer.getDuration();
        this.f35074e = duration;
        return duration;
    }

    public MediaController getMediaController() {
        return this.f35082m;
    }

    public MediaPlayer getMediaPlayer() {
        return this.f35076g;
    }

    public int getVideoHeight() {
        return this.f35079j;
    }

    public int getVideoWidth() {
        return this.f35078i;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.f35076g;
        if (mediaPlayer == null || !this.f35077h) {
            return false;
        }
        return mediaPlayer.isPlaying();
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        MediaPlayer mediaPlayer;
        if (this.f35077h && keyCode != 4 && keyCode != 24 && keyCode != 25 && keyCode != 82 && keyCode != 5 && keyCode != 6 && (mediaPlayer = this.f35076g) != null && this.f35082m != null) {
            if (keyCode == 79 || keyCode == 85) {
                if (mediaPlayer.isPlaying()) {
                    pause();
                    this.f35082m.show();
                    return true;
                }
                start();
                this.f35082m.hide();
                return true;
            }
            if (keyCode == 86 && mediaPlayer.isPlaying()) {
                pause();
                this.f35082m.show();
            } else {
                J();
            }
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(View.getDefaultSize(this.f35078i, widthMeasureSpec), View.getDefaultSize(this.f35079j, heightMeasureSpec));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (!this.f35077h || this.f35076g == null || this.f35082m == null) {
            return false;
        }
        J();
        return false;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent ev) {
        if (!this.f35077h || this.f35076g == null || this.f35082m == null) {
            return false;
        }
        J();
        return false;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public void pause() {
        MediaPlayer mediaPlayer = this.f35076g;
        if (mediaPlayer != null && this.f35077h && mediaPlayer.isPlaying()) {
            this.f35076g.pause();
        }
        this.f35088s = false;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public void seekTo(int msec) {
        MediaPlayer mediaPlayer = this.f35076g;
        if (mediaPlayer == null || !this.f35077h) {
            this.f35089t = msec;
        } else {
            mediaPlayer.seekTo(msec);
        }
    }

    public void setFullScreen(boolean fullScreen) {
        if (fullScreen == D()) {
            return;
        }
        a(fullScreen);
    }

    public void setMediaController(MediaController controller) {
        MediaController mediaController = this.f35082m;
        if (mediaController != null) {
            mediaController.hide();
        }
        this.f35082m = controller;
        A();
    }

    public void setMediaPlayer(MediaPlayer player) {
        this.f35076g = player;
    }

    public void setMySizeChangeLinstener(g l10) {
        this.f35090u = l10;
    }

    public void setOnBufferingUpdateListener(MediaPlayer.OnBufferingUpdateListener mOnBufferingUpdateListener) {
        this.f35085p = mOnBufferingUpdateListener;
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener l10) {
        this.f35083n = l10;
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener l10) {
        this.f35087r = l10;
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener l10) {
        this.f35084o = l10;
    }

    public void setScreenChangedListener(h l10) {
        this.f35091v = l10;
    }

    public void setVideoPath(String path) {
        setVideoURI(Uri.parse(path));
    }

    public void setVideoScale(int width, int height) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = height;
        layoutParams.width = width;
        setLayoutParams(layoutParams);
    }

    public void setVideoURI(Uri uri) {
        this.f35073d = uri;
        this.f35088s = false;
        this.f35089t = 0;
        F();
        requestLayout();
        invalidate();
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public void start() {
        MediaPlayer mediaPlayer = this.f35076g;
        if (mediaPlayer == null || !this.f35077h) {
            this.f35088s = true;
        } else {
            mediaPlayer.start();
            this.f35088s = false;
        }
        requestFocus();
    }

    public MyVideoView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
        this.f35072c = context;
        C();
    }

    public MyVideoView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f35071b = getClass().getSimpleName();
        this.f35075f = null;
        this.f35076g = null;
        this.f35092w = new a();
        this.f35093x = new b();
        this.f35094y = new c();
        this.f35095z = new d();
        this.A = new e();
        this.B = new f();
        this.f35072c = context;
        C();
    }
}
