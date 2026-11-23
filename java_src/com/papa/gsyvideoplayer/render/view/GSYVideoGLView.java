package com.papa.gsyvideoplayer.render.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import com.papa.gsyvideoplayer.render.effect.q;
import com.papa.gsyvideoplayer.utils.d;
import com.papa.gsyvideoplayer.utils.j;
import java.io.File;
import v7.e;
import v7.f;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ViewConstructor"})
public class GSYVideoGLView extends GLSurfaceView implements w7.a, com.papa.gsyvideoplayer.render.view.a, j.a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f76870k = "com.papa.gsyvideoplayer.render.view.GSYVideoGLView";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f76871l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f76872m = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.papa.gsyvideoplayer.render.glrender.a f76873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f76874c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f76875d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j.a f76876e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private j f76877f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private w7.a f76878g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private w7.c f76879h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float[] f76880i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f76881j;

    class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f76882a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f76883b;

        a(f fVar, File file) {
            this.f76882a = fVar;
            this.f76883b = file;
        }

        @Override // v7.e
        public void a(Bitmap bitmap) {
            if (bitmap == null) {
                this.f76882a.a(false, this.f76883b);
            } else {
                d.e(bitmap, this.f76883b);
                this.f76882a.a(true, this.f76883b);
            }
        }
    }

    static class b implements w7.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f76885a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f76886b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f76887c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ w7.c f76888d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ j.a f76889e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f76890f;

        b(Context context, ViewGroup viewGroup, int i10, w7.c cVar, j.a aVar, int i11) {
            this.f76885a = context;
            this.f76886b = viewGroup;
            this.f76887c = i10;
            this.f76888d = cVar;
            this.f76889e = aVar;
            this.f76890f = i11;
        }

        @Override // w7.b
        public void a(com.papa.gsyvideoplayer.render.glrender.a aVar, String str, int i10, boolean z10) {
            if (z10) {
                GSYVideoGLView.h(this.f76885a, this.f76886b, this.f76887c, this.f76888d, this.f76889e, aVar.h(), aVar.i(), aVar, this.f76890f);
            }
        }
    }

    public interface c {
        String a(GLSurfaceView gLSurfaceView);
    }

    public GSYVideoGLView(Context context) {
        super(context);
        this.f76875d = new q();
        this.f76881j = 0;
        i(context);
    }

    public static GSYVideoGLView h(Context context, ViewGroup viewGroup, int i10, w7.c cVar, j.a aVar, c cVar2, float[] fArr, com.papa.gsyvideoplayer.render.glrender.a aVar2, int i11) {
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        GSYVideoGLView gSYVideoGLView = new GSYVideoGLView(context);
        if (aVar2 != null) {
            gSYVideoGLView.setCustomRenderer(aVar2);
        }
        gSYVideoGLView.setEffect(cVar2);
        gSYVideoGLView.setVideoParamsListener(aVar);
        gSYVideoGLView.setRenderMode(i11);
        gSYVideoGLView.setIGSYSurfaceListener(cVar);
        gSYVideoGLView.setRotation(i10);
        gSYVideoGLView.j();
        gSYVideoGLView.setGSYVideoGLRenderErrorListener(new b(context, viewGroup, i10, cVar, aVar, i11));
        if (fArr != null && fArr.length == 16) {
            gSYVideoGLView.setMVPMatrix(fArr);
        }
        com.papa.gsyvideoplayer.render.a.a(viewGroup, gSYVideoGLView);
        return gSYVideoGLView;
    }

    private void i(Context context) {
        this.f76874c = context;
        setEGLContextClientVersion(2);
        this.f76873b = new com.papa.gsyvideoplayer.render.glrender.b();
        this.f76877f = new j(this, this);
        this.f76873b.w(this);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void a(File file, boolean z10, f fVar) {
        setGSYVideoShotListener(new a(fVar, file), z10);
        m();
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public Bitmap b() {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support initCover now");
        return null;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void c() {
        requestLayout();
        onResume();
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public Bitmap d() {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support initCoverHigh now");
        return null;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void e(e eVar, boolean z10) {
        if (eVar != null) {
            setGSYVideoShotListener(eVar, z10);
            m();
        }
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void f() {
        requestLayout();
        l();
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void g() {
        requestLayout();
        onPause();
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getCurrentVideoHeight() {
        j.a aVar = this.f76876e;
        if (aVar != null) {
            return aVar.getCurrentVideoHeight();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getCurrentVideoWidth() {
        j.a aVar = this.f76876e;
        if (aVar != null) {
            return aVar.getCurrentVideoWidth();
        }
        return 0;
    }

    public c getEffect() {
        return this.f76875d;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public w7.c getIGSYSurfaceListener() {
        return this.f76879h;
    }

    public float[] getMVPMatrix() {
        return this.f76880i;
    }

    public int getMode() {
        return this.f76881j;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public View getRenderView() {
        return this;
    }

    public com.papa.gsyvideoplayer.render.glrender.a getRenderer() {
        return this.f76873b;
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
        j.a aVar = this.f76876e;
        if (aVar != null) {
            return aVar.getVideoSarDen();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getVideoSarNum() {
        j.a aVar = this.f76876e;
        if (aVar != null) {
            return aVar.getVideoSarNum();
        }
        return 0;
    }

    public void j() {
        setRenderer(this.f76873b);
    }

    protected void k() {
        j.a aVar = this.f76876e;
        if (aVar == null || this.f76881j != 1) {
            return;
        }
        try {
            int currentVideoWidth = aVar.getCurrentVideoWidth();
            int currentVideoHeight = this.f76876e.getCurrentVideoHeight();
            com.papa.gsyvideoplayer.render.glrender.a aVar2 = this.f76873b;
            if (aVar2 != null) {
                aVar2.q(this.f76877f.c());
                this.f76873b.p(this.f76877f.b());
                this.f76873b.o(currentVideoWidth);
                this.f76873b.n(currentVideoHeight);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void l() {
        com.papa.gsyvideoplayer.render.glrender.a aVar = this.f76873b;
        if (aVar != null) {
            aVar.l();
        }
    }

    public void m() {
        this.f76873b.x();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.f76881j != 1) {
            this.f76877f.e(i10, i11, (int) getRotation());
            setMeasuredDimension(this.f76877f.c(), this.f76877f.b());
        } else {
            super.onMeasure(i10, i11);
            this.f76877f.e(i10, i11, (int) getRotation());
            k();
        }
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        com.papa.gsyvideoplayer.render.glrender.a aVar = this.f76873b;
        if (aVar != null) {
            aVar.j();
        }
    }

    @Override // w7.a
    public void onSurfaceAvailable(Surface surface) {
        w7.c cVar = this.f76879h;
        if (cVar != null) {
            cVar.onSurfaceAvailable(surface);
        }
    }

    public void setCustomRenderer(com.papa.gsyvideoplayer.render.glrender.a aVar) {
        this.f76873b = aVar;
        aVar.w(this);
        k();
    }

    public void setEffect(c cVar) {
        if (cVar != null) {
            this.f76875d = cVar;
            this.f76873b.r(cVar);
        }
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setGLEffectFilter(c cVar) {
        setEffect(cVar);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setGLMVPMatrix(float[] fArr) {
        setMVPMatrix(fArr);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setGLRenderer(com.papa.gsyvideoplayer.render.glrender.a aVar) {
        setCustomRenderer(aVar);
    }

    public void setGSYVideoGLRenderErrorListener(w7.b bVar) {
        this.f76873b.t(bVar);
    }

    public void setGSYVideoShotListener(e eVar, boolean z10) {
        this.f76873b.u(eVar, z10);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setIGSYSurfaceListener(w7.c cVar) {
        setOnGSYSurfaceListener(this);
        this.f76879h = cVar;
    }

    public void setMVPMatrix(float[] fArr) {
        if (fArr != null) {
            this.f76880i = fArr;
            this.f76873b.v(fArr);
        }
    }

    public void setMode(int i10) {
        this.f76881j = i10;
    }

    public void setOnGSYSurfaceListener(w7.a aVar) {
        this.f76878g = aVar;
        this.f76873b.s(aVar);
    }

    @Override // android.opengl.GLSurfaceView, com.papa.gsyvideoplayer.render.view.a
    public void setRenderMode(int i10) {
        setMode(i10);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setRenderTransform(Matrix matrix) {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support setRenderTransform now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setVideoParamsListener(j.a aVar) {
        this.f76876e = aVar;
    }

    public GSYVideoGLView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f76875d = new q();
        this.f76881j = 0;
        i(context);
    }
}
