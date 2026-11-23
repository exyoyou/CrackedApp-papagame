package com.join.mgps.zxing.camera;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Build;
import android.os.Handler;
import android.view.SurfaceHolder;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f73416k = "c";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f73417l = 420;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f73418m = 420;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f73419n = 800;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f73420o = 480;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static c f73421p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static final int f73422q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f73423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f73424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Camera f73425c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Rect f73426d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Rect f73427e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f73428f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f73429g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f73430h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final g f73431i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final a f73432j;

    static {
        int i10;
        try {
            i10 = Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException unused) {
            i10 = 10000;
        }
        f73422q = i10;
    }

    private c(Context context) {
        this.f73423a = context;
        b bVar = new b(context);
        this.f73424b = bVar;
        boolean z10 = Integer.parseInt(Build.VERSION.SDK) > 3;
        this.f73430h = z10;
        this.f73431i = new g(bVar, z10);
        this.f73432j = new a();
    }

    public static c c() {
        return f73421p;
    }

    public static void g(Context context) {
        if (f73421p == null) {
            f73421p = new c(context);
        }
    }

    public f a(byte[] data, int width, int height) {
        Rect rectF = f();
        int iF = this.f73424b.f();
        String strG = this.f73424b.g();
        if (iF == 16 || iF == 17) {
            return new f(data, width, height, rectF.left, rectF.top, rectF.width(), rectF.height());
        }
        if ("yuv420p".equals(strG)) {
            return new f(data, width, height, rectF.left, rectF.top, rectF.width(), rectF.height());
        }
        throw new IllegalArgumentException("Unsupported picture format: " + iF + '/' + strG);
    }

    public void b() {
        if (this.f73425c != null) {
            d.a();
            this.f73425c.release();
            this.f73425c = null;
        }
    }

    public Rect d() {
        Point pointH = this.f73424b.h();
        if (this.f73426d == null) {
            if (this.f73425c == null) {
                return null;
            }
            int i10 = pointH != null ? (pointH.x * 3) / 4 : 0;
            int i11 = TypedValues.CycleType.TYPE_EASING;
            if (i10 < 420) {
                i10 = TypedValues.CycleType.TYPE_EASING;
            } else if (i10 > 800) {
                i10 = 800;
            }
            int i12 = pointH != null ? (pointH.y * 3) / 4 : 0;
            if (i12 >= 420) {
                i11 = f73420o;
                if (i12 <= f73420o) {
                    i11 = i12;
                }
            }
            int i13 = pointH != null ? (pointH.x - i10) / 2 : 0;
            int i14 = pointH != null ? (pointH.y - i11) / 2 : 0;
            if (this.f73423a.getResources().getConfiguration().orientation == 1) {
                this.f73426d = new Rect(0, i14, i13 + i13 + i10, i11 + i14);
            } else {
                this.f73426d = new Rect(i13, i14, i10 + i13, i11 + i14);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Calculated framing rect: ");
            sb2.append(this.f73426d);
        }
        return this.f73426d;
    }

    public Rect e() {
        float f10 = this.f73423a.getResources().getDisplayMetrics().density;
        int i10 = (int) (360.0f * f10);
        int i11 = (int) (f10 * 240.0f);
        Point pointH = this.f73424b.h();
        if (this.f73426d == null) {
            if (this.f73425c == null) {
                return null;
            }
            int i12 = pointH.x;
            int i13 = (i12 * 3) / 4;
            if (i13 < 240) {
                i10 = MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA;
            } else if (i13 <= i10) {
                i10 = i13;
            }
            int i14 = pointH.y;
            int i15 = (i14 * 3) / 4;
            if (i15 < 240) {
                i11 = MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA;
            } else if (i15 <= i11) {
                i11 = i15;
            }
            int i16 = (i12 - i10) / 2;
            int i17 = (i14 - i11) / 2;
            this.f73426d = new Rect(i16, i17, i10 + i16, i11 + i17);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Calculated framing rect: ");
            sb2.append(this.f73426d);
        }
        return this.f73426d;
    }

    public Rect f() {
        if (this.f73427e == null) {
            Rect rect = new Rect(d());
            Point pointC = this.f73424b.c();
            Point pointH = this.f73424b.h();
            if (this.f73423a.getResources().getConfiguration().orientation == 1) {
                int i10 = rect.left;
                int i11 = pointC.y;
                int i12 = pointH.x;
                rect.left = (i10 * i11) / i12;
                rect.right = (rect.right * i11) / i12;
                int i13 = rect.top;
                int i14 = pointC.x;
                int i15 = pointH.y;
                rect.top = (i13 * i14) / i15;
                rect.bottom = (rect.bottom * i14) / i15;
            } else if (pointH != null) {
                int i16 = rect.left;
                int i17 = pointC.x;
                int i18 = pointH.x;
                rect.left = (i16 * i17) / i18;
                rect.right = (rect.right * i17) / i18;
                int i19 = rect.top;
                int i20 = pointC.y;
                int i21 = pointH.y;
                rect.top = (i19 * i20) / i21;
                rect.bottom = (rect.bottom * i20) / i21;
            } else {
                int i22 = rect.left;
                int i23 = pointC.x;
                rect.left = i22 * i23;
                rect.right *= i23;
                int i24 = rect.top;
                int i25 = pointC.y;
                rect.top = i24 * i25;
                rect.bottom *= i25;
            }
            this.f73427e = rect;
        }
        return this.f73427e;
    }

    public Context getContext() {
        return this.f73423a;
    }

    public void h(SurfaceHolder holder) throws IOException {
        if (this.f73425c == null) {
            Camera cameraOpen = Camera.open();
            this.f73425c = cameraOpen;
            if (cameraOpen == null) {
                throw new IOException();
            }
            cameraOpen.setPreviewDisplay(holder);
            if (!this.f73428f) {
                this.f73428f = true;
                this.f73424b.i(this.f73425c);
            }
            this.f73424b.j(this.f73425c);
            d.b();
        }
    }

    public void i(SurfaceHolder holder, int angle) throws IOException {
        if (this.f73425c == null) {
            Camera cameraOpen = Camera.open();
            this.f73425c = cameraOpen;
            if (cameraOpen == null) {
                throw new IOException();
            }
            cameraOpen.setPreviewDisplay(holder);
            try {
                this.f73425c.getParameters().setFocusMode("continuous-picture");
            } catch (Exception unused) {
            }
            if (!this.f73428f) {
                this.f73428f = true;
                this.f73424b.i(this.f73425c);
            }
            this.f73424b.k(this.f73425c, angle);
            d.b();
        }
    }

    public void j(Handler handler, int message) {
        if (this.f73425c == null || !this.f73429g) {
            return;
        }
        this.f73432j.a(handler, message);
        this.f73425c.autoFocus(this.f73432j);
    }

    public void k(Handler handler, int message) {
        if (this.f73425c == null || !this.f73429g) {
            return;
        }
        this.f73431i.a(handler, message);
        if (this.f73430h) {
            this.f73425c.setOneShotPreviewCallback(this.f73431i);
        } else {
            this.f73425c.setPreviewCallback(this.f73431i);
        }
    }

    public void l() {
        Camera camera = this.f73425c;
        if (camera == null || this.f73429g) {
            return;
        }
        camera.startPreview();
        this.f73429g = true;
    }

    public void m() {
        Camera camera = this.f73425c;
        if (camera == null || !this.f73429g) {
            return;
        }
        if (!this.f73430h) {
            camera.setPreviewCallback(null);
        }
        this.f73425c.stopPreview();
        this.f73431i.a(null, 0);
        this.f73432j.a(null, 0);
        this.f73429g = false;
    }
}
