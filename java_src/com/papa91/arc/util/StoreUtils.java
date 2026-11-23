package com.papa91.arc.util;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class StoreUtils {
    private static String externalStorage = "";

    public static String getEmuRoot(Context context) {
        return getExternalStorageDirectory(context) + "/papa91";
    }

    public static String getExternalStorageDirectory() {
        if (!TextUtils.isEmpty(externalStorage)) {
            return externalStorage;
        }
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory != null) {
            externalStorage = externalStorageDirectory.getAbsolutePath();
        }
        return externalStorage;
    }

    public static String getExternalStorageDirectory(Context context) {
        if (context != null && context.getExternalFilesDir("") != null) {
            return context.getExternalFilesDir("").getAbsolutePath();
        }
        return getExternalStorageDirectory();
    }
}
