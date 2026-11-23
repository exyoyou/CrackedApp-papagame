package com.kwad.sdk.utils;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class bg {
    private static String bqd;
    private static File bqe;

    private static boolean Wm() {
        try {
            return "mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable();
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
            return false;
        }
    }

    private static String ed(Context context) {
        if (!TextUtils.isEmpty(bqd)) {
            return bqd;
        }
        String path = null;
        if (Wm()) {
            try {
                File externalFilesDir = context.getExternalFilesDir(null);
                if (externalFilesDir != null) {
                    path = externalFilesDir.getPath();
                }
            } catch (Exception e10) {
                com.kwad.sdk.core.d.c.printStackTrace(e10);
            }
        }
        if (TextUtils.isEmpty(path)) {
            path = context.getFilesDir().getPath();
        }
        String str = path + File.separator + "ksadsdk";
        bqd = str;
        return str;
    }

    public static File ee(Context context) {
        File file = bqe;
        if (file != null) {
            return file;
        }
        String path = null;
        if (Wm()) {
            try {
                File externalCacheDir = context.getExternalCacheDir();
                if (externalCacheDir != null) {
                    path = externalCacheDir.getPath();
                }
            } catch (Exception e10) {
                com.kwad.sdk.core.d.c.printStackTrace(e10);
            }
        }
        if (TextUtils.isEmpty(path)) {
            path = context.getCacheDir().getPath();
        }
        File file2 = new File(path + File.separator + "ksadsdk");
        bqe = file2;
        if (!file2.exists()) {
            bqe.mkdirs();
        }
        return bqe;
    }

    public static File ef(Context context) {
        File file = new File(ed(context) + File.separator + "Download");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File eg(Context context) {
        File file = new File(ed(context) + File.separator + "downloadFileSync/.temp");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File eh(Context context) {
        String strEd;
        if (com.kwad.framework.a.a.pe.booleanValue()) {
            strEd = ed(context);
        } else {
            strEd = context.getFilesDir().getAbsolutePath() + File.separator + "ksadsdk";
        }
        return new File(strEd + File.separator + "ksadlog");
    }

    public static String ei(Context context) {
        File filesDir;
        if (context == null || (filesDir = context.getFilesDir()) == null) {
            return "";
        }
        return filesDir.getPath() + File.separator + "ksadsdk";
    }

    public static String ej(Context context) {
        return ee(context).getPath() + "/cookie";
    }

    public static String getTkJsFileDir(Context context, String str) {
        if (context == null) {
            return "";
        }
        String strEi = ei(context);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(strEi);
        String str2 = File.separator;
        sb2.append(str2);
        sb2.append("ksad/download/js");
        sb2.append(str2);
        sb2.append(str);
        return sb2.toString();
    }

    public static String getTkJsRootDir(Context context) {
        if (context == null) {
            return "";
        }
        return ei(context) + File.separator + "ksad/download/js";
    }
}
