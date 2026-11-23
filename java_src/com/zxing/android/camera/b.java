package com.zxing.android.camera;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.hardware.Camera;
import android.preference.PreferenceManager;
import android.view.Display;
import android.view.WindowManager;
import java.util.Collection;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes8.dex */
final class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f90430d = "CameraConfiguration";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f90431e = 76800;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f90432f = 384000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f90433g = "preferences_front_light";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f90434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Point f90435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Point f90436c;

    b(Context context) {
        this.f90434a = context;
    }

    private static void a(Camera.Parameters parameters, boolean newSetting) {
        String strC = newSetting ? c(parameters.getSupportedFlashModes(), "torch", n0.f93598d) : c(parameters.getSupportedFlashModes(), n0.f93599e);
        if (strC != null) {
            parameters.setFlashMode(strC);
        }
    }

    private static Point b(Camera.Parameters parameters, Point screenResolution, boolean portrait) {
        Point point = null;
        int i10 = Integer.MAX_VALUE;
        for (Camera.Size size : parameters.getSupportedPreviewSizes()) {
            int i11 = size.height;
            int i12 = size.width;
            int i13 = i11 * i12;
            if (i13 >= f90431e && i13 <= f90432f) {
                int i14 = portrait ? i11 : i12;
                if (portrait) {
                    i11 = i12;
                }
                int iAbs = Math.abs((screenResolution.x * i11) - (screenResolution.y * i14));
                if (iAbs == 0) {
                    point = new Point(i14, i11);
                    break;
                }
                if (iAbs < i10) {
                    point = new Point(i14, i11);
                    i10 = iAbs;
                }
            }
        }
        if (point != null) {
            return point;
        }
        Camera.Size previewSize = parameters.getPreviewSize();
        return new Point(previewSize.width, previewSize.height);
    }

    private static String c(Collection<String> supportedValues, String... desiredValues) {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Supported values: ");
        sb2.append(supportedValues);
        if (supportedValues != null) {
            int length = desiredValues.length;
            for (int i10 = 0; i10 < length; i10++) {
                str = desiredValues[i10];
                if (!supportedValues.contains(str)) {
                }
            }
            str = null;
        } else {
            str = null;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Settable value: ");
        sb3.append(str);
        return str;
    }

    private static void g(Camera.Parameters parameters, SharedPreferences prefs) {
        a(parameters, prefs.getBoolean(f90433g, false));
    }

    Point d() {
        return this.f90436c;
    }

    Point e() {
        return this.f90435b;
    }

    void f(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        Display defaultDisplay = ((WindowManager) this.f90434a.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        if (width >= height) {
            width = height;
            height = width;
        }
        this.f90435b = new Point(width, height);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Screen resolution: ");
        sb2.append(this.f90435b);
        this.f90436c = b(parameters, new Point(height, width), false);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Camera resolution: ");
        sb3.append(this.f90436c);
    }

    void h(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        if (parameters == null) {
            return;
        }
        g(parameters, PreferenceManager.getDefaultSharedPreferences(this.f90434a));
        String strC = c(parameters.getSupportedFocusModes(), "auto", "macro");
        if (strC != null) {
            parameters.setFocusMode(strC);
        }
        Point point = this.f90436c;
        parameters.setPreviewSize(point.x, point.y);
        camera.setDisplayOrientation(90);
        camera.setParameters(parameters);
    }

    void i(Camera camera, boolean newSetting) {
        Camera.Parameters parameters = camera.getParameters();
        a(parameters, newSetting);
        camera.setParameters(parameters);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f90434a);
        if (defaultSharedPreferences.getBoolean(f90433g, false) != newSetting) {
            SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
            editorEdit.putBoolean(f90433g, newSetting);
            editorEdit.commit();
        }
    }
}
