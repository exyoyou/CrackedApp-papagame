package com.papa.gsyvideoplayer.render.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import com.papa.gsyvideoplayer.utils.d;
import com.papa.gsyvideoplayer.utils.j;
import java.io.File;
import v7.e;
import v7.f;
import w7.c;

/* JADX INFO: loaded from: classes2.dex */
public class GSYTextureView extends TextureView implements TextureView.SurfaceTextureListener, com.papa.gsyvideoplayer.render.view.a, j.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f76862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j.a f76863c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j f76864d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SurfaceTexture f76865e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Surface f76866f;

    class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f76867a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f76868b;

        a(f fVar, File file) {
            this.f76867a = fVar;
            this.f76868b = file;
        }

        @Override // v7.e
        public void a(Bitmap bitmap) {
            if (bitmap == null) {
                this.f76867a.a(false, this.f76868b);
            } else {
                d.e(bitmap, this.f76868b);
                this.f76867a.a(true, this.f76868b);
            }
        }
    }

    public GSYTextureView(Context context) {
        super(context);
        i();
    }

    public static GSYTextureView h(Context context, ViewGroup viewGroup, int i10, c cVar, j.a aVar) {
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        GSYTextureView gSYTextureView = new GSYTextureView(context);
        gSYTextureView.setIGSYSurfaceListener(cVar);
        gSYTextureView.setVideoParamsListener(aVar);
        gSYTextureView.setRotation(i10);
        com.papa.gsyvideoplayer.render.a.a(viewGroup, gSYTextureView);
        return gSYTextureView;
    }

    private void i() {
        this.f76864d = new j(this, this);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void a(File file, boolean z10, f fVar) {
        a aVar = new a(fVar, file);
        if (z10) {
            aVar.a(d());
        } else {
            aVar.a(b());
        }
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public Bitmap b() {
        Bitmap bitmapCreateBitmap;
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(getSizeW(), getSizeH(), Bitmap.Config.RGB_565);
        } catch (Exception unused) {
            bitmapCreateBitmap = Bitmap.createBitmap(100, 100, Bitmap.Config.RGB_565);
        }
        return getBitmap(bitmapCreateBitmap);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void c() {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support onRenderResume now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public Bitmap d() {
        return getBitmap(Bitmap.createBitmap(getSizeW(), getSizeH(), Bitmap.Config.ARGB_8888));
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void e(e eVar, boolean z10) {
        if (z10) {
            eVar.a(d());
        } else {
            eVar.a(b());
        }
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void f() {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support releaseRenderAll now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void g() {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support onRenderPause now");
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getCurrentVideoHeight() {
        j.a aVar = this.f76863c;
        if (aVar != null) {
            return aVar.getCurrentVideoHeight();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getCurrentVideoWidth() {
        j.a aVar = this.f76863c;
        if (aVar != null) {
            return aVar.getCurrentVideoWidth();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public c getIGSYSurfaceListener() {
        return this.f76862b;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public View getRenderView() {
        return this;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public int getSizeH() {
        return getHeight();
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public int getSizeW() {
        return getWidth();
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getVideoSarDen() {
        j.a aVar = this.f76863c;
        if (aVar != null) {
            return aVar.getVideoSarDen();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getVideoSarNum() {
        j.a aVar = this.f76863c;
        if (aVar != null) {
            return aVar.getVideoSarNum();
        }
        return 0;
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        this.f76864d.e(i10, i11, (int) getRotation());
        setMeasuredDimension(this.f76864d.c(), this.f76864d.b());
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        if (!com.papa.gsyvideoplayer.utils.f.i()) {
            Surface surface = new Surface(surfaceTexture);
            this.f76866f = surface;
            c cVar = this.f76862b;
            if (cVar != null) {
                cVar.onSurfaceAvailable(surface);
                return;
            }
            return;
        }
        SurfaceTexture surfaceTexture2 = this.f76865e;
        if (surfaceTexture2 == null) {
            this.f76865e = surfaceTexture;
            this.f76866f = new Surface(surfaceTexture);
        } else {
            setSurfaceTexture(surfaceTexture2);
        }
        c cVar2 = this.f76862b;
        if (cVar2 != null) {
            cVar2.onSurfaceAvailable(this.f76866f);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        c cVar = this.f76862b;
        if (cVar != null) {
            cVar.onSurfaceDestroyed(this.f76866f);
        }
        return !com.papa.gsyvideoplayer.utils.f.i() || this.f76865e == null;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        c cVar = this.f76862b;
        if (cVar != null) {
            cVar.onSurfaceSizeChanged(this.f76866f, i10, i11);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        c cVar = this.f76862b;
        if (cVar != null) {
            cVar.onSurfaceUpdated(this.f76866f);
        }
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setGLEffectFilter(GSYVideoGLView.c cVar) {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support setGLEffectFilter now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setGLMVPMatrix(float[] fArr) {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support setGLMVPMatrix now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setGLRenderer(com.papa.gsyvideoplayer.render.glrender.a aVar) {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support setGLRenderer now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setIGSYSurfaceListener(c cVar) {
        setSurfaceTextureListener(this);
        this.f76862b = cVar;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setRenderMode(int i10) {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support setRenderMode now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setRenderTransform(Matrix matrix) {
        setTransform(matrix);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setVideoParamsListener(j.a aVar) {
        this.f76863c = aVar;
    }

    public GSYTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        i();
    }
}
