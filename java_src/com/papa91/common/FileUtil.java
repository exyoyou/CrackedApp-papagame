package com.papa91.common;

import android.content.Context;
import android.content.res.Resources;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.Collator;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class FileUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static Collator chinaCollator = Collator.getInstance(Locale.CHINA);
    static Context context;
    static int mode;

    public static void Unzip(Resources resources, String str, String str2) {
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(resources.getAssets().open(str)));
            byte[] bArr = new byte[4096];
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    return;
                }
                try {
                    File file = new File(str2 + nextEntry.getName());
                    File file2 = new File(file.getParent());
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 4096);
                    while (true) {
                        int i10 = zipInputStream.read(bArr, 0, 4096);
                        if (i10 == -1) {
                            break;
                        } else {
                            bufferedOutputStream.write(bArr, 0, i10);
                        }
                    }
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                e.printStackTrace();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static byte[] getIndexFile(String str, int i10) {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(new File(str));
            for (int i11 = 0; i11 < i10; i11++) {
                try {
                    byte[] bArr = new byte[4];
                    fileInputStream.read(bArr);
                    byte b10 = bArr[0];
                    byte b11 = bArr[1];
                    fileInputStream.skip(((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | (b10 & 255) | ((b11 & 255) << 8));
                } catch (Exception unused) {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused2) {
                        }
                    }
                    return null;
                }
            }
            byte[] bArr2 = new byte[4];
            fileInputStream.read(bArr2);
            int i12 = ((bArr2[3] & 255) << 24) | (bArr2[0] & 255) | ((bArr2[1] & 255) << 8) | ((bArr2[2] & 255) << 16);
            byte[] bArr3 = new byte[i12];
            fileInputStream.read(bArr3, 0, i12);
            fileInputStream.close();
            return bArr3;
        } catch (Exception unused3) {
            fileInputStream = null;
        }
    }

    public static FileWrapper[] listSortedEnFiles(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return null;
        }
        FileWrapper[] fileWrapperArr = new FileWrapper[fileArrListFiles.length];
        for (int i10 = 0; i10 < fileArrListFiles.length; i10++) {
            fileWrapperArr[i10] = new FileWrapper(fileArrListFiles[i10]);
        }
        Arrays.sort(fileWrapperArr);
        return fileWrapperArr;
    }

    public static FileWrapper[] listSortedFiles(File file) {
        return listSortedEnFiles(file);
    }

    public static void setMode(Context context2, int i10, HashMap<String, String> map) {
        mode = i10;
    }
}
