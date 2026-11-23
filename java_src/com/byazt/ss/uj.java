package com.byazt.ss;

import com.alipay.security.mobile.module.commonutils.crypto.a;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 951, 15})
public final class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f19879c = Charset.forName(a.f7272b);
    public static final Charset tt = Charset.forName("UTF-8");

    public static void c(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("not a readable directory: ".concat(String.valueOf(file)));
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                c(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: ".concat(String.valueOf(file2)));
            }
        }
    }
}
