package com.byazt.ie;

import android.content.Context;
import com.baidu.mobads.sdk.internal.bn;
import com.byazt.gq.t;
import com.byazt.hu.u;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.tk.AdBaseConstants;
import com.byazt.zz.Downloader;
import com.kuaishou.weapon.p0.bg;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1041, 54})
public class ve {
    public static void c() throws Throwable {
        List<DownloadInfo> listC = com.byazt.z.uj.sl().c(t.getContext());
        if (listC == null || listC.size() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < listC.size(); i10++) {
            DownloadInfo downloadInfo = listC.get(i10);
            File file = new File(downloadInfo.getTempPath(), downloadInfo.getTempName());
            long jLastModified = file.lastModified();
            long jC = ((long) com.byazt.k.c.c(downloadInfo.getId()).c("download_file_expire_hours", 0)) * bg.f74510s;
            if (jC <= 0) {
                jC = bn.f7592d;
            }
            if (file.isFile() && file.exists() && System.currentTimeMillis() - jLastModified >= jC) {
                c(file);
                Downloader.getInstance(t.getContext()).clearDownloadData(downloadInfo.getId());
            }
        }
    }

    public static void tt() throws Throwable {
        List successedDownloadInfosWithMimeType = Downloader.getInstance(t.getContext()).getSuccessedDownloadInfosWithMimeType(AdBaseConstants.MIME_APK);
        if (successedDownloadInfosWithMimeType == null || successedDownloadInfosWithMimeType.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < successedDownloadInfosWithMimeType.size(); i10++) {
            DownloadInfo downloadInfo = (DownloadInfo) successedDownloadInfosWithMimeType.get(i10);
            if (downloadInfo != null) {
                String str = downloadInfo.getSavePath() + File.separator + downloadInfo.getName();
                File file = new File(str);
                if (file.exists()) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - file.lastModified();
                    long jC = ((long) com.byazt.k.c.c(downloadInfo.getId()).c("download_complete_file_expire_hours", 0)) * bg.f74510s;
                    if (jC <= 0) {
                        jC = bn.f7592d;
                    }
                    boolean z10 = true;
                    if (jCurrentTimeMillis < jC && !u.a(t.getContext(), str)) {
                        z10 = false;
                    }
                    if (z10) {
                        c(file);
                    }
                }
            }
        }
    }

    public static void c(Context context) {
        File externalCacheDir;
        if (context == null || (externalCacheDir = context.getExternalCacheDir()) == null) {
            return;
        }
        try {
            c(externalCacheDir.getPath());
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0030 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void c(File file) throws Throwable {
        FileOutputStream fileOutputStream;
        Exception e10;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    fileOutputStream.write("1".getBytes());
                    fileOutputStream.close();
                } catch (Exception e11) {
                    e10 = e11;
                    m.c(e10);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e12) {
                            m.c(e12);
                        }
                    }
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (Exception e13) {
                        m.c(e13);
                    }
                }
                throw th;
            }
        } catch (Exception e14) {
            fileOutputStream = null;
            e10 = e14;
        } catch (Throwable th2) {
            th = th2;
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
            throw th;
        }
        file.delete();
    }

    private static void c(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            String[] list = file.list();
            if (list == null) {
                return;
            }
            for (String str2 : list) {
                if (str2 != null) {
                    String str3 = File.separator;
                    String str4 = str.endsWith(str3) ? str + str2 : str + str3 + str2;
                    File file2 = new File(str4);
                    if (file2.isFile()) {
                        file2.delete();
                    }
                    if (file2.isDirectory()) {
                        c(str4);
                    }
                }
            }
            file.delete();
        }
    }
}
