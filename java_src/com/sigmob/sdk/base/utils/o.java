package com.sigmob.sdk.base.utils;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bv;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.join.mgps.Util.o0;
import com.sdk.base.framework.utils.log.LogFile;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f79755a = "SigHtmlResource";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f79756b = "SigHtmlPrivacy";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f79757c = "SigZipResource";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f79758d = "SigCrashResource";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f79759e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f79760f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static File f79761g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f79762h;

    public static File a(Context context) {
        try {
            if (f79761g == null) {
                File file = new File(d(), "SigDownload");
                f79761g = file;
                if (!file.exists()) {
                    f79761g.mkdirs();
                }
            }
        } catch (Throwable unused) {
        }
        return f79761g;
    }

    public static File b(String data, String fileName) {
        try {
            File fileA = a(d(), f79755a);
            if (!fileA.exists()) {
                fileA.mkdirs();
            }
            File file = new File(fileA, fileName);
            SigmobLog.d("SigHtmlResource: " + file.getAbsolutePath());
            if (file.exists()) {
                file.delete();
            }
            file.createNewFile();
            FileWriter fileWriter = new FileWriter(file, true);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            bufferedWriter.write(data);
            bufferedWriter.newLine();
            bufferedWriter.close();
            fileWriter.close();
            return file;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String c() {
        String str = a() + File.separator + "webCache";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static File d(String fileDir) {
        try {
            File fileA = a(d(), fileDir);
            if (fileA != null && !fileA.exists()) {
                fileA.mkdirs();
            }
            return fileA;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static File e(String parentPath) {
        if (parentPath == null) {
            return null;
        }
        return new File(parentPath);
    }

    public static File f(String fileDir) {
        try {
            File fileA = a(d(), fileDir);
            if (fileA != null && !fileA.exists()) {
                fileA.mkdirs();
            }
            return fileA;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String g() {
        String str = a() + File.separator + "downloadAPKLog";
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
        } catch (Throwable unused) {
        }
        return str;
    }

    public static synchronized String h() {
        StringBuilder sb2;
        sb2 = new StringBuilder();
        sb2.append(a());
        String str = File.separator;
        sb2.append(str);
        sb2.append(bv.f7644a);
        sb2.append(str);
        sb2.append("sdkLog.log");
        return sb2.toString();
    }

    public static void i() {
        if (TextUtils.isEmpty(f79759e)) {
            return;
        }
        try {
            File file = new File(f79759e);
            if (file.exists()) {
                FileUtil.deleteDirectory(f79759e);
            }
            if (!file.exists() || file.isFile()) {
                file.mkdirs();
            }
        } catch (Throwable unused) {
        }
    }

    public static File j() {
        try {
            File fileA = a(d(), f79758d);
            if (!fileA.exists()) {
                fileA.mkdirs();
            }
            return a(fileA, String.format(Locale.getDefault(), "%d.log", Long.valueOf(System.currentTimeMillis() / 1000)));
        } catch (Throwable th) {
            SigmobLog.d("createCrash fail", th);
            return null;
        }
    }

    public static File[] k() {
        try {
            File fileA = a(d(), f79758d);
            if (fileA.exists()) {
                return FileUtil.orderByDate(fileA.getAbsolutePath());
            }
            fileA.mkdirs();
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static File a(File parentPath, String child) {
        if (parentPath == null || child == null) {
            return null;
        }
        return new File(parentPath, child);
    }

    public static String b() {
        String str = a() + File.separator + "videoAd";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static synchronized String c(String placementId) {
        StringBuilder sb2;
        sb2 = new StringBuilder();
        sb2.append(a());
        String str = File.separator;
        sb2.append(str);
        sb2.append("splashAdUnit");
        sb2.append(str);
        sb2.append(placementId);
        return sb2.toString();
    }

    public static String d() {
        if (f79760f == null) {
            File externalCacheDir = (!Environment.getExternalStorageState().equals("mounted") || Environment.isExternalStorageRemovable()) ? null : com.sigmob.sdk.b.e().getExternalCacheDir();
            if (externalCacheDir == null) {
                externalCacheDir = com.sigmob.sdk.b.e().getCacheDir();
            }
            if (externalCacheDir != null && f79762h != null) {
                File file = new File(externalCacheDir, f79762h);
                if (!file.exists()) {
                    file.mkdirs();
                }
                f79760f = file.getAbsolutePath();
            }
        }
        return f79760f;
    }

    public static String e() {
        String str = a() + File.separator + "splashAd";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static String f() {
        String str = a() + File.separator + "nativeAd";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static File a(Object name) {
        return new File(g(), name + LogFile.LOG_SUFFIX);
    }

    public static String b(String fileName) {
        int iLastIndexOf = fileName.lastIndexOf(o0.f49827a);
        return iLastIndexOf != -1 ? fileName.substring(0, iLastIndexOf) : fileName;
    }

    public static File a(String parentPath, String child) {
        if (parentPath == null || child == null) {
            return null;
        }
        return new File(parentPath, child);
    }

    public static String a() {
        if (f79759e == null) {
            File cacheDir = com.sigmob.sdk.b.e().getCacheDir();
            if (cacheDir != null && f79762h != null) {
                File file = new File(cacheDir, f79762h);
                if (!file.exists()) {
                    file.mkdirs();
                }
                cacheDir = file;
            }
            f79759e = cacheDir.getAbsolutePath();
        }
        return f79759e;
    }

    public static String a(String fileName) {
        int iLastIndexOf = fileName.lastIndexOf(o0.f49827a);
        return iLastIndexOf != -1 ? fileName.substring(iLastIndexOf) : "";
    }

    public static void a(Context context, String folderName) {
        f79762h = folderName;
    }

    public static File[] a(File[] files, int count) {
        if (files == null || files.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(files));
        for (File file : files) {
            if (arrayList.size() <= count) {
                break;
            }
            if (file.exists()) {
                file.delete();
                arrayList.remove(file);
                SigmobLog.d("file delete " + file.getName());
            }
        }
        return (File[]) arrayList.toArray(new File[0]);
    }
}
