package com.danikula.videocache;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f26103a = "video-cache";

    s() {
    }

    private static File a(Context context, boolean z10) {
        String externalStorageState;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (NullPointerException unused) {
            externalStorageState = "";
        }
        File fileB = (z10 && "mounted".equals(externalStorageState) && Build.VERSION.SDK_INT <= 28) ? b(context) : null;
        if (fileB == null) {
            fileB = context.getCacheDir();
        }
        if (fileB != null) {
            return fileB;
        }
        String str = "/data/data/" + context.getPackageName() + "/cache/";
        h.j("Can't define system cache directory! '" + str + "%s' will be used.");
        return new File(str);
    }

    private static File b(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "cache");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        h.j("Unable to create external cache directory");
        return null;
    }

    public static File c(Context context) {
        return new File(a(context, true), f26103a);
    }
}
