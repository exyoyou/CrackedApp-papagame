package com.byazt.aas;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Properties;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 512})
public class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f11413c;

    private d() {
        tt();
    }

    public static d c() {
        return new d();
    }

    private void tt() {
        File fileC;
        Context context = com.byazt.omf.gt.getContext();
        if (context == null) {
            return;
        }
        try {
            if ("mounted".equals(com.byazt.bzd.uj.c()) && (fileC = com.byazt.nr.sp.c(context, "TTCache", false, null)) != null) {
                fileC.mkdirs();
                this.f11413c = fileC.getPath();
            }
            if (TextUtils.isEmpty(this.f11413c)) {
                File file = new File(com.byazt.nr.sp.c(context, false, null), "TTCache");
                file.mkdirs();
                this.f11413c = file.getPath();
            }
        } catch (Throwable unused) {
        }
    }

    private void ve() {
        try {
            com.byazt.tdq.c.c().ve();
        } catch (Throwable unused) {
        }
        try {
            com.byazt.lvl.c.c().tt();
        } catch (Throwable unused2) {
        }
        try {
            com.byazt.ogz.x.tt();
        } catch (Throwable unused3) {
        }
        try {
            com.byazt.six.tt.tt();
            com.byazt.tlc.tt.tt().a();
        } catch (Throwable unused4) {
        }
        try {
            Function<SparseArray<Object>, Object> functionNb = com.byazt.omf.x.m().nb();
            if (functionNb != null) {
                functionNb.apply(com.byazt.yxi.uj.c().c(7).c(Void.class).tt());
            }
        } catch (Throwable unused5) {
        }
        try {
            com.byazt.by.ve.c().sl();
            com.byazt.by.uj.c().rh();
            com.byazt.by.n.c().m();
        } catch (Throwable unused6) {
        }
    }

    public void c(Thread thread, Throwable th, String str) {
        boolean zContains = false;
        try {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            String string = stringWriter.toString();
            if (string != null) {
                if (TextUtils.isEmpty(str)) {
                    str = TTAdConstant.class.getPackage().getName();
                }
                zContains = string.contains(str);
            }
            com.byazt.dz.uj.c().c(thread, th);
        } catch (Throwable th2) {
            com.byazt.nr.m.c(th2);
        }
        if (zContains) {
            c(thread, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x010c A[DONT_GENERATE, EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x00fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x0113 A[DONT_GENERATE, EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x00f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private void c(Thread thread, Throwable th) {
        FileOutputStream fileOutputStream;
        int i10;
        boolean z10;
        FileInputStream fileInputStream = null;
        fileOutputStream = null;
        fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        FileInputStream fileInputStream2 = null;
        fileInputStream = null;
        try {
            if (TextUtils.isEmpty(this.f11413c)) {
                tt();
            }
            if (TextUtils.isEmpty(this.f11413c)) {
                return;
            }
            File file = new File(this.f11413c, "tt_crash_count.properties");
            if (file.exists() && file.isFile() && file.canRead()) {
                Properties properties = new Properties();
                FileInputStream fileInputStream3 = new FileInputStream(file);
                try {
                    properties.load(fileInputStream3);
                    String property = properties.getProperty("crash_count", "0");
                    String property2 = properties.getProperty("crash_last_time", "0");
                    int iIntValue = Integer.valueOf(property).intValue();
                    long jLongValue = Long.valueOf(property2).longValue();
                    int i11 = 0;
                    if (System.currentTimeMillis() - jLongValue < e0.a.f90863b) {
                        i10 = iIntValue + 1;
                        z10 = false;
                    } else {
                        i10 = 1;
                        z10 = true;
                    }
                    boolean z11 = i10 >= 3;
                    if (!z11) {
                        i11 = i10;
                    }
                    com.byazt.nr.m.uj("TTCrashHandler", "==" + i11 + ", " + z11 + ", " + z10);
                    if (z11) {
                        try {
                            file.delete();
                        } catch (Throwable unused) {
                        }
                    } else {
                        properties.setProperty("crash_count", String.valueOf(i11));
                        if (z10) {
                            properties.setProperty("crash_last_time", String.valueOf(System.currentTimeMillis()));
                        }
                        fileOutputStream = new FileOutputStream(file);
                        try {
                            properties.store(fileOutputStream, "tt_crash_info");
                            fileOutputStream2 = fileOutputStream;
                        } catch (Throwable th2) {
                            th = th2;
                            fileInputStream = fileInputStream3;
                            com.byazt.nr.m.ve("TTCrashHandler", "crash count error", th);
                        }
                    }
                    if (z11) {
                        ve();
                    }
                    fileOutputStream = fileOutputStream2;
                    fileInputStream2 = fileInputStream3;
                    if (fileInputStream2 != null) {
                        fileInputStream2.close();
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = fileOutputStream2;
                }
            } else {
                Properties properties2 = new Properties();
                properties2.setProperty("crash_count", "1");
                properties2.setProperty("crash_last_time", String.valueOf(System.currentTimeMillis()));
                fileOutputStream = new FileOutputStream(file);
                try {
                    properties2.store(fileOutputStream, "tt_crash_info");
                    com.byazt.nr.m.uj("TTCrashHandler", "==first");
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (Throwable unused2) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    try {
                        com.byazt.nr.m.ve("TTCrashHandler", "crash count error", th);
                    } finally {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable unused4) {
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable unused5) {
                            }
                        }
                    }
                }
            }
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
        }
    }
}
