package com.papa.sim.statistic;

import android.os.Build;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.Path;

/* JADX INFO: loaded from: classes2.dex */
public class g {
    public static boolean a(File file, File file2) {
        if (file == null || file2 == null) {
            return false;
        }
        try {
            if (file.isDirectory()) {
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                String[] list = file.list();
                if (list != null && list.length != 0) {
                    for (String str : list) {
                        a(new File(file, str), new File(file2, str));
                    }
                    file.delete();
                    return true;
                }
                return true;
            }
            try {
                File parentFile = file2.getParentFile();
                if (parentFile != null && !parentFile.exists()) {
                    parentFile.mkdirs();
                }
                FileInputStream fileInputStream = new FileInputStream(file);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                byte[] bArr = new byte[8192];
                while (true) {
                    int i10 = fileInputStream.read(bArr);
                    if (i10 <= 0) {
                        fileInputStream.close();
                        fileOutputStream.close();
                        file.delete();
                        return true;
                    }
                    fileOutputStream.write(bArr, 0, i10);
                }
            } catch (IOException e10) {
                e10.printStackTrace();
                return false;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            return true;
        }
    }

    public static boolean b(File file, File file2) {
        boolean zA;
        System.currentTimeMillis();
        if (file2.exists() && file2.isDirectory() && (file2.list() == null || file2.list().length == 0)) {
            file2.delete();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            Path path = file.toPath();
            Path path2 = file2.toPath();
            if (file2.exists()) {
                zA = a(file, file2);
            } else {
                try {
                    Files.move(path, path2, new CopyOption[0]);
                    zA = true;
                } catch (IOException e10) {
                    e10.printStackTrace();
                    zA = a(file, file2);
                }
            }
        } else {
            zA = file2.exists() ? a(file, file2) : file.renameTo(file2);
        }
        System.currentTimeMillis();
        return zA;
    }
}
