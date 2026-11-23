package com.join.mgps.Util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.dto.Filepath;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class f2 {
    public static List<Filepath> a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("PrefDef", 4);
        if (sharedPreferences.getBoolean("isFirst35", true) && sharedPreferences.getBoolean("firstShowUserPermiss", true)) {
            return new ArrayList();
        }
        StorageManager storageManager = (StorageManager) context.getSystemService(Constants.WS_MESSAGE_TYPE_STORAGE);
        List<Filepath> arrayList = new ArrayList<>();
        PrefDef_ prefDef_ = new PrefDef_(context);
        if (!prefDef_.sdcardisFirst().d().booleanValue()) {
            String strD = prefDef_.sdcardData().d();
            if (t2.i(strD)) {
                arrayList = (List) JsonMapper.getInstance().fromJson(strD, JsonMapper.getInstance().createCollectionType(List.class, Filepath.class));
            }
        }
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        if (arrayList.size() > 0) {
            for (Filepath filepath : arrayList) {
                filepath.setAllsize(b(filepath.getPathRoot()));
                filepath.setAvailable(c(filepath.getPathRoot()));
            }
        } else {
            try {
                String[] strArr = (String[]) storageManager.getClass().getMethod("getVolumePaths", new Class[0]).invoke(storageManager, new Object[0]);
                if (strArr == null) {
                    String str = z.f50167f;
                    Filepath filepath2 = new Filepath();
                    filepath2.setPathHome(str);
                    filepath2.setIslocal(true);
                    filepath2.setAllsize(b(z.f50164c));
                    filepath2.setAvailable(c(z.f50164c));
                    filepath2.setPathRoot(z.f50164c);
                    arrayList.add(filepath2);
                    return arrayList;
                }
                try {
                    File file = new File(z.f50164c + "/mgpapa/");
                    File file2 = new File(z.f50164c + "/wufan91/");
                    if (file.exists() && !file2.exists()) {
                        UtilsMy.delete(file2);
                        if (file.renameTo(file2)) {
                            for (DownloadTask downloadTask : q5.f.M().d()) {
                                if (Dtype.apk.name().equals(downloadTask.getFileType())) {
                                    String strReplace = downloadTask.getGameZipPath().replace(file.getAbsolutePath(), file2.getAbsolutePath());
                                    if (new File(strReplace).exists()) {
                                        downloadTask.setGameZipPath(strReplace);
                                        downloadTask.setPath(strReplace);
                                        q5.f.M().m(downloadTask);
                                    } else {
                                        continue;
                                    }
                                }
                            }
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    File file3 = new File(strArr[i10]);
                    if (file3.isDirectory()) {
                        Filepath filepath3 = new Filepath();
                        String str2 = strArr[i10];
                        File file4 = new File(file3.getAbsolutePath(), "test_" + new SimpleDateFormat("ddMMyyyy_HHmmss").format(new Date()));
                        if (file4.mkdirs()) {
                            UtilsMy.delete(file4);
                            if (str2.contains("1") || str2.contains("extSdCard") || str2.contains("sdcard_ext") || str2.contains("sdcard-ext") || str2.contains("ext_sdcard") || str2.contains("SD_CARD") || str2.contains("sdcard2") || str2.contains("extra_sd") || str2.contains("extrasd_bind") || str2.contains("ext_sd") || str2.contains("external_SD") || str2.contains("extSdCard ") || str2.contains("ext") || str2.contains("AA58-160F")) {
                                filepath3.setPathHome(str2 + "/wufan91/");
                                filepath3.setIslocal(false);
                                filepath3.setAllsize(b(str2 + ""));
                                filepath3.setAvailable(c(str2 + ""));
                                filepath3.setPathRoot(str2);
                                arrayList.add(filepath3);
                            } else {
                                filepath3.setPathHome(str2 + "/wufan91/");
                                filepath3.setIslocal(true);
                                if (arrayList.size() <= 0 || !arrayList.get(0).isIslocal()) {
                                    filepath3.setAllsize(b(strArr[i10]));
                                    filepath3.setAvailable(c(strArr[i10]));
                                    filepath3.setPathRoot(str2);
                                    arrayList.add(filepath3);
                                } else {
                                    filepath3.setIslocal(false);
                                    filepath3.setAllsize(b(strArr[i10]));
                                    filepath3.setAvailable(c(strArr[i10]));
                                    filepath3.setPathRoot(str2);
                                    arrayList.add(filepath3);
                                }
                            }
                        } else if ((!str2.endsWith("0") || str2.contains("AA58-160F")) && !str2.endsWith("/sdcard")) {
                            if (b(strArr[i10]) > 0) {
                                int i11 = (c(strArr[i10]) > 0L ? 1 : (c(strArr[i10]) == 0L ? 0 : -1));
                            }
                            if (b(strArr[i10]) > 0) {
                                String str3 = str2 + "/Android/data/" + context.getPackageName() + "/wufan91/";
                                context.getExternalFilesDirs(null);
                                filepath3.setPathHome(str3);
                                File file5 = new File(str3);
                                boolean zMkdirs = !file5.exists() ? file5.mkdirs() : true;
                                filepath3.setIslocal(false);
                                filepath3.setAllsize(b(strArr[i10]));
                                filepath3.setAvailable(c(strArr[i10]));
                                filepath3.setPathRoot(str2);
                                if (zMkdirs) {
                                    arrayList.add(filepath3);
                                }
                            }
                        } else {
                            filepath3.setPathHome(str2 + "/wufan91/");
                            filepath3.setIslocal(true);
                            if (arrayList.size() <= 0 || !arrayList.get(0).isIslocal()) {
                                filepath3.setAllsize(b(strArr[i10]));
                                filepath3.setAvailable(c(strArr[i10]));
                                filepath3.setPathRoot(str2);
                                arrayList.add(filepath3);
                            }
                        }
                    }
                }
                if (arrayList.size() == 0) {
                    String str4 = z.f50167f;
                    Filepath filepath4 = new Filepath();
                    filepath4.setPathHome(str4);
                    filepath4.setIslocal(true);
                    filepath4.setAllsize(b(z.f50164c));
                    filepath4.setAvailable(c(z.f50164c));
                    filepath4.setPathRoot(z.f50164c);
                    arrayList.add(filepath4);
                }
                String json = JsonMapper.getInstance().toJson(arrayList);
                prefDef_.sdcardisFirst().g(Boolean.FALSE);
                prefDef_.sdcardData().g(json);
            } catch (Exception unused) {
                String str5 = z.f50167f;
                Filepath filepath5 = new Filepath();
                filepath5.setPathHome(str5);
                filepath5.setIslocal(true);
                filepath5.setAllsize(b(z.f50164c));
                filepath5.setAvailable(c(z.f50164c));
                filepath5.setPathRoot(z.f50164c);
                arrayList.add(filepath5);
                return arrayList;
            }
        }
        g1.d("sdCard ", "EndTime " + System.currentTimeMillis());
        return arrayList;
    }

    public static long b(String path) {
        try {
            return new StatFs(path).getTotalBytes();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0L;
        }
    }

    public static long c(String path) {
        try {
            return new StatFs(new File(path).getPath()).getAvailableBytes();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0L;
        }
    }

    public static File d(Context context, String type) {
        try {
            File fileE = e(context, type);
            if (fileE == null) {
                fileE = f(context, type);
            }
            if (fileE != null && !fileE.exists()) {
                fileE.mkdirs();
            }
            return fileE;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static File e(Context context, String type) {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return null;
        }
        File externalCacheDir = TextUtils.isEmpty(type) ? context.getExternalCacheDir() : context.getExternalFilesDir(type);
        if (externalCacheDir == null) {
            externalCacheDir = new File(Environment.getExternalStorageDirectory(), "Android/data/" + context.getPackageName() + "/cache/" + type);
        }
        if (externalCacheDir.exists()) {
            return externalCacheDir;
        }
        externalCacheDir.mkdirs();
        return externalCacheDir;
    }

    public static File f(Context context, String type) {
        File cacheDir = TextUtils.isEmpty(type) ? context.getCacheDir() : new File(context.getFilesDir(), type);
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        return cacheDir;
    }

    public static String g(Context context) {
        if (context == null) {
            return Environment.getExternalStorageDirectory() + File.separator + "transfer";
        }
        if (context.getExternalFilesDir("") != null) {
            return context.getExternalFilesDir("") + File.separator + "transfer";
        }
        return context.getFilesDir() + File.separator + "transfer";
    }
}
