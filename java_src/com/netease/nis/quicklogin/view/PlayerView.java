package com.netease.nis.quicklogin.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.view.View;
import android.widget.Toast;
import android.widget.VideoView;
import com.netease.nis.basesdk.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class PlayerView extends VideoView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f76175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Drawable f76176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f76177c;

    class a implements MediaPlayer.OnPreparedListener {

        /* JADX INFO: renamed from: com.netease.nis.quicklogin.view.PlayerView$a$a, reason: collision with other inner class name */
        class C0984a implements MediaPlayer.OnInfoListener {
            C0984a() {
            }

            @Override // android.media.MediaPlayer.OnInfoListener
            public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
                if (i10 != 3) {
                    return true;
                }
                PlayerView.this.setBackgroundColor(0);
                return true;
            }
        }

        a() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            mediaPlayer.setOnInfoListener(new C0984a());
        }
    }

    class b implements MediaPlayer.OnCompletionListener {
        b() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (PlayerView.this.f76175a) {
                PlayerView.this.start();
            }
        }
    }

    class c implements MediaPlayer.OnErrorListener {
        c() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
            Logger.e("[PlayerView#monitorOnErrorListener] onError what:" + i10 + " extra:" + i11);
            Toast.makeText(PlayerView.this.getContext(), "无法播放此视频,请检查视频文件是否损坏", 0).show();
            PlayerView.this.e();
            return true;
        }
    }

    public PlayerView(Context context) {
        super(context);
        this.f76175a = true;
        a();
    }

    private void b() {
        setOnCompletionListener(new b());
    }

    private void c() {
        setOnErrorListener(new c());
    }

    private void d() {
        setOnPreparedListener(new a());
    }

    public void e() {
        int i10 = this.f76177c;
        if (i10 != 0) {
            setBackgroundResource(i10);
            return;
        }
        Drawable drawable = this.f76176b;
        if (drawable != null) {
            setBackground(drawable);
        }
        setBackgroundColor(0);
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(View.resolveSize(getSuggestedMinimumWidth(), i10), View.resolveSize(getSuggestedMinimumHeight(), i11));
    }

    public void setLoadingImageResId(int i10) {
        this.f76177c = i10;
    }

    public void setLoopPlay(boolean z10) {
        this.f76175a = z10;
    }

    private void a() {
        d();
        b();
        c();
    }

    public void setLoadingImageResId(Drawable drawable) {
        this.f76176b = drawable;
    }
}
