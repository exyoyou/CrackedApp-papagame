package com.beizi.fusion.tool;

import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public class al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f10449a = "extra";

    public static void a(File file) {
        try {
            if (!file.isDirectory()) {
                if (file.exists()) {
                    file.delete();
                    return;
                }
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (File file2 : fileArrListFiles) {
                    a(file2);
                }
            }
            file.delete();
        } catch (Exception unused) {
        }
    }
}
