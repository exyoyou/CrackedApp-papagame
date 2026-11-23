package com.sdk.c;

import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public File a(HttpURLConnection httpURLConnection, b bVar, String str, boolean z10, String str2) throws IOException {
        BufferedOutputStream bufferedOutputStream;
        FileOutputStream fileOutputStream;
        long length;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (parentFile.exists() || parentFile.mkdirs()) {
                file.createNewFile();
            }
        }
        try {
            try {
                if (z10) {
                    length = file.length();
                    fileOutputStream = new FileOutputStream(str, true);
                } else {
                    fileOutputStream = new FileOutputStream(str);
                    length = 0;
                }
                long contentLength = ((long) httpURLConnection.getContentLength()) + length;
                BufferedInputStream bufferedInputStream3 = new BufferedInputStream(httpURLConnection.getInputStream());
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream);
                    try {
                        if (!((com.sdk.a.c) bVar).a(contentLength, length, true)) {
                            try {
                                bufferedInputStream3.close();
                            } catch (Throwable unused) {
                            }
                            try {
                                bufferedOutputStream2.close();
                            } catch (Throwable unused2) {
                            }
                            return file;
                        }
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int i10 = bufferedInputStream3.read(bArr);
                            if (i10 == -1) {
                                bufferedOutputStream = bufferedOutputStream2;
                                bufferedInputStream = bufferedInputStream3;
                                bufferedOutputStream.flush();
                                ((com.sdk.a.c) bVar).a(contentLength, length, true);
                                try {
                                    bufferedInputStream.close();
                                    break;
                                } catch (Throwable unused3) {
                                    break;
                                }
                            }
                            bufferedOutputStream2.write(bArr, 0, i10);
                            length += (long) i10;
                            bufferedOutputStream = bufferedOutputStream2;
                            bufferedInputStream = bufferedInputStream3;
                            try {
                                if (!((com.sdk.a.c) bVar).a(contentLength, length, false)) {
                                    try {
                                        bufferedInputStream.close();
                                    } catch (Throwable unused4) {
                                    }
                                    try {
                                        bufferedOutputStream.close();
                                    } catch (Throwable unused5) {
                                    }
                                    return file;
                                }
                                bufferedOutputStream2 = bufferedOutputStream;
                                bufferedInputStream3 = bufferedInputStream;
                            } catch (Throwable th) {
                                th = th;
                            }
                            th = th;
                        }
                        try {
                            bufferedOutputStream.close();
                        } catch (Throwable unused6) {
                        }
                        if (!file.exists() && !TextUtils.isEmpty(str2)) {
                            File file2 = new File(file.getParent(), str2);
                            while (file2.exists()) {
                                file2 = new File(file.getParent(), System.currentTimeMillis() + str2);
                            }
                            return file.renameTo(file2) ? file2 : file;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedOutputStream = bufferedOutputStream2;
                        bufferedInputStream = bufferedInputStream3;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedInputStream = bufferedInputStream3;
                    bufferedOutputStream = null;
                }
                bufferedInputStream2 = bufferedInputStream;
            } catch (Throwable th4) {
                th = th4;
                bufferedOutputStream = null;
            }
            th.printStackTrace();
            if (bufferedInputStream2 != null) {
                try {
                    bufferedInputStream2.close();
                } catch (Throwable unused7) {
                }
            }
            if (bufferedOutputStream != null) {
                bufferedOutputStream.close();
            }
            return !file.exists() ? file : file;
        } catch (Throwable th5) {
            if (bufferedInputStream2 != null) {
                try {
                    bufferedInputStream2.close();
                } catch (Throwable unused8) {
                }
            }
            if (bufferedOutputStream == null) {
                throw th5;
            }
            try {
                bufferedOutputStream.close();
                throw th5;
            } catch (Throwable unused9) {
                throw th5;
            }
        }
    }
}
