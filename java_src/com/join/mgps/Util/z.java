package com.join.mgps.Util;

import android.content.Context;
import android.os.Environment;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f50162a = 83886080;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f50163b = 104857600;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f50165d = "";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f50183v = "10";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f50164c = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f50166e = f50164c + "/wufan91/";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f50167f = f50164c + "/wufan91/";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f50168g = f50164c + "/wufan91/";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f50169h = f50164c + "/wufan91/cloudRecord/cloud";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f50170i = f50164c + "/wufan91/cloudRecord/marcket";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f50171j = f50164c + "/wufan91/cloudRecord/endgame";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f50172k = f50164c + "/wufan91/Image/";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f50173l = f50164c + "/wufan91/.cache/";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static String f50174m = f50164c + "/wufan91/.cache/forum_image";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f50175n = f50173l + "avatar/";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static String f50176o = f50173l + "crop/";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static String f50177p = f50173l + "homePopupAd/";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static String f50178q = f50164c + "/Android/obb";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static String f50179r = f50164c + "/Android/data";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static String f50180s = f50164c + "/Android";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static String f50181t = "x-cos-meta-md5,etag";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static String f50182u = "com.papa91.arc.base";

    public static File a() {
        return new File(f50176o, "temp_cropped.jpg");
    }

    public static File b(Context context) {
        File fileD = f2.d(context, null);
        return fileD == null ? new File(f50177p) : new File(fileD, "homePopupAd");
    }

    public static File c() {
        return new File(f50175n + "avatar.jpg");
    }

    public static File d(Context context) {
        File fileD = f2.d(context, null);
        return fileD == null ? new File(f50172k) : new File(fileD, "SplashImage");
    }

    public static void e(Context context) {
        if (context.getSharedPreferences("PrefDef", 4).getBoolean("firstShowUserPermiss", true)) {
            return;
        }
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        f50165d = absolutePath;
        if (context.getExternalFilesDir("") == null) {
            f50164c = absolutePath;
        } else {
            f50164c = context.getExternalFilesDir("").getAbsolutePath();
        }
        f50166e = f50164c + "/wufan91/";
        f50167f = f50164c + "/wufan91/";
        f50168g = f50164c + "/wufan91/";
        f50169h = f50164c + "/wufan91/cloudRecord/cloud";
        f50170i = f50164c + "/wufan91/cloudRecord/marcket";
        f50171j = f50164c + "/wufan91/cloudRecord/endgame";
        f50172k = f50164c + "/wufan91/Image/";
        f50173l = f50164c + "/wufan91/.cache/";
        f50174m = f50164c + "/wufan91/.cache/forum_image";
        f50175n = f50173l + "avatar/";
        f50176o = f50173l + "crop/";
        f50177p = f50173l + "homePopupAd/";
        f50178q = absolutePath + "/Android/obb";
        f50179r = absolutePath + "/Android/data";
        f50180s = absolutePath + "/Android";
    }
}
