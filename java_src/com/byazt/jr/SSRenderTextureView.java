package com.byazt.jr;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2222, 2223})
public class SSRenderTextureView extends TextureView implements TextureView.SurfaceTextureListener, tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f15905c;
    public tt.c tt;

    public SSRenderTextureView(Context context) {
        this(context, null);
    }

    @Override // com.byazt.jr.tt
    public void c(c cVar) {
        this.f15905c = cVar;
        setSurfaceTextureListener(this);
    }

    public SurfaceHolder getHolder() {
        return null;
    }

    @Override // com.byazt.jr.tt
    public View getView() {
        return this;
    }

    @Override // android.view.TextureView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (Throwable th) {
            m.c(th);
            if (com.byazt.lt.tt.tt()) {
                com.byazt.lt.tt.c("CSJ_VIDEO_TextureView", "rethrow exception for debug & local_test, (TextureView)", th);
            }
        }
    }

    @Override // android.view.TextureView, android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        com.byazt.lt.tt.c("CSJ_VIDEO_TextureView", "onSurfaceTextureAvailable: ");
        c cVar = this.f15905c;
        if (cVar != null) {
            cVar.c(surfaceTexture, i10, i11);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        com.byazt.lt.tt.c("CSJ_VIDEO_TextureView", "onSurfaceTextureDestroyed: ");
        c cVar = this.f15905c;
        if (cVar != null) {
            return cVar.c(surfaceTexture);
        }
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        com.byazt.lt.tt.c("CSJ_VIDEO_TextureView", "onSurfaceTextureSizeChanged: ");
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
    }

    public void setWindowVisibilityChangedListener(tt.c cVar) {
        this.tt = cVar;
    }

    public SSRenderTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.byazt.jr.tt
    public void c(int i10, int i11) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i11;
        layoutParams.width = i10;
        setLayoutParams(layoutParams);
    }
}
