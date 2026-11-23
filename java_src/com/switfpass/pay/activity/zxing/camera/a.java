package com.switfpass.pay.activity.zxing.camera;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Build;
import android.os.Handler;
import android.view.SurfaceHolder;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f82569k = "a";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static a f82570l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final int f82571m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f82572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f82573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Camera f82574c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Rect f82575d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Rect f82576e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f82577f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f82578g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f82579h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final f f82580i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final c f82581j;

    static {
        int i10;
        try {
            i10 = Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException unused) {
            i10 = 10000;
        }
        f82571m = i10;
    }

    private a(Context context) {
        this.f82572a = context;
        d dVar = new d(context);
        this.f82573b = dVar;
        boolean z10 = Integer.parseInt(Build.VERSION.SDK) > 3;
        this.f82579h = z10;
        this.f82580i = new f(dVar, z10);
        this.f82581j = new c();
    }

    public static a c() {
        return f82570l;
    }

    public static void f(Context context) {
        if (f82570l == null) {
            f82570l = new a(context);
        }
    }

    public final b a(byte[] bArr, int i10, int i11) {
        Rect rectE = e();
        int iE = this.f82573b.e();
        String strH = this.f82573b.h();
        if (iE == 16 || iE == 17) {
            return new b(bArr, i10, i11, rectE.left, rectE.top, rectE.width(), rectE.height());
        }
        if ("yuv420p".equals(strH)) {
            return new b(bArr, i10, i11, rectE.left, rectE.top, rectE.width(), rectE.height());
        }
        throw new IllegalArgumentException("Unsupported picture format: " + iE + '/' + strH);
    }

    public final void b() {
        if (this.f82574c != null) {
            e.d();
            this.f82574c.release();
            this.f82574c = null;
        }
    }

    public final Rect d() {
        Point pointG = this.f82573b.g();
        if (this.f82575d == null) {
            if (this.f82574c == null) {
                return null;
            }
            int i10 = (int) (((double) this.f82572a.getResources().getDisplayMetrics().widthPixels) * 0.6d);
            int i11 = (int) (((double) i10) * 0.9d);
            int i12 = (pointG.x - i10) / 2;
            int i13 = (pointG.y - i11) / 4;
            this.f82575d = new Rect(i12, i13, i10 + i12 + 30, i11 + i13 + 50);
            new StringBuilder("Calculated framing rect: ").append(this.f82575d);
        }
        return this.f82575d;
    }

    public final Rect e() {
        if (this.f82576e == null) {
            Rect rect = new Rect(d());
            Point pointF = this.f82573b.f();
            Point pointG = this.f82573b.g();
            int i10 = rect.left;
            int i11 = pointF.y;
            int i12 = pointG.x;
            rect.left = (i10 * i11) / i12;
            rect.right = (rect.right * i11) / i12;
            int i13 = rect.top;
            int i14 = pointF.x;
            int i15 = pointG.y;
            rect.top = (i13 * i14) / i15;
            rect.bottom = (rect.bottom * i14) / i15;
            this.f82576e = rect;
        }
        return this.f82576e;
    }

    public final void g(SurfaceHolder surfaceHolder) throws IOException {
        if (this.f82574c == null) {
            Camera cameraOpen = Camera.open();
            this.f82574c = cameraOpen;
            if (cameraOpen == null) {
                throw new IOException();
            }
            cameraOpen.setPreviewDisplay(surfaceHolder);
            if (!this.f82577f) {
                this.f82577f = true;
                this.f82573b.c(this.f82574c);
            }
            this.f82573b.d(this.f82574c);
        }
    }

    public final void h(Handler handler, int i10) {
        if (this.f82574c == null || !this.f82578g) {
            return;
        }
        this.f82581j.a(handler, i10);
        this.f82574c.autoFocus(this.f82581j);
    }

    public final void i(Handler handler, int i10) {
        if (this.f82574c == null || !this.f82578g) {
            return;
        }
        this.f82580i.a(handler, i10);
        if (this.f82579h) {
            this.f82574c.setOneShotPreviewCallback(this.f82580i);
        } else {
            this.f82574c.setPreviewCallback(this.f82580i);
        }
    }

    public final void j() {
        Camera camera = this.f82574c;
        if (camera == null || this.f82578g) {
            return;
        }
        camera.startPreview();
        this.f82578g = true;
    }

    public final void k() {
        Camera camera = this.f82574c;
        if (camera == null || !this.f82578g) {
            return;
        }
        if (!this.f82579h) {
            camera.setPreviewCallback(null);
        }
        this.f82574c.stopPreview();
        this.f82580i.a(null, 0);
        this.f82581j.a(null, 0);
        this.f82578g = false;
    }
}
