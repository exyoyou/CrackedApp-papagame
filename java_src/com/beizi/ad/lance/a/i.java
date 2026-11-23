package com.beizi.ad.lance.a;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes6.dex */
public class i {
    public static final File a(Context context) {
        File fileB = b(context);
        if (fileB == null) {
            return null;
        }
        File file = new File(fileB.getPath() + "/Beizi/download/");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static void b(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                launchIntentForPackage.setFlags(C.ENCODING_PCM_MU_LAW);
                context.startActivity(launchIntentForPackage);
            }
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(context, "启动失败:" + str, 1).show();
        }
    }

    public static File c(Context context) {
        try {
            return context.getCacheDir();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static File d(Context context) {
        try {
            File file = new File(context.getCacheDir().getPath() + "/beizi/material/");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void e(Context context) {
        File[] fileArrListFiles;
        try {
            File fileD = d(context);
            if (!fileD.exists() || (fileArrListFiles = fileD.listFiles()) == null) {
                return;
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = new Date(System.currentTimeMillis() - 1296000000);
            for (File file : fileArrListFiles) {
                if (file.isFile()) {
                    try {
                        if (simpleDateFormat.parse(simpleDateFormat.format(Long.valueOf(file.lastModified()))).before(date)) {
                            file.delete();
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public static File f(Context context) {
        File file = new File(context.getCacheDir().getPath() + "/beizi/ad/");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static void g(Context context) {
        File[] fileArrListFiles;
        File[] fileArrListFiles2;
        if (context == null) {
            return;
        }
        try {
            File fileF = f(context);
            if (fileF.exists() && fileF.isDirectory() && (fileArrListFiles = fileF.listFiles()) != null) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                Date date = new Date(System.currentTimeMillis() - 86400000);
                for (File file : fileArrListFiles) {
                    if (file.isDirectory() && (fileArrListFiles2 = file.listFiles()) != null) {
                        try {
                            for (File file2 : fileArrListFiles2) {
                                if (file2.isFile() && simpleDateFormat.parse(simpleDateFormat.format(Long.valueOf(file2.lastModified()))).before(date)) {
                                    file2.delete();
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static File b(Context context) {
        if (context == null) {
            return null;
        }
        try {
            File externalFilesDir = ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) ? context.getExternalFilesDir(null) : null;
            return externalFilesDir == null ? context.getFilesDir() : externalFilesDir;
        } catch (Exception unused) {
            return context.getFilesDir();
        }
    }

    public static boolean a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return context.getPackageManager().getApplicationInfo(str, 0) != null;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static void a(String str) {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    public static void b(Context context, String str, String str2) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            File fileF = f(context);
            if (fileF.exists() && fileF.isDirectory()) {
                File file = new File(fileF.getPath() + net.lingala.zip4j.util.e.F0 + str + net.lingala.zip4j.util.e.F0, str2);
                if (file.exists()) {
                    file.delete();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0069 A[Catch: all -> 0x006c, TRY_LEAVE, TryCatch #2 {all -> 0x006c, blocks: (B:25:0x0064, B:27:0x0069), top: B:36:0x0064 }] */
    public static boolean a(Context context, String str, String str2, String str3) {
        FileWriter fileWriter;
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            BufferedWriter bufferedWriter = null;
            try {
                File file = new File(f(context).getPath() + net.lingala.zip4j.util.e.F0 + str + net.lingala.zip4j.util.e.F0);
                if (!file.exists()) {
                    file.mkdirs();
                }
                fileWriter = new FileWriter(new File(file, str2), false);
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(fileWriter);
                    try {
                        bufferedWriter2.write(str3);
                        try {
                            bufferedWriter2.close();
                            fileWriter.close();
                            return true;
                        } catch (Throwable unused) {
                            return true;
                        }
                    } catch (Throwable unused2) {
                        bufferedWriter = bufferedWriter2;
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
                                if (fileWriter != null) {
                                    fileWriter.close();
                                }
                            } catch (Throwable unused3) {
                            }
                        } else if (fileWriter != null) {
                            fileWriter.close();
                        }
                        return false;
                    }
                } catch (Throwable unused4) {
                }
            } catch (Throwable unused5) {
                fileWriter = null;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0075 A[Catch: all -> 0x0078, TRY_LEAVE, TryCatch #0 {all -> 0x0078, blocks: (B:29:0x0070, B:31:0x0075), top: B:37:0x0070 }] */
    public static String a(Context context, String str, String str2) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                File file = new File(f(context).getPath() + net.lingala.zip4j.util.e.F0 + str + net.lingala.zip4j.util.e.F0, str2);
                if (!file.exists()) {
                    return null;
                }
                fileReader = new FileReader(file);
                try {
                    if (!fileReader.ready()) {
                        try {
                            fileReader.close();
                        } catch (Throwable unused) {
                        }
                        return null;
                    }
                    bufferedReader = new BufferedReader(fileReader);
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            sb2.append(line);
                        }
                        String string = sb2.toString();
                        try {
                            bufferedReader.close();
                            fileReader.close();
                        } catch (Throwable unused2) {
                        }
                        return string;
                    } catch (Throwable unused3) {
                    }
                } catch (Throwable unused4) {
                    bufferedReader = null;
                }
            } catch (Throwable unused5) {
                fileReader = null;
                bufferedReader = null;
            }
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                    if (fileReader != null) {
                        fileReader.close();
                    }
                } catch (Throwable unused6) {
                }
            } else if (fileReader != null) {
                fileReader.close();
            }
        }
        return null;
    }
}
