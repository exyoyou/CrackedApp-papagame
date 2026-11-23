package com.byazt.o;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.NonNull;
import com.byazt.quv.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME, 46})
public class n {
    private static String c(int i10) {
        return (i10 >>> 24) == 1 ? "android:" : "";
    }

    private static PackageInfo tt(@NonNull Context context, @NonNull File file, int i10) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            c("unzip_getpackagearchiveinfo", "packageManager == null");
            return null;
        }
        try {
            return packageManager.getPackageArchiveInfo(file.getPath(), i10);
        } catch (Throwable th) {
            c("unzip_getpackagearchiveinfo", "pm.getPackageArchiveInfo failed: " + th.getMessage());
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x00fe A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x0105 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x0077 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:0x00ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x00f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x0119 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0081 A[Catch: all -> 0x012e, TRY_LEAVE, TryCatch #6 {all -> 0x012e, blocks: (B:35:0x0077, B:37:0x0081, B:84:0x0126, B:85:0x012d), top: B:125:0x0077 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0090  */
    /* JADX WARN: Code duplicated, block: B:45:0x009d A[Catch: all -> 0x0121, TryCatch #0 {all -> 0x0121, blocks: (B:38:0x0086, B:39:0x0089, B:43:0x0093, B:45:0x009d, B:47:0x00a9, B:48:0x00ae, B:50:0x00ba, B:51:0x00bf, B:53:0x00cb, B:56:0x00d4, B:61:0x00df, B:78:0x0109, B:79:0x0118, B:80:0x0119, B:81:0x0120), top: B:114:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00a9 A[Catch: all -> 0x0121, TryCatch #0 {all -> 0x0121, blocks: (B:38:0x0086, B:39:0x0089, B:43:0x0093, B:45:0x009d, B:47:0x00a9, B:48:0x00ae, B:50:0x00ba, B:51:0x00bf, B:53:0x00cb, B:56:0x00d4, B:61:0x00df, B:78:0x0109, B:79:0x0118, B:80:0x0119, B:81:0x0120), top: B:114:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00ae A[Catch: all -> 0x0121, TryCatch #0 {all -> 0x0121, blocks: (B:38:0x0086, B:39:0x0089, B:43:0x0093, B:45:0x009d, B:47:0x00a9, B:48:0x00ae, B:50:0x00ba, B:51:0x00bf, B:53:0x00cb, B:56:0x00d4, B:61:0x00df, B:78:0x0109, B:79:0x0118, B:80:0x0119, B:81:0x0120), top: B:114:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00ba A[Catch: all -> 0x0121, TryCatch #0 {all -> 0x0121, blocks: (B:38:0x0086, B:39:0x0089, B:43:0x0093, B:45:0x009d, B:47:0x00a9, B:48:0x00ae, B:50:0x00ba, B:51:0x00bf, B:53:0x00cb, B:56:0x00d4, B:61:0x00df, B:78:0x0109, B:79:0x0118, B:80:0x0119, B:81:0x0120), top: B:114:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00bf A[Catch: all -> 0x0121, TryCatch #0 {all -> 0x0121, blocks: (B:38:0x0086, B:39:0x0089, B:43:0x0093, B:45:0x009d, B:47:0x00a9, B:48:0x00ae, B:50:0x00ba, B:51:0x00bf, B:53:0x00cb, B:56:0x00d4, B:61:0x00df, B:78:0x0109, B:79:0x0118, B:80:0x0119, B:81:0x0120), top: B:114:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00cb A[Catch: all -> 0x0121, TRY_LEAVE, TryCatch #0 {all -> 0x0121, blocks: (B:38:0x0086, B:39:0x0089, B:43:0x0093, B:45:0x009d, B:47:0x00a9, B:48:0x00ae, B:50:0x00ba, B:51:0x00bf, B:53:0x00cb, B:56:0x00d4, B:61:0x00df, B:78:0x0109, B:79:0x0118, B:80:0x0119, B:81:0x0120), top: B:114:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00df A[Catch: all -> 0x0121, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0121, blocks: (B:38:0x0086, B:39:0x0089, B:43:0x0093, B:45:0x009d, B:47:0x00a9, B:48:0x00ae, B:50:0x00ba, B:51:0x00bf, B:53:0x00cb, B:56:0x00d4, B:61:0x00df, B:78:0x0109, B:79:0x0118, B:80:0x0119, B:81:0x0120), top: B:114:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0109 A[Catch: all -> 0x0121, TRY_ENTER, TryCatch #0 {all -> 0x0121, blocks: (B:38:0x0086, B:39:0x0089, B:43:0x0093, B:45:0x009d, B:47:0x00a9, B:48:0x00ae, B:50:0x00ba, B:51:0x00bf, B:53:0x00cb, B:56:0x00d4, B:61:0x00df, B:78:0x0109, B:79:0x0118, B:80:0x0119, B:81:0x0120), top: B:114:0x0086 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.zip.ZipInputStream] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    public static PackageInfo c(@NonNull File file) {
        ?? r10;
        ?? r11;
        ?? r12;
        InputStream inputStream;
        ZipEntry zipEntry;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        InputStream inputStream2;
        ZipFile zipFile;
        ?? r13;
        c cVar;
        int iTt;
        int iN;
        String strC;
        String strC2;
        int i10;
        long j10;
        c cVar2 = null;
        cVar2 = null;
        String strC3 = null;
        cVar2 = null;
        cVar2 = null;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                FileInputStream fileInputStream3 = new FileInputStream(file);
                try {
                    ZipInputStream zipInputStream = new ZipInputStream(fileInputStream3);
                    while (true) {
                        ZipEntry nextEntry = zipInputStream.getNextEntry();
                        if (nextEntry == null) {
                            zipFile = null;
                            zipEntry = nextEntry;
                            fileInputStream2 = fileInputStream3;
                            r13 = zipInputStream;
                            inputStream2 = null;
                            break;
                        }
                        if (!nextEntry.isDirectory()) {
                            if ("AndroidManifest.xml".equals(nextEntry.getName())) {
                                zipFile = null;
                                zipEntry = nextEntry;
                                fileInputStream2 = fileInputStream3;
                                r13 = zipInputStream;
                                inputStream2 = zipInputStream;
                                break;
                            }
                            zipInputStream.closeEntry();
                        } else {
                            try {
                                zipInputStream.closeEntry();
                            } catch (Throwable unused) {
                            }
                        }
                    }
                    if (zipEntry != null) {
                        try {
                            if ("AndroidManifest.xml".equals(zipEntry.getName())) {
                                cVar = new c();
                                try {
                                    cVar.c(inputStream2);
                                    do {
                                        iTt = cVar.tt();
                                        if (iTt != 1) {
                                            throw new ve("已达到END_DOCUMENT");
                                        }
                                    } while (iTt != 2);
                                    iN = cVar.n();
                                    strC = null;
                                    strC2 = null;
                                    for (i10 = 0; i10 != iN; i10++) {
                                        if ("versionName".equals(cVar.c(i10))) {
                                            strC = c(cVar, i10);
                                        } else if ("versionCode".equals(cVar.c(i10))) {
                                            strC3 = c(cVar, i10);
                                        } else if (AbsServerManager.PACKAGE_QUERY_BINDER.equals(cVar.c(i10))) {
                                            strC2 = c(cVar, i10);
                                        }
                                    }
                                    try {
                                        j10 = Long.parseLong(strC3);
                                    } catch (ve unused2) {
                                        j10 = -1;
                                    }
                                    if (j10 != -1) {
                                        throw new ve("versionCode获取失败: ".concat(String.valueOf(strC3)));
                                    }
                                    PackageInfo packageInfo = new PackageInfo();
                                    packageInfo.versionName = strC;
                                    packageInfo.versionCode = (int) j10;
                                    packageInfo.packageName = strC2;
                                    if (r13 != 0) {
                                        try {
                                            r13.closeEntry();
                                        } catch (Throwable unused3) {
                                        }
                                    }
                                    try {
                                        cVar.c();
                                    } catch (Throwable unused4) {
                                    }
                                    if (inputStream2 != null) {
                                        try {
                                            inputStream2.close();
                                        } catch (Throwable unused5) {
                                        }
                                    }
                                    if (zipFile != null) {
                                        try {
                                            zipFile.close();
                                        } catch (Throwable unused6) {
                                        }
                                    }
                                    if (fileInputStream2 != null) {
                                        try {
                                            fileInputStream2.close();
                                        } catch (Throwable unused7) {
                                        }
                                    }
                                    return packageInfo;
                                } catch (Throwable th) {
                                    r10 = inputStream2;
                                    th = th;
                                    cVar2 = cVar;
                                    r11 = fileInputStream2;
                                    r12 = zipFile;
                                }
                            }
                        } catch (Throwable th2) {
                            r10 = inputStream2;
                            th = th2;
                            r11 = fileInputStream2;
                            r12 = zipFile;
                        }
                    }
                    throw new ve("没有找到AndroidManifest.xml entry");
                } catch (Throwable th3) {
                    th = th3;
                    r12 = 0;
                    r11 = fileInputStream3;
                    r10 = 0;
                }
            } else {
                ZipFile zipFile2 = new ZipFile(file);
                try {
                    Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
                    ZipEntry zipEntryNextElement = null;
                    while (true) {
                        if (!enumerationEntries.hasMoreElements()) {
                            inputStream = null;
                            zipEntry = zipEntryNextElement;
                            fileInputStream = null;
                            break;
                        }
                        zipEntryNextElement = enumerationEntries.nextElement();
                        if (!zipEntryNextElement.isDirectory() && "AndroidManifest.xml".equals(zipEntryNextElement.getName())) {
                            InputStream inputStream3 = zipFile2.getInputStream(zipEntryNextElement);
                            zipEntry = zipEntryNextElement;
                            fileInputStream = null;
                            inputStream = inputStream3;
                            break;
                        }
                    }
                    fileInputStream2 = fileInputStream;
                    r13 = fileInputStream;
                    zipFile = zipFile2;
                    inputStream2 = inputStream;
                    if (zipEntry != null) {
                        if ("AndroidManifest.xml".equals(zipEntry.getName())) {
                            cVar = new c();
                            cVar.c(inputStream2);
                            do {
                                iTt = cVar.tt();
                                if (iTt != 1) {
                                    throw new ve("已达到END_DOCUMENT");
                                }
                            } while (iTt != 2);
                            iN = cVar.n();
                            strC = null;
                            strC2 = null;
                            while (i10 != iN) {
                                if ("versionName".equals(cVar.c(i10))) {
                                    strC = c(cVar, i10);
                                } else if ("versionCode".equals(cVar.c(i10))) {
                                    strC3 = c(cVar, i10);
                                } else if (AbsServerManager.PACKAGE_QUERY_BINDER.equals(cVar.c(i10))) {
                                    strC2 = c(cVar, i10);
                                }
                            }
                            j10 = Long.parseLong(strC3);
                            if (j10 != -1) {
                                throw new ve("versionCode获取失败: ".concat(String.valueOf(strC3)));
                            }
                            PackageInfo packageInfo2 = new PackageInfo();
                            packageInfo2.versionName = strC;
                            packageInfo2.versionCode = (int) j10;
                            packageInfo2.packageName = strC2;
                            if (r13 != 0) {
                                r13.closeEntry();
                            }
                            cVar.c();
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                            if (zipFile != null) {
                                zipFile.close();
                            }
                            if (fileInputStream2 != null) {
                                fileInputStream2.close();
                            }
                            return packageInfo2;
                        }
                    }
                    throw new ve("没有找到AndroidManifest.xml entry");
                } catch (Throwable th4) {
                    th = th4;
                    r11 = 0;
                    r12 = zipFile2;
                    r10 = 0;
                }
            }
        } catch (Throwable th5) {
            th = th5;
            r10 = cVar2;
            r11 = r10;
            r12 = r11;
        }
        try {
            throw new ve("throwable: " + th.getMessage() + th.toString());
        } catch (Throwable th6) {
            if (cVar2 != null) {
                try {
                    cVar2.c();
                } catch (Throwable unused8) {
                }
            }
            if (r10 != 0) {
                try {
                    r10.close();
                } catch (Throwable unused9) {
                }
            }
            if (r12 != 0) {
                try {
                    r12.close();
                } catch (Throwable unused10) {
                }
            }
            if (r11 == 0) {
                throw th6;
            }
            try {
                r11.close();
                throw th6;
            } catch (Throwable unused11) {
                throw th6;
            }
        }
    }

    public static PackageInfo c(@NonNull Context context, @NonNull File file, int i10) {
        if (com.byazt.w.c.c(C.ENCODING_PCM_MU_LAW) && Build.VERSION.SDK_INT < 26) {
            try {
                return c(file);
            } catch (Throwable th) {
                c("getPackageInfo::unzip_getpackagearchiveinfo", th.getMessage());
            }
        }
        return tt(context, file, i10);
    }

    private static void c(@NonNull String str, @NonNull String str2) {
        if (com.byazt.zz.ve.sp() == null) {
            return;
        }
        try {
            new JSONObject().put("message", str2);
        } catch (JSONException unused) {
        }
    }

    private static String c(c cVar, int i10) {
        int iTt = cVar.tt(i10);
        int iVe = cVar.ve(i10);
        if (iTt == 3) {
            return cVar.uj(i10);
        }
        if (iTt == 2) {
            return String.format("?%s%08X", c(iVe), Integer.valueOf(iVe));
        }
        return (iTt < 16 || iTt > 31) ? String.format("<0x%X, type 0x%02X>", Integer.valueOf(iVe), Integer.valueOf(iTt)) : String.valueOf(iVe);
    }

    public static String c(Context context, PackageInfo packageInfo, String str) {
        ApplicationInfo applicationInfo;
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) {
            return null;
        }
        applicationInfo.sourceDir = str;
        applicationInfo.publicSourceDir = str;
        try {
            return applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (OutOfMemoryError e10) {
            c("getPackageInfo::fail_load_label", e10.getMessage());
            return null;
        }
    }
}
