package com.byazt.hu;

import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1381, 91})
public class sp {
    public static long c(File file) {
        if (file == null || !file.exists()) {
            return 0L;
        }
        return c(file, file.lastModified(), 0);
    }

    private static long c(File file, long j10, int i10) {
        File[] fileArrListFiles;
        if (file != null && file.exists()) {
            j10 = Math.max(j10, file.lastModified());
            int i11 = i10 + 1;
            if (i11 >= 50) {
                return j10;
            }
            if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    j10 = Math.max(j10, c(file2, j10, i11));
                }
            }
        }
        return j10;
    }
}
