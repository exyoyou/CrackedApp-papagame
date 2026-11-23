package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.jni.Engine;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class bn {
    public static boolean a(Context context, String str) {
        try {
            String str2 = Engine.soPath;
            if (TextUtils.isEmpty(str2)) {
                return false;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append("/lib");
            sb2.append(str);
            return new File(sb2.toString()).exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    private static List<File> a(File file, final String str, int i10) {
        ArrayList arrayList = new ArrayList();
        try {
            File[] fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.kuaishou.weapon.p0.bn.1
                @Override // java.io.FileFilter
                public final boolean accept(File file2) {
                    return file2.isDirectory() || file2.getName().toLowerCase().contains(str);
                }
            });
            if (fileArrListFiles != null) {
                int length = fileArrListFiles.length;
                int i11 = 0;
                while (i11 < length) {
                    File file2 = fileArrListFiles[i11];
                    if (file2.isFile()) {
                        arrayList.add(file2);
                        break;
                    }
                    int i12 = i10 + 1;
                    arrayList.addAll(a(file2, str, i10));
                    i11++;
                    i10 = i12;
                }
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    public static void a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public static int a(String[] strArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < strArr.length; i11++) {
            try {
                if (new File(strArr[i11]).exists()) {
                    i10 |= 1 << i11;
                }
            } catch (Exception unused) {
            }
        }
        return i10;
    }
}
