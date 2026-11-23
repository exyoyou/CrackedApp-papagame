package com.join.mgps.zxing.camera;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.Method;
import java.util.List;
import java.util.regex.Pattern;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes3.dex */
final class b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f73407f = "b";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f73408g = 27;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f73409h = 30;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Pattern f73410i = Pattern.compile(",");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f73411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Point f73412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Point f73413c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f73414d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f73415e;

    b(Context context) {
        this.f73411a = context;
    }

    private static int a(CharSequence stringValues, int tenDesiredZoom) {
        int i10 = 0;
        for (String str : f73410i.split(stringValues)) {
            try {
                double d10 = Double.parseDouble(str.trim());
                int i11 = (int) (10.0d * d10);
                if (Math.abs(((double) tenDesiredZoom) - d10) < Math.abs(tenDesiredZoom - i10)) {
                    i10 = i11;
                }
            } catch (NumberFormatException unused) {
                return tenDesiredZoom;
            }
        }
        return i10;
    }

    private static Point b(CharSequence previewSizeValueString, Point screenResolution) {
        int i10 = Integer.MAX_VALUE;
        int i11 = 0;
        int i12 = 0;
        for (String str : f73410i.split(previewSizeValueString)) {
            String strTrim = str.trim();
            int iIndexOf = strTrim.indexOf(120);
            if (iIndexOf < 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Bad preview-size: ");
                sb2.append(strTrim);
            } else {
                try {
                    int i13 = Integer.parseInt(strTrim.substring(0, iIndexOf));
                    int i14 = Integer.parseInt(strTrim.substring(iIndexOf + 1));
                    int iAbs = Math.abs(i13 - screenResolution.x) + Math.abs(i14 - screenResolution.y);
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
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Bad preview-size: ");
                    sb3.append(strTrim);
                }
            }
        }
        if (i11 <= 0 || i12 <= 0) {
            return null;
        }
        return new Point(i11, i12);
    }

    private static Point d(Camera.Parameters parameters, Point screenResolution) {
        Point pointB;
        String str = parameters.get("preview-size-values");
        if (str == null) {
            str = parameters.get("preview-size-value");
        }
        if (str != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("preview-size-values parameter: ");
            sb2.append(str);
            pointB = b(str, screenResolution);
        } else {
            pointB = null;
        }
        return pointB == null ? new Point((screenResolution.x >> 3) << 3, (screenResolution.y >> 3) << 3) : pointB;
    }

    public static int e() {
        return 30;
    }

    private void m(Camera.Parameters parameters) {
        if (Build.MODEL.contains("Behold II") && c.f73422q == 3) {
            parameters.set("flash-value", 1);
        } else {
            parameters.set("flash-value", 2);
        }
        parameters.set("flash-mode", n0.f93599e);
    }

    private void n(Camera.Parameters parameters) {
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
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Bad max-zoom: ");
                    sb2.append(str2);
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
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Bad taking-picture-zoom-max: ");
                    sb3.append(str3);
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
    }

    Point c() {
        return this.f73413c;
    }

    int f() {
        return this.f73414d;
    }

    String g() {
        return this.f73415e;
    }

    Point h() {
        return this.f73412b;
    }

    void i(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        this.f73414d = parameters.getPreviewFormat();
        this.f73415e = parameters.get("preview-format");
        Display defaultDisplay = ((WindowManager) this.f73411a.getSystemService("window")).getDefaultDisplay();
        this.f73412b = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        Point point = new Point();
        Point point2 = this.f73412b;
        point.x = point2.x;
        point.y = point2.y;
        int i10 = point2.x;
        int i11 = point2.y;
        if (i10 < i11) {
            point.x = i11;
            point.y = point2.x;
        }
        this.f73413c = d(parameters, point);
    }

    void j(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        int size = supportedPreviewSizes.size() > 2 ? (supportedPreviewSizes.size() / 2) + 1 : supportedPreviewSizes.size() / 2;
        int i10 = supportedPreviewSizes.get(size).width;
        int i11 = supportedPreviewSizes.get(size).height;
        Point point = this.f73413c;
        point.x = i10;
        point.y = i11;
        parameters.setPreviewSize(i10, i11);
        m(parameters);
        n(parameters);
        camera.setParameters(parameters);
    }

    void k(Camera camera, int angle) {
        Camera.Parameters parameters = camera.getParameters();
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        Point point = this.f73413c;
        int i10 = point.x;
        int i11 = point.y;
        for (Camera.Size size : supportedPreviewSizes) {
            if (size.height == 480 && size.width == 800) {
                i11 = 480;
                i10 = 800;
                break;
            }
        }
        Point point2 = this.f73413c;
        point2.x = i10;
        point2.y = i11;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Setting preview size: ");
        sb2.append(this.f73413c);
        Point point3 = this.f73413c;
        parameters.setPreviewSize(point3.x, point3.y);
        m(parameters);
        n(parameters);
        l(camera, angle);
        camera.setParameters(parameters);
    }

    protected void l(Camera camera, int angle) {
        try {
            Method method = camera.getClass().getMethod("setDisplayOrientation", Integer.TYPE);
            if (method != null) {
                method.invoke(camera, Integer.valueOf(angle));
            }
        } catch (Exception unused) {
        }
    }
}
