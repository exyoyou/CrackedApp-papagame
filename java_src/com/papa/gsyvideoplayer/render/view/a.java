package com.papa.gsyvideoplayer.render.view;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.view.View;
import com.papa.gsyvideoplayer.utils.j;
import java.io.File;
import v7.e;
import v7.f;
import w7.c;

/* JADX INFO: loaded from: classes2.dex */
public interface a {
    void a(File file, boolean z10, f fVar);

    Bitmap b();

    void c();

    Bitmap d();

    void e(e eVar, boolean z10);

    void f();

    void g();

    c getIGSYSurfaceListener();

    View getRenderView();

    int getSizeH();

    int getSizeW();

    void setGLEffectFilter(GSYVideoGLView.c cVar);

    void setGLMVPMatrix(float[] fArr);

    void setGLRenderer(com.papa.gsyvideoplayer.render.glrender.a aVar);

    void setIGSYSurfaceListener(c cVar);

    void setRenderMode(int i10);

    void setRenderTransform(Matrix matrix);

    void setVideoParamsListener(j.a aVar);
}
