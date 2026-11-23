package com.byazt.qw;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.byazt.aas.zm;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 726, 71})
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f19306a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile String f19307n;
    public static AtomicBoolean sp = new AtomicBoolean();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static AtomicInteger f19308x = new AtomicInteger();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public GLSurfaceView f19309c;
    public AtomicBoolean uj = new AtomicBoolean();
    public Handler tt = da.c();
    public Handler ve = da.tt();

    interface c {
        void c(GLSurfaceView gLSurfaceView);
    }

    public static String c() {
        if (!TextUtils.isEmpty(f19307n)) {
            return f19307n;
        }
        String strVe = com.byazt.by.uj.c().ve("dev20", Long.MAX_VALUE);
        f19307n = strVe;
        if (!TextUtils.isEmpty(strVe)) {
            return f19307n;
        }
        if (!TextUtils.isEmpty(f19306a)) {
            return f19306a;
        }
        String strVe2 = com.byazt.by.uj.c().ve("dev21", Long.MAX_VALUE);
        f19306a = strVe2;
        if (!TextUtils.isEmpty(strVe2)) {
            return f19306a;
        }
        if (f19308x.addAndGet(1) >= 3) {
            return f19306a;
        }
        String strC = zm.c("ro.board.gpu");
        f19306a = strC;
        if (TextUtils.isEmpty(strC)) {
            f19306a = zm.c("ro.hardware.egl");
        }
        if (!TextUtils.isEmpty(f19306a)) {
            com.byazt.by.uj.c().ve("dev21", f19306a);
        }
        return f19306a;
    }

    public static void c(View view) {
        if (TextUtils.isEmpty(f19307n) && (view instanceof ViewGroup) && gt.tt().lo() && sp.compareAndSet(false, true)) {
            String strVe = com.byazt.by.uj.c().ve("dev20", Long.MAX_VALUE);
            if (!TextUtils.isEmpty(strVe)) {
                f19307n = strVe;
            } else {
                new x().c((ViewGroup) view, new sp() { // from class: com.byazt.qw.x.1
                    @Override // com.byazt.qw.sp
                    public void c(String str) {
                        String unused = x.f19307n = str;
                        if (TextUtils.isEmpty(str)) {
                            return;
                        }
                        com.byazt.by.uj.c().ve("dev20", x.f19307n);
                    }
                });
            }
        }
    }

    public void c(final ViewGroup viewGroup, final sp spVar) {
        Handler handler = this.ve;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.byazt.qw.x.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Context context = viewGroup.getContext();
                        x.this.f19309c = new GLSurfaceView(context);
                        x.this.f19309c.setAlpha(0.0f);
                        x.this.f19309c.setLayoutParams(new FrameLayout.LayoutParams(1, 1));
                        viewGroup.addView(x.this.f19309c);
                        x xVar = x.this;
                        xVar.c(viewGroup, xVar.f19309c, spVar, new c() { // from class: com.byazt.qw.x.2.1
                            @Override // com.byazt.qw.x.c
                            public void c(GLSurfaceView gLSurfaceView) {
                                x.this.c(gLSurfaceView);
                            }
                        });
                    } catch (Throwable th) {
                        m.uj("gpuInfo", th.getMessage());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final GLSurfaceView gLSurfaceView) {
        Handler handler = this.ve;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.byazt.qw.x.3
                @Override // java.lang.Runnable
                public void run() {
                    ViewParent parent = gLSurfaceView.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(gLSurfaceView);
                    }
                    x.this.f19309c = null;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(ViewGroup viewGroup, final GLSurfaceView gLSurfaceView, final sp spVar, final c cVar) {
        final String[] strArr = new String[1];
        final Runnable runnable = new Runnable() { // from class: com.byazt.qw.x.4
            @Override // java.lang.Runnable
            public void run() {
                sp spVar2;
                x.this.uj.set(true);
                try {
                    gLSurfaceView.onPause();
                    String str = strArr[0];
                    if (str != null && (spVar2 = spVar) != null) {
                        spVar2.c(str);
                    }
                    c cVar2 = cVar;
                    if (cVar2 != null) {
                        cVar2.c(gLSurfaceView);
                    }
                } catch (Throwable th) {
                    m.uj("gpuInfo2", th.getMessage());
                }
            }
        };
        try {
            gLSurfaceView.setEGLContextClientVersion(2);
            gLSurfaceView.setRenderer(new GLSurfaceView.Renderer() { // from class: com.byazt.qw.x.5
                @Override // android.opengl.GLSurfaceView.Renderer
                public void onDrawFrame(GL10 gl10) {
                    gLSurfaceView.setRenderMode(0);
                }

                @Override // android.opengl.GLSurfaceView.Renderer
                public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
                }

                @Override // android.opengl.GLSurfaceView.Renderer
                public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
                    strArr[0] = GLES20.glGetString(7937);
                    Handler handler = x.this.tt;
                    if (handler == null || x.this.uj.get()) {
                        return;
                    }
                    handler.removeCallbacks(runnable);
                    handler.post(runnable);
                }
            });
            gLSurfaceView.setRenderMode(0);
            Handler handler = this.tt;
            if (handler != null) {
                handler.postDelayed(runnable, 2000L);
            }
        } catch (Throwable th) {
            m.uj("gpuInfo1", th.getMessage());
        }
    }
}
