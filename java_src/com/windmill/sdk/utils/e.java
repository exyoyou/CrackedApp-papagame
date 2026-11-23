package com.windmill.sdk.utils;

import android.content.Context;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes8.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f87356a;

    public static boolean a(String dir) {
        try {
            String str = File.separator;
            if (!dir.endsWith(str)) {
                dir = dir + str;
            }
            File file = new File(dir);
            if (file.exists() && file.isDirectory()) {
                boolean zA = true;
                for (File file2 : file.listFiles()) {
                    if (!file2.isFile()) {
                        if (file2.isDirectory() && !(zA = a(file2.getAbsolutePath()))) {
                            break;
                        }
                    } else {
                        zA = b(file2.getAbsolutePath());
                        if (!zA) {
                            break;
                        }
                    }
                }
                if (!zA || !file.delete()) {
                    return false;
                }
                SigmobLog.d("删除目录" + dir + "成功！");
                return true;
            }
            SigmobLog.d("删除目录失败：" + dir + "不存在！");
            return false;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return false;
        }
    }

    public static boolean b(String fileName) {
        try {
            new SecurityManager().checkDelete(fileName);
            File file = new File(fileName);
            if (!file.exists() || !file.isFile()) {
                SigmobLog.d("删除单个文件失败：" + fileName + "不存在！");
                return false;
            }
            if (file.delete()) {
                SigmobLog.d("删除单个文件" + fileName + "成功！");
                return true;
            }
            SigmobLog.d("删除单个文件" + fileName + "失败！");
            return false;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return false;
        }
    }

    public static String c() {
        if (TextUtils.isEmpty(f87356a)) {
            return f87356a;
        }
        File file = new File(f87356a, "strategy");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    public static void d() {
        if (f87356a != null) {
            File file = new File(f87356a);
            if (file.exists()) {
                a(f87356a);
            }
            if (!file.exists() || file.isFile()) {
                file.mkdirs();
            }
        }
    }

    public static File[] c(String filePath) {
        File[] fileArrListFiles = new File(filePath).listFiles();
        if (fileArrListFiles != null) {
            Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.windmill.sdk.utils.e.1
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public int compare(File f10, File f11) {
                    long jLastModified = f10.lastModified() - f11.lastModified();
                    if (jLastModified > 0) {
                        return 1;
                    }
                    return jLastModified == 0 ? 0 : -1;
                }

                @Override // java.util.Comparator
                public boolean equals(Object obj) {
                    return true;
                }
            });
        }
        return fileArrListFiles;
    }

    public static String b() {
        return f87356a;
    }

    public static String a(File path) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(path), 8192);
            StringBuilder sb2 = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb2.append("\n");
                    sb2.append(line);
                } else {
                    bufferedReader.close();
                    return sb2.toString();
                }
            }
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public static String a(Context context, String folderName) {
        try {
            File cacheDir = context.getCacheDir();
            if (folderName != null) {
                File file = new File(cacheDir, folderName);
                if (!file.exists()) {
                    file.mkdirs();
                }
                cacheDir = file;
            }
            f87356a = cacheDir.getAbsolutePath();
            return "";
        } catch (Exception e10) {
            return e10.getMessage();
        }
    }

    public static String a() {
        if (!TextUtils.isEmpty(f87356a)) {
            File file = new File(f87356a, "crash");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file.getAbsolutePath();
        }
        return f87356a;
    }
}
