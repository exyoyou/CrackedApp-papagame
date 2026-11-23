package com.zxing.android.camera;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.view.SurfaceHolder;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f90437m = "c";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f90438n = 240;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f90439o = 240;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f90440p = 400;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f90441q = 400;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f90442r = "preferences_reverse_image";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f90443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f90444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Camera f90445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Rect f90446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Rect f90447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f90448f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f90449g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f90450h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f90451i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f90452j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final f f90453k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final a f90454l;

    public c(Context context) {
        this.f90443a = context;
        b bVar = new b(context);
        this.f90444b = bVar;
        this.f90453k = new f(bVar);
        this.f90454l = new a();
    }

    public e a(byte[] data, int width, int height) {
        Rect rectD = d();
        if (rectD == null) {
            return null;
        }
        return new e(data, width, height, rectD.left, rectD.top, rectD.width(), rectD.height(), this.f90450h);
    }

    public void b() {
        Camera camera = this.f90445c;
        if (camera != null) {
            camera.release();
            this.f90445c = null;
            this.f90446d = null;
            this.f90447e = null;
        }
    }

    public Rect c() {
        if (this.f90446d == null) {
            if (this.f90445c == null) {
                return null;
            }
            Point pointE = this.f90444b.e();
            int i10 = pointE.x;
            int i11 = (i10 * 3) / 4;
            int i12 = 400;
            if (i11 < 240) {
                i11 = MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA;
            } else if (i11 > 400) {
                i11 = 400;
            }
            int i13 = pointE.y;
            int i14 = (i13 * 3) / 4;
            if (i14 < 240) {
                i12 = MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA;
            } else if (i14 <= 400) {
                i12 = i14;
            }
            int i15 = (i10 - i11) / 2;
            int i16 = ((i13 - i12) * 2) / 5;
            this.f90446d = new Rect(i15, i16, i11 + i15, i12 + i16);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Calculated framing rect: ");
            sb2.append(this.f90446d);
        }
        return this.f90446d;
    }

    public Rect d() {
        if (this.f90447e == null) {
            Rect rectC = c();
            if (rectC == null) {
                return null;
            }
            Rect rect = new Rect(rectC);
            Point pointD = this.f90444b.d();
            Point pointE = this.f90444b.e();
            int i10 = rect.left;
            int i11 = pointD.y;
            int i12 = pointE.x;
            rect.left = (i10 * i11) / i12;
            rect.right = (rect.right * i11) / i12;
            int i13 = rect.top;
            int i14 = pointD.x;
            int i15 = pointE.y;
            rect.top = (i13 * i14) / i15;
            rect.bottom = (rect.bottom * i14) / i15;
            this.f90447e = rect;
        }
        return this.f90447e;
    }

    public void e() {
        Camera camera = this.f90445c;
        if (camera != null) {
            Camera.Parameters parameters = camera.getParameters();
            parameters.setFlashMode(n0.f93599e);
            this.f90445c.setParameters(parameters);
        }
    }

    public void f(SurfaceHolder holder) throws IOException {
        int i10;
        Camera cameraOpen = this.f90445c;
        if (cameraOpen == null) {
            cameraOpen = Camera.open();
            if (cameraOpen == null) {
                throw new IOException();
            }
            this.f90445c = cameraOpen;
        }
        cameraOpen.setPreviewDisplay(holder);
        if (!this.f90448f) {
            this.f90448f = true;
            this.f90444b.f(cameraOpen);
            int i11 = this.f90451i;
            if (i11 > 0 && (i10 = this.f90452j) > 0) {
                j(i11, i10);
                this.f90451i = 0;
                this.f90452j = 0;
            }
        }
        this.f90444b.h(cameraOpen);
        this.f90450h = PreferenceManager.getDefaultSharedPreferences(this.f90443a).getBoolean(f90442r, false);
    }

    public void g() {
        Camera camera = this.f90445c;
        if (camera != null) {
            Camera.Parameters parameters = camera.getParameters();
            parameters.setFlashMode("torch");
            this.f90445c.setParameters(parameters);
        }
    }

    public void h(Handler handler, int message) {
        if (this.f90445c == null || !this.f90449g) {
            return;
        }
        this.f90454l.a(handler, message);
        try {
            this.f90445c.autoFocus(this.f90454l);
        } catch (RuntimeException unused) {
        }
    }

    public void i(Handler handler, int message) {
        Camera camera = this.f90445c;
        if (camera == null || !this.f90449g) {
            return;
        }
        this.f90453k.a(handler, message);
        camera.setOneShotPreviewCallback(this.f90453k);
    }

    public void j(int width, int height) {
        if (!this.f90448f) {
            this.f90451i = width;
            this.f90452j = height;
            return;
        }
        Point pointE = this.f90444b.e();
        int i10 = pointE.x;
        if (width > i10) {
            width = i10;
        }
        int i11 = pointE.y;
        if (height > i11) {
            height = i11;
        }
        int i12 = (i10 - width) / 2;
        int i13 = (i11 - height) / 2;
        this.f90446d = new Rect(i12, i13, width + i12, height + i13);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Calculated manual framing rect: ");
        sb2.append(this.f90446d);
        this.f90447e = null;
    }

    public void k() {
        Camera camera = this.f90445c;
        if (camera == null || this.f90449g) {
            return;
        }
        camera.startPreview();
        this.f90449g = true;
    }

    public void l() {
        Camera camera = this.f90445c;
        if (camera == null || !this.f90449g) {
            return;
        }
        camera.stopPreview();
        this.f90453k.a(null, 0);
        this.f90454l.a(null, 0);
        this.f90449g = false;
    }

    public void m() {
        Camera camera = this.f90445c;
        if (camera != null) {
            Camera.Parameters parameters = camera.getParameters();
            if (parameters.getFlashMode().equals("torch")) {
                parameters.setFlashMode(n0.f93599e);
            } else {
                parameters.setFlashMode("torch");
            }
            this.f90445c.setParameters(parameters);
        }
    }
}
