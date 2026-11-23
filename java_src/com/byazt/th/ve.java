package com.byazt.th;

import android.app.Application;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.bog.a;
import com.byazt.uk.i;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 78, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static File f20187c;
    public static File tt;
    public static File ve;

    public static String a(String str, int i10) {
        return new File(c(str, "version-".concat(String.valueOf(i10)), "apk")).getPath();
    }

    public static String c(File file) {
        if (file == null) {
            return null;
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getPath();
    }

    public static File[] da(String str, int i10) {
        String strC = c(str, "version-".concat(String.valueOf(i10)), "dex");
        if (TextUtils.isEmpty(strC)) {
            return null;
        }
        return new File(strC).listFiles(new FileFilter() { // from class: com.byazt.th.ve.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return file.isFile() && file.getName().endsWith(".dex");
            }
        });
    }

    public static boolean i(@NonNull String str, int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(c());
        String str2 = File.separator;
        sb2.append(str2);
        sb2.append(str);
        sb2.append(str2);
        sb2.append("version-");
        sb2.append(i10);
        return new File(sb2.toString()).exists();
    }

    private static void n() {
        if (f20187c == null) {
            File file = new File(Zeus.getAppApplication().getFilesDir(), MediationConstant.ADN_PANGLE + i.ve);
            f20187c = file;
            c(file);
        }
    }

    public static String sl(String str, int i10) {
        return new File(c(str, "version-".concat(String.valueOf(i10)), "config"), "config.json").getPath();
    }

    public static String sp(String str, int i10) {
        return new File(c(str, "version-".concat(String.valueOf(i10)), "apk", "temp")).getPath();
    }

    public static String tt() {
        Application appApplication = Zeus.getAppApplication();
        if (tt == null) {
            File downloadDir = GlobalParam.getInstance().getDownloadDir();
            if (downloadDir == null) {
                downloadDir = new File(appApplication.getFilesDir(), ".pangle" + i.tt);
            }
            tt = downloadDir;
        }
        return c(tt);
    }

    public static String uj() {
        Application appApplication = Zeus.getAppApplication();
        try {
            if (!"mounted".equals(Environment.getExternalStorageState())) {
                return null;
            }
            File externalFilesDir = appApplication.getExternalFilesDir(".pangle" + i.tt);
            if (externalFilesDir != null) {
                return c(externalFilesDir);
            }
            return null;
        } catch (Exception e10) {
            a.c(e10);
            return null;
        }
    }

    public static String ve() {
        Application appApplication = Zeus.getAppApplication();
        if (ve == null) {
            ve = new File(appApplication.getFilesDir(), ".pangle" + i.f20599c);
        }
        return c(ve);
    }

    public static String x(String str, int i10) {
        return com.byazt.uq.i.u() ? c(str, "version-".concat(String.valueOf(i10)), "apk", "temp", "oat", com.byazt.xe.tt.c()) : c(str, "version-".concat(String.valueOf(i10)), "dalvik-cache");
    }

    private static String c(String... strArr) {
        n();
        File file = f20187c;
        if (strArr != null && strArr.length > 0) {
            for (String str : strArr) {
                if (!TextUtils.isEmpty(str)) {
                    file = new File(file, str);
                }
            }
        }
        return c(file);
    }

    public static String n(String str, int i10) {
        return new File(c(str, "version-".concat(String.valueOf(i10)), "apk", "temp"), "base-1.apk").getPath();
    }

    public static String ve(String str, int i10) {
        if (com.byazt.uq.i.u()) {
            return c(str, "version-".concat(String.valueOf(i10)), "apk", "oat", com.byazt.xe.tt.c());
        }
        return c(str, "version-".concat(String.valueOf(i10)), "dalvik-cache");
    }

    public static String uj(String str, int i10) {
        return c(str, "version-".concat(String.valueOf(i10)), "lib");
    }

    public static String tt(String str, int i10) {
        return new File(c(str, "version-".concat(String.valueOf(i10)), "apk"), "base-1.apk").getPath();
    }

    public static String c() {
        n();
        return f20187c.getPath();
    }

    public static String c(String str, int i10) {
        n();
        File file = f20187c;
        String[] strArr = {str, "version-".concat(String.valueOf(i10))};
        for (int i11 = 0; i11 < 2; i11++) {
            String str2 = strArr[i11];
            if (!TextUtils.isEmpty(str2)) {
                file = new File(file, str2);
            }
        }
        if (file != null) {
            return file.getPath();
        }
        return null;
    }

    public static String c(String str) {
        return c(str);
    }

    public static String c(String str, int i10, String str2) {
        return new File(c(str, "version-".concat(String.valueOf(i10)), "dex"), str2).getPath();
    }
}
