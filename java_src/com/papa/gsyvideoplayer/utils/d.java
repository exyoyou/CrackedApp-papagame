package com.papa.gsyvideoplayer.utils;

import android.graphics.Bitmap;
import android.os.Environment;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f76927a = Environment.getExternalStorageDirectory().getPath();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f76928b = "GSYVideo";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f76929c = "GSYVideoTest";

    public static void a(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (!file2.isDirectory() && file2.exists()) {
                    try {
                        file2.delete();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
    }

    public static String b(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f76927a);
        String str2 = File.separator;
        sb2.append(str2);
        sb2.append(str);
        sb2.append(str2);
        return sb2.toString();
    }

    public static String c() {
        String strB = b(f76928b);
        File file = new File(strB);
        if (!file.exists()) {
            file.mkdirs();
        }
        return strB;
    }

    public static String d() {
        String strB = b(f76929c);
        File file = new File(strB);
        if (!file.exists()) {
            file.mkdirs();
        }
        return strB;
    }

    public static void e(Bitmap bitmap, File file) {
        if (bitmap != null) {
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(file));
                bitmap.recycle();
            } catch (FileNotFoundException e10) {
                e10.printStackTrace();
            }
        }
    }
}
