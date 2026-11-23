package com.switfpass.pay.activity.zxing.camera;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import java.util.regex.Pattern;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes2.dex */
final class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f82590f = "d";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f82591g = Pattern.compile(",");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f82592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Point f82593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Point f82594c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f82595d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f82596e;

    d(Context context) {
        this.f82592a = context;
    }

    private static int a(CharSequence charSequence, int i10) {
        int i11 = 0;
        for (String str : f82591g.split(charSequence)) {
            try {
                double d10 = Double.parseDouble(str.trim());
                int i12 = (int) (10.0d * d10);
                if (Math.abs(((double) i10) - d10) < Math.abs(i10 - i11)) {
                    i11 = i12;
                }
            } catch (NumberFormatException unused) {
                return i10;
            }
        }
        return i11;
    }

    private static Point b(CharSequence charSequence, Point point) {
        StringBuilder sb2;
        int i10 = Integer.MAX_VALUE;
        int i11 = 0;
        int i12 = 0;
        for (String str : f82591g.split(charSequence)) {
            String strTrim = str.trim();
            int iIndexOf = strTrim.indexOf(120);
            if (iIndexOf < 0) {
                sb2 = new StringBuilder("Bad preview-size: ");
            } else {
                try {
                    int i13 = Integer.parseInt(strTrim.substring(0, iIndexOf));
                    int i14 = Integer.parseInt(strTrim.substring(iIndexOf + 1));
                    int iAbs = Math.abs(i13 - point.x) + Math.abs(i14 - point.y);
                    if (iAbs == 0) {
                        i12 = i14;
                        i11 = i13;
                        break;
                    }
                    if (iAbs < i10) {
                        i12 = i14;
                        i10 = iAbs;
                        i11 = i13;
                    }
                } catch (NumberFormatException unused) {
                    sb2 = new StringBuilder("Bad preview-size: ");
                    sb2.append(strTrim);
                }
            }
            sb2.append(strTrim);
        }
        if (i11 <= 0 || i12 <= 0) {
            return null;
        }
        return new Point(i11, i12);
    }

    final void c(Camera camera) {
        Point point;
        Camera.Parameters parameters = camera.getParameters();
        this.f82595d = parameters.getPreviewFormat();
        this.f82596e = parameters.get("preview-format");
        StringBuilder sb2 = new StringBuilder("Default preview format: ");
        sb2.append(this.f82595d);
        sb2.append('/');
        sb2.append(this.f82596e);
        Display defaultDisplay = ((WindowManager) this.f82592a.getSystemService("window")).getDefaultDisplay();
        this.f82593b = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        new StringBuilder("Screen resolution: ").append(this.f82593b);
        Point point2 = this.f82593b;
        String str = parameters.get("preview-size-values");
        if (str == null) {
            str = parameters.get("preview-size-value");
        }
        if (str != null) {
            new StringBuilder("preview-size-values parameter: ").append(str);
            point = b(str, point2);
        } else {
            point = null;
        }
        if (point == null) {
            point = new Point((point2.x >> 3) << 3, (point2.y >> 3) << 3);
        }
        this.f82594c = point;
        new StringBuilder("Camera resolution: ").append(this.f82593b);
    }

    final void d(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        new StringBuilder("Setting preview size: ").append(this.f82594c);
        Point point = this.f82594c;
        parameters.setPreviewSize(point.x, point.y);
        if (Build.MODEL.contains("Behold II") && a.f82571m == 3) {
            parameters.set("flash-value", 1);
        } else {
            parameters.set("flash-value", 2);
        }
        parameters.set("flash-mode", n0.f93599e);
        String str = parameters.get("zoom-supported");
        if (str == null || Boolean.parseBoolean(str)) {
            String str2 = parameters.get("max-zoom");
            int iA = 27;
            if (str2 != null) {
                try {
                    int i10 = (int) (Double.parseDouble(str2) * 10.0d);
                    if (27 > i10) {
                        iA = i10;
                    }
                } catch (NumberFormatException unused) {
                    new StringBuilder("Bad max-zoom: ").append(str2);
                }
            }
            String str3 = parameters.get("taking-picture-zoom-max");
            if (str3 != null) {
                try {
                    int i11 = Integer.parseInt(str3);
                    if (iA > i11) {
                        iA = i11;
                    }
                } catch (NumberFormatException unused2) {
                    new StringBuilder("Bad taking-picture-zoom-max: ").append(str3);
                }
            }
            String str4 = parameters.get("mot-zoom-values");
            if (str4 != null) {
                iA = a(str4, iA);
            }
            String str5 = parameters.get("mot-zoom-step");
            if (str5 != null) {
                try {
                    int i12 = (int) (Double.parseDouble(str5.trim()) * 10.0d);
                    if (i12 > 1) {
                        iA -= iA % i12;
                    }
                } catch (NumberFormatException unused3) {
                }
            }
            if (str2 != null || str4 != null) {
                parameters.set("zoom", String.valueOf(((double) iA) / 10.0d));
            }
            if (str3 != null) {
                parameters.set("taking-picture-zoom", iA);
            }
        }
        camera.setDisplayOrientation(90);
        camera.setParameters(parameters);
    }

    final int e() {
        return this.f82595d;
    }

    final Point f() {
        return this.f82594c;
    }

    final Point g() {
        return this.f82593b;
    }

    final String h() {
        return this.f82596e;
    }
}
