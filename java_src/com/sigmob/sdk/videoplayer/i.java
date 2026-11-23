package com.sigmob.sdk.videoplayer;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.view.Surface;
import android.view.TextureView;

/* JADX INFO: loaded from: classes3.dex */
public abstract class i implements TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SurfaceTexture f82095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Handler f82096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f82097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public h f82098d;

    public i(h videoPlayerListener) {
        this.f82098d = videoPlayerListener;
    }

    public abstract void a();

    public abstract void a(float leftVolume);

    public abstract void a(long time);

    public abstract void a(Surface surface);

    public abstract void a(boolean loop);

    public abstract void b();

    public abstract void b(float speed);

    public abstract void c();

    public abstract void d();

    public abstract boolean e();

    public abstract void f();

    public abstract long g();

    public abstract int h();

    public abstract int i();

    public abstract long j();
}
