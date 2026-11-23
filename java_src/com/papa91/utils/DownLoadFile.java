package com.papa91.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes2.dex */
public class DownLoadFile {
    public String downLoad(String str, String str2) {
        String str3 = str + str2.substring(str2.lastIndexOf(e.F0) + 1);
        File file = new File(str3);
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        if (file.exists()) {
            return str3;
        }
        try {
            URLConnection uRLConnectionOpenConnection = new URL(str2).openConnection();
            uRLConnectionOpenConnection.getContentLength();
            InputStream inputStream = uRLConnectionOpenConnection.getInputStream();
            byte[] bArr = new byte[1024];
            FileOutputStream fileOutputStream = new FileOutputStream(str3);
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    fileOutputStream.close();
                    inputStream.close();
                    return str3;
                }
                fileOutputStream.write(bArr, 0, i10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }
}
