package com.byazt.mg;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 170, 71})
public class x {
    public static File c(@NonNull Context context) {
        return new File(ve(context), "CrashLogJava");
    }

    public static File tt(@NonNull Context context) {
        return new File(ve(context), "crash_history");
    }

    @SuppressLint({"SdCardPath"})
    private static String ve(@NonNull Context context) {
        String path;
        try {
            if (com.byazt.nys.tt.c(context) != null) {
                path = com.byazt.nys.tt.c(context).getPath();
            } else {
                File fileC = com.byazt.nys.tt.c(context, "/data/data/" + context.getPackageName() + "/files/", 0);
                path = fileC != null ? fileC.getPath() : null;
            }
            return path != null ? path : "/sdcard/";
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
            return "/sdcard/";
        }
    }

    public static String c() {
        return String.format("java_%s.npth", String.valueOf(System.nanoTime()));
    }

    public static String tt() {
        return String.format("anr_%s.npth", String.valueOf(System.nanoTime()));
    }
}
