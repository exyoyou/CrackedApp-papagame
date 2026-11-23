package com.papa.gsyvideoplayer.utils;

import android.content.Context;
import android.os.Environment;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f77115a = "video-cache";

    private static File a(Context context, boolean z10) {
        String externalStorageState;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (NullPointerException unused) {
            externalStorageState = "";
        }
        File fileB = (z10 && "mounted".equals(externalStorageState)) ? b(context) : null;
        if (fileB == null) {
            fileB = context.getCacheDir();
        }
        if (fileB != null) {
            return fileB;
        }
        return new File("/data/data/" + context.getPackageName() + "/cache/");
    }

    private static File b(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "cache");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    public static File c(Context context) {
        return new File(a(context, true), f77115a);
    }
}
