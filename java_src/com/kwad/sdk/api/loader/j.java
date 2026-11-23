package com.kwad.sdk.api.loader;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
final class j {
    private static File aIg;
    private static final String aIh;

    static {
        aIh = Ev() ? "dynamic_apk" : "dynamic.apk";
    }

    static String A(Context context, String str) {
        return i(new File(w(context, str), "libs")).getPath();
    }

    static void B(final Context context, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.kwad.sdk.api.a.a.a(new com.kwad.sdk.api.a.b() { // from class: com.kwad.sdk.api.loader.j.1
            @Override // com.kwad.sdk.api.a.b
            public final void doTask() {
                try {
                    File[] fileArrListFiles = j.x(context, str).getParentFile().listFiles();
                    if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
                        return;
                    }
                    for (File file : fileArrListFiles) {
                        if (i.N(str, file.getName().substring(file.getName().indexOf("-") + 1))) {
                            j.h(file);
                        }
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    private static boolean Ev() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 == 30 || i10 == 31 || i10 == 32;
    }

    private static File br(Context context) {
        if (aIg == null) {
            aIg = i(new File(context.getApplicationInfo().dataDir, "ksad_dynamic"));
        }
        return aIg;
    }

    static void h(File file) {
        if (file == null) {
            return;
        }
        if (file.isFile()) {
            file.delete();
            return;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (File file2 : fileArrListFiles) {
                h(file2);
            }
        }
        file.delete();
    }

    private static File i(File file) {
        if (file.exists() && file.isFile()) {
            file.delete();
        }
        if (file.exists() && file.isDirectory()) {
            return file;
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        if ((file.exists() && file.isDirectory()) || !com.kwad.sdk.api.a.pe.booleanValue()) {
            return file;
        }
        throw new RuntimeException("Can not ensureDir:" + file);
    }

    static void j(File file) {
        try {
            h(file);
        } catch (Exception unused) {
        }
    }

    static File v(Context context, String str) {
        return new File(br(context), "dynamic-" + System.currentTimeMillis() + "-" + str + ".apk");
    }

    static String w(Context context, String str) {
        return i(new File(br(context), "apk-" + str)).getPath();
    }

    static File x(Context context, String str) {
        return i(new File(br(context), "apk-" + str));
    }

    static String y(Context context, String str) {
        return new File(w(context, str), aIh).getPath();
    }

    static String z(Context context, String str) {
        return i(new File(w(context, str), "dex")).getPath();
    }
}
