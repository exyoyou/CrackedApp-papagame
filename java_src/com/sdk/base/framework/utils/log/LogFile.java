package com.sdk.base.framework.utils.log;

import android.content.Context;
import com.sdk.f.d;
import com.sdk.k.b;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class LogFile {
    private static final String CHARSET = "UTF-8";
    public static final String LOG_SUFFIX = ".log";
    private static final String TAG = "com.sdk.base.framework.utils.log.LogFile";
    private static boolean isDebug = d.f78521a;

    public static void delete(Context context) {
        String str = b.a("yyyy-MM-dd") + LOG_SUFFIX;
        File[] fileArrListFiles = new File(context.getFilesDir(), "/zzx_log/").listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.getName().equals(str)) {
                file.delete();
            }
        }
    }

    public static ArrayList<File> get(Context context) {
        String str = b.a("yyyy-MM-dd") + LOG_SUFFIX;
        ArrayList<File> arrayList = new ArrayList<>();
        File[] fileArrListFiles = new File(context.getFilesDir(), "/zzx_log/").listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
            return null;
        }
        for (File file : fileArrListFiles) {
            if (file.isFile() && !file.getName().equals(str)) {
                arrayList.add(file);
            }
        }
        return arrayList;
    }

    public static boolean save2Internal(Context context, Throwable th) {
        return true;
    }
}
