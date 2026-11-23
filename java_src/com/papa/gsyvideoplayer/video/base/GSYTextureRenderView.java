package com.papa.gsyvideoplayer.video.base;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.papa.gsyvideoplayer.render.effect.q;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.papa.gsyvideoplayer.utils.f;
import com.papa.gsyvideoplayer.utils.j;
import w7.c;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GSYTextureRenderView extends FrameLayout implements c, j.a {
    protected GSYVideoGLView.c mEffectFilter;
    protected Bitmap mFullPauseBitmap;
    protected float[] mMatrixGL;
    protected int mMode;
    protected com.papa.gsyvideoplayer.render.glrender.a mRenderer;
    protected int mRotate;
    protected Surface mSurface;
    protected com.papa.gsyvideoplayer.render.a mTextureView;
    protected ViewGroup mTextureViewContainer;

    public GSYTextureRenderView(@NonNull Context context) {
        super(context);
        this.mEffectFilter = new q();
        this.mMatrixGL = null;
        this.mMode = 0;
    }

    protected void addTextureView() {
        com.papa.gsyvideoplayer.render.a aVar = new com.papa.gsyvideoplayer.render.a();
        this.mTextureView = aVar;
        aVar.b(getContext(), this.mTextureViewContainer, this.mRotate, this, this, this.mEffectFilter, this.mMatrixGL, this.mRenderer, this.mMode);
    }

    protected void changeTextureViewShowType() {
        if (this.mTextureView != null) {
            int textureParams = getTextureParams();
            ViewGroup.LayoutParams layoutParamsD = this.mTextureView.d();
            layoutParamsD.width = textureParams;
            layoutParamsD.height = textureParams;
            this.mTextureView.u(layoutParamsD);
        }
    }

    public GSYVideoGLView.c getEffectFilter() {
        return this.mEffectFilter;
    }

    public com.papa.gsyvideoplayer.render.a getRenderProxy() {
        return this.mTextureView;
    }

    protected int getTextureParams() {
        return f.g() != 0 ? -2 : -1;
    }

    protected void initCover() {
        com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
        if (aVar != null) {
            this.mFullPauseBitmap = aVar.i();
        }
    }

    public void onSurfaceAvailable(Surface surface) {
        com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
        pauseLogic(surface, aVar != null && (aVar.f() instanceof TextureView));
    }

    @Override // w7.c
    public boolean onSurfaceDestroyed(Surface surface) {
        setDisplay(null);
        releaseSurface(surface);
        return true;
    }

    @Override // w7.c
    public void onSurfaceSizeChanged(Surface surface, int i10, int i11) {
    }

    public void onSurfaceUpdated(Surface surface) {
        releasePauseCover();
    }

    protected void pauseLogic(Surface surface, boolean z10) {
        this.mSurface = surface;
        if (z10) {
            showPauseCover();
        }
        setDisplay(this.mSurface);
    }

    protected abstract void releasePauseCover();

    protected abstract void releaseSurface(Surface surface);

    public void setCustomGLRenderer(com.papa.gsyvideoplayer.render.glrender.a aVar) {
        this.mRenderer = aVar;
        com.papa.gsyvideoplayer.render.a aVar2 = this.mTextureView;
        if (aVar2 != null) {
            aVar2.t(aVar);
        }
    }

    protected abstract void setDisplay(Surface surface);

    public void setEffectFilter(GSYVideoGLView.c cVar) {
        this.mEffectFilter = cVar;
        com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
        if (aVar != null) {
            aVar.r(cVar);
        }
    }

    public void setGLRenderMode(int i10) {
        this.mMode = i10;
        com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
        if (aVar != null) {
            aVar.s(i10);
        }
    }

    public void setMatrixGL(float[] fArr) {
        this.mMatrixGL = fArr;
        com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
        if (aVar != null) {
            aVar.v(fArr);
        }
    }

    protected abstract void setSmallVideoTextureView();

    protected void setSmallVideoTextureView(View.OnTouchListener onTouchListener) {
        this.mTextureViewContainer.setOnTouchListener(onTouchListener);
        this.mTextureViewContainer.setOnClickListener(null);
        setSmallVideoTextureView();
    }

    protected abstract void showPauseCover();

    public GSYTextureRenderView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mEffectFilter = new q();
        this.mMatrixGL = null;
        this.mMode = 0;
    }

    public GSYTextureRenderView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        super(context, attributeSet, i10);
        this.mEffectFilter = new q();
        this.mMatrixGL = null;
        this.mMode = 0;
    }
}
